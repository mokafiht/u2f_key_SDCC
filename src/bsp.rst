                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module bsp
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _u2f_printl
                                     12 	.globl _set_app_error
                                     13 	.globl _USBD_Write
                                     14 	.globl _U2F_BLUE
                                     15 	.globl _U2F_GREEN
                                     16 	.globl _U2F_RED
                                     17 	.globl _U2F_BUTTON_VAL
                                     18 	.globl _U2F_BUTTON
                                     19 	.globl _UART1FCN1_TFRQ
                                     20 	.globl _UART1FCN1_TXNF
                                     21 	.globl _UART1FCN1_TXHOLD
                                     22 	.globl _UART1FCN1_TIE
                                     23 	.globl _UART1FCN1_RFRQ
                                     24 	.globl _UART1FCN1_RXTO1
                                     25 	.globl _UART1FCN1_RXTO0
                                     26 	.globl _UART1FCN1_RIE
                                     27 	.globl _TMR4CN0_TF4H
                                     28 	.globl _TMR4CN0_TF4L
                                     29 	.globl _TMR4CN0_TF4LEN
                                     30 	.globl _TMR4CN0_TF4CEN
                                     31 	.globl _TMR4CN0_T4SPLIT
                                     32 	.globl _TMR4CN0_TR4
                                     33 	.globl _TMR4CN0_T4XCLK1
                                     34 	.globl _TMR4CN0_T4XCLK0
                                     35 	.globl _TMR2CN0_TF2H
                                     36 	.globl _TMR2CN0_TF2L
                                     37 	.globl _TMR2CN0_TF2LEN
                                     38 	.globl _TMR2CN0_TF2CEN
                                     39 	.globl _TMR2CN0_T2SPLIT
                                     40 	.globl _TMR2CN0_TR2
                                     41 	.globl _TMR2CN0_T2XCLK1
                                     42 	.globl _TMR2CN0_T2XCLK0
                                     43 	.globl _TCON_TF1
                                     44 	.globl _TCON_TR1
                                     45 	.globl _TCON_TF0
                                     46 	.globl _TCON_TR0
                                     47 	.globl _TCON_IE1
                                     48 	.globl _TCON_IT1
                                     49 	.globl _TCON_IE0
                                     50 	.globl _TCON_IT0
                                     51 	.globl _SPI0CN0_SPIF
                                     52 	.globl _SPI0CN0_WCOL
                                     53 	.globl _SPI0CN0_MODF
                                     54 	.globl _SPI0CN0_RXOVRN
                                     55 	.globl _SPI0CN0_NSSMD1
                                     56 	.globl _SPI0CN0_NSSMD0
                                     57 	.globl _SPI0CN0_TXNF
                                     58 	.globl _SPI0CN0_SPIEN
                                     59 	.globl _SMB0CN0_MASTER
                                     60 	.globl _SMB0CN0_TXMODE
                                     61 	.globl _SMB0CN0_STA
                                     62 	.globl _SMB0CN0_STO
                                     63 	.globl _SMB0CN0_ACKRQ
                                     64 	.globl _SMB0CN0_ARBLOST
                                     65 	.globl _SMB0CN0_ACK
                                     66 	.globl _SMB0CN0_SI
                                     67 	.globl _SCON1_OVR
                                     68 	.globl _SCON1_PERR
                                     69 	.globl _SCON1_REN
                                     70 	.globl _SCON1_TBX
                                     71 	.globl _SCON1_RBX
                                     72 	.globl _SCON1_TI
                                     73 	.globl _SCON1_RI
                                     74 	.globl _SCON0_SMODE
                                     75 	.globl _SCON0_MCE
                                     76 	.globl _SCON0_REN
                                     77 	.globl _SCON0_TB8
                                     78 	.globl _SCON0_RB8
                                     79 	.globl _SCON0_TI
                                     80 	.globl _SCON0_RI
                                     81 	.globl _PSW_CY
                                     82 	.globl _PSW_AC
                                     83 	.globl _PSW_F0
                                     84 	.globl _PSW_RS1
                                     85 	.globl _PSW_RS0
                                     86 	.globl _PSW_OV
                                     87 	.globl _PSW_F1
                                     88 	.globl _PSW_PARITY
                                     89 	.globl _PCA0CN0_CF
                                     90 	.globl _PCA0CN0_CR
                                     91 	.globl _PCA0CN0_CCF2
                                     92 	.globl _PCA0CN0_CCF1
                                     93 	.globl _PCA0CN0_CCF0
                                     94 	.globl _P3_B1
                                     95 	.globl _P3_B0
                                     96 	.globl _P2_B3
                                     97 	.globl _P2_B2
                                     98 	.globl _P2_B1
                                     99 	.globl _P2_B0
                                    100 	.globl _P1_B7
                                    101 	.globl _P1_B6
                                    102 	.globl _P1_B5
                                    103 	.globl _P1_B4
                                    104 	.globl _P1_B3
                                    105 	.globl _P1_B2
                                    106 	.globl _P1_B1
                                    107 	.globl _P1_B0
                                    108 	.globl _P0_B7
                                    109 	.globl _P0_B6
                                    110 	.globl _P0_B5
                                    111 	.globl _P0_B4
                                    112 	.globl _P0_B3
                                    113 	.globl _P0_B2
                                    114 	.globl _P0_B1
                                    115 	.globl _P0_B0
                                    116 	.globl _IP_PSPI0
                                    117 	.globl _IP_PT2
                                    118 	.globl _IP_PS0
                                    119 	.globl _IP_PT1
                                    120 	.globl _IP_PX1
                                    121 	.globl _IP_PT0
                                    122 	.globl _IP_PX0
                                    123 	.globl _IE_EA
                                    124 	.globl _IE_ESPI0
                                    125 	.globl _IE_ET2
                                    126 	.globl _IE_ES0
                                    127 	.globl _IE_ET1
                                    128 	.globl _IE_EX1
                                    129 	.globl _IE_ET0
                                    130 	.globl _IE_EX0
                                    131 	.globl _B_B7
                                    132 	.globl _B_B6
                                    133 	.globl _B_B5
                                    134 	.globl _B_B4
                                    135 	.globl _B_B3
                                    136 	.globl _B_B2
                                    137 	.globl _B_B1
                                    138 	.globl _B_B0
                                    139 	.globl _ADC0CN0_ADEN
                                    140 	.globl _ADC0CN0_ADBMEN
                                    141 	.globl _ADC0CN0_ADINT
                                    142 	.globl _ADC0CN0_ADBUSY
                                    143 	.globl _ADC0CN0_ADWINT
                                    144 	.globl _ADC0CN0_ADCM2
                                    145 	.globl _ADC0CN0_ADCM1
                                    146 	.globl _ADC0CN0_ADCM0
                                    147 	.globl _ACC_ACC7
                                    148 	.globl _ACC_ACC6
                                    149 	.globl _ACC_ACC5
                                    150 	.globl _ACC_ACC4
                                    151 	.globl _ACC_ACC3
                                    152 	.globl _ACC_ACC2
                                    153 	.globl _ACC_ACC1
                                    154 	.globl _ACC_ACC0
                                    155 	.globl __XPAGE
                                    156 	.globl _TMR4RL
                                    157 	.globl _TMR4
                                    158 	.globl _TMR3RL
                                    159 	.globl _TMR3
                                    160 	.globl _TMR2RL
                                    161 	.globl _TMR2
                                    162 	.globl _SBRL1
                                    163 	.globl _PCA0
                                    164 	.globl _PCA0CP2
                                    165 	.globl _PCA0CP1
                                    166 	.globl _PCA0CP0
                                    167 	.globl _DP
                                    168 	.globl _ADC0LT
                                    169 	.globl _ADC0
                                    170 	.globl _ADC0GT
                                    171 	.globl _XBR2
                                    172 	.globl _XBR1
                                    173 	.globl _XBR0
                                    174 	.globl _WDTCN
                                    175 	.globl _VDM0CN
                                    176 	.globl _USB0XCN
                                    177 	.globl _USB0DAT
                                    178 	.globl _USB0CF
                                    179 	.globl _USB0CDSTA
                                    180 	.globl _USB0CDCN
                                    181 	.globl _USB0CDCF
                                    182 	.globl _USB0AEC
                                    183 	.globl _USB0ADR
                                    184 	.globl _UART1LIN
                                    185 	.globl _UART1FCT
                                    186 	.globl _UART1FCN1
                                    187 	.globl _UART1FCN0
                                    188 	.globl _TMR4RLL
                                    189 	.globl _TMR4RLH
                                    190 	.globl _TMR4L
                                    191 	.globl _TMR4H
                                    192 	.globl _TMR4CN1
                                    193 	.globl _TMR4CN0
                                    194 	.globl _TMR3RLL
                                    195 	.globl _TMR3RLH
                                    196 	.globl _TMR3L
                                    197 	.globl _TMR3H
                                    198 	.globl _TMR3CN1
                                    199 	.globl _TMR3CN0
                                    200 	.globl _TMR2RLL
                                    201 	.globl _TMR2RLH
                                    202 	.globl _TMR2L
                                    203 	.globl _TMR2H
                                    204 	.globl _TMR2CN1
                                    205 	.globl _TMR2CN0
                                    206 	.globl _TMOD
                                    207 	.globl _TL1
                                    208 	.globl _TL0
                                    209 	.globl _TH1
                                    210 	.globl _TH0
                                    211 	.globl _TCON
                                    212 	.globl _SPI0FCT
                                    213 	.globl _SPI0FCN1
                                    214 	.globl _SPI0FCN0
                                    215 	.globl _SPI0DAT
                                    216 	.globl _SPI0CN0
                                    217 	.globl _SPI0CKR
                                    218 	.globl _SPI0CFG
                                    219 	.globl _SP
                                    220 	.globl _SMOD1
                                    221 	.globl _SMB0TC
                                    222 	.globl _SMB0RXLN
                                    223 	.globl _SMB0FCT
                                    224 	.globl _SMB0FCN1
                                    225 	.globl _SMB0FCN0
                                    226 	.globl _SMB0DAT
                                    227 	.globl _SMB0CN0
                                    228 	.globl _SMB0CF
                                    229 	.globl _SMB0ADR
                                    230 	.globl _SMB0ADM
                                    231 	.globl _SFRSTACK
                                    232 	.globl _SFRPGCN
                                    233 	.globl _SFRPAGE
                                    234 	.globl _SCON1
                                    235 	.globl _SCON0
                                    236 	.globl _SBUF1
                                    237 	.globl _SBUF0
                                    238 	.globl _SBRLL1
                                    239 	.globl _SBRLH1
                                    240 	.globl _SBCON1
                                    241 	.globl _RSTSRC
                                    242 	.globl _REVID
                                    243 	.globl _REG1CN
                                    244 	.globl _REG0CN
                                    245 	.globl _REF0CN
                                    246 	.globl _PSW
                                    247 	.globl _PSCTL
                                    248 	.globl _PRTDRV
                                    249 	.globl _PFE0CN
                                    250 	.globl _PCON1
                                    251 	.globl _PCON0
                                    252 	.globl _PCA0PWM
                                    253 	.globl _PCA0POL
                                    254 	.globl _PCA0MD
                                    255 	.globl _PCA0L
                                    256 	.globl _PCA0H
                                    257 	.globl _PCA0CPM2
                                    258 	.globl _PCA0CPM1
                                    259 	.globl _PCA0CPM0
                                    260 	.globl _PCA0CPL2
                                    261 	.globl _PCA0CPL1
                                    262 	.globl _PCA0CPL0
                                    263 	.globl _PCA0CPH2
                                    264 	.globl _PCA0CPH1
                                    265 	.globl _PCA0CPH0
                                    266 	.globl _PCA0CN0
                                    267 	.globl _PCA0CLR
                                    268 	.globl _PCA0CENT
                                    269 	.globl _P3MDOUT
                                    270 	.globl _P3MDIN
                                    271 	.globl _P3
                                    272 	.globl _P2SKIP
                                    273 	.globl _P2MDOUT
                                    274 	.globl _P2MDIN
                                    275 	.globl _P2MAT
                                    276 	.globl _P2MASK
                                    277 	.globl _P2
                                    278 	.globl _P1SKIP
                                    279 	.globl _P1MDOUT
                                    280 	.globl _P1MDIN
                                    281 	.globl _P1MAT
                                    282 	.globl _P1MASK
                                    283 	.globl _P1
                                    284 	.globl _P0SKIP
                                    285 	.globl _P0MDOUT
                                    286 	.globl _P0MDIN
                                    287 	.globl _P0MAT
                                    288 	.globl _P0MASK
                                    289 	.globl _P0
                                    290 	.globl _LFO0CN
                                    291 	.globl _IT01CF
                                    292 	.globl _IPH
                                    293 	.globl _IP
                                    294 	.globl _IE
                                    295 	.globl _I2C0STAT
                                    296 	.globl _I2C0SLAD
                                    297 	.globl _I2C0FCT
                                    298 	.globl _I2C0FCN1
                                    299 	.globl _I2C0FCN0
                                    300 	.globl _I2C0DOUT
                                    301 	.globl _I2C0DIN
                                    302 	.globl _I2C0CN0
                                    303 	.globl _HFOCN
                                    304 	.globl _HFO1CAL
                                    305 	.globl _HFO0CAL
                                    306 	.globl _FLKEY
                                    307 	.globl _EMI0CN
                                    308 	.globl _EIP2H
                                    309 	.globl _EIP2
                                    310 	.globl _EIP1H
                                    311 	.globl _EIP1
                                    312 	.globl _EIE2
                                    313 	.globl _EIE1
                                    314 	.globl _DPL
                                    315 	.globl _DPH
                                    316 	.globl _DEVICEID
                                    317 	.globl _DERIVID
                                    318 	.globl _CRC0ST
                                    319 	.globl _CRC0IN
                                    320 	.globl _CRC0FLIP
                                    321 	.globl _CRC0DAT
                                    322 	.globl _CRC0CNT
                                    323 	.globl _CRC0CN1
                                    324 	.globl _CRC0CN0
                                    325 	.globl _CMP1MX
                                    326 	.globl _CMP1MD
                                    327 	.globl _CMP1CN1
                                    328 	.globl _CMP1CN0
                                    329 	.globl _CMP0MX
                                    330 	.globl _CMP0MD
                                    331 	.globl _CMP0CN1
                                    332 	.globl _CMP0CN0
                                    333 	.globl _CLKSEL
                                    334 	.globl _CKCON1
                                    335 	.globl _CKCON0
                                    336 	.globl _B
                                    337 	.globl _ADC0TK
                                    338 	.globl _ADC0PWR
                                    339 	.globl _ADC0MX
                                    340 	.globl _ADC0LTL
                                    341 	.globl _ADC0LTH
                                    342 	.globl _ADC0L
                                    343 	.globl _ADC0H
                                    344 	.globl _ADC0GTL
                                    345 	.globl _ADC0GTH
                                    346 	.globl _ADC0CN1
                                    347 	.globl _ADC0CN0
                                    348 	.globl _ADC0CF
                                    349 	.globl _ADC0AC
                                    350 	.globl _ACC
                                    351 	.globl _u2f_delay
                                    352 	.globl _usb_write
                                    353 	.globl _putf
                                    354 	.globl _dump_hex
                                    355 	.globl _u2f_prints
                                    356 	.globl ___int2strn
                                    357 	.globl _u2f_putd
                                    358 	.globl _u2f_putx
                                    359 	.globl _u2f_printd
                                    360 	.globl _u2f_printx
                                    361 	.globl _u2f_printb
                                    362 	.globl _u2f_printlx
                                    363 ;--------------------------------------------------------
                                    364 ; special function registers
                                    365 ;--------------------------------------------------------
                                    366 	.area RSEG    (ABS,DATA)
      000000                        367 	.org 0x0000
                           0000E0   368 G$ACC$0$0 == 0x00e0
                           0000E0   369 _ACC	=	0x00e0
                           0000B3   370 G$ADC0AC$0$0 == 0x00b3
                           0000B3   371 _ADC0AC	=	0x00b3
                           0000BC   372 G$ADC0CF$0$0 == 0x00bc
                           0000BC   373 _ADC0CF	=	0x00bc
                           0000E8   374 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   375 _ADC0CN0	=	0x00e8
                           0000B2   376 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   377 _ADC0CN1	=	0x00b2
                           0000C4   378 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   379 _ADC0GTH	=	0x00c4
                           0000C3   380 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   381 _ADC0GTL	=	0x00c3
                           0000BE   382 G$ADC0H$0$0 == 0x00be
                           0000BE   383 _ADC0H	=	0x00be
                           0000BD   384 G$ADC0L$0$0 == 0x00bd
                           0000BD   385 _ADC0L	=	0x00bd
                           0000C6   386 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   387 _ADC0LTH	=	0x00c6
                           0000C5   388 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   389 _ADC0LTL	=	0x00c5
                           0000BB   390 G$ADC0MX$0$0 == 0x00bb
                           0000BB   391 _ADC0MX	=	0x00bb
                           0000DF   392 G$ADC0PWR$0$0 == 0x00df
                           0000DF   393 _ADC0PWR	=	0x00df
                           0000B9   394 G$ADC0TK$0$0 == 0x00b9
                           0000B9   395 _ADC0TK	=	0x00b9
                           0000F0   396 G$B$0$0 == 0x00f0
                           0000F0   397 _B	=	0x00f0
                           00008E   398 G$CKCON0$0$0 == 0x008e
                           00008E   399 _CKCON0	=	0x008e
                           0000A6   400 G$CKCON1$0$0 == 0x00a6
                           0000A6   401 _CKCON1	=	0x00a6
                           0000A9   402 G$CLKSEL$0$0 == 0x00a9
                           0000A9   403 _CLKSEL	=	0x00a9
                           00009B   404 G$CMP0CN0$0$0 == 0x009b
                           00009B   405 _CMP0CN0	=	0x009b
                           000099   406 G$CMP0CN1$0$0 == 0x0099
                           000099   407 _CMP0CN1	=	0x0099
                           00009D   408 G$CMP0MD$0$0 == 0x009d
                           00009D   409 _CMP0MD	=	0x009d
                           00009F   410 G$CMP0MX$0$0 == 0x009f
                           00009F   411 _CMP0MX	=	0x009f
                           0000BF   412 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   413 _CMP1CN0	=	0x00bf
                           0000AC   414 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   415 _CMP1CN1	=	0x00ac
                           0000AB   416 G$CMP1MD$0$0 == 0x00ab
                           0000AB   417 _CMP1MD	=	0x00ab
                           0000AA   418 G$CMP1MX$0$0 == 0x00aa
                           0000AA   419 _CMP1MX	=	0x00aa
                           0000CE   420 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   421 _CRC0CN0	=	0x00ce
                           000086   422 G$CRC0CN1$0$0 == 0x0086
                           000086   423 _CRC0CN1	=	0x0086
                           0000D3   424 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   425 _CRC0CNT	=	0x00d3
                           0000DE   426 G$CRC0DAT$0$0 == 0x00de
                           0000DE   427 _CRC0DAT	=	0x00de
                           0000CF   428 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   429 _CRC0FLIP	=	0x00cf
                           0000DD   430 G$CRC0IN$0$0 == 0x00dd
                           0000DD   431 _CRC0IN	=	0x00dd
                           0000D2   432 G$CRC0ST$0$0 == 0x00d2
                           0000D2   433 _CRC0ST	=	0x00d2
                           0000AD   434 G$DERIVID$0$0 == 0x00ad
                           0000AD   435 _DERIVID	=	0x00ad
                           0000B5   436 G$DEVICEID$0$0 == 0x00b5
                           0000B5   437 _DEVICEID	=	0x00b5
                           000083   438 G$DPH$0$0 == 0x0083
                           000083   439 _DPH	=	0x0083
                           000082   440 G$DPL$0$0 == 0x0082
                           000082   441 _DPL	=	0x0082
                           0000E6   442 G$EIE1$0$0 == 0x00e6
                           0000E6   443 _EIE1	=	0x00e6
                           0000CE   444 G$EIE2$0$0 == 0x00ce
                           0000CE   445 _EIE2	=	0x00ce
                           0000F3   446 G$EIP1$0$0 == 0x00f3
                           0000F3   447 _EIP1	=	0x00f3
                           0000F5   448 G$EIP1H$0$0 == 0x00f5
                           0000F5   449 _EIP1H	=	0x00f5
                           0000F4   450 G$EIP2$0$0 == 0x00f4
                           0000F4   451 _EIP2	=	0x00f4
                           0000F6   452 G$EIP2H$0$0 == 0x00f6
                           0000F6   453 _EIP2H	=	0x00f6
                           0000E7   454 G$EMI0CN$0$0 == 0x00e7
                           0000E7   455 _EMI0CN	=	0x00e7
                           0000B7   456 G$FLKEY$0$0 == 0x00b7
                           0000B7   457 _FLKEY	=	0x00b7
                           0000C7   458 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   459 _HFO0CAL	=	0x00c7
                           0000D6   460 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   461 _HFO1CAL	=	0x00d6
                           0000EF   462 G$HFOCN$0$0 == 0x00ef
                           0000EF   463 _HFOCN	=	0x00ef
                           0000BA   464 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   465 _I2C0CN0	=	0x00ba
                           0000BC   466 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   467 _I2C0DIN	=	0x00bc
                           0000BB   468 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   469 _I2C0DOUT	=	0x00bb
                           0000AD   470 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   471 _I2C0FCN0	=	0x00ad
                           0000AB   472 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   473 _I2C0FCN1	=	0x00ab
                           0000F5   474 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   475 _I2C0FCT	=	0x00f5
                           0000BD   476 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   477 _I2C0SLAD	=	0x00bd
                           0000B9   478 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   479 _I2C0STAT	=	0x00b9
                           0000A8   480 G$IE$0$0 == 0x00a8
                           0000A8   481 _IE	=	0x00a8
                           0000B8   482 G$IP$0$0 == 0x00b8
                           0000B8   483 _IP	=	0x00b8
                           0000F2   484 G$IPH$0$0 == 0x00f2
                           0000F2   485 _IPH	=	0x00f2
                           0000E4   486 G$IT01CF$0$0 == 0x00e4
                           0000E4   487 _IT01CF	=	0x00e4
                           0000B1   488 G$LFO0CN$0$0 == 0x00b1
                           0000B1   489 _LFO0CN	=	0x00b1
                           000080   490 G$P0$0$0 == 0x0080
                           000080   491 _P0	=	0x0080
                           0000FE   492 G$P0MASK$0$0 == 0x00fe
                           0000FE   493 _P0MASK	=	0x00fe
                           0000FD   494 G$P0MAT$0$0 == 0x00fd
                           0000FD   495 _P0MAT	=	0x00fd
                           0000F1   496 G$P0MDIN$0$0 == 0x00f1
                           0000F1   497 _P0MDIN	=	0x00f1
                           0000A4   498 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   499 _P0MDOUT	=	0x00a4
                           0000D4   500 G$P0SKIP$0$0 == 0x00d4
                           0000D4   501 _P0SKIP	=	0x00d4
                           000090   502 G$P1$0$0 == 0x0090
                           000090   503 _P1	=	0x0090
                           0000EE   504 G$P1MASK$0$0 == 0x00ee
                           0000EE   505 _P1MASK	=	0x00ee
                           0000ED   506 G$P1MAT$0$0 == 0x00ed
                           0000ED   507 _P1MAT	=	0x00ed
                           0000F2   508 G$P1MDIN$0$0 == 0x00f2
                           0000F2   509 _P1MDIN	=	0x00f2
                           0000A5   510 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   511 _P1MDOUT	=	0x00a5
                           0000D5   512 G$P1SKIP$0$0 == 0x00d5
                           0000D5   513 _P1SKIP	=	0x00d5
                           0000A0   514 G$P2$0$0 == 0x00a0
                           0000A0   515 _P2	=	0x00a0
                           0000FC   516 G$P2MASK$0$0 == 0x00fc
                           0000FC   517 _P2MASK	=	0x00fc
                           0000FB   518 G$P2MAT$0$0 == 0x00fb
                           0000FB   519 _P2MAT	=	0x00fb
                           0000F3   520 G$P2MDIN$0$0 == 0x00f3
                           0000F3   521 _P2MDIN	=	0x00f3
                           0000A6   522 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   523 _P2MDOUT	=	0x00a6
                           0000CC   524 G$P2SKIP$0$0 == 0x00cc
                           0000CC   525 _P2SKIP	=	0x00cc
                           0000B0   526 G$P3$0$0 == 0x00b0
                           0000B0   527 _P3	=	0x00b0
                           0000F4   528 G$P3MDIN$0$0 == 0x00f4
                           0000F4   529 _P3MDIN	=	0x00f4
                           00009C   530 G$P3MDOUT$0$0 == 0x009c
                           00009C   531 _P3MDOUT	=	0x009c
                           00009E   532 G$PCA0CENT$0$0 == 0x009e
                           00009E   533 _PCA0CENT	=	0x009e
                           00009C   534 G$PCA0CLR$0$0 == 0x009c
                           00009C   535 _PCA0CLR	=	0x009c
                           0000D8   536 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   537 _PCA0CN0	=	0x00d8
                           0000FC   538 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   539 _PCA0CPH0	=	0x00fc
                           0000EA   540 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   541 _PCA0CPH1	=	0x00ea
                           0000EC   542 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   543 _PCA0CPH2	=	0x00ec
                           0000FB   544 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   545 _PCA0CPL0	=	0x00fb
                           0000E9   546 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   547 _PCA0CPL1	=	0x00e9
                           0000EB   548 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   549 _PCA0CPL2	=	0x00eb
                           0000DA   550 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   551 _PCA0CPM0	=	0x00da
                           0000DB   552 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   553 _PCA0CPM1	=	0x00db
                           0000DC   554 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   555 _PCA0CPM2	=	0x00dc
                           0000FA   556 G$PCA0H$0$0 == 0x00fa
                           0000FA   557 _PCA0H	=	0x00fa
                           0000F9   558 G$PCA0L$0$0 == 0x00f9
                           0000F9   559 _PCA0L	=	0x00f9
                           0000D9   560 G$PCA0MD$0$0 == 0x00d9
                           0000D9   561 _PCA0MD	=	0x00d9
                           000096   562 G$PCA0POL$0$0 == 0x0096
                           000096   563 _PCA0POL	=	0x0096
                           0000F7   564 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   565 _PCA0PWM	=	0x00f7
                           000087   566 G$PCON0$0$0 == 0x0087
                           000087   567 _PCON0	=	0x0087
                           00009A   568 G$PCON1$0$0 == 0x009a
                           00009A   569 _PCON1	=	0x009a
                           0000C1   570 G$PFE0CN$0$0 == 0x00c1
                           0000C1   571 _PFE0CN	=	0x00c1
                           0000F6   572 G$PRTDRV$0$0 == 0x00f6
                           0000F6   573 _PRTDRV	=	0x00f6
                           00008F   574 G$PSCTL$0$0 == 0x008f
                           00008F   575 _PSCTL	=	0x008f
                           0000D0   576 G$PSW$0$0 == 0x00d0
                           0000D0   577 _PSW	=	0x00d0
                           0000D1   578 G$REF0CN$0$0 == 0x00d1
                           0000D1   579 _REF0CN	=	0x00d1
                           0000C9   580 G$REG0CN$0$0 == 0x00c9
                           0000C9   581 _REG0CN	=	0x00c9
                           0000C6   582 G$REG1CN$0$0 == 0x00c6
                           0000C6   583 _REG1CN	=	0x00c6
                           0000B6   584 G$REVID$0$0 == 0x00b6
                           0000B6   585 _REVID	=	0x00b6
                           0000EF   586 G$RSTSRC$0$0 == 0x00ef
                           0000EF   587 _RSTSRC	=	0x00ef
                           000094   588 G$SBCON1$0$0 == 0x0094
                           000094   589 _SBCON1	=	0x0094
                           000096   590 G$SBRLH1$0$0 == 0x0096
                           000096   591 _SBRLH1	=	0x0096
                           000095   592 G$SBRLL1$0$0 == 0x0095
                           000095   593 _SBRLL1	=	0x0095
                           000099   594 G$SBUF0$0$0 == 0x0099
                           000099   595 _SBUF0	=	0x0099
                           000092   596 G$SBUF1$0$0 == 0x0092
                           000092   597 _SBUF1	=	0x0092
                           000098   598 G$SCON0$0$0 == 0x0098
                           000098   599 _SCON0	=	0x0098
                           0000C8   600 G$SCON1$0$0 == 0x00c8
                           0000C8   601 _SCON1	=	0x00c8
                           0000A7   602 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   603 _SFRPAGE	=	0x00a7
                           0000CF   604 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   605 _SFRPGCN	=	0x00cf
                           0000D7   606 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   607 _SFRSTACK	=	0x00d7
                           0000D6   608 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   609 _SMB0ADM	=	0x00d6
                           0000D7   610 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   611 _SMB0ADR	=	0x00d7
                           0000C1   612 G$SMB0CF$0$0 == 0x00c1
                           0000C1   613 _SMB0CF	=	0x00c1
                           0000C0   614 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   615 _SMB0CN0	=	0x00c0
                           0000C2   616 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   617 _SMB0DAT	=	0x00c2
                           0000C3   618 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   619 _SMB0FCN0	=	0x00c3
                           0000C4   620 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   621 _SMB0FCN1	=	0x00c4
                           0000EF   622 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   623 _SMB0FCT	=	0x00ef
                           0000C5   624 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   625 _SMB0RXLN	=	0x00c5
                           0000AC   626 G$SMB0TC$0$0 == 0x00ac
                           0000AC   627 _SMB0TC	=	0x00ac
                           000093   628 G$SMOD1$0$0 == 0x0093
                           000093   629 _SMOD1	=	0x0093
                           000081   630 G$SP$0$0 == 0x0081
                           000081   631 _SP	=	0x0081
                           0000A1   632 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   633 _SPI0CFG	=	0x00a1
                           0000A2   634 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   635 _SPI0CKR	=	0x00a2
                           0000F8   636 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   637 _SPI0CN0	=	0x00f8
                           0000A3   638 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   639 _SPI0DAT	=	0x00a3
                           00009A   640 G$SPI0FCN0$0$0 == 0x009a
                           00009A   641 _SPI0FCN0	=	0x009a
                           00009B   642 G$SPI0FCN1$0$0 == 0x009b
                           00009B   643 _SPI0FCN1	=	0x009b
                           0000F7   644 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   645 _SPI0FCT	=	0x00f7
                           000088   646 G$TCON$0$0 == 0x0088
                           000088   647 _TCON	=	0x0088
                           00008C   648 G$TH0$0$0 == 0x008c
                           00008C   649 _TH0	=	0x008c
                           00008D   650 G$TH1$0$0 == 0x008d
                           00008D   651 _TH1	=	0x008d
                           00008A   652 G$TL0$0$0 == 0x008a
                           00008A   653 _TL0	=	0x008a
                           00008B   654 G$TL1$0$0 == 0x008b
                           00008B   655 _TL1	=	0x008b
                           000089   656 G$TMOD$0$0 == 0x0089
                           000089   657 _TMOD	=	0x0089
                           0000C8   658 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   659 _TMR2CN0	=	0x00c8
                           0000FD   660 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   661 _TMR2CN1	=	0x00fd
                           0000CD   662 G$TMR2H$0$0 == 0x00cd
                           0000CD   663 _TMR2H	=	0x00cd
                           0000CC   664 G$TMR2L$0$0 == 0x00cc
                           0000CC   665 _TMR2L	=	0x00cc
                           0000CB   666 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   667 _TMR2RLH	=	0x00cb
                           0000CA   668 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   669 _TMR2RLL	=	0x00ca
                           000091   670 G$TMR3CN0$0$0 == 0x0091
                           000091   671 _TMR3CN0	=	0x0091
                           0000FE   672 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   673 _TMR3CN1	=	0x00fe
                           000095   674 G$TMR3H$0$0 == 0x0095
                           000095   675 _TMR3H	=	0x0095
                           000094   676 G$TMR3L$0$0 == 0x0094
                           000094   677 _TMR3L	=	0x0094
                           000093   678 G$TMR3RLH$0$0 == 0x0093
                           000093   679 _TMR3RLH	=	0x0093
                           000092   680 G$TMR3RLL$0$0 == 0x0092
                           000092   681 _TMR3RLL	=	0x0092
                           000098   682 G$TMR4CN0$0$0 == 0x0098
                           000098   683 _TMR4CN0	=	0x0098
                           0000FF   684 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   685 _TMR4CN1	=	0x00ff
                           0000A5   686 G$TMR4H$0$0 == 0x00a5
                           0000A5   687 _TMR4H	=	0x00a5
                           0000A4   688 G$TMR4L$0$0 == 0x00a4
                           0000A4   689 _TMR4L	=	0x00a4
                           0000A3   690 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   691 _TMR4RLH	=	0x00a3
                           0000A2   692 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   693 _TMR4RLL	=	0x00a2
                           00009D   694 G$UART1FCN0$0$0 == 0x009d
                           00009D   695 _UART1FCN0	=	0x009d
                           0000D8   696 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   697 _UART1FCN1	=	0x00d8
                           0000FA   698 G$UART1FCT$0$0 == 0x00fa
                           0000FA   699 _UART1FCT	=	0x00fa
                           00009E   700 G$UART1LIN$0$0 == 0x009e
                           00009E   701 _UART1LIN	=	0x009e
                           0000AE   702 G$USB0ADR$0$0 == 0x00ae
                           0000AE   703 _USB0ADR	=	0x00ae
                           0000B2   704 G$USB0AEC$0$0 == 0x00b2
                           0000B2   705 _USB0AEC	=	0x00b2
                           0000B6   706 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   707 _USB0CDCF	=	0x00b6
                           0000BE   708 G$USB0CDCN$0$0 == 0x00be
                           0000BE   709 _USB0CDCN	=	0x00be
                           0000BF   710 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   711 _USB0CDSTA	=	0x00bf
                           0000B5   712 G$USB0CF$0$0 == 0x00b5
                           0000B5   713 _USB0CF	=	0x00b5
                           0000AF   714 G$USB0DAT$0$0 == 0x00af
                           0000AF   715 _USB0DAT	=	0x00af
                           0000B3   716 G$USB0XCN$0$0 == 0x00b3
                           0000B3   717 _USB0XCN	=	0x00b3
                           0000FF   718 G$VDM0CN$0$0 == 0x00ff
                           0000FF   719 _VDM0CN	=	0x00ff
                           000097   720 G$WDTCN$0$0 == 0x0097
                           000097   721 _WDTCN	=	0x0097
                           0000E1   722 G$XBR0$0$0 == 0x00e1
                           0000E1   723 _XBR0	=	0x00e1
                           0000E2   724 G$XBR1$0$0 == 0x00e2
                           0000E2   725 _XBR1	=	0x00e2
                           0000E3   726 G$XBR2$0$0 == 0x00e3
                           0000E3   727 _XBR2	=	0x00e3
                           0000C3   728 G$ADC0GT$0$0 == 0x00c3
                           0000C3   729 _ADC0GT	=	0x00c3
                           0000BD   730 G$ADC0$0$0 == 0x00bd
                           0000BD   731 _ADC0	=	0x00bd
                           0000C5   732 G$ADC0LT$0$0 == 0x00c5
                           0000C5   733 _ADC0LT	=	0x00c5
                           000082   734 G$DP$0$0 == 0x0082
                           000082   735 _DP	=	0x0082
                           0000FB   736 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   737 _PCA0CP0	=	0x00fb
                           0000E9   738 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   739 _PCA0CP1	=	0x00e9
                           0000EB   740 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   741 _PCA0CP2	=	0x00eb
                           0000F9   742 G$PCA0$0$0 == 0x00f9
                           0000F9   743 _PCA0	=	0x00f9
                           000095   744 G$SBRL1$0$0 == 0x0095
                           000095   745 _SBRL1	=	0x0095
                           0000CC   746 G$TMR2$0$0 == 0x00cc
                           0000CC   747 _TMR2	=	0x00cc
                           0000CA   748 G$TMR2RL$0$0 == 0x00ca
                           0000CA   749 _TMR2RL	=	0x00ca
                           000094   750 G$TMR3$0$0 == 0x0094
                           000094   751 _TMR3	=	0x0094
                           000092   752 G$TMR3RL$0$0 == 0x0092
                           000092   753 _TMR3RL	=	0x0092
                           0000A4   754 G$TMR4$0$0 == 0x00a4
                           0000A4   755 _TMR4	=	0x00a4
                           0000A2   756 G$TMR4RL$0$0 == 0x00a2
                           0000A2   757 _TMR4RL	=	0x00a2
                           0000AA   758 G$_XPAGE$0$0 == 0x00aa
                           0000AA   759 __XPAGE	=	0x00aa
                                    760 ;--------------------------------------------------------
                                    761 ; special function bits
                                    762 ;--------------------------------------------------------
                                    763 	.area RSEG    (ABS,DATA)
      000000                        764 	.org 0x0000
                           0000E0   765 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   766 _ACC_ACC0	=	0x00e0
                           0000E1   767 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   768 _ACC_ACC1	=	0x00e1
                           0000E2   769 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   770 _ACC_ACC2	=	0x00e2
                           0000E3   771 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   772 _ACC_ACC3	=	0x00e3
                           0000E4   773 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   774 _ACC_ACC4	=	0x00e4
                           0000E5   775 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   776 _ACC_ACC5	=	0x00e5
                           0000E6   777 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   778 _ACC_ACC6	=	0x00e6
                           0000E7   779 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   780 _ACC_ACC7	=	0x00e7
                           0000E8   781 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   782 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   783 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   784 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   785 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   786 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   787 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   788 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   789 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   790 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   791 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   792 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   793 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   794 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   795 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   796 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   797 G$B_B0$0$0 == 0x00f0
                           0000F0   798 _B_B0	=	0x00f0
                           0000F1   799 G$B_B1$0$0 == 0x00f1
                           0000F1   800 _B_B1	=	0x00f1
                           0000F2   801 G$B_B2$0$0 == 0x00f2
                           0000F2   802 _B_B2	=	0x00f2
                           0000F3   803 G$B_B3$0$0 == 0x00f3
                           0000F3   804 _B_B3	=	0x00f3
                           0000F4   805 G$B_B4$0$0 == 0x00f4
                           0000F4   806 _B_B4	=	0x00f4
                           0000F5   807 G$B_B5$0$0 == 0x00f5
                           0000F5   808 _B_B5	=	0x00f5
                           0000F6   809 G$B_B6$0$0 == 0x00f6
                           0000F6   810 _B_B6	=	0x00f6
                           0000F7   811 G$B_B7$0$0 == 0x00f7
                           0000F7   812 _B_B7	=	0x00f7
                           0000A8   813 G$IE_EX0$0$0 == 0x00a8
                           0000A8   814 _IE_EX0	=	0x00a8
                           0000A9   815 G$IE_ET0$0$0 == 0x00a9
                           0000A9   816 _IE_ET0	=	0x00a9
                           0000AA   817 G$IE_EX1$0$0 == 0x00aa
                           0000AA   818 _IE_EX1	=	0x00aa
                           0000AB   819 G$IE_ET1$0$0 == 0x00ab
                           0000AB   820 _IE_ET1	=	0x00ab
                           0000AC   821 G$IE_ES0$0$0 == 0x00ac
                           0000AC   822 _IE_ES0	=	0x00ac
                           0000AD   823 G$IE_ET2$0$0 == 0x00ad
                           0000AD   824 _IE_ET2	=	0x00ad
                           0000AE   825 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   826 _IE_ESPI0	=	0x00ae
                           0000AF   827 G$IE_EA$0$0 == 0x00af
                           0000AF   828 _IE_EA	=	0x00af
                           0000B8   829 G$IP_PX0$0$0 == 0x00b8
                           0000B8   830 _IP_PX0	=	0x00b8
                           0000B9   831 G$IP_PT0$0$0 == 0x00b9
                           0000B9   832 _IP_PT0	=	0x00b9
                           0000BA   833 G$IP_PX1$0$0 == 0x00ba
                           0000BA   834 _IP_PX1	=	0x00ba
                           0000BB   835 G$IP_PT1$0$0 == 0x00bb
                           0000BB   836 _IP_PT1	=	0x00bb
                           0000BC   837 G$IP_PS0$0$0 == 0x00bc
                           0000BC   838 _IP_PS0	=	0x00bc
                           0000BD   839 G$IP_PT2$0$0 == 0x00bd
                           0000BD   840 _IP_PT2	=	0x00bd
                           0000BE   841 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   842 _IP_PSPI0	=	0x00be
                           000080   843 G$P0_B0$0$0 == 0x0080
                           000080   844 _P0_B0	=	0x0080
                           000081   845 G$P0_B1$0$0 == 0x0081
                           000081   846 _P0_B1	=	0x0081
                           000082   847 G$P0_B2$0$0 == 0x0082
                           000082   848 _P0_B2	=	0x0082
                           000083   849 G$P0_B3$0$0 == 0x0083
                           000083   850 _P0_B3	=	0x0083
                           000084   851 G$P0_B4$0$0 == 0x0084
                           000084   852 _P0_B4	=	0x0084
                           000085   853 G$P0_B5$0$0 == 0x0085
                           000085   854 _P0_B5	=	0x0085
                           000086   855 G$P0_B6$0$0 == 0x0086
                           000086   856 _P0_B6	=	0x0086
                           000087   857 G$P0_B7$0$0 == 0x0087
                           000087   858 _P0_B7	=	0x0087
                           000090   859 G$P1_B0$0$0 == 0x0090
                           000090   860 _P1_B0	=	0x0090
                           000091   861 G$P1_B1$0$0 == 0x0091
                           000091   862 _P1_B1	=	0x0091
                           000092   863 G$P1_B2$0$0 == 0x0092
                           000092   864 _P1_B2	=	0x0092
                           000093   865 G$P1_B3$0$0 == 0x0093
                           000093   866 _P1_B3	=	0x0093
                           000094   867 G$P1_B4$0$0 == 0x0094
                           000094   868 _P1_B4	=	0x0094
                           000095   869 G$P1_B5$0$0 == 0x0095
                           000095   870 _P1_B5	=	0x0095
                           000096   871 G$P1_B6$0$0 == 0x0096
                           000096   872 _P1_B6	=	0x0096
                           000097   873 G$P1_B7$0$0 == 0x0097
                           000097   874 _P1_B7	=	0x0097
                           0000A0   875 G$P2_B0$0$0 == 0x00a0
                           0000A0   876 _P2_B0	=	0x00a0
                           0000A1   877 G$P2_B1$0$0 == 0x00a1
                           0000A1   878 _P2_B1	=	0x00a1
                           0000A2   879 G$P2_B2$0$0 == 0x00a2
                           0000A2   880 _P2_B2	=	0x00a2
                           0000A3   881 G$P2_B3$0$0 == 0x00a3
                           0000A3   882 _P2_B3	=	0x00a3
                           0000B0   883 G$P3_B0$0$0 == 0x00b0
                           0000B0   884 _P3_B0	=	0x00b0
                           0000B1   885 G$P3_B1$0$0 == 0x00b1
                           0000B1   886 _P3_B1	=	0x00b1
                           0000D8   887 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   888 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   889 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   890 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   891 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   892 _PCA0CN0_CCF2	=	0x00da
                           0000DE   893 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   894 _PCA0CN0_CR	=	0x00de
                           0000DF   895 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   896 _PCA0CN0_CF	=	0x00df
                           0000D0   897 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   898 _PSW_PARITY	=	0x00d0
                           0000D1   899 G$PSW_F1$0$0 == 0x00d1
                           0000D1   900 _PSW_F1	=	0x00d1
                           0000D2   901 G$PSW_OV$0$0 == 0x00d2
                           0000D2   902 _PSW_OV	=	0x00d2
                           0000D3   903 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   904 _PSW_RS0	=	0x00d3
                           0000D4   905 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   906 _PSW_RS1	=	0x00d4
                           0000D5   907 G$PSW_F0$0$0 == 0x00d5
                           0000D5   908 _PSW_F0	=	0x00d5
                           0000D6   909 G$PSW_AC$0$0 == 0x00d6
                           0000D6   910 _PSW_AC	=	0x00d6
                           0000D7   911 G$PSW_CY$0$0 == 0x00d7
                           0000D7   912 _PSW_CY	=	0x00d7
                           000098   913 G$SCON0_RI$0$0 == 0x0098
                           000098   914 _SCON0_RI	=	0x0098
                           000099   915 G$SCON0_TI$0$0 == 0x0099
                           000099   916 _SCON0_TI	=	0x0099
                           00009A   917 G$SCON0_RB8$0$0 == 0x009a
                           00009A   918 _SCON0_RB8	=	0x009a
                           00009B   919 G$SCON0_TB8$0$0 == 0x009b
                           00009B   920 _SCON0_TB8	=	0x009b
                           00009C   921 G$SCON0_REN$0$0 == 0x009c
                           00009C   922 _SCON0_REN	=	0x009c
                           00009D   923 G$SCON0_MCE$0$0 == 0x009d
                           00009D   924 _SCON0_MCE	=	0x009d
                           00009F   925 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   926 _SCON0_SMODE	=	0x009f
                           0000C8   927 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   928 _SCON1_RI	=	0x00c8
                           0000C9   929 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   930 _SCON1_TI	=	0x00c9
                           0000CA   931 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   932 _SCON1_RBX	=	0x00ca
                           0000CB   933 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   934 _SCON1_TBX	=	0x00cb
                           0000CC   935 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   936 _SCON1_REN	=	0x00cc
                           0000CE   937 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   938 _SCON1_PERR	=	0x00ce
                           0000CF   939 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   940 _SCON1_OVR	=	0x00cf
                           0000C0   941 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   942 _SMB0CN0_SI	=	0x00c0
                           0000C1   943 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   944 _SMB0CN0_ACK	=	0x00c1
                           0000C2   945 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   946 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   947 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   948 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   949 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   950 _SMB0CN0_STO	=	0x00c4
                           0000C5   951 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   952 _SMB0CN0_STA	=	0x00c5
                           0000C6   953 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   954 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   955 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   956 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   957 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   958 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   959 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   960 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   961 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   962 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   963 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   964 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   965 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   966 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   967 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   968 _SPI0CN0_MODF	=	0x00fd
                           0000FE   969 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   970 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   971 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   972 _SPI0CN0_SPIF	=	0x00ff
                           000088   973 G$TCON_IT0$0$0 == 0x0088
                           000088   974 _TCON_IT0	=	0x0088
                           000089   975 G$TCON_IE0$0$0 == 0x0089
                           000089   976 _TCON_IE0	=	0x0089
                           00008A   977 G$TCON_IT1$0$0 == 0x008a
                           00008A   978 _TCON_IT1	=	0x008a
                           00008B   979 G$TCON_IE1$0$0 == 0x008b
                           00008B   980 _TCON_IE1	=	0x008b
                           00008C   981 G$TCON_TR0$0$0 == 0x008c
                           00008C   982 _TCON_TR0	=	0x008c
                           00008D   983 G$TCON_TF0$0$0 == 0x008d
                           00008D   984 _TCON_TF0	=	0x008d
                           00008E   985 G$TCON_TR1$0$0 == 0x008e
                           00008E   986 _TCON_TR1	=	0x008e
                           00008F   987 G$TCON_TF1$0$0 == 0x008f
                           00008F   988 _TCON_TF1	=	0x008f
                           0000C8   989 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   990 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   991 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   992 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   993 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   994 _TMR2CN0_TR2	=	0x00ca
                           0000CB   995 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   996 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   997 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   998 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   999 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD  1000 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE  1001 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE  1002 _TMR2CN0_TF2L	=	0x00ce
                           0000CF  1003 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF  1004 _TMR2CN0_TF2H	=	0x00cf
                           000098  1005 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1006 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1007 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1008 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1009 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1010 _TMR4CN0_TR4	=	0x009a
                           00009B  1011 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1012 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1013 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1014 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1015 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1016 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1017 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1018 _TMR4CN0_TF4L	=	0x009e
                           00009F  1019 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1020 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1021 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1022 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1023 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1024 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1025 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1026 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1027 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1028 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1029 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1030 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1031 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1032 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1033 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1034 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1035 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1036 _UART1FCN1_TFRQ	=	0x00df
                           000095  1037 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1038 _U2F_BUTTON	=	0x0095
                           000096  1039 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1040 _U2F_BUTTON_VAL	=	0x0096
                           000091  1041 G$U2F_RED$0$0 == 0x0091
                           000091  1042 _U2F_RED	=	0x0091
                           000090  1043 G$U2F_GREEN$0$0 == 0x0090
                           000090  1044 _U2F_GREEN	=	0x0090
                           000087  1045 G$U2F_BLUE$0$0 == 0x0087
                           000087  1046 _U2F_BLUE	=	0x0087
                                   1047 ;--------------------------------------------------------
                                   1048 ; overlayable register banks
                                   1049 ;--------------------------------------------------------
                                   1050 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1051 	.ds 8
                                   1052 ;--------------------------------------------------------
                                   1053 ; overlayable bit register bank
                                   1054 ;--------------------------------------------------------
                                   1055 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1056 bits:
      000020                       1057 	.ds 1
                           008000  1058 	b0 = bits[0]
                           008100  1059 	b1 = bits[1]
                           008200  1060 	b2 = bits[2]
                           008300  1061 	b3 = bits[3]
                           008400  1062 	b4 = bits[4]
                           008500  1063 	b5 = bits[5]
                           008600  1064 	b6 = bits[6]
                           008700  1065 	b7 = bits[7]
                                   1066 ;--------------------------------------------------------
                                   1067 ; internal ram data
                                   1068 ;--------------------------------------------------------
                                   1069 	.area DSEG    (DATA)
                                   1070 ;--------------------------------------------------------
                                   1071 ; overlayable items in internal ram 
                                   1072 ;--------------------------------------------------------
                                   1073 ;--------------------------------------------------------
                                   1074 ; indirectly addressable internal ram data
                                   1075 ;--------------------------------------------------------
                                   1076 	.area ISEG    (DATA)
                                   1077 ;--------------------------------------------------------
                                   1078 ; absolute internal ram data
                                   1079 ;--------------------------------------------------------
                                   1080 	.area IABS    (ABS,DATA)
                                   1081 	.area IABS    (ABS,DATA)
                                   1082 ;--------------------------------------------------------
                                   1083 ; bit data
                                   1084 ;--------------------------------------------------------
                                   1085 	.area BSEG    (BIT)
                                   1086 ;--------------------------------------------------------
                                   1087 ; paged external ram data
                                   1088 ;--------------------------------------------------------
                                   1089 	.area PSEG    (PAG,XDATA)
                                   1090 ;--------------------------------------------------------
                                   1091 ; external ram data
                                   1092 ;--------------------------------------------------------
                                   1093 	.area XSEG    (XDATA)
                           000000  1094 Fbsp$__int2str_buf$0$0==.
      0001E1                       1095 ___int2str_buf:
      0001E1                       1096 	.ds 9
                                   1097 ;--------------------------------------------------------
                                   1098 ; absolute external ram data
                                   1099 ;--------------------------------------------------------
                                   1100 	.area XABS    (ABS,XDATA)
                                   1101 ;--------------------------------------------------------
                                   1102 ; external initialized ram data
                                   1103 ;--------------------------------------------------------
                                   1104 	.area XISEG   (XDATA)
                           000000  1105 Fbsp$__digits$0$0==.
      0002FB                       1106 ___digits:
      0002FB                       1107 	.ds 3
                                   1108 	.area HOME    (CODE)
                                   1109 	.area GSINIT0 (CODE)
                                   1110 	.area GSINIT1 (CODE)
                                   1111 	.area GSINIT2 (CODE)
                                   1112 	.area GSINIT3 (CODE)
                                   1113 	.area GSINIT4 (CODE)
                                   1114 	.area GSINIT5 (CODE)
                                   1115 	.area GSINIT  (CODE)
                                   1116 	.area GSFINAL (CODE)
                                   1117 	.area CSEG    (CODE)
                                   1118 ;--------------------------------------------------------
                                   1119 ; global & static initialisations
                                   1120 ;--------------------------------------------------------
                                   1121 	.area HOME    (CODE)
                                   1122 	.area GSINIT  (CODE)
                                   1123 	.area GSFINAL (CODE)
                                   1124 	.area GSINIT  (CODE)
                                   1125 ;--------------------------------------------------------
                                   1126 ; Home
                                   1127 ;--------------------------------------------------------
                                   1128 	.area HOME    (CODE)
                                   1129 	.area HOME    (CODE)
                                   1130 ;--------------------------------------------------------
                                   1131 ; code
                                   1132 ;--------------------------------------------------------
                                   1133 	.area CSEG    (CODE)
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'u2f_delay'
                                   1136 ;------------------------------------------------------------
                                   1137 ;ms                        Allocated to stack - _bp +1
                                   1138 ;ms_now                    Allocated to stack - _bp +5
                                   1139 ;------------------------------------------------------------
                           000000  1140 	G$u2f_delay$0$0 ==.
                           000000  1141 	C$bsp.c$34$0$0 ==.
                                   1142 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:34: void u2f_delay(uint32_t ms) {
                                   1143 ;	-----------------------------------------
                                   1144 ;	 function u2f_delay
                                   1145 ;	-----------------------------------------
      001E24                       1146 _u2f_delay:
                           000007  1147 	ar7 = 0x07
                           000006  1148 	ar6 = 0x06
                           000005  1149 	ar5 = 0x05
                           000004  1150 	ar4 = 0x04
                           000003  1151 	ar3 = 0x03
                           000002  1152 	ar2 = 0x02
                           000001  1153 	ar1 = 0x01
                           000000  1154 	ar0 = 0x00
      001E24 C0 1B            [24] 1155 	push	_bp
      001E26 85 81 1B         [24] 1156 	mov	_bp,sp
      001E29 C0 82            [24] 1157 	push	dpl
      001E2B C0 83            [24] 1158 	push	dph
      001E2D C0 F0            [24] 1159 	push	b
      001E2F C0 E0            [24] 1160 	push	acc
      001E31 E5 81            [12] 1161 	mov	a,sp
      001E33 24 04            [12] 1162 	add	a,#0x04
      001E35 F5 81            [12] 1163 	mov	sp,a
                           000013  1164 	C$bsp.c$35$1$0 ==.
                                   1165 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:35: uint32_t ms_now = get_ms();
      001E37 E5 1B            [12] 1166 	mov	a,_bp
      001E39 24 05            [12] 1167 	add	a,#0x05
      001E3B F8               [12] 1168 	mov	r0,a
      001E3C A6 08            [24] 1169 	mov	@r0,__MS_
      001E3E 08               [12] 1170 	inc	r0
      001E3F A6 09            [24] 1171 	mov	@r0,(__MS_ + 1)
      001E41 08               [12] 1172 	inc	r0
      001E42 A6 0A            [24] 1173 	mov	@r0,(__MS_ + 2)
      001E44 08               [12] 1174 	inc	r0
      001E45 A6 0B            [24] 1175 	mov	@r0,(__MS_ + 3)
                           000023  1176 	C$bsp.c$36$1$132 ==.
                                   1177 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:36: while((get_ms() - ms_now) < ms)
      001E47                       1178 00101$:
      001E47 E5 1B            [12] 1179 	mov	a,_bp
      001E49 24 05            [12] 1180 	add	a,#0x05
      001E4B F8               [12] 1181 	mov	r0,a
      001E4C E5 08            [12] 1182 	mov	a,__MS_
      001E4E C3               [12] 1183 	clr	c
      001E4F 96               [12] 1184 	subb	a,@r0
      001E50 FC               [12] 1185 	mov	r4,a
      001E51 E5 09            [12] 1186 	mov	a,(__MS_ + 1)
      001E53 08               [12] 1187 	inc	r0
      001E54 96               [12] 1188 	subb	a,@r0
      001E55 FD               [12] 1189 	mov	r5,a
      001E56 E5 0A            [12] 1190 	mov	a,(__MS_ + 2)
      001E58 08               [12] 1191 	inc	r0
      001E59 96               [12] 1192 	subb	a,@r0
      001E5A FE               [12] 1193 	mov	r6,a
      001E5B E5 0B            [12] 1194 	mov	a,(__MS_ + 3)
      001E5D 08               [12] 1195 	inc	r0
      001E5E 96               [12] 1196 	subb	a,@r0
      001E5F FF               [12] 1197 	mov	r7,a
      001E60 A8 1B            [24] 1198 	mov	r0,_bp
      001E62 08               [12] 1199 	inc	r0
      001E63 C3               [12] 1200 	clr	c
      001E64 EC               [12] 1201 	mov	a,r4
      001E65 96               [12] 1202 	subb	a,@r0
      001E66 ED               [12] 1203 	mov	a,r5
      001E67 08               [12] 1204 	inc	r0
      001E68 96               [12] 1205 	subb	a,@r0
      001E69 EE               [12] 1206 	mov	a,r6
      001E6A 08               [12] 1207 	inc	r0
      001E6B 96               [12] 1208 	subb	a,@r0
      001E6C EF               [12] 1209 	mov	a,r7
      001E6D 08               [12] 1210 	inc	r0
      001E6E 96               [12] 1211 	subb	a,@r0
      001E6F 50 05            [24] 1212 	jnc	00104$
                           00004D  1213 	C$bsp.c$38$2$133 ==.
                                   1214 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:38: watchdog();
      001E71 75 97 A5         [24] 1215 	mov	_WDTCN,#0xa5
      001E74 80 D1            [24] 1216 	sjmp	00101$
      001E76                       1217 00104$:
      001E76 85 1B 81         [24] 1218 	mov	sp,_bp
      001E79 D0 1B            [24] 1219 	pop	_bp
                           000057  1220 	C$bsp.c$40$1$132 ==.
                           000057  1221 	XG$u2f_delay$0$0 ==.
      001E7B 22               [24] 1222 	ret
                                   1223 ;------------------------------------------------------------
                                   1224 ;Allocation info for local variables in function 'usb_write'
                                   1225 ;------------------------------------------------------------
                                   1226 ;len                       Allocated to stack - _bp -3
                                   1227 ;buf                       Allocated to registers r5 r6 r7 
                                   1228 ;errors                    Allocated to registers r4 
                                   1229 ;------------------------------------------------------------
                           000058  1230 	G$usb_write$0$0 ==.
                           000058  1231 	C$bsp.c$42$1$132 ==.
                                   1232 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:42: void usb_write(uint8_t* buf, uint8_t len)
                                   1233 ;	-----------------------------------------
                                   1234 ;	 function usb_write
                                   1235 ;	-----------------------------------------
      001E7C                       1236 _usb_write:
      001E7C C0 1B            [24] 1237 	push	_bp
      001E7E 85 81 1B         [24] 1238 	mov	_bp,sp
      001E81 AD 82            [24] 1239 	mov	r5,dpl
      001E83 AE 83            [24] 1240 	mov	r6,dph
      001E85 AF F0            [24] 1241 	mov	r7,b
                           000063  1242 	C$bsp.c$45$1$135 ==.
                                   1243 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:45: while (USB_STATUS_OK != (USBD_Write(EP1IN, buf, len, false)))
      001E87 7C 00            [12] 1244 	mov	r4,#0x00
      001E89                       1245 00103$:
      001E89 E5 1B            [12] 1246 	mov	a,_bp
      001E8B 24 FD            [12] 1247 	add	a,#0xfd
      001E8D F8               [12] 1248 	mov	r0,a
      001E8E 86 02            [24] 1249 	mov	ar2,@r0
      001E90 7B 00            [12] 1250 	mov	r3,#0x00
      001E92 C0 07            [24] 1251 	push	ar7
      001E94 C0 06            [24] 1252 	push	ar6
      001E96 C0 05            [24] 1253 	push	ar5
      001E98 C0 04            [24] 1254 	push	ar4
      001E9A C0 02            [24] 1255 	push	ar2
      001E9C C0 03            [24] 1256 	push	ar3
      001E9E C0 05            [24] 1257 	push	ar5
      001EA0 C0 06            [24] 1258 	push	ar6
      001EA2 C0 07            [24] 1259 	push	ar7
      001EA4 C2 F0            [12] 1260 	clr	b[0]
      001EA6 85 F0 20         [24] 1261 	mov	bits,b
      001EA9 75 82 01         [24] 1262 	mov	dpl,#0x01
      001EAC 12 29 5C         [24] 1263 	lcall	_USBD_Write
      001EAF AB 82            [24] 1264 	mov	r3,dpl
      001EB1 E5 81            [12] 1265 	mov	a,sp
      001EB3 24 FB            [12] 1266 	add	a,#0xfb
      001EB5 F5 81            [12] 1267 	mov	sp,a
      001EB7 D0 04            [24] 1268 	pop	ar4
      001EB9 D0 05            [24] 1269 	pop	ar5
      001EBB D0 06            [24] 1270 	pop	ar6
      001EBD D0 07            [24] 1271 	pop	ar7
      001EBF EB               [12] 1272 	mov	a,r3
      001EC0 60 27            [24] 1273 	jz	00106$
                           00009E  1274 	C$bsp.c$47$2$136 ==.
                                   1275 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:47: u2f_delay(2);
      001EC2 90 00 02         [24] 1276 	mov	dptr,#(0x02&0x00ff)
      001EC5 E4               [12] 1277 	clr	a
      001EC6 F5 F0            [12] 1278 	mov	b,a
      001EC8 C0 07            [24] 1279 	push	ar7
      001ECA C0 06            [24] 1280 	push	ar6
      001ECC C0 05            [24] 1281 	push	ar5
      001ECE C0 04            [24] 1282 	push	ar4
      001ED0 12 1E 24         [24] 1283 	lcall	_u2f_delay
      001ED3 D0 04            [24] 1284 	pop	ar4
      001ED5 D0 05            [24] 1285 	pop	ar5
      001ED7 D0 06            [24] 1286 	pop	ar6
      001ED9 D0 07            [24] 1287 	pop	ar7
                           0000B7  1288 	C$bsp.c$48$2$136 ==.
                                   1289 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:48: if (errors++ > 30)
      001EDB 8C 03            [24] 1290 	mov	ar3,r4
      001EDD 0C               [12] 1291 	inc	r4
      001EDE EB               [12] 1292 	mov	a,r3
      001EDF 24 E1            [12] 1293 	add	a,#0xff - 0x1e
      001EE1 50 A6            [24] 1294 	jnc	00103$
                           0000BF  1295 	C$bsp.c$50$3$137 ==.
                                   1296 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:50: set_app_error(ERROR_USB_WRITE);
      001EE3 75 82 14         [24] 1297 	mov	dpl,#0x14
      001EE6 12 00 A4         [24] 1298 	lcall	_set_app_error
                           0000C5  1299 	C$bsp.c$51$1$135 ==.
                                   1300 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:51: break;
      001EE9                       1301 00106$:
      001EE9 D0 1B            [24] 1302 	pop	_bp
                           0000C7  1303 	C$bsp.c$54$1$135 ==.
                           0000C7  1304 	XG$usb_write$0$0 ==.
      001EEB 22               [24] 1305 	ret
                                   1306 ;------------------------------------------------------------
                                   1307 ;Allocation info for local variables in function 'putf'
                                   1308 ;------------------------------------------------------------
                                   1309 ;c                         Allocated to registers 
                                   1310 ;i                         Allocated to registers r7 
                                   1311 ;------------------------------------------------------------
                           0000C8  1312 	G$putf$0$0 ==.
                           0000C8  1313 	C$bsp.c$60$1$135 ==.
                                   1314 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:60: void putf(char c)
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function putf
                                   1317 ;	-----------------------------------------
      001EEC                       1318 _putf:
      001EEC 85 82 99         [24] 1319 	mov	_SBUF0,dpl
                           0000CB  1320 	C$bsp.c$65$1$139 ==.
                                   1321 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:65: for (i=0; i<200; i++){}
      001EEF 7F C8            [12] 1322 	mov	r7,#0xc8
      001EF1                       1323 00106$:
      001EF1 DF FE            [24] 1324 	djnz	r7,00106$
                           0000CF  1325 	C$bsp.c$66$1$139 ==.
                                   1326 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:66: for (i=0; i<200; i++){}
      001EF3 7F C8            [12] 1327 	mov	r7,#0xc8
      001EF5                       1328 00109$:
      001EF5 DF FE            [24] 1329 	djnz	r7,00109$
                           0000D3  1330 	C$bsp.c$67$1$139 ==.
                                   1331 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:67: for (i=0; i<190; i++){}
      001EF7 7F BE            [12] 1332 	mov	r7,#0xbe
      001EF9                       1333 00112$:
      001EF9 DF FE            [24] 1334 	djnz	r7,00112$
                           0000D7  1335 	C$bsp.c$68$1$139 ==.
                                   1336 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:68: watchdog();
      001EFB 75 97 A5         [24] 1337 	mov	_WDTCN,#0xa5
                           0000DA  1338 	C$bsp.c$69$1$139 ==.
                           0000DA  1339 	XG$putf$0$0 ==.
      001EFE 22               [24] 1340 	ret
                                   1341 ;------------------------------------------------------------
                                   1342 ;Allocation info for local variables in function 'dump_hex'
                                   1343 ;------------------------------------------------------------
                                   1344 ;len                       Allocated to stack - _bp -3
                                   1345 ;hex                       Allocated to stack - _bp +1
                                   1346 ;i                         Allocated to registers r4 
                                   1347 ;------------------------------------------------------------
                           0000DB  1348 	G$dump_hex$0$0 ==.
                           0000DB  1349 	C$bsp.c$72$1$139 ==.
                                   1350 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:72: void dump_hex(uint8_t* hex, uint8_t len)
                                   1351 ;	-----------------------------------------
                                   1352 ;	 function dump_hex
                                   1353 ;	-----------------------------------------
      001EFF                       1354 _dump_hex:
      001EFF C0 1B            [24] 1355 	push	_bp
      001F01 85 81 1B         [24] 1356 	mov	_bp,sp
      001F04 C0 82            [24] 1357 	push	dpl
      001F06 C0 83            [24] 1358 	push	dph
      001F08 C0 F0            [24] 1359 	push	b
                           0000E6  1360 	C$bsp.c$75$3$146 ==.
                                   1361 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:75: for (i=0 ; i < len ; i++)
      001F0A 7C 00            [12] 1362 	mov	r4,#0x00
      001F0C                       1363 00105$:
      001F0C E5 1B            [12] 1364 	mov	a,_bp
      001F0E 24 FD            [12] 1365 	add	a,#0xfd
      001F10 F8               [12] 1366 	mov	r0,a
      001F11 C3               [12] 1367 	clr	c
      001F12 EC               [12] 1368 	mov	a,r4
      001F13 96               [12] 1369 	subb	a,@r0
      001F14 50 57            [24] 1370 	jnc	00103$
                           0000F2  1371 	C$bsp.c$77$2$145 ==.
                                   1372 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:77: if (hex[i]<0x10)
      001F16 A8 1B            [24] 1373 	mov	r0,_bp
      001F18 08               [12] 1374 	inc	r0
      001F19 EC               [12] 1375 	mov	a,r4
      001F1A 26               [12] 1376 	add	a,@r0
      001F1B FA               [12] 1377 	mov	r2,a
      001F1C E4               [12] 1378 	clr	a
      001F1D 08               [12] 1379 	inc	r0
      001F1E 36               [12] 1380 	addc	a,@r0
      001F1F FB               [12] 1381 	mov	r3,a
      001F20 08               [12] 1382 	inc	r0
      001F21 86 07            [24] 1383 	mov	ar7,@r0
      001F23 8A 82            [24] 1384 	mov	dpl,r2
      001F25 8B 83            [24] 1385 	mov	dph,r3
      001F27 8F F0            [24] 1386 	mov	b,r7
      001F29 12 5E 3E         [24] 1387 	lcall	__gptrget
      001F2C FA               [12] 1388 	mov	r2,a
      001F2D BA 10 00         [24] 1389 	cjne	r2,#0x10,00120$
      001F30                       1390 00120$:
      001F30 50 0D            [24] 1391 	jnc	00102$
                           00010E  1392 	C$bsp.c$79$3$146 ==.
                                   1393 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:79: u2f_prints("0\n");
      001F32 90 5E A2         [24] 1394 	mov	dptr,#___str_0
      001F35 75 F0 80         [24] 1395 	mov	b,#0x80
      001F38 C0 04            [24] 1396 	push	ar4
      001F3A 12 1F 7C         [24] 1397 	lcall	_u2f_prints
      001F3D D0 04            [24] 1398 	pop	ar4
      001F3F                       1399 00102$:
                           00011B  1400 	C$bsp.c$81$2$145 ==.
                                   1401 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:81: u2f_putb(hex[i]);
      001F3F A8 1B            [24] 1402 	mov	r0,_bp
      001F41 08               [12] 1403 	inc	r0
      001F42 EC               [12] 1404 	mov	a,r4
      001F43 26               [12] 1405 	add	a,@r0
      001F44 FD               [12] 1406 	mov	r5,a
      001F45 E4               [12] 1407 	clr	a
      001F46 08               [12] 1408 	inc	r0
      001F47 36               [12] 1409 	addc	a,@r0
      001F48 FE               [12] 1410 	mov	r6,a
      001F49 08               [12] 1411 	inc	r0
      001F4A 86 07            [24] 1412 	mov	ar7,@r0
      001F4C 8D 82            [24] 1413 	mov	dpl,r5
      001F4E 8E 83            [24] 1414 	mov	dph,r6
      001F50 8F F0            [24] 1415 	mov	b,r7
      001F52 12 5E 3E         [24] 1416 	lcall	__gptrget
      001F55 FD               [12] 1417 	mov	r5,a
      001F56 7F 00            [12] 1418 	mov	r7,#0x00
      001F58 7E 00            [12] 1419 	mov	r6,#0x00
      001F5A 7B 00            [12] 1420 	mov	r3,#0x00
      001F5C 8D 82            [24] 1421 	mov	dpl,r5
      001F5E 8F 83            [24] 1422 	mov	dph,r7
      001F60 8E F0            [24] 1423 	mov	b,r6
      001F62 EB               [12] 1424 	mov	a,r3
      001F63 C0 04            [24] 1425 	push	ar4
      001F65 12 22 37         [24] 1426 	lcall	_u2f_putx
      001F68 D0 04            [24] 1427 	pop	ar4
                           000146  1428 	C$bsp.c$75$1$144 ==.
                                   1429 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:75: for (i=0 ; i < len ; i++)
      001F6A 0C               [12] 1430 	inc	r4
      001F6B 80 9F            [24] 1431 	sjmp	00105$
      001F6D                       1432 00103$:
                           000149  1433 	C$bsp.c$83$1$144 ==.
                                   1434 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:83: u2f_prints("\r\n");
      001F6D 90 5E A5         [24] 1435 	mov	dptr,#___str_1
      001F70 75 F0 80         [24] 1436 	mov	b,#0x80
      001F73 12 1F 7C         [24] 1437 	lcall	_u2f_prints
      001F76 85 1B 81         [24] 1438 	mov	sp,_bp
      001F79 D0 1B            [24] 1439 	pop	_bp
                           000157  1440 	C$bsp.c$84$1$144 ==.
                           000157  1441 	XG$dump_hex$0$0 ==.
      001F7B 22               [24] 1442 	ret
                                   1443 ;------------------------------------------------------------
                                   1444 ;Allocation info for local variables in function 'u2f_prints'
                                   1445 ;------------------------------------------------------------
                                   1446 ;d                         Allocated to registers 
                                   1447 ;------------------------------------------------------------
                           000158  1448 	G$u2f_prints$0$0 ==.
                           000158  1449 	C$bsp.c$86$1$144 ==.
                                   1450 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:86: void u2f_prints(char* d)
                                   1451 ;	-----------------------------------------
                                   1452 ;	 function u2f_prints
                                   1453 ;	-----------------------------------------
      001F7C                       1454 _u2f_prints:
      001F7C AD 82            [24] 1455 	mov	r5,dpl
      001F7E AE 83            [24] 1456 	mov	r6,dph
      001F80 AF F0            [24] 1457 	mov	r7,b
                           00015E  1458 	C$bsp.c$88$1$148 ==.
                                   1459 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:88: while(*d)
      001F82                       1460 00101$:
      001F82 8D 82            [24] 1461 	mov	dpl,r5
      001F84 8E 83            [24] 1462 	mov	dph,r6
      001F86 8F F0            [24] 1463 	mov	b,r7
      001F88 12 5E 3E         [24] 1464 	lcall	__gptrget
      001F8B FC               [12] 1465 	mov	r4,a
      001F8C 60 18            [24] 1466 	jz	00104$
                           00016A  1467 	C$bsp.c$91$2$149 ==.
                                   1468 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:91: putf(*d++);
      001F8E 0D               [12] 1469 	inc	r5
      001F8F BD 00 01         [24] 1470 	cjne	r5,#0x00,00114$
      001F92 0E               [12] 1471 	inc	r6
      001F93                       1472 00114$:
      001F93 8C 82            [24] 1473 	mov	dpl,r4
      001F95 C0 07            [24] 1474 	push	ar7
      001F97 C0 06            [24] 1475 	push	ar6
      001F99 C0 05            [24] 1476 	push	ar5
      001F9B 12 1E EC         [24] 1477 	lcall	_putf
      001F9E D0 05            [24] 1478 	pop	ar5
      001FA0 D0 06            [24] 1479 	pop	ar6
      001FA2 D0 07            [24] 1480 	pop	ar7
      001FA4 80 DC            [24] 1481 	sjmp	00101$
      001FA6                       1482 00104$:
                           000182  1483 	C$bsp.c$93$1$148 ==.
                           000182  1484 	XG$u2f_prints$0$0 ==.
      001FA6 22               [24] 1485 	ret
                                   1486 ;------------------------------------------------------------
                                   1487 ;Allocation info for local variables in function 'int2str_reduce_n'
                                   1488 ;------------------------------------------------------------
                                   1489 ;copy                      Allocated to stack - _bp -6
                                   1490 ;n                         Allocated to stack - _bp -7
                                   1491 ;snum                      Allocated to registers 
                                   1492 ;------------------------------------------------------------
                           000183  1493 	Fbsp$int2str_reduce_n$0$0 ==.
                           000183  1494 	C$bsp.c$95$1$148 ==.
                                   1495 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:95: static void int2str_reduce_n(char ** snum, uint32_t copy, uint8_t n)
                                   1496 ;	-----------------------------------------
                                   1497 ;	 function int2str_reduce_n
                                   1498 ;	-----------------------------------------
      001FA7                       1499 _int2str_reduce_n:
      001FA7 C0 1B            [24] 1500 	push	_bp
      001FA9 85 81 1B         [24] 1501 	mov	_bp,sp
                           000188  1502 	C$bsp.c$97$1$151 ==.
                                   1503 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:97: do
      001FAC                       1504 00101$:
                           000188  1505 	C$bsp.c$99$2$152 ==.
                                   1506 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:99: copy /= n;
      001FAC E5 1B            [12] 1507 	mov	a,_bp
      001FAE 24 F9            [12] 1508 	add	a,#0xf9
      001FB0 F8               [12] 1509 	mov	r0,a
      001FB1 86 04            [24] 1510 	mov	ar4,@r0
      001FB3 7D 00            [12] 1511 	mov	r5,#0x00
      001FB5 7E 00            [12] 1512 	mov	r6,#0x00
      001FB7 7F 00            [12] 1513 	mov	r7,#0x00
      001FB9 C0 04            [24] 1514 	push	ar4
      001FBB C0 05            [24] 1515 	push	ar5
      001FBD C0 06            [24] 1516 	push	ar6
      001FBF C0 07            [24] 1517 	push	ar7
      001FC1 E5 1B            [12] 1518 	mov	a,_bp
      001FC3 24 FA            [12] 1519 	add	a,#0xfa
      001FC5 F8               [12] 1520 	mov	r0,a
      001FC6 86 82            [24] 1521 	mov	dpl,@r0
      001FC8 08               [12] 1522 	inc	r0
      001FC9 86 83            [24] 1523 	mov	dph,@r0
      001FCB 08               [12] 1524 	inc	r0
      001FCC 86 F0            [24] 1525 	mov	b,@r0
      001FCE 08               [12] 1526 	inc	r0
      001FCF E6               [12] 1527 	mov	a,@r0
      001FD0 12 5D 46         [24] 1528 	lcall	__divulong
      001FD3 AC 82            [24] 1529 	mov	r4,dpl
      001FD5 AD 83            [24] 1530 	mov	r5,dph
      001FD7 AE F0            [24] 1531 	mov	r6,b
      001FD9 FF               [12] 1532 	mov	r7,a
      001FDA E5 81            [12] 1533 	mov	a,sp
      001FDC 24 FC            [12] 1534 	add	a,#0xfc
      001FDE F5 81            [12] 1535 	mov	sp,a
      001FE0 E5 1B            [12] 1536 	mov	a,_bp
      001FE2 24 FA            [12] 1537 	add	a,#0xfa
      001FE4 F8               [12] 1538 	mov	r0,a
      001FE5 A6 04            [24] 1539 	mov	@r0,ar4
      001FE7 08               [12] 1540 	inc	r0
      001FE8 A6 05            [24] 1541 	mov	@r0,ar5
      001FEA 08               [12] 1542 	inc	r0
      001FEB A6 06            [24] 1543 	mov	@r0,ar6
      001FED 08               [12] 1544 	inc	r0
      001FEE A6 07            [24] 1545 	mov	@r0,ar7
                           0001CC  1546 	C$bsp.c$100$1$151 ==.
                                   1547 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:100: }while(copy);
      001FF0 E5 1B            [12] 1548 	mov	a,_bp
      001FF2 24 FA            [12] 1549 	add	a,#0xfa
      001FF4 F8               [12] 1550 	mov	r0,a
      001FF5 E6               [12] 1551 	mov	a,@r0
      001FF6 08               [12] 1552 	inc	r0
      001FF7 46               [12] 1553 	orl	a,@r0
      001FF8 08               [12] 1554 	inc	r0
      001FF9 46               [12] 1555 	orl	a,@r0
      001FFA 08               [12] 1556 	inc	r0
      001FFB 46               [12] 1557 	orl	a,@r0
      001FFC 70 AE            [24] 1558 	jnz	00101$
      001FFE D0 1B            [24] 1559 	pop	_bp
                           0001DC  1560 	C$bsp.c$101$1$151 ==.
                           0001DC  1561 	XFbsp$int2str_reduce_n$0$0 ==.
      002000 22               [24] 1562 	ret
                                   1563 ;------------------------------------------------------------
                                   1564 ;Allocation info for local variables in function 'int2str_map_n'
                                   1565 ;------------------------------------------------------------
                                   1566 ;i                         Allocated to stack - _bp -6
                                   1567 ;n                         Allocated to stack - _bp -7
                                   1568 ;snum                      Allocated to registers r5 r6 r7 
                                   1569 ;sloc0                     Allocated to stack - _bp +1
                                   1570 ;sloc1                     Allocated to stack - _bp +4
                                   1571 ;sloc2                     Allocated to stack - _bp +8
                                   1572 ;------------------------------------------------------------
                           0001DD  1573 	Fbsp$int2str_map_n$0$0 ==.
                           0001DD  1574 	C$bsp.c$107$1$151 ==.
                                   1575 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:107: static void int2str_map_n(char ** snum, uint32_t i, uint8_t n)
                                   1576 ;	-----------------------------------------
                                   1577 ;	 function int2str_map_n
                                   1578 ;	-----------------------------------------
      002001                       1579 _int2str_map_n:
      002001 C0 1B            [24] 1580 	push	_bp
      002003 E5 81            [12] 1581 	mov	a,sp
      002005 F5 1B            [12] 1582 	mov	_bp,a
      002007 24 0B            [12] 1583 	add	a,#0x0b
      002009 F5 81            [12] 1584 	mov	sp,a
      00200B AD 82            [24] 1585 	mov	r5,dpl
      00200D AE 83            [24] 1586 	mov	r6,dph
      00200F AF F0            [24] 1587 	mov	r7,b
                           0001ED  1588 	C$bsp.c$109$1$154 ==.
                                   1589 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:109: do
      002011                       1590 00101$:
                           0001ED  1591 	C$bsp.c$111$2$155 ==.
                                   1592 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:111: *--*snum = __digits[i % n];
      002011 8D 82            [24] 1593 	mov	dpl,r5
      002013 8E 83            [24] 1594 	mov	dph,r6
      002015 8F F0            [24] 1595 	mov	b,r7
      002017 12 5E 3E         [24] 1596 	lcall	__gptrget
      00201A FA               [12] 1597 	mov	r2,a
      00201B A3               [24] 1598 	inc	dptr
      00201C 12 5E 3E         [24] 1599 	lcall	__gptrget
      00201F FB               [12] 1600 	mov	r3,a
      002020 A3               [24] 1601 	inc	dptr
      002021 12 5E 3E         [24] 1602 	lcall	__gptrget
      002024 FC               [12] 1603 	mov	r4,a
      002025 A8 1B            [24] 1604 	mov	r0,_bp
      002027 08               [12] 1605 	inc	r0
      002028 EA               [12] 1606 	mov	a,r2
      002029 24 FF            [12] 1607 	add	a,#0xff
      00202B F6               [12] 1608 	mov	@r0,a
      00202C EB               [12] 1609 	mov	a,r3
      00202D 34 FF            [12] 1610 	addc	a,#0xff
      00202F 08               [12] 1611 	inc	r0
      002030 F6               [12] 1612 	mov	@r0,a
      002031 08               [12] 1613 	inc	r0
      002032 A6 04            [24] 1614 	mov	@r0,ar4
      002034 8D 82            [24] 1615 	mov	dpl,r5
      002036 8E 83            [24] 1616 	mov	dph,r6
      002038 8F F0            [24] 1617 	mov	b,r7
      00203A A8 1B            [24] 1618 	mov	r0,_bp
      00203C 08               [12] 1619 	inc	r0
      00203D E6               [12] 1620 	mov	a,@r0
      00203E 12 5A 48         [24] 1621 	lcall	__gptrput
      002041 A3               [24] 1622 	inc	dptr
      002042 08               [12] 1623 	inc	r0
      002043 E6               [12] 1624 	mov	a,@r0
      002044 12 5A 48         [24] 1625 	lcall	__gptrput
      002047 A3               [24] 1626 	inc	dptr
      002048 08               [12] 1627 	inc	r0
      002049 E6               [12] 1628 	mov	a,@r0
      00204A 12 5A 48         [24] 1629 	lcall	__gptrput
      00204D C0 05            [24] 1630 	push	ar5
      00204F C0 06            [24] 1631 	push	ar6
      002051 C0 07            [24] 1632 	push	ar7
      002053 E5 1B            [12] 1633 	mov	a,_bp
      002055 24 F9            [12] 1634 	add	a,#0xf9
      002057 F8               [12] 1635 	mov	r0,a
      002058 E5 1B            [12] 1636 	mov	a,_bp
      00205A 24 04            [12] 1637 	add	a,#0x04
      00205C F9               [12] 1638 	mov	r1,a
      00205D E6               [12] 1639 	mov	a,@r0
      00205E F7               [12] 1640 	mov	@r1,a
      00205F 09               [12] 1641 	inc	r1
      002060 77 00            [12] 1642 	mov	@r1,#0x00
      002062 09               [12] 1643 	inc	r1
      002063 77 00            [12] 1644 	mov	@r1,#0x00
      002065 09               [12] 1645 	inc	r1
      002066 77 00            [12] 1646 	mov	@r1,#0x00
      002068 C0 07            [24] 1647 	push	ar7
      00206A C0 06            [24] 1648 	push	ar6
      00206C C0 05            [24] 1649 	push	ar5
      00206E E5 1B            [12] 1650 	mov	a,_bp
      002070 24 04            [12] 1651 	add	a,#0x04
      002072 F8               [12] 1652 	mov	r0,a
      002073 E6               [12] 1653 	mov	a,@r0
      002074 C0 E0            [24] 1654 	push	acc
      002076 08               [12] 1655 	inc	r0
      002077 E6               [12] 1656 	mov	a,@r0
      002078 C0 E0            [24] 1657 	push	acc
      00207A 08               [12] 1658 	inc	r0
      00207B E6               [12] 1659 	mov	a,@r0
      00207C C0 E0            [24] 1660 	push	acc
      00207E 08               [12] 1661 	inc	r0
      00207F E6               [12] 1662 	mov	a,@r0
      002080 C0 E0            [24] 1663 	push	acc
      002082 E5 1B            [12] 1664 	mov	a,_bp
      002084 24 FA            [12] 1665 	add	a,#0xfa
      002086 F8               [12] 1666 	mov	r0,a
      002087 86 82            [24] 1667 	mov	dpl,@r0
      002089 08               [12] 1668 	inc	r0
      00208A 86 83            [24] 1669 	mov	dph,@r0
      00208C 08               [12] 1670 	inc	r0
      00208D 86 F0            [24] 1671 	mov	b,@r0
      00208F 08               [12] 1672 	inc	r0
      002090 E6               [12] 1673 	mov	a,@r0
      002091 12 5C 83         [24] 1674 	lcall	__modulong
      002094 C8               [12] 1675 	xch	a,r0
      002095 E5 1B            [12] 1676 	mov	a,_bp
      002097 24 08            [12] 1677 	add	a,#0x08
      002099 C8               [12] 1678 	xch	a,r0
      00209A A6 82            [24] 1679 	mov	@r0,dpl
      00209C 08               [12] 1680 	inc	r0
      00209D A6 83            [24] 1681 	mov	@r0,dph
      00209F 08               [12] 1682 	inc	r0
      0020A0 A6 F0            [24] 1683 	mov	@r0,b
      0020A2 08               [12] 1684 	inc	r0
      0020A3 F6               [12] 1685 	mov	@r0,a
      0020A4 E5 81            [12] 1686 	mov	a,sp
      0020A6 24 FC            [12] 1687 	add	a,#0xfc
      0020A8 F5 81            [12] 1688 	mov	sp,a
      0020AA D0 05            [24] 1689 	pop	ar5
      0020AC D0 06            [24] 1690 	pop	ar6
      0020AE D0 07            [24] 1691 	pop	ar7
      0020B0 90 02 FB         [24] 1692 	mov	dptr,#___digits
      0020B3 E0               [24] 1693 	movx	a,@dptr
      0020B4 FC               [12] 1694 	mov	r4,a
      0020B5 A3               [24] 1695 	inc	dptr
      0020B6 E0               [24] 1696 	movx	a,@dptr
      0020B7 FD               [12] 1697 	mov	r5,a
      0020B8 A3               [24] 1698 	inc	dptr
      0020B9 E0               [24] 1699 	movx	a,@dptr
      0020BA FF               [12] 1700 	mov	r7,a
      0020BB E5 1B            [12] 1701 	mov	a,_bp
      0020BD 24 08            [12] 1702 	add	a,#0x08
      0020BF F8               [12] 1703 	mov	r0,a
      0020C0 E6               [12] 1704 	mov	a,@r0
      0020C1 2C               [12] 1705 	add	a,r4
      0020C2 FC               [12] 1706 	mov	r4,a
      0020C3 08               [12] 1707 	inc	r0
      0020C4 E6               [12] 1708 	mov	a,@r0
      0020C5 3D               [12] 1709 	addc	a,r5
      0020C6 FD               [12] 1710 	mov	r5,a
      0020C7 8C 82            [24] 1711 	mov	dpl,r4
      0020C9 8D 83            [24] 1712 	mov	dph,r5
      0020CB 8F F0            [24] 1713 	mov	b,r7
      0020CD 12 5E 3E         [24] 1714 	lcall	__gptrget
      0020D0 FC               [12] 1715 	mov	r4,a
      0020D1 A8 1B            [24] 1716 	mov	r0,_bp
      0020D3 08               [12] 1717 	inc	r0
      0020D4 86 82            [24] 1718 	mov	dpl,@r0
      0020D6 08               [12] 1719 	inc	r0
      0020D7 86 83            [24] 1720 	mov	dph,@r0
      0020D9 08               [12] 1721 	inc	r0
      0020DA 86 F0            [24] 1722 	mov	b,@r0
      0020DC EC               [12] 1723 	mov	a,r4
      0020DD 12 5A 48         [24] 1724 	lcall	__gptrput
                           0002BC  1725 	C$bsp.c$112$1$154 ==.
                                   1726 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:112: i /= n;
      0020E0 E5 1B            [12] 1727 	mov	a,_bp
      0020E2 24 04            [12] 1728 	add	a,#0x04
      0020E4 F8               [12] 1729 	mov	r0,a
      0020E5 E6               [12] 1730 	mov	a,@r0
      0020E6 C0 E0            [24] 1731 	push	acc
      0020E8 08               [12] 1732 	inc	r0
      0020E9 E6               [12] 1733 	mov	a,@r0
      0020EA C0 E0            [24] 1734 	push	acc
      0020EC 08               [12] 1735 	inc	r0
      0020ED E6               [12] 1736 	mov	a,@r0
      0020EE C0 E0            [24] 1737 	push	acc
      0020F0 08               [12] 1738 	inc	r0
      0020F1 E6               [12] 1739 	mov	a,@r0
      0020F2 C0 E0            [24] 1740 	push	acc
      0020F4 E5 1B            [12] 1741 	mov	a,_bp
      0020F6 24 FA            [12] 1742 	add	a,#0xfa
      0020F8 F8               [12] 1743 	mov	r0,a
      0020F9 86 82            [24] 1744 	mov	dpl,@r0
      0020FB 08               [12] 1745 	inc	r0
      0020FC 86 83            [24] 1746 	mov	dph,@r0
      0020FE 08               [12] 1747 	inc	r0
      0020FF 86 F0            [24] 1748 	mov	b,@r0
      002101 08               [12] 1749 	inc	r0
      002102 E6               [12] 1750 	mov	a,@r0
      002103 12 5D 46         [24] 1751 	lcall	__divulong
      002106 AC 82            [24] 1752 	mov	r4,dpl
      002108 AD 83            [24] 1753 	mov	r5,dph
      00210A AE F0            [24] 1754 	mov	r6,b
      00210C FF               [12] 1755 	mov	r7,a
      00210D E5 81            [12] 1756 	mov	a,sp
      00210F 24 FC            [12] 1757 	add	a,#0xfc
      002111 F5 81            [12] 1758 	mov	sp,a
      002113 E5 1B            [12] 1759 	mov	a,_bp
      002115 24 FA            [12] 1760 	add	a,#0xfa
      002117 F8               [12] 1761 	mov	r0,a
      002118 A6 04            [24] 1762 	mov	@r0,ar4
      00211A 08               [12] 1763 	inc	r0
      00211B A6 05            [24] 1764 	mov	@r0,ar5
      00211D 08               [12] 1765 	inc	r0
      00211E A6 06            [24] 1766 	mov	@r0,ar6
      002120 08               [12] 1767 	inc	r0
      002121 A6 07            [24] 1768 	mov	@r0,ar7
                           0002FF  1769 	C$bsp.c$113$1$154 ==.
                                   1770 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:113: }while(i);
      002123 D0 07            [24] 1771 	pop	ar7
      002125 D0 06            [24] 1772 	pop	ar6
      002127 D0 05            [24] 1773 	pop	ar5
      002129 E5 1B            [12] 1774 	mov	a,_bp
      00212B 24 FA            [12] 1775 	add	a,#0xfa
      00212D F8               [12] 1776 	mov	r0,a
      00212E E6               [12] 1777 	mov	a,@r0
      00212F 08               [12] 1778 	inc	r0
      002130 46               [12] 1779 	orl	a,@r0
      002131 08               [12] 1780 	inc	r0
      002132 46               [12] 1781 	orl	a,@r0
      002133 08               [12] 1782 	inc	r0
      002134 46               [12] 1783 	orl	a,@r0
      002135 60 03            [24] 1784 	jz	00109$
      002137 02 20 11         [24] 1785 	ljmp	00101$
      00213A                       1786 00109$:
      00213A 85 1B 81         [24] 1787 	mov	sp,_bp
      00213D D0 1B            [24] 1788 	pop	_bp
                           00031B  1789 	C$bsp.c$114$1$154 ==.
                           00031B  1790 	XFbsp$int2str_map_n$0$0 ==.
      00213F 22               [24] 1791 	ret
                                   1792 ;------------------------------------------------------------
                                   1793 ;Allocation info for local variables in function '__int2strn'
                                   1794 ;------------------------------------------------------------
                                   1795 ;n                         Allocated to stack - _bp -3
                                   1796 ;i                         Allocated to stack - _bp +1
                                   1797 ;snum                      Allocated to stack - _bp +5
                                   1798 ;------------------------------------------------------------
                           00031C  1799 	G$__int2strn$0$0 ==.
                           00031C  1800 	C$bsp.c$119$1$154 ==.
                                   1801 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:119: char * __int2strn(int32_t i, uint8_t n)
                                   1802 ;	-----------------------------------------
                                   1803 ;	 function __int2strn
                                   1804 ;	-----------------------------------------
      002140                       1805 ___int2strn:
      002140 C0 1B            [24] 1806 	push	_bp
      002142 85 81 1B         [24] 1807 	mov	_bp,sp
      002145 C0 82            [24] 1808 	push	dpl
      002147 C0 83            [24] 1809 	push	dph
      002149 C0 F0            [24] 1810 	push	b
      00214B C0 E0            [24] 1811 	push	acc
      00214D 05 81            [12] 1812 	inc	sp
      00214F 05 81            [12] 1813 	inc	sp
      002151 05 81            [12] 1814 	inc	sp
                           00032F  1815 	C$bsp.c$121$1$154 ==.
                                   1816 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:121: char * snum = __int2str_buf;
      002153 E5 1B            [12] 1817 	mov	a,_bp
      002155 24 05            [12] 1818 	add	a,#0x05
      002157 F8               [12] 1819 	mov	r0,a
      002158 76 E1            [12] 1820 	mov	@r0,#___int2str_buf
      00215A 08               [12] 1821 	inc	r0
      00215B 76 01            [12] 1822 	mov	@r0,#(___int2str_buf >> 8)
      00215D 08               [12] 1823 	inc	r0
      00215E 76 00            [12] 1824 	mov	@r0,#0x00
                           00033C  1825 	C$bsp.c$122$1$157 ==.
                                   1826 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:122: if (i<0) *snum++ = '-';
      002160 A8 1B            [24] 1827 	mov	r0,_bp
      002162 08               [12] 1828 	inc	r0
      002163 08               [12] 1829 	inc	r0
      002164 08               [12] 1830 	inc	r0
      002165 08               [12] 1831 	inc	r0
      002166 E6               [12] 1832 	mov	a,@r0
      002167 30 E7 18         [24] 1833 	jnb	acc.7,00102$
      00216A 90 01 E1         [24] 1834 	mov	dptr,#___int2str_buf
      00216D 74 2D            [12] 1835 	mov	a,#0x2d
      00216F F0               [24] 1836 	movx	@dptr,a
      002170 E5 1B            [12] 1837 	mov	a,_bp
      002172 24 05            [12] 1838 	add	a,#0x05
      002174 F8               [12] 1839 	mov	r0,a
      002175 74 01            [12] 1840 	mov	a,#0x01
      002177 24 E1            [12] 1841 	add	a,#___int2str_buf
      002179 F6               [12] 1842 	mov	@r0,a
      00217A E4               [12] 1843 	clr	a
      00217B 34 01            [12] 1844 	addc	a,#(___int2str_buf >> 8)
      00217D 08               [12] 1845 	inc	r0
      00217E F6               [12] 1846 	mov	@r0,a
      00217F 08               [12] 1847 	inc	r0
      002180 76 00            [12] 1848 	mov	@r0,#0x00
      002182                       1849 00102$:
                           00035E  1850 	C$bsp.c$123$1$157 ==.
                                   1851 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:123: int2str_reduce_n(&snum, i, n);
      002182 E5 1B            [12] 1852 	mov	a,_bp
      002184 24 05            [12] 1853 	add	a,#0x05
      002186 FB               [12] 1854 	mov	r3,a
      002187 FA               [12] 1855 	mov	r2,a
      002188 7E 00            [12] 1856 	mov	r6,#0x00
      00218A 7F 40            [12] 1857 	mov	r7,#0x40
      00218C C0 03            [24] 1858 	push	ar3
      00218E E5 1B            [12] 1859 	mov	a,_bp
      002190 24 FD            [12] 1860 	add	a,#0xfd
      002192 F8               [12] 1861 	mov	r0,a
      002193 E6               [12] 1862 	mov	a,@r0
      002194 C0 E0            [24] 1863 	push	acc
      002196 A8 1B            [24] 1864 	mov	r0,_bp
      002198 08               [12] 1865 	inc	r0
      002199 E6               [12] 1866 	mov	a,@r0
      00219A C0 E0            [24] 1867 	push	acc
      00219C 08               [12] 1868 	inc	r0
      00219D E6               [12] 1869 	mov	a,@r0
      00219E C0 E0            [24] 1870 	push	acc
      0021A0 08               [12] 1871 	inc	r0
      0021A1 E6               [12] 1872 	mov	a,@r0
      0021A2 C0 E0            [24] 1873 	push	acc
      0021A4 08               [12] 1874 	inc	r0
      0021A5 E6               [12] 1875 	mov	a,@r0
      0021A6 C0 E0            [24] 1876 	push	acc
      0021A8 8A 82            [24] 1877 	mov	dpl,r2
      0021AA 8E 83            [24] 1878 	mov	dph,r6
      0021AC 8F F0            [24] 1879 	mov	b,r7
      0021AE 12 1F A7         [24] 1880 	lcall	_int2str_reduce_n
      0021B1 E5 81            [12] 1881 	mov	a,sp
      0021B3 24 FB            [12] 1882 	add	a,#0xfb
      0021B5 F5 81            [12] 1883 	mov	sp,a
      0021B7 D0 03            [24] 1884 	pop	ar3
                           000395  1885 	C$bsp.c$124$1$157 ==.
                                   1886 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:124: *snum = '\0';
      0021B9 E5 1B            [12] 1887 	mov	a,_bp
      0021BB 24 05            [12] 1888 	add	a,#0x05
      0021BD F8               [12] 1889 	mov	r0,a
      0021BE 86 05            [24] 1890 	mov	ar5,@r0
      0021C0 08               [12] 1891 	inc	r0
      0021C1 86 06            [24] 1892 	mov	ar6,@r0
      0021C3 08               [12] 1893 	inc	r0
      0021C4 86 07            [24] 1894 	mov	ar7,@r0
      0021C6 8D 82            [24] 1895 	mov	dpl,r5
      0021C8 8E 83            [24] 1896 	mov	dph,r6
      0021CA 8F F0            [24] 1897 	mov	b,r7
      0021CC E4               [12] 1898 	clr	a
      0021CD 12 5A 48         [24] 1899 	lcall	__gptrput
                           0003AC  1900 	C$bsp.c$125$1$157 ==.
                                   1901 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:125: int2str_map_n(&snum, i, n);
      0021D0 7F 00            [12] 1902 	mov	r7,#0x00
      0021D2 7E 40            [12] 1903 	mov	r6,#0x40
      0021D4 E5 1B            [12] 1904 	mov	a,_bp
      0021D6 24 FD            [12] 1905 	add	a,#0xfd
      0021D8 F8               [12] 1906 	mov	r0,a
      0021D9 E6               [12] 1907 	mov	a,@r0
      0021DA C0 E0            [24] 1908 	push	acc
      0021DC A8 1B            [24] 1909 	mov	r0,_bp
      0021DE 08               [12] 1910 	inc	r0
      0021DF E6               [12] 1911 	mov	a,@r0
      0021E0 C0 E0            [24] 1912 	push	acc
      0021E2 08               [12] 1913 	inc	r0
      0021E3 E6               [12] 1914 	mov	a,@r0
      0021E4 C0 E0            [24] 1915 	push	acc
      0021E6 08               [12] 1916 	inc	r0
      0021E7 E6               [12] 1917 	mov	a,@r0
      0021E8 C0 E0            [24] 1918 	push	acc
      0021EA 08               [12] 1919 	inc	r0
      0021EB E6               [12] 1920 	mov	a,@r0
      0021EC C0 E0            [24] 1921 	push	acc
      0021EE 8B 82            [24] 1922 	mov	dpl,r3
      0021F0 8F 83            [24] 1923 	mov	dph,r7
      0021F2 8E F0            [24] 1924 	mov	b,r6
      0021F4 12 20 01         [24] 1925 	lcall	_int2str_map_n
      0021F7 E5 81            [12] 1926 	mov	a,sp
      0021F9 24 FB            [12] 1927 	add	a,#0xfb
      0021FB F5 81            [12] 1928 	mov	sp,a
                           0003D9  1929 	C$bsp.c$126$1$157 ==.
                                   1930 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:126: return snum;
      0021FD E5 1B            [12] 1931 	mov	a,_bp
      0021FF 24 05            [12] 1932 	add	a,#0x05
      002201 F8               [12] 1933 	mov	r0,a
      002202 86 82            [24] 1934 	mov	dpl,@r0
      002204 08               [12] 1935 	inc	r0
      002205 86 83            [24] 1936 	mov	dph,@r0
      002207 08               [12] 1937 	inc	r0
      002208 86 F0            [24] 1938 	mov	b,@r0
      00220A 85 1B 81         [24] 1939 	mov	sp,_bp
      00220D D0 1B            [24] 1940 	pop	_bp
                           0003EB  1941 	C$bsp.c$127$1$157 ==.
                           0003EB  1942 	XG$__int2strn$0$0 ==.
      00220F 22               [24] 1943 	ret
                                   1944 ;------------------------------------------------------------
                                   1945 ;Allocation info for local variables in function 'u2f_putd'
                                   1946 ;------------------------------------------------------------
                                   1947 ;i                         Allocated to registers r4 r5 r6 r7 
                                   1948 ;------------------------------------------------------------
                           0003EC  1949 	G$u2f_putd$0$0 ==.
                           0003EC  1950 	C$bsp.c$129$1$157 ==.
                                   1951 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:129: void u2f_putd(int32_t i)
                                   1952 ;	-----------------------------------------
                                   1953 ;	 function u2f_putd
                                   1954 ;	-----------------------------------------
      002210                       1955 _u2f_putd:
      002210 AC 82            [24] 1956 	mov	r4,dpl
      002212 AD 83            [24] 1957 	mov	r5,dph
      002214 AE F0            [24] 1958 	mov	r6,b
      002216 FF               [12] 1959 	mov	r7,a
                           0003F3  1960 	C$bsp.c$131$1$159 ==.
                                   1961 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:131: u2f_prints(dint2str((int32_t)i));
      002217 74 0A            [12] 1962 	mov	a,#0x0a
      002219 C0 E0            [24] 1963 	push	acc
      00221B 8C 82            [24] 1964 	mov	dpl,r4
      00221D 8D 83            [24] 1965 	mov	dph,r5
      00221F 8E F0            [24] 1966 	mov	b,r6
      002221 EF               [12] 1967 	mov	a,r7
      002222 12 21 40         [24] 1968 	lcall	___int2strn
      002225 AD 82            [24] 1969 	mov	r5,dpl
      002227 AE 83            [24] 1970 	mov	r6,dph
      002229 AF F0            [24] 1971 	mov	r7,b
      00222B 15 81            [12] 1972 	dec	sp
      00222D 8D 82            [24] 1973 	mov	dpl,r5
      00222F 8E 83            [24] 1974 	mov	dph,r6
      002231 8F F0            [24] 1975 	mov	b,r7
      002233 12 1F 7C         [24] 1976 	lcall	_u2f_prints
                           000412  1977 	C$bsp.c$132$1$159 ==.
                           000412  1978 	XG$u2f_putd$0$0 ==.
      002236 22               [24] 1979 	ret
                                   1980 ;------------------------------------------------------------
                                   1981 ;Allocation info for local variables in function 'u2f_putx'
                                   1982 ;------------------------------------------------------------
                                   1983 ;i                         Allocated to registers r4 r5 r6 r7 
                                   1984 ;------------------------------------------------------------
                           000413  1985 	G$u2f_putx$0$0 ==.
                           000413  1986 	C$bsp.c$134$1$159 ==.
                                   1987 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:134: void u2f_putx(int32_t i)
                                   1988 ;	-----------------------------------------
                                   1989 ;	 function u2f_putx
                                   1990 ;	-----------------------------------------
      002237                       1991 _u2f_putx:
      002237 AC 82            [24] 1992 	mov	r4,dpl
      002239 AD 83            [24] 1993 	mov	r5,dph
      00223B AE F0            [24] 1994 	mov	r6,b
      00223D FF               [12] 1995 	mov	r7,a
                           00041A  1996 	C$bsp.c$136$1$161 ==.
                                   1997 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:136: u2f_prints(xint2str(i));
      00223E 74 10            [12] 1998 	mov	a,#0x10
      002240 C0 E0            [24] 1999 	push	acc
      002242 8C 82            [24] 2000 	mov	dpl,r4
      002244 8D 83            [24] 2001 	mov	dph,r5
      002246 8E F0            [24] 2002 	mov	b,r6
      002248 EF               [12] 2003 	mov	a,r7
      002249 12 21 40         [24] 2004 	lcall	___int2strn
      00224C AD 82            [24] 2005 	mov	r5,dpl
      00224E AE 83            [24] 2006 	mov	r6,dph
      002250 AF F0            [24] 2007 	mov	r7,b
      002252 15 81            [12] 2008 	dec	sp
      002254 8D 82            [24] 2009 	mov	dpl,r5
      002256 8E 83            [24] 2010 	mov	dph,r6
      002258 8F F0            [24] 2011 	mov	b,r7
      00225A 12 1F 7C         [24] 2012 	lcall	_u2f_prints
                           000439  2013 	C$bsp.c$137$1$161 ==.
                           000439  2014 	XG$u2f_putx$0$0 ==.
      00225D 22               [24] 2015 	ret
                                   2016 ;------------------------------------------------------------
                                   2017 ;Allocation info for local variables in function 'put_space'
                                   2018 ;------------------------------------------------------------
                           00043A  2019 	Fbsp$put_space$0$0 ==.
                           00043A  2020 	C$bsp.c$139$1$161 ==.
                                   2021 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:139: static void put_space()
                                   2022 ;	-----------------------------------------
                                   2023 ;	 function put_space
                                   2024 ;	-----------------------------------------
      00225E                       2025 _put_space:
                           00043A  2026 	C$bsp.c$141$1$162 ==.
                                   2027 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:141: u2f_prints(" ");
      00225E 90 5E A8         [24] 2028 	mov	dptr,#___str_2
      002261 75 F0 80         [24] 2029 	mov	b,#0x80
      002264 12 1F 7C         [24] 2030 	lcall	_u2f_prints
                           000443  2031 	C$bsp.c$142$1$162 ==.
                           000443  2032 	XFbsp$put_space$0$0 ==.
      002267 22               [24] 2033 	ret
                                   2034 ;------------------------------------------------------------
                                   2035 ;Allocation info for local variables in function 'put_line'
                                   2036 ;------------------------------------------------------------
                           000444  2037 	Fbsp$put_line$0$0 ==.
                           000444  2038 	C$bsp.c$143$1$162 ==.
                                   2039 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:143: static void put_line()
                                   2040 ;	-----------------------------------------
                                   2041 ;	 function put_line
                                   2042 ;	-----------------------------------------
      002268                       2043 _put_line:
                           000444  2044 	C$bsp.c$145$1$163 ==.
                                   2045 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:145: u2f_prints("\r\n");
      002268 90 5E A5         [24] 2046 	mov	dptr,#___str_1
      00226B 75 F0 80         [24] 2047 	mov	b,#0x80
      00226E 12 1F 7C         [24] 2048 	lcall	_u2f_prints
                           00044D  2049 	C$bsp.c$146$1$163 ==.
                           00044D  2050 	XFbsp$put_line$0$0 ==.
      002271 22               [24] 2051 	ret
                                   2052 ;------------------------------------------------------------
                                   2053 ;Allocation info for local variables in function 'u2f_printd'
                                   2054 ;------------------------------------------------------------
                                   2055 ;tag                       Allocated to stack - _bp -5
                                   2056 ;c                         Allocated to stack - _bp -6
                                   2057 ;args                      Allocated to registers r7 
                                   2058 ;------------------------------------------------------------
                           00044E  2059 	G$u2f_printd$0$0 ==.
                           00044E  2060 	C$bsp.c$148$1$163 ==.
                                   2061 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:148: void u2f_printd(const char * tag, uint8_t c, ...)
                                   2062 ;	-----------------------------------------
                                   2063 ;	 function u2f_printd
                                   2064 ;	-----------------------------------------
      002272                       2065 _u2f_printd:
      002272 C0 1B            [24] 2066 	push	_bp
      002274 85 81 1B         [24] 2067 	mov	_bp,sp
                           000453  2068 	C$bsp.c$151$1$165 ==.
                                   2069 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:151: u2f_prints(tag);
      002277 E5 1B            [12] 2070 	mov	a,_bp
      002279 24 FB            [12] 2071 	add	a,#0xfb
      00227B F8               [12] 2072 	mov	r0,a
      00227C 86 82            [24] 2073 	mov	dpl,@r0
      00227E 08               [12] 2074 	inc	r0
      00227F 86 83            [24] 2075 	mov	dph,@r0
      002281 08               [12] 2076 	inc	r0
      002282 86 F0            [24] 2077 	mov	b,@r0
      002284 12 1F 7C         [24] 2078 	lcall	_u2f_prints
                           000463  2079 	C$bsp.c$152$2$166 ==.
                                   2080 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:152: va_start(args,c);
      002287 E5 1B            [12] 2081 	mov	a,_bp
      002289 24 FA            [12] 2082 	add	a,#0xfa
      00228B FF               [12] 2083 	mov	r7,a
                           000468  2084 	C$bsp.c$153$2$168 ==.
                                   2085 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:153: while(c--)
      00228C E5 1B            [12] 2086 	mov	a,_bp
      00228E 24 FA            [12] 2087 	add	a,#0xfa
      002290 F8               [12] 2088 	mov	r0,a
      002291 86 06            [24] 2089 	mov	ar6,@r0
      002293                       2090 00101$:
      002293 8E 05            [24] 2091 	mov	ar5,r6
      002295 1E               [12] 2092 	dec	r6
      002296 E5 1B            [12] 2093 	mov	a,_bp
      002298 24 FA            [12] 2094 	add	a,#0xfa
      00229A F8               [12] 2095 	mov	r0,a
      00229B A6 06            [24] 2096 	mov	@r0,ar6
      00229D ED               [12] 2097 	mov	a,r5
      00229E 60 25            [24] 2098 	jz	00108$
                           00047C  2099 	C$bsp.c$155$2$167 ==.
                                   2100 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:155: u2f_putd((int32_t)va_arg(args, int16_t));
      0022A0 EF               [12] 2101 	mov	a,r7
      0022A1 24 FE            [12] 2102 	add	a,#0xfe
      0022A3 FD               [12] 2103 	mov	r5,a
      0022A4 FF               [12] 2104 	mov	r7,a
      0022A5 8D 01            [24] 2105 	mov	ar1,r5
      0022A7 87 04            [24] 2106 	mov	ar4,@r1
      0022A9 09               [12] 2107 	inc	r1
      0022AA 87 05            [24] 2108 	mov	ar5,@r1
      0022AC 19               [12] 2109 	dec	r1
      0022AD ED               [12] 2110 	mov	a,r5
      0022AE 33               [12] 2111 	rlc	a
      0022AF 95 E0            [12] 2112 	subb	a,acc
      0022B1 FB               [12] 2113 	mov	r3,a
      0022B2 8C 82            [24] 2114 	mov	dpl,r4
      0022B4 8D 83            [24] 2115 	mov	dph,r5
      0022B6 8B F0            [24] 2116 	mov	b,r3
      0022B8 C0 07            [24] 2117 	push	ar7
      0022BA C0 06            [24] 2118 	push	ar6
      0022BC 12 22 10         [24] 2119 	lcall	_u2f_putd
      0022BF D0 06            [24] 2120 	pop	ar6
      0022C1 D0 07            [24] 2121 	pop	ar7
      0022C3 80 CE            [24] 2122 	sjmp	00101$
      0022C5                       2123 00108$:
      0022C5 E5 1B            [12] 2124 	mov	a,_bp
      0022C7 24 FA            [12] 2125 	add	a,#0xfa
      0022C9 F8               [12] 2126 	mov	r0,a
      0022CA A6 06            [24] 2127 	mov	@r0,ar6
                           0004A8  2128 	C$bsp.c$158$1$165 ==.
                                   2129 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:158: put_line();
      0022CC 12 22 68         [24] 2130 	lcall	_put_line
                           0004AB  2131 	C$bsp.c$159$2$168 ==.
                                   2132 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:159: va_end(args);
      0022CF D0 1B            [24] 2133 	pop	_bp
                           0004AD  2134 	C$bsp.c$160$2$168 ==.
                           0004AD  2135 	XG$u2f_printd$0$0 ==.
      0022D1 22               [24] 2136 	ret
                                   2137 ;------------------------------------------------------------
                                   2138 ;Allocation info for local variables in function 'u2f_printl'
                                   2139 ;------------------------------------------------------------
                                   2140 ;tag                       Allocated to stack - _bp -5
                                   2141 ;c                         Allocated to stack - _bp -6
                                   2142 ;args                      Allocated to registers r7 
                                   2143 ;------------------------------------------------------------
                           0004AE  2144 	G$u2f_printl$0$0 ==.
                           0004AE  2145 	C$bsp.c$162$2$168 ==.
                                   2146 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:162: void u2f_printl(const char * tag, uint8_t c, ...)
                                   2147 ;	-----------------------------------------
                                   2148 ;	 function u2f_printl
                                   2149 ;	-----------------------------------------
      0022D2                       2150 _u2f_printl:
      0022D2 C0 1B            [24] 2151 	push	_bp
      0022D4 85 81 1B         [24] 2152 	mov	_bp,sp
                           0004B3  2153 	C$bsp.c$165$1$170 ==.
                                   2154 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:165: u2f_prints(tag);
      0022D7 E5 1B            [12] 2155 	mov	a,_bp
      0022D9 24 FB            [12] 2156 	add	a,#0xfb
      0022DB F8               [12] 2157 	mov	r0,a
      0022DC 86 82            [24] 2158 	mov	dpl,@r0
      0022DE 08               [12] 2159 	inc	r0
      0022DF 86 83            [24] 2160 	mov	dph,@r0
      0022E1 08               [12] 2161 	inc	r0
      0022E2 86 F0            [24] 2162 	mov	b,@r0
      0022E4 12 1F 7C         [24] 2163 	lcall	_u2f_prints
                           0004C3  2164 	C$bsp.c$166$2$171 ==.
                                   2165 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:166: va_start(args,c);
      0022E7 E5 1B            [12] 2166 	mov	a,_bp
      0022E9 24 FA            [12] 2167 	add	a,#0xfa
      0022EB FF               [12] 2168 	mov	r7,a
                           0004C8  2169 	C$bsp.c$167$2$172 ==.
                                   2170 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:167: while(c--)
      0022EC E5 1B            [12] 2171 	mov	a,_bp
      0022EE 24 FA            [12] 2172 	add	a,#0xfa
      0022F0 F8               [12] 2173 	mov	r0,a
      0022F1 86 06            [24] 2174 	mov	ar6,@r0
      0022F3                       2175 00101$:
      0022F3 8E 05            [24] 2176 	mov	ar5,r6
      0022F5 1E               [12] 2177 	dec	r6
      0022F6 E5 1B            [12] 2178 	mov	a,_bp
      0022F8 24 FA            [12] 2179 	add	a,#0xfa
      0022FA F8               [12] 2180 	mov	r0,a
      0022FB A6 06            [24] 2181 	mov	@r0,ar6
      0022FD ED               [12] 2182 	mov	a,r5
      0022FE 60 32            [24] 2183 	jz	00108$
                           0004DC  2184 	C$bsp.c$169$2$172 ==.
                                   2185 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:169: u2f_putl(va_arg(args, int32_t));
      002300 EF               [12] 2186 	mov	a,r7
      002301 24 FC            [12] 2187 	add	a,#0xfc
      002303 FD               [12] 2188 	mov	r5,a
      002304 FF               [12] 2189 	mov	r7,a
      002305 8D 01            [24] 2190 	mov	ar1,r5
      002307 87 02            [24] 2191 	mov	ar2,@r1
      002309 09               [12] 2192 	inc	r1
      00230A 87 03            [24] 2193 	mov	ar3,@r1
      00230C 09               [12] 2194 	inc	r1
      00230D 87 04            [24] 2195 	mov	ar4,@r1
      00230F 09               [12] 2196 	inc	r1
      002310 87 05            [24] 2197 	mov	ar5,@r1
      002312 19               [12] 2198 	dec	r1
      002313 19               [12] 2199 	dec	r1
      002314 19               [12] 2200 	dec	r1
      002315 8A 82            [24] 2201 	mov	dpl,r2
      002317 8B 83            [24] 2202 	mov	dph,r3
      002319 8C F0            [24] 2203 	mov	b,r4
      00231B ED               [12] 2204 	mov	a,r5
      00231C C0 07            [24] 2205 	push	ar7
      00231E C0 06            [24] 2206 	push	ar6
      002320 12 22 10         [24] 2207 	lcall	_u2f_putd
                           0004FF  2208 	C$bsp.c$170$2$172 ==.
                                   2209 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:170: u2f_prints(" ");
      002323 90 5E A8         [24] 2210 	mov	dptr,#___str_2
      002326 75 F0 80         [24] 2211 	mov	b,#0x80
      002329 12 1F 7C         [24] 2212 	lcall	_u2f_prints
      00232C D0 06            [24] 2213 	pop	ar6
      00232E D0 07            [24] 2214 	pop	ar7
      002330 80 C1            [24] 2215 	sjmp	00101$
      002332                       2216 00108$:
      002332 E5 1B            [12] 2217 	mov	a,_bp
      002334 24 FA            [12] 2218 	add	a,#0xfa
      002336 F8               [12] 2219 	mov	r0,a
      002337 A6 06            [24] 2220 	mov	@r0,ar6
                           000515  2221 	C$bsp.c$172$1$170 ==.
                                   2222 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:172: put_line();
      002339 12 22 68         [24] 2223 	lcall	_put_line
                           000518  2224 	C$bsp.c$173$2$173 ==.
                                   2225 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:173: va_end(args);
      00233C D0 1B            [24] 2226 	pop	_bp
                           00051A  2227 	C$bsp.c$174$2$173 ==.
                           00051A  2228 	XG$u2f_printl$0$0 ==.
      00233E 22               [24] 2229 	ret
                                   2230 ;------------------------------------------------------------
                                   2231 ;Allocation info for local variables in function 'u2f_printx'
                                   2232 ;------------------------------------------------------------
                                   2233 ;tag                       Allocated to stack - _bp -5
                                   2234 ;c                         Allocated to stack - _bp -6
                                   2235 ;args                      Allocated to registers r7 
                                   2236 ;------------------------------------------------------------
                           00051B  2237 	G$u2f_printx$0$0 ==.
                           00051B  2238 	C$bsp.c$176$2$173 ==.
                                   2239 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:176: void u2f_printx(const char * tag, uint8_t c, ...)
                                   2240 ;	-----------------------------------------
                                   2241 ;	 function u2f_printx
                                   2242 ;	-----------------------------------------
      00233F                       2243 _u2f_printx:
      00233F C0 1B            [24] 2244 	push	_bp
      002341 85 81 1B         [24] 2245 	mov	_bp,sp
                           000520  2246 	C$bsp.c$179$1$175 ==.
                                   2247 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:179: u2f_prints(tag);
      002344 E5 1B            [12] 2248 	mov	a,_bp
      002346 24 FB            [12] 2249 	add	a,#0xfb
      002348 F8               [12] 2250 	mov	r0,a
      002349 86 82            [24] 2251 	mov	dpl,@r0
      00234B 08               [12] 2252 	inc	r0
      00234C 86 83            [24] 2253 	mov	dph,@r0
      00234E 08               [12] 2254 	inc	r0
      00234F 86 F0            [24] 2255 	mov	b,@r0
      002351 12 1F 7C         [24] 2256 	lcall	_u2f_prints
                           000530  2257 	C$bsp.c$180$2$176 ==.
                                   2258 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:180: va_start(args,c);
      002354 E5 1B            [12] 2259 	mov	a,_bp
      002356 24 FA            [12] 2260 	add	a,#0xfa
      002358 FF               [12] 2261 	mov	r7,a
                           000535  2262 	C$bsp.c$181$2$177 ==.
                                   2263 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:181: while(c--)
      002359 E5 1B            [12] 2264 	mov	a,_bp
      00235B 24 FA            [12] 2265 	add	a,#0xfa
      00235D F8               [12] 2266 	mov	r0,a
      00235E 86 06            [24] 2267 	mov	ar6,@r0
      002360                       2268 00101$:
      002360 8E 05            [24] 2269 	mov	ar5,r6
      002362 1E               [12] 2270 	dec	r6
      002363 E5 1B            [12] 2271 	mov	a,_bp
      002365 24 FA            [12] 2272 	add	a,#0xfa
      002367 F8               [12] 2273 	mov	r0,a
      002368 A6 06            [24] 2274 	mov	@r0,ar6
      00236A ED               [12] 2275 	mov	a,r5
      00236B 60 2E            [24] 2276 	jz	00108$
                           000549  2277 	C$bsp.c$183$2$177 ==.
                                   2278 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:183: u2f_putx((int32_t)va_arg(args, uint16_t));
      00236D EF               [12] 2279 	mov	a,r7
      00236E 24 FE            [12] 2280 	add	a,#0xfe
      002370 FD               [12] 2281 	mov	r5,a
      002371 FF               [12] 2282 	mov	r7,a
      002372 8D 01            [24] 2283 	mov	ar1,r5
      002374 87 04            [24] 2284 	mov	ar4,@r1
      002376 09               [12] 2285 	inc	r1
      002377 87 05            [24] 2286 	mov	ar5,@r1
      002379 19               [12] 2287 	dec	r1
      00237A 7B 00            [12] 2288 	mov	r3,#0x00
      00237C 7A 00            [12] 2289 	mov	r2,#0x00
      00237E 8C 82            [24] 2290 	mov	dpl,r4
      002380 8D 83            [24] 2291 	mov	dph,r5
      002382 8B F0            [24] 2292 	mov	b,r3
      002384 EA               [12] 2293 	mov	a,r2
      002385 C0 07            [24] 2294 	push	ar7
      002387 C0 06            [24] 2295 	push	ar6
      002389 12 22 37         [24] 2296 	lcall	_u2f_putx
                           000568  2297 	C$bsp.c$184$2$177 ==.
                                   2298 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:184: u2f_prints(" ");
      00238C 90 5E A8         [24] 2299 	mov	dptr,#___str_2
      00238F 75 F0 80         [24] 2300 	mov	b,#0x80
      002392 12 1F 7C         [24] 2301 	lcall	_u2f_prints
      002395 D0 06            [24] 2302 	pop	ar6
      002397 D0 07            [24] 2303 	pop	ar7
      002399 80 C5            [24] 2304 	sjmp	00101$
      00239B                       2305 00108$:
      00239B E5 1B            [12] 2306 	mov	a,_bp
      00239D 24 FA            [12] 2307 	add	a,#0xfa
      00239F F8               [12] 2308 	mov	r0,a
      0023A0 A6 06            [24] 2309 	mov	@r0,ar6
                           00057E  2310 	C$bsp.c$186$1$175 ==.
                                   2311 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:186: put_line();
      0023A2 12 22 68         [24] 2312 	lcall	_put_line
                           000581  2313 	C$bsp.c$187$2$178 ==.
                                   2314 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:187: va_end(args);
      0023A5 D0 1B            [24] 2315 	pop	_bp
                           000583  2316 	C$bsp.c$188$2$178 ==.
                           000583  2317 	XG$u2f_printx$0$0 ==.
      0023A7 22               [24] 2318 	ret
                                   2319 ;------------------------------------------------------------
                                   2320 ;Allocation info for local variables in function 'u2f_printb'
                                   2321 ;------------------------------------------------------------
                                   2322 ;tag                       Allocated to stack - _bp -5
                                   2323 ;c                         Allocated to stack - _bp -6
                                   2324 ;args                      Allocated to registers r7 
                                   2325 ;------------------------------------------------------------
                           000584  2326 	G$u2f_printb$0$0 ==.
                           000584  2327 	C$bsp.c$190$2$178 ==.
                                   2328 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:190: void u2f_printb(const char * tag, uint8_t c, ...)
                                   2329 ;	-----------------------------------------
                                   2330 ;	 function u2f_printb
                                   2331 ;	-----------------------------------------
      0023A8                       2332 _u2f_printb:
      0023A8 C0 1B            [24] 2333 	push	_bp
      0023AA 85 81 1B         [24] 2334 	mov	_bp,sp
                           000589  2335 	C$bsp.c$193$1$180 ==.
                                   2336 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:193: u2f_prints(tag);
      0023AD E5 1B            [12] 2337 	mov	a,_bp
      0023AF 24 FB            [12] 2338 	add	a,#0xfb
      0023B1 F8               [12] 2339 	mov	r0,a
      0023B2 86 82            [24] 2340 	mov	dpl,@r0
      0023B4 08               [12] 2341 	inc	r0
      0023B5 86 83            [24] 2342 	mov	dph,@r0
      0023B7 08               [12] 2343 	inc	r0
      0023B8 86 F0            [24] 2344 	mov	b,@r0
      0023BA 12 1F 7C         [24] 2345 	lcall	_u2f_prints
                           000599  2346 	C$bsp.c$194$2$181 ==.
                                   2347 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:194: va_start(args,c);
      0023BD E5 1B            [12] 2348 	mov	a,_bp
      0023BF 24 FA            [12] 2349 	add	a,#0xfa
      0023C1 FF               [12] 2350 	mov	r7,a
                           00059E  2351 	C$bsp.c$195$2$183 ==.
                                   2352 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:195: while(c--)
      0023C2 E5 1B            [12] 2353 	mov	a,_bp
      0023C4 24 FA            [12] 2354 	add	a,#0xfa
      0023C6 F8               [12] 2355 	mov	r0,a
      0023C7 86 06            [24] 2356 	mov	ar6,@r0
      0023C9                       2357 00101$:
      0023C9 8E 05            [24] 2358 	mov	ar5,r6
      0023CB 1E               [12] 2359 	dec	r6
      0023CC E5 1B            [12] 2360 	mov	a,_bp
      0023CE 24 FA            [12] 2361 	add	a,#0xfa
      0023D0 F8               [12] 2362 	mov	r0,a
      0023D1 A6 06            [24] 2363 	mov	@r0,ar6
      0023D3 ED               [12] 2364 	mov	a,r5
      0023D4 60 23            [24] 2365 	jz	00108$
                           0005B2  2366 	C$bsp.c$197$2$182 ==.
                                   2367 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:197: u2f_putb(va_arg(args, uint8_t));
      0023D6 EF               [12] 2368 	mov	a,r7
      0023D7 14               [12] 2369 	dec	a
      0023D8 F9               [12] 2370 	mov	r1,a
      0023D9 FF               [12] 2371 	mov	r7,a
      0023DA 87 05            [24] 2372 	mov	ar5,@r1
      0023DC 7C 00            [12] 2373 	mov	r4,#0x00
      0023DE 7B 00            [12] 2374 	mov	r3,#0x00
      0023E0 7A 00            [12] 2375 	mov	r2,#0x00
      0023E2 8D 82            [24] 2376 	mov	dpl,r5
      0023E4 8C 83            [24] 2377 	mov	dph,r4
      0023E6 8B F0            [24] 2378 	mov	b,r3
      0023E8 EA               [12] 2379 	mov	a,r2
      0023E9 C0 07            [24] 2380 	push	ar7
      0023EB C0 06            [24] 2381 	push	ar6
      0023ED 12 22 37         [24] 2382 	lcall	_u2f_putx
                           0005CC  2383 	C$bsp.c$198$2$182 ==.
                                   2384 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:198: put_space();
      0023F0 12 22 5E         [24] 2385 	lcall	_put_space
      0023F3 D0 06            [24] 2386 	pop	ar6
      0023F5 D0 07            [24] 2387 	pop	ar7
      0023F7 80 D0            [24] 2388 	sjmp	00101$
      0023F9                       2389 00108$:
      0023F9 E5 1B            [12] 2390 	mov	a,_bp
      0023FB 24 FA            [12] 2391 	add	a,#0xfa
      0023FD F8               [12] 2392 	mov	r0,a
      0023FE A6 06            [24] 2393 	mov	@r0,ar6
                           0005DC  2394 	C$bsp.c$200$1$180 ==.
                                   2395 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:200: put_line();
      002400 12 22 68         [24] 2396 	lcall	_put_line
                           0005DF  2397 	C$bsp.c$201$2$183 ==.
                                   2398 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:201: va_end(args);
      002403 D0 1B            [24] 2399 	pop	_bp
                           0005E1  2400 	C$bsp.c$202$2$183 ==.
                           0005E1  2401 	XG$u2f_printb$0$0 ==.
      002405 22               [24] 2402 	ret
                                   2403 ;------------------------------------------------------------
                                   2404 ;Allocation info for local variables in function 'u2f_printlx'
                                   2405 ;------------------------------------------------------------
                                   2406 ;tag                       Allocated to stack - _bp -5
                                   2407 ;c                         Allocated to stack - _bp -6
                                   2408 ;args                      Allocated to registers r7 
                                   2409 ;------------------------------------------------------------
                           0005E2  2410 	G$u2f_printlx$0$0 ==.
                           0005E2  2411 	C$bsp.c$214$2$183 ==.
                                   2412 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:214: void u2f_printlx(const char * tag, uint8_t c, ...)
                                   2413 ;	-----------------------------------------
                                   2414 ;	 function u2f_printlx
                                   2415 ;	-----------------------------------------
      002406                       2416 _u2f_printlx:
      002406 C0 1B            [24] 2417 	push	_bp
      002408 85 81 1B         [24] 2418 	mov	_bp,sp
                           0005E7  2419 	C$bsp.c$217$1$185 ==.
                                   2420 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:217: u2f_prints(tag);
      00240B E5 1B            [12] 2421 	mov	a,_bp
      00240D 24 FB            [12] 2422 	add	a,#0xfb
      00240F F8               [12] 2423 	mov	r0,a
      002410 86 82            [24] 2424 	mov	dpl,@r0
      002412 08               [12] 2425 	inc	r0
      002413 86 83            [24] 2426 	mov	dph,@r0
      002415 08               [12] 2427 	inc	r0
      002416 86 F0            [24] 2428 	mov	b,@r0
      002418 12 1F 7C         [24] 2429 	lcall	_u2f_prints
                           0005F7  2430 	C$bsp.c$218$2$186 ==.
                                   2431 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:218: va_start(args,c);
      00241B E5 1B            [12] 2432 	mov	a,_bp
      00241D 24 FA            [12] 2433 	add	a,#0xfa
      00241F FF               [12] 2434 	mov	r7,a
                           0005FC  2435 	C$bsp.c$219$2$188 ==.
                                   2436 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:219: while(c--)
      002420 E5 1B            [12] 2437 	mov	a,_bp
      002422 24 FA            [12] 2438 	add	a,#0xfa
      002424 F8               [12] 2439 	mov	r0,a
      002425 86 06            [24] 2440 	mov	ar6,@r0
      002427                       2441 00101$:
      002427 8E 05            [24] 2442 	mov	ar5,r6
      002429 1E               [12] 2443 	dec	r6
      00242A E5 1B            [12] 2444 	mov	a,_bp
      00242C 24 FA            [12] 2445 	add	a,#0xfa
      00242E F8               [12] 2446 	mov	r0,a
      00242F A6 06            [24] 2447 	mov	@r0,ar6
      002431 ED               [12] 2448 	mov	a,r5
      002432 60 2C            [24] 2449 	jz	00108$
                           000610  2450 	C$bsp.c$221$2$187 ==.
                                   2451 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:221: u2f_putlx(va_arg(args, int32_t));
      002434 EF               [12] 2452 	mov	a,r7
      002435 24 FC            [12] 2453 	add	a,#0xfc
      002437 FD               [12] 2454 	mov	r5,a
      002438 FF               [12] 2455 	mov	r7,a
      002439 8D 01            [24] 2456 	mov	ar1,r5
      00243B 87 02            [24] 2457 	mov	ar2,@r1
      00243D 09               [12] 2458 	inc	r1
      00243E 87 03            [24] 2459 	mov	ar3,@r1
      002440 09               [12] 2460 	inc	r1
      002441 87 04            [24] 2461 	mov	ar4,@r1
      002443 09               [12] 2462 	inc	r1
      002444 87 05            [24] 2463 	mov	ar5,@r1
      002446 19               [12] 2464 	dec	r1
      002447 19               [12] 2465 	dec	r1
      002448 19               [12] 2466 	dec	r1
      002449 8A 82            [24] 2467 	mov	dpl,r2
      00244B 8B 83            [24] 2468 	mov	dph,r3
      00244D 8C F0            [24] 2469 	mov	b,r4
      00244F ED               [12] 2470 	mov	a,r5
      002450 C0 07            [24] 2471 	push	ar7
      002452 C0 06            [24] 2472 	push	ar6
      002454 12 22 37         [24] 2473 	lcall	_u2f_putx
                           000633  2474 	C$bsp.c$222$2$187 ==.
                                   2475 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:222: put_space();
      002457 12 22 5E         [24] 2476 	lcall	_put_space
      00245A D0 06            [24] 2477 	pop	ar6
      00245C D0 07            [24] 2478 	pop	ar7
      00245E 80 C7            [24] 2479 	sjmp	00101$
      002460                       2480 00108$:
      002460 E5 1B            [12] 2481 	mov	a,_bp
      002462 24 FA            [12] 2482 	add	a,#0xfa
      002464 F8               [12] 2483 	mov	r0,a
      002465 A6 06            [24] 2484 	mov	@r0,ar6
                           000643  2485 	C$bsp.c$224$1$185 ==.
                                   2486 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:224: put_line();
      002467 12 22 68         [24] 2487 	lcall	_put_line
                           000646  2488 	C$bsp.c$225$2$188 ==.
                                   2489 ;	D:\Freelancer_projects\jan333\sdcc_project\src\bsp.c:225: va_end(args);
      00246A D0 1B            [24] 2490 	pop	_bp
                           000648  2491 	C$bsp.c$226$2$188 ==.
                           000648  2492 	XG$u2f_printlx$0$0 ==.
      00246C 22               [24] 2493 	ret
                                   2494 	.area CSEG    (CODE)
                                   2495 	.area CONST   (CODE)
                           000000  2496 Fbsp$__str_0$0$0 == .
      005EA2                       2497 ___str_0:
      005EA2 30                    2498 	.ascii "0"
      005EA3 0A                    2499 	.db 0x0a
      005EA4 00                    2500 	.db 0x00
                           000003  2501 Fbsp$__str_1$0$0 == .
      005EA5                       2502 ___str_1:
      005EA5 0D                    2503 	.db 0x0d
      005EA6 0A                    2504 	.db 0x0a
      005EA7 00                    2505 	.db 0x00
                           000006  2506 Fbsp$__str_2$0$0 == .
      005EA8                       2507 ___str_2:
      005EA8 20                    2508 	.ascii " "
      005EA9 00                    2509 	.db 0x00
                           000008  2510 Fbsp$__str_3$0$0 == .
      005EAA                       2511 ___str_3:
      005EAA 30 31 32 33 34 35 36  2512 	.ascii "0123456789abcdef"
             37 38 39 61 62 63 64
             65 66
      005EBA 00                    2513 	.db 0x00
                                   2514 	.area XINIT   (CODE)
                           000000  2515 Fbsp$__xinit___digits$0$0 == .
      006186                       2516 __xinit____digits:
      006186 AA 5E 80              2517 	.byte ___str_3, (___str_3 >> 8),#0x80
                                   2518 	.area CABS    (ABS,CODE)
