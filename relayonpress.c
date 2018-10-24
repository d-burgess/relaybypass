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

// Initialisation
void main ( void ) {
    
    // Initialise PIC
    ANSEL = OFF; // no analog GPIOs
    CMCON = 0x07; // comparator off
    ADCON0 = OFF; // Analog to Digital and Digital to Analog convertors off
    
    // Configure IO
    // PIC pin 8 GND
    TRISIO0 = OUTPUT; // IO 0 LED output - PIC pin 7
    TRISIO1 = INPUT; // IO 1 footswitch input - PIC pin 6
    TRISIO2 = OUTPUT; // IO 2 negative relay output - PIC pin 5
    TRISIO3 = INPUT; // Ix 3 startup option switch input - PIC pin 4 - GP3 input only
    TRISIO4 = OUTPUT; // IO 4 positive relay output - PIC pin 3
    TRISIO5 = OUTPUT; // IO 5 photoFET output - PIC pin 2 
    // PIC pin 1 +5V

    GPIO = LOW; // set outputs as low level (0V)
   
    // Variables definition
    uint8_t state; // on-off state of the pedal (1 = on, 0 = off)
    uint8_t startupOption; // startup option switch state (1 = on, 0 = off)
    uint8_t switchStatus; // variable to detect if the switch is pressed
    uint8_t statusChangeAllowed; // allow switch operation to change pedal state
    uint8_t i; // used for counters
    uint8_t downCount; // used for switch down debouncing
    uint8_t upCount; // used for switch up debouncing
    
    // Check startup option switch
    // If pin 3 is low, startup option is on (switch is closed)
    if ( GP3 == LOW ) { // startup option is on
        startupOption = ON;
    } else { // startup option is off
        startupOption = OFF;
    }
    
    // Initialise variables
    switchStatus = OFF;
    statusChangeAllowed = OFF;
    
    // Flash LED, twice if startup option off, three times if startup option on
    // One flash
    flashLed( 500 );
    // Two flashes
    flashLed( 500 );
    // Third flash
    if ( startupOption == ON ) {
        flashLed( 500 );
        state = changePedalState( ON ); // turn pedal on (startup option)
    } else {
        state = changePedalState( OFF ); // turn pedal off
    }
    
    // Main loop
    while ( 1 ) {
        
        // Check switch is down
        if ( GP1 == LOW ) { // footswitch down
            i = 15;
            downCount = 0;
            while ( i > 0 ) { // debouncing loop
                __delay_ms( 1 );
                if ( GP1 == LOW ) { // switch still down
                    downCount++;
                } else {
                    downCount = 0;
					i = 0;
                }
                i--;
            }
            if ( downCount > 14 ) { // switch constantly down for 15ms
                downCount = 0;
                if ( switchStatus != ON ) {
                    switchStatus = ON;
                }
            }
        }
        
        // Check switch is up
        if ( GP1 == HIGH ) { // footswitch up
            i = 15;
            upCount = 0;
            while ( i > 0 ) { // debouncing loop
                __delay_ms( 1 );
                if ( GP1 == HIGH ) { // switch still up
                    upCount++;
                } else {
                    upCount = 0;
					i = 0;
                }
                i--;
            }
            if ( upCount > 14 ) { // switch constantly up for 15ms
                upCount = 0;
                if ( switchStatus != OFF ) {
                    switchStatus = OFF;
                }
                if ( statusChangeAllowed != ON ) {
                    statusChangeAllowed = ON;
                }
            }
        }
        
        // Change the pedal state if switch has been pressed and status change is allowed
        if ( ( switchStatus == ON ) && ( statusChangeAllowed == ON ) ) { // switch is down: turn the pedal on or off
            state = changePedalState( !( state ) );
            __delay_ms( 10 );
            statusChangeAllowed = OFF; // no more status changes allowed until switch is up again
        }
        
    }
    
}

// Functions
// Need a delay function to have delay from variable
void delay_ms ( uint16_t milliseconds ) { // 65535 max
    while( milliseconds > 0 ) {
        __delay_ms( 1 );
        milliseconds--;
    }
}

void photoFetOn ( void ) {
	GP5 = ON; // photoFET on
}

void photoFetOff ( void ) {
	GP5 = OFF; // photoFET off
}

void ledOn ( void ) {
	GP0 = ON; // LED on
}

void ledOff ( void ) {
	GP0 = OFF; // LED off
}

void negativeRelayOn ( void ) {
	GP2 = ON; // negative relay output on
}

void negativeRelayOff ( void ) {
	GP2 = OFF; // negative relay output off
}

void positiveRelayOn ( void ) {
	GP4 = ON; // positive relay output on
}

void positiveRelayOff ( void ) {
	GP4 = OFF; // positive relay output off 
}

void flashLed ( uint16_t delayInMs ) { // 65535 max
    
    ledOn();
    delay_ms( delayInMs );
    ledOff();
    delay_ms( delayInMs );

}
uint8_t pedalOn ( uint8_t delayInMs ) { // 255 max
    
    photoFetOn();
    delay_ms( delayInMs );
    ledOn();
    
    // Send relay pulse
    negativeRelayOn();
    positiveRelayOff(); 
    __delay_ms( 5 );
    negativeRelayOff();
    positiveRelayOff();    
    
    delay_ms( delayInMs );
    photoFetOff();
    
    return 1;
}

uint8_t pedalOff ( uint8_t delayInMs ) { // 255 max
    
    photoFetOn();
    delay_ms( delayInMs );
    ledOff();
    
    // Send relay pulse
    negativeRelayOff();
    positiveRelayOn(); 
    __delay_ms( 5 );
    negativeRelayOff();
    positiveRelayOff();   
    
    delay_ms( delayInMs );
    photoFetOff();
    
    return 0;
}

uint8_t changePedalState ( uint8_t state ) {
    
    if( state == 1 ) {
        pedalOn( 15 );
        return 1;
    } else {
        pedalOff( 15 );
        return 0;
    }

}

