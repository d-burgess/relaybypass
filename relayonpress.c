/* 
 * File:   relayonpress.c
 * Author: Benoit M from Coda Effects
 * Created on 5 February 2017
 *
 * Modified by Dan Burgess
 * 5 October 2018 
 * For latching relay and startup option
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <xc.h>
#include "header.h"

// Functions
// Need a delay function to have delay from variable
void delay_ms( uint16_t milliseconds ) { // 65535 max
    while( milliseconds > 0 ) {
        __delay_ms( 1 );
        milliseconds--;
    }
}

void flashLed ( uint16_t delayInMs ) { // 65535 max
    
    GP0 = 1; // LED on
    delay_ms( delayInMs );
    GP0 = 0; // LED off
    delay_ms( delayInMs );

}

uint8_t pedalOn ( uint8_t delayInMs ) { // 255 max
    
    GP2 = 1; // photoFET on
    delay_ms( delayInMs );
    GP0 = 1; // LED on
    
    // Send relay pulse
    GP5 = 1; // negative relay output on
    GP4 = 0; // positive relay output off
    __delay_ms( 5 );
    GP5 = 0; // negative relay output off
    GP4 = 0; // positive relay output off   
    
    delay_ms( delayInMs );
    GP2 = 0; // photoFET off
    
    return 1;
}

uint8_t pedalOff ( uint8_t delayInMs ) { // 255 max
    
    GP2 = 1; // photoFET on
    delay_ms( delayInMs );
    GP0 = 0; // LED off
    
    // Send relay pulse
    GP5 = 0; // negative relay output off
    GP4 = 1; // positive relay output on
    __delay_ms( 5 );
    GP5 = 0; // negative relay output off
    GP4 = 0; // positive relay output off  
    
    delay_ms( delayInMs );
    GP2 = 0; // photoFET off
    
    return 0;
}

uint8_t changePedalState ( uint8_t state ) {
    
    if( state == 1 ) {
        pedalOn( 20 );
        return 1;
    } else {
        pedalOff( 20 );
        return 0;
    }

}

// Initialisation
void main( void ) {
    
    // Initialise PIC
    ANSEL = 0; // no analog GPIOs
    CMCON = 0x07; // comparator off
    ADCON0 = 0; // Analog to Digital and Digital to Analog convertors off
    
    // Configure IO
    // PIC pin 8 GND
    TRISIO0 = 0; // IO 0 LED output - PIC pin 7
    TRISIO1 = 1; // IO 1 footswitch input - PIC pin 6
    TRISIO2 = 0; // IO 2 photoFET output - PIC pin 5
    TRISIO3 = 1; // IO 3 startup option switch input - PIC pin 4
    TRISIO4 = 0; // IO 4 positive relay output - PIC pin 3
    TRISIO5 = 0; // IO 5 negative relay output - PIC pin 2
    // PIC pin 1 +5V

    GPIO = 0; // set outputs as low level (0V)
   
    // Variables definition
    uint8_t state; // on-off state of the pedal (1 = on, 0 = off)
    uint8_t startupOption; // startup option switch state (1 = on, 0 = off)
    uint8_t switchStatus; // variable to detect if the switch is pressed
    uint8_t statusChangeAllowed; // Variable to allow switch operation to change pedal state

    // Check startup option switch
    // If pin 4 is low, startup option is on (switch is closed)
    if ( GP3 == 0 ) { // startup option is on
        startupOption = 1;
    } else { // startup option is off
        startupOption = 0;
    }
    
    // Initialise variables
    switchStatus = 0;
    statusChangeAllowed = 0;
    
    // Flash LED, twice if startup option off, three times if startup option on
    // One flash
    flashLed( 500 );
    // Two flashes
    flashLed( 500 );
    // Third flash
    if ( startupOption == 1 ) {
        flashLed( 500 );
        state = changePedalState( 1 ); // turn pedal on (startup option)
    } else {
        state = changePedalState( 0 ); // turn pedal off
    }
    
    // Main loop
    while( 1 ) {
        
        // Check switch is down
        if( GP1 == 0 ) { // footswitch down
            __delay_ms( 15 ); // debouncing
            if( GP1 == 0 ) { // switch still down
                if( switchStatus != 1 ) {
                    switchStatus = 1;
                }
            }
        }
        
        // Check switch is up
        if( GP1 == 1 ) { // footswitch up
            __delay_ms( 15 ); // debouncing
            if( GP1 == 1 ) { // footswitch still up
                if( switchStatus != 0 ) {
                    switchStatus = 0;
                }
                if( statusChangeAllowed != 1 ) {
                    statusChangeAllowed = 1;
                }
            }
        }
        
        // Change the pedal state if switch has been pressed and status change is allowed
        if( ( switchStatus == 1 ) && ( statusChangeAllowed == 1 ) ) { // switch is down: turn the pedal on or off
            state = changePedalState( !( state ) );
            __delay_ms( 10 );
            statusChangeAllowed = 0; // no more status changes allowed until switch is up again
        }
        
    }
    
}


