
# 1 "relayonpress.c"

# 4 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8\pic\include\__size_t.h"
typedef unsigned size_t;

# 7 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 43 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stdio.h"
struct __prbuf
{
char * ptr;
void (* func)(char);
};

# 29 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\errno.h"
extern int errno;

# 12 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\conio.h"
extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);

# 23
extern char * cgets(char *);
extern void cputs(const char *);

# 88 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stdio.h"
extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);


# 180
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);

# 7 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stdlib.h"
typedef unsigned short wchar_t;

# 15
typedef struct {
int rem;
int quot;
} div_t;
typedef struct {
unsigned rem;
unsigned quot;
} udiv_t;
typedef struct {
long quot;
long rem;
} ldiv_t;
typedef struct {
unsigned long quot;
unsigned long rem;
} uldiv_t;

# 65
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);

# 73
extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);

# 85
extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);


# 13 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 104 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stdlib.h"
extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);

# 13 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;

# 18 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);

# 9 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8\pic\include\pic.h"
extern unsigned char __osccal_val(void);

# 52 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8\pic\include\proc\pic12f675.h"
extern volatile unsigned char INDF __at(0x000);

asm("INDF equ 00h");


typedef union {
struct {
unsigned INDF :8;
};
} INDFbits_t;
extern volatile INDFbits_t INDFbits __at(0x000);

# 72
extern volatile unsigned char TMR0 __at(0x001);

asm("TMR0 equ 01h");


