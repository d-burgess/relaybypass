/* 
 * File:   header.h
 * Author: Benoit M from Coda Effects
 * Created on 7 February 2017
 *
 * Modified by Dan Burgess
 * 5 October 2018
 */

// CONFIG
#pragma config FOSC = INTRCIO   // Oscillator Selection bits (INTOSC oscillator: I/O function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-Up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = OFF      // GP3/MCLR pin function select (GP3/MCLR pin function is digital I/O, MCLR internally tied to VDD)
#pragma config BOREN = OFF      // Brown-out Detect Enable bit (BOD disabled)
#pragma config CP = OFF         // Code Protection bit (Program Memory code protection is disabled)
#pragma config CPD = OFF        // Data Code Protection bit (Data memory code protection is disabled)

// PIC Clock Speed 4MHz (max)
#define _XTAL_FREQ 4000000

// Globals
#define ON     1
#define OFF    0
#define INPUT  1
#define OUTPUT 0
#define HIGH   1
#define LOW    0

// Function Prototypes
void delay_ms ( uint16_t milliseconds );
void photoFetOn ( void );
void photoFetOff ( void );
void ledOn ( void );
void ledOff ( void );
void negativeRelayOn ( void );
void negativeRelayOff ( void );
void positiveRelayOn ( void );
void positiveRelayOff ( void );
void flashLed ( uint16_t delayInMs );
uint8_t pedalOn ( uint8_t delayInMs );
uint8_t pedalOff ( uint8_t delayInMs );
uint8_t changePedalState ( uint8_t state );