typedef union {
struct {
unsigned TMR0 :8;
};
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __at(0x001);

# 92
extern volatile unsigned char PCL __at(0x002);

asm("PCL equ 02h");


typedef union {
struct {
unsigned PCL :8;
};
} PCLbits_t;
extern volatile PCLbits_t PCLbits __at(0x002);

# 112
extern volatile unsigned char STATUS __at(0x003);

asm("STATUS equ 03h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned RP :2;
unsigned IRP :1;
};
struct {
unsigned :5;
unsigned RP0 :1;
unsigned RP1 :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0x003);

# 198
extern volatile unsigned char FSR __at(0x004);

asm("FSR equ 04h");


typedef union {
struct {
unsigned FSR :8;
};
} FSRbits_t;
extern volatile FSRbits_t FSRbits __at(0x004);

# 218
extern volatile unsigned char GPIO __at(0x005);

asm("GPIO equ 05h");


typedef union {
struct {
unsigned GP0 :1;
unsigned GP1 :1;
unsigned GP2 :1;
unsigned GP3 :1;
unsigned GP4 :1;
unsigned GP5 :1;
};
struct {
unsigned GPIO0 :1;
unsigned GPIO1 :1;
unsigned GPIO2 :1;
unsigned GPIO3 :1;
unsigned GPIO4 :1;
unsigned GPIO5 :1;
};
} GPIObits_t;
extern volatile GPIObits_t GPIObits __at(0x005);

# 306
extern volatile unsigned char PCLATH __at(0x00A);

asm("PCLATH equ 0Ah");


typedef union {
struct {
unsigned PCLATH :5;
};
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __at(0x00A);

# 326
extern volatile unsigned char INTCON __at(0x00B);

asm("INTCON equ 0Bh");


typedef union {
struct {
unsigned GPIF :1;
unsigned INTF :1;
unsigned T0IF :1;
unsigned GPIE :1;
unsigned INTE :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :2;
unsigned TMR0IF :1;
unsigned :2;
unsigned TMR0IE :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0x00B);

# 404
extern volatile unsigned char PIR1 __at(0x00C);

asm("PIR1 equ 0Ch");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned :2;
unsigned CMIF :1;
unsigned :2;
unsigned ADIF :1;
unsigned EEIF :1;
};
struct {
unsigned T1IF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0x00C);

# 452
extern volatile unsigned short TMR1 __at(0x00E);

asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __at(0x00E);

asm("TMR1L equ 0Eh");


typedef union {
struct {
unsigned TMR1L :8;
};
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __at(0x00E);

# 479
extern volatile unsigned char TMR1H __at(0x00F);

asm("TMR1H equ 0Fh");


typedef union {
struct {
unsigned TMR1H :8;
};
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __at(0x00F);

# 499
extern volatile unsigned char T1CON __at(0x010);

asm("T1CON equ 010h");


typedef union {
struct {
unsigned TMR1ON :1;
unsigned TMR1CS :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned TMR1GE :1;
};
struct {
unsigned :4;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0x010);

# 564
extern volatile unsigned char CMCON __at(0x019);

asm("CMCON equ 019h");


typedef union {
struct {
unsigned CM :3;
unsigned CIS :1;
unsigned CINV :1;
unsigned :1;
unsigned COUT :1;
};
struct {
unsigned CM0 :1;
unsigned CM1 :1;
unsigned CM2 :1;
};
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __at(0x019);

# 623
extern volatile unsigned char ADRESH __at(0x01E);

asm("ADRESH equ 01Eh");


typedef union {
struct {
unsigned ADRESH :8;
};
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __at(0x01E);

# 643
extern volatile unsigned char ADCON0 __at(0x01F);

asm("ADCON0 equ 01Fh");


typedef union {
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :2;
unsigned :2;
unsigned VCFG :1;
unsigned ADFM :1;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0x01F);

# 727
extern volatile unsigned char OPTION_REG __at(0x081);

asm("OPTION_REG equ 081h");


typedef union {
struct {
unsigned PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned INTEDG :1;
unsigned nGPPU :1;
};
struct {
unsigned PS0 :1;
unsigned PS1 :1;
unsigned PS2 :1;
};
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __at(0x081);

# 797
extern volatile unsigned char TRISIO __at(0x085);

asm("TRISIO equ 085h");


typedef union {
struct {
unsigned TRISIO0 :1;
unsigned TRISIO1 :1;
unsigned TRISIO2 :1;
unsigned TRISIO3 :1;
unsigned TRISIO4 :1;
unsigned TRISIO5 :1;
};
} TRISIObits_t;
extern volatile TRISIObits_t TRISIObits __at(0x085);

# 847
extern volatile unsigned char PIE1 __at(0x08C);

asm("PIE1 equ 08Ch");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned :2;
unsigned CMIE :1;
unsigned :2;
unsigned ADIE :1;
unsigned EEIE :1;
};
struct {
unsigned T1IE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0x08C);

# 895
extern volatile unsigned char PCON __at(0x08E);

asm("PCON equ 08Eh");


typedef union {
struct {
unsigned nBOR :1;
unsigned nPOR :1;
};
struct {
unsigned nBOD :1;
};
} PCONbits_t;
extern volatile PCONbits_t PCONbits __at(0x08E);

# 929
extern volatile unsigned char OSCCAL __at(0x090);

asm("OSCCAL equ 090h");


typedef union {
struct {
unsigned :2;
unsigned CAL :6;
};
struct {
unsigned :2;
unsigned CAL0 :1;
unsigned CAL1 :1;
unsigned CAL2 :1;
unsigned CAL3 :1;
unsigned CAL4 :1;
unsigned CAL5 :1;
};
} OSCCALbits_t;
extern volatile OSCCALbits_t OSCCALbits __at(0x090);

# 989
extern volatile unsigned char WPU __at(0x095);

asm("WPU equ 095h");


typedef union {
struct {
unsigned WPU0 :1;
unsigned WPU1 :1;
unsigned WPU2 :1;
unsigned :1;
unsigned WPU4 :1;
unsigned WPU5 :1;
};
} WPUbits_t;
extern volatile WPUbits_t WPUbits __at(0x095);

# 1034
extern volatile unsigned char IOC __at(0x096);

asm("IOC equ 096h");


extern volatile unsigned char IOCB __at(0x096);

asm("IOCB equ 096h");


typedef union {
struct {
unsigned IOC0 :1;
unsigned IOC1 :1;
unsigned IOC2 :1;
unsigned IOC3 :1;
unsigned IOC4 :1;
unsigned IOC5 :1;
};
struct {
unsigned IOCB0 :1;
unsigned IOCB1 :1;
unsigned IOCB2 :1;
unsigned IOCB3 :1;
unsigned IOCB4 :1;
unsigned IOCB5 :1;
};
} IOCbits_t;
extern volatile IOCbits_t IOCbits __at(0x096);

# 1125
typedef union {
struct {
unsigned IOC0 :1;
unsigned IOC1 :1;
unsigned IOC2 :1;
unsigned IOC3 :1;
unsigned IOC4 :1;
unsigned IOC5 :1;
};
struct {
unsigned IOCB0 :1;
unsigned IOCB1 :1;
unsigned IOCB2 :1;
unsigned IOCB3 :1;
unsigned IOCB4 :1;
unsigned IOCB5 :1;
};
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __at(0x096);

# 1208
extern volatile unsigned char VRCON __at(0x099);

asm("VRCON equ 099h");


typedef union {
struct {
unsigned VR :4;
unsigned :1;
unsigned VRR :1;
unsigned :1;
unsigned VREN :1;
};
struct {
unsigned VR0 :1;
unsigned VR1 :1;
unsigned VR2 :1;
unsigned VR3 :1;
};
} VRCONbits_t;
extern volatile VRCONbits_t VRCONbits __at(0x099);

# 1268
extern volatile unsigned char EEDATA __at(0x09A);

asm("EEDATA equ 09Ah");


extern volatile unsigned char EEDAT __at(0x09A);

asm("EEDAT equ 09Ah");


typedef union {
struct {
unsigned EEDATA :8;
};
} EEDATAbits_t;
extern volatile EEDATAbits_t EEDATAbits __at(0x09A);

# 1291
typedef union {
struct {
unsigned EEDATA :8;
};
} EEDATbits_t;
extern volatile EEDATbits_t EEDATbits __at(0x09A);

# 1306
extern volatile unsigned char EEADR __at(0x09B);

asm("EEADR equ 09Bh");


typedef union {
struct {
unsigned EEADR :7;
};
} EEADRbits_t;
extern volatile EEADRbits_t EEADRbits __at(0x09B);

# 1326
extern volatile unsigned char EECON1 __at(0x09C);

asm("EECON1 equ 09Ch");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0x09C);

# 1364
extern volatile unsigned char EECON2 __at(0x09D);

asm("EECON2 equ 09Dh");


typedef union {
struct {
unsigned EECON2 :8;
};
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __at(0x09D);

# 1384
extern volatile unsigned char ADRESL __at(0x09E);

asm("ADRESL equ 09Eh");


typedef union {
struct {
unsigned ADRESL :8;
};
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __at(0x09E);

# 1404
extern volatile unsigned char ANSEL __at(0x09F);

asm("ANSEL equ 09Fh");


typedef union {
struct {
unsigned ANS :4;
unsigned ADCS :3;
};
struct {
unsigned ANS0 :1;
unsigned ANS1 :1;
unsigned ANS2 :1;
unsigned ANS3 :1;
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
};
} ANSELbits_t;
extern volatile ANSELbits_t ANSELbits __at(0x09F);

# 1480
extern volatile __bit ADCS0 __at(0x4FC);


extern volatile __bit ADCS1 __at(0x4FD);


extern volatile __bit ADCS2 __at(0x4FE);


extern volatile __bit ADFM __at(0xFF);


extern volatile __bit ADIE __at(0x466);


extern volatile __bit ADIF __at(0x66);


extern volatile __bit ADON __at(0xF8);


extern volatile __bit ANS0 __at(0x4F8);


extern volatile __bit ANS1 __at(0x4F9);


extern volatile __bit ANS2 __at(0x4FA);


extern volatile __bit ANS3 __at(0x4FB);


extern volatile __bit CAL0 __at(0x482);


extern volatile __bit CAL1 __at(0x483);


extern volatile __bit CAL2 __at(0x484);


extern volatile __bit CAL3 __at(0x485);


extern volatile __bit CAL4 __at(0x486);


extern volatile __bit CAL5 __at(0x487);


extern volatile __bit CARRY __at(0x18);


extern volatile __bit CHS0 __at(0xFA);


extern volatile __bit CHS1 __at(0xFB);


extern volatile __bit CINV __at(0xCC);


extern volatile __bit CIS __at(0xCB);


extern volatile __bit CM0 __at(0xC8);


extern volatile __bit CM1 __at(0xC9);


extern volatile __bit CM2 __at(0xCA);


extern volatile __bit CMIE __at(0x463);


extern volatile __bit CMIF __at(0x63);


extern volatile __bit COUT __at(0xCE);


extern volatile __bit DC __at(0x19);


extern volatile __bit EEIE __at(0x467);


extern volatile __bit EEIF __at(0x67);


extern volatile __bit GIE __at(0x5F);


extern volatile __bit GO __at(0xF9);


extern volatile __bit GO_DONE __at(0xF9);


extern volatile __bit GO_nDONE __at(0xF9);


extern volatile __bit GP0 __at(0x28);


extern volatile __bit GP1 __at(0x29);


extern volatile __bit GP2 __at(0x2A);


extern volatile __bit GP3 __at(0x2B);


extern volatile __bit GP4 __at(0x2C);


extern volatile __bit GP5 __at(0x2D);


extern volatile __bit GPIE __at(0x5B);


extern volatile __bit GPIF __at(0x58);


extern volatile __bit GPIO0 __at(0x28);


extern volatile __bit GPIO1 __at(0x29);


extern volatile __bit GPIO2 __at(0x2A);


extern volatile __bit GPIO3 __at(0x2B);


extern volatile __bit GPIO4 __at(0x2C);


extern volatile __bit GPIO5 __at(0x2D);


extern volatile __bit INTE __at(0x5C);


extern volatile __bit INTEDG __at(0x40E);


extern volatile __bit INTF __at(0x59);


extern volatile __bit IOC0 __at(0x4B0);


extern volatile __bit IOC1 __at(0x4B1);


extern volatile __bit IOC2 __at(0x4B2);


extern volatile __bit IOC3 __at(0x4B3);


extern volatile __bit IOC4 __at(0x4B4);


extern volatile __bit IOC5 __at(0x4B5);


extern volatile __bit IOCB0 __at(0x4B0);


extern volatile __bit IOCB1 __at(0x4B1);


extern volatile __bit IOCB2 __at(0x4B2);


extern volatile __bit IOCB3 __at(0x4B3);


extern volatile __bit IOCB4 __at(0x4B4);


extern volatile __bit IOCB5 __at(0x4B5);


extern volatile __bit IRP __at(0x1F);


extern volatile __bit PEIE __at(0x5E);


extern volatile __bit PS0 __at(0x408);


extern volatile __bit PS1 __at(0x409);


extern volatile __bit PS2 __at(0x40A);


extern volatile __bit PSA __at(0x40B);


extern volatile __bit RD __at(0x4E0);


extern volatile __bit RP0 __at(0x1D);


extern volatile __bit RP1 __at(0x1E);


extern volatile __bit T0CS __at(0x40D);


extern volatile __bit T0IE __at(0x5D);


extern volatile __bit T0IF __at(0x5A);


extern volatile __bit T0SE __at(0x40C);


extern volatile __bit T1CKPS0 __at(0x84);


extern volatile __bit T1CKPS1 __at(0x85);


extern volatile __bit T1IE __at(0x460);


extern volatile __bit T1IF __at(0x60);


extern volatile __bit T1OSCEN __at(0x83);


extern volatile __bit TMR0IE __at(0x5D);


extern volatile __bit TMR0IF __at(0x5A);


extern volatile __bit TMR1CS __at(0x81);


extern volatile __bit TMR1GE __at(0x86);


extern volatile __bit TMR1IE __at(0x460);


extern volatile __bit TMR1IF __at(0x60);


extern volatile __bit TMR1ON __at(0x80);


extern volatile __bit TRISIO0 __at(0x428);


extern volatile __bit TRISIO1 __at(0x429);


extern volatile __bit TRISIO2 __at(0x42A);


extern volatile __bit TRISIO3 __at(0x42B);


extern volatile __bit TRISIO4 __at(0x42C);


extern volatile __bit TRISIO5 __at(0x42D);


extern volatile __bit VCFG __at(0xFE);


extern volatile __bit VR0 __at(0x4C8);


extern volatile __bit VR1 __at(0x4C9);


extern volatile __bit VR2 __at(0x4CA);


extern volatile __bit VR3 __at(0x4CB);


extern volatile __bit VREN __at(0x4CF);


extern volatile __bit VRR __at(0x4CD);


extern volatile __bit WPU0 __at(0x4A8);


extern volatile __bit WPU1 __at(0x4A9);


extern volatile __bit WPU2 __at(0x4AA);


extern volatile __bit WPU4 __at(0x4AC);


extern volatile __bit WPU5 __at(0x4AD);


extern volatile __bit WR __at(0x4E1);


extern volatile __bit WREN __at(0x4E2);


extern volatile __bit WRERR __at(0x4E3);


extern volatile __bit ZERO __at(0x1A);


extern volatile __bit nBOD __at(0x470);


extern volatile __bit nBOR __at(0x470);


extern volatile __bit nDONE __at(0xF9);


extern volatile __bit nGPPU __at(0x40F);


extern volatile __bit nPD __at(0x1B);


extern volatile __bit nPOR __at(0x471);


extern volatile __bit nT1SYNC __at(0x82);


extern volatile __bit nTO __at(0x1C);


# 30 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8\pic\include\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);

# 78
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);

# 114 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8\pic\include\eeprom_routines.h"
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);


# 91 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8\pic\include\pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);

# 137
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;


# 11 "header.h"
#pragma config FOSC = INTRCIO
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config MCLRE = OFF
#pragma config BOREN = OFF
#pragma config CP = OFF
#pragma config CPD = OFF

# 31
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
int8_t changePedalState ( int8_t state );

# 18 "relayonpress.c"
void main ( void ) {


ANSEL = 0;
CMCON = 0x07;
ADCON0 = 0;



TRISIO0 = 0;
TRISIO1 = 1;
TRISIO2 = 0;
TRISIO3 = 1;
TRISIO4 = 0;
TRISIO5 = 0;


GPIO = 0;


int8_t state;
uint8_t startupOption;
uint8_t switchStatus;
uint8_t statusChangeAllowed;
uint8_t i;
uint8_t downCount;
uint8_t upCount;



if ( GP3 == 0 ) {
startupOption = 1;
} else {
startupOption = 0;
}


switchStatus = 0;
statusChangeAllowed = 0;



flashLed( 125 );

flashLed( 125 );

if ( startupOption == 1 ) {
flashLed( 125 );
state = changePedalState( 1 );
} else {
state = changePedalState( 0 );
}


while ( 1 ) {


if ( GP1 == 0 ) {
i = 15;
downCount = 0;
while ( i > 0 ) {
_delay((unsigned long)((1)*(4000000/4000.0)));
if ( GP1 == 0 ) {
downCount++;
} else {
downCount = 0;
i = 1;
}
i--;
}
if ( downCount > 14 ) {
downCount = 0;
if ( switchStatus != 1 ) {
switchStatus = 1;
}
}
}


if ( GP1 == 1 ) {
i = 15;
upCount = 0;
while ( i > 0 ) {
_delay((unsigned long)((1)*(4000000/4000.0)));
if ( GP1 == 1 ) {
upCount++;
} else {
upCount = 0;
i = 1;
}
i--;
}
if ( upCount > 14 ) {
upCount = 0;
if ( switchStatus != 0 ) {
switchStatus = 0;
}
if ( statusChangeAllowed != 1 ) {
statusChangeAllowed = 1;
}
}
}


if ( ( switchStatus == 1 ) && ( statusChangeAllowed == 1 ) ) {
state = changePedalState( !( state ) );
_delay((unsigned long)((10)*(4000000/4000.0)));
statusChangeAllowed = 0;
}

}

}



void delay_ms ( uint16_t milliseconds ) {
while( milliseconds > 0 ) {
_delay((unsigned long)((1)*(4000000/4000.0)));
milliseconds--;
}
}

void photoFetOn ( void ) {
GP5 = 1;
}

void photoFetOff ( void ) {
GP5 = 0;
}

void ledOn ( void ) {
GP0 = 1;
}

void ledOff ( void ) {
GP0 = 0;
}

void negativeRelayOn ( void ) {
GP2 = 1;
}

void negativeRelayOff ( void ) {
GP2 = 0;
}

void positiveRelayOn ( void ) {
GP4 = 1;
}

void positiveRelayOff ( void ) {
GP4 = 0;
}

void flashLed ( uint16_t delayInMs ) {

ledOn();
delay_ms( delayInMs );
ledOff();
delay_ms( delayInMs );

}
uint8_t pedalOn ( uint8_t delayInMs ) {

photoFetOn();
delay_ms( delayInMs );
ledOn();


negativeRelayOn();
positiveRelayOff();
_delay((unsigned long)((5)*(4000000/4000.0)));
negativeRelayOff();
positiveRelayOff();

delay_ms( delayInMs );
photoFetOff();

return 1;
}

uint8_t pedalOff ( uint8_t delayInMs ) {

photoFetOn();
delay_ms( delayInMs );
ledOff();


negativeRelayOff();
positiveRelayOn();
_delay((unsigned long)((5)*(4000000/4000.0)));
negativeRelayOff();
positiveRelayOff();

delay_ms( delayInMs );
photoFetOff();

return 0;
}

int8_t changePedalState ( int8_t state ) {

if ( state == 1 ) {
pedalOn( 15 );
return 1;
} else {
pedalOff( 15 );
return 0;
}

}
