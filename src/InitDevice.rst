                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module InitDevice
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART1FCN1_TFRQ
                                     12 	.globl _UART1FCN1_TXNF
                                     13 	.globl _UART1FCN1_TXHOLD
                                     14 	.globl _UART1FCN1_TIE
                                     15 	.globl _UART1FCN1_RFRQ
                                     16 	.globl _UART1FCN1_RXTO1
                                     17 	.globl _UART1FCN1_RXTO0
                                     18 	.globl _UART1FCN1_RIE
                                     19 	.globl _TMR4CN0_TF4H
                                     20 	.globl _TMR4CN0_TF4L
                                     21 	.globl _TMR4CN0_TF4LEN
                                     22 	.globl _TMR4CN0_TF4CEN
                                     23 	.globl _TMR4CN0_T4SPLIT
                                     24 	.globl _TMR4CN0_TR4
                                     25 	.globl _TMR4CN0_T4XCLK1
                                     26 	.globl _TMR4CN0_T4XCLK0
                                     27 	.globl _TMR2CN0_TF2H
                                     28 	.globl _TMR2CN0_TF2L
                                     29 	.globl _TMR2CN0_TF2LEN
                                     30 	.globl _TMR2CN0_TF2CEN
                                     31 	.globl _TMR2CN0_T2SPLIT
                                     32 	.globl _TMR2CN0_TR2
                                     33 	.globl _TMR2CN0_T2XCLK1
                                     34 	.globl _TMR2CN0_T2XCLK0
                                     35 	.globl _TCON_TF1
                                     36 	.globl _TCON_TR1
                                     37 	.globl _TCON_TF0
                                     38 	.globl _TCON_TR0
                                     39 	.globl _TCON_IE1
                                     40 	.globl _TCON_IT1
                                     41 	.globl _TCON_IE0
                                     42 	.globl _TCON_IT0
                                     43 	.globl _SPI0CN0_SPIF
                                     44 	.globl _SPI0CN0_WCOL
                                     45 	.globl _SPI0CN0_MODF
                                     46 	.globl _SPI0CN0_RXOVRN
                                     47 	.globl _SPI0CN0_NSSMD1
                                     48 	.globl _SPI0CN0_NSSMD0
                                     49 	.globl _SPI0CN0_TXNF
                                     50 	.globl _SPI0CN0_SPIEN
                                     51 	.globl _SMB0CN0_MASTER
                                     52 	.globl _SMB0CN0_TXMODE
                                     53 	.globl _SMB0CN0_STA
                                     54 	.globl _SMB0CN0_STO
                                     55 	.globl _SMB0CN0_ACKRQ
                                     56 	.globl _SMB0CN0_ARBLOST
                                     57 	.globl _SMB0CN0_ACK
                                     58 	.globl _SMB0CN0_SI
                                     59 	.globl _SCON1_OVR
                                     60 	.globl _SCON1_PERR
                                     61 	.globl _SCON1_REN
                                     62 	.globl _SCON1_TBX
                                     63 	.globl _SCON1_RBX
                                     64 	.globl _SCON1_TI
                                     65 	.globl _SCON1_RI
                                     66 	.globl _SCON0_SMODE
                                     67 	.globl _SCON0_MCE
                                     68 	.globl _SCON0_REN
                                     69 	.globl _SCON0_TB8
                                     70 	.globl _SCON0_RB8
                                     71 	.globl _SCON0_TI
                                     72 	.globl _SCON0_RI
                                     73 	.globl _PSW_CY
                                     74 	.globl _PSW_AC
                                     75 	.globl _PSW_F0
                                     76 	.globl _PSW_RS1
                                     77 	.globl _PSW_RS0
                                     78 	.globl _PSW_OV
                                     79 	.globl _PSW_F1
                                     80 	.globl _PSW_PARITY
                                     81 	.globl _PCA0CN0_CF
                                     82 	.globl _PCA0CN0_CR
                                     83 	.globl _PCA0CN0_CCF2
                                     84 	.globl _PCA0CN0_CCF1
                                     85 	.globl _PCA0CN0_CCF0
                                     86 	.globl _P3_B1
                                     87 	.globl _P3_B0
                                     88 	.globl _P2_B3
                                     89 	.globl _P2_B2
                                     90 	.globl _P2_B1
                                     91 	.globl _P2_B0
                                     92 	.globl _P1_B7
                                     93 	.globl _P1_B6
                                     94 	.globl _P1_B5
                                     95 	.globl _P1_B4
                                     96 	.globl _P1_B3
                                     97 	.globl _P1_B2
                                     98 	.globl _P1_B1
                                     99 	.globl _P1_B0
                                    100 	.globl _P0_B7
                                    101 	.globl _P0_B6
                                    102 	.globl _P0_B5
                                    103 	.globl _P0_B4
                                    104 	.globl _P0_B3
                                    105 	.globl _P0_B2
                                    106 	.globl _P0_B1
                                    107 	.globl _P0_B0
                                    108 	.globl _IP_PSPI0
                                    109 	.globl _IP_PT2
                                    110 	.globl _IP_PS0
                                    111 	.globl _IP_PT1
                                    112 	.globl _IP_PX1
                                    113 	.globl _IP_PT0
                                    114 	.globl _IP_PX0
                                    115 	.globl _IE_EA
                                    116 	.globl _IE_ESPI0
                                    117 	.globl _IE_ET2
                                    118 	.globl _IE_ES0
                                    119 	.globl _IE_ET1
                                    120 	.globl _IE_EX1
                                    121 	.globl _IE_ET0
                                    122 	.globl _IE_EX0
                                    123 	.globl _B_B7
                                    124 	.globl _B_B6
                                    125 	.globl _B_B5
                                    126 	.globl _B_B4
                                    127 	.globl _B_B3
                                    128 	.globl _B_B2
                                    129 	.globl _B_B1
                                    130 	.globl _B_B0
                                    131 	.globl _ADC0CN0_ADEN
                                    132 	.globl _ADC0CN0_ADBMEN
                                    133 	.globl _ADC0CN0_ADINT
                                    134 	.globl _ADC0CN0_ADBUSY
                                    135 	.globl _ADC0CN0_ADWINT
                                    136 	.globl _ADC0CN0_ADCM2
                                    137 	.globl _ADC0CN0_ADCM1
                                    138 	.globl _ADC0CN0_ADCM0
                                    139 	.globl _ACC_ACC7
                                    140 	.globl _ACC_ACC6
                                    141 	.globl _ACC_ACC5
                                    142 	.globl _ACC_ACC4
                                    143 	.globl _ACC_ACC3
                                    144 	.globl _ACC_ACC2
                                    145 	.globl _ACC_ACC1
                                    146 	.globl _ACC_ACC0
                                    147 	.globl __XPAGE
                                    148 	.globl _TMR4RL
                                    149 	.globl _TMR4
                                    150 	.globl _TMR3RL
                                    151 	.globl _TMR3
                                    152 	.globl _TMR2RL
                                    153 	.globl _TMR2
                                    154 	.globl _SBRL1
                                    155 	.globl _PCA0
                                    156 	.globl _PCA0CP2
                                    157 	.globl _PCA0CP1
                                    158 	.globl _PCA0CP0
                                    159 	.globl _DP
                                    160 	.globl _ADC0LT
                                    161 	.globl _ADC0
                                    162 	.globl _ADC0GT
                                    163 	.globl _XBR2
                                    164 	.globl _XBR1
                                    165 	.globl _XBR0
                                    166 	.globl _WDTCN
                                    167 	.globl _VDM0CN
                                    168 	.globl _USB0XCN
                                    169 	.globl _USB0DAT
                                    170 	.globl _USB0CF
                                    171 	.globl _USB0CDSTA
                                    172 	.globl _USB0CDCN
                                    173 	.globl _USB0CDCF
                                    174 	.globl _USB0AEC
                                    175 	.globl _USB0ADR
                                    176 	.globl _UART1LIN
                                    177 	.globl _UART1FCT
                                    178 	.globl _UART1FCN1
                                    179 	.globl _UART1FCN0
                                    180 	.globl _TMR4RLL
                                    181 	.globl _TMR4RLH
                                    182 	.globl _TMR4L
                                    183 	.globl _TMR4H
                                    184 	.globl _TMR4CN1
                                    185 	.globl _TMR4CN0
                                    186 	.globl _TMR3RLL
                                    187 	.globl _TMR3RLH
                                    188 	.globl _TMR3L
                                    189 	.globl _TMR3H
                                    190 	.globl _TMR3CN1
                                    191 	.globl _TMR3CN0
                                    192 	.globl _TMR2RLL
                                    193 	.globl _TMR2RLH
                                    194 	.globl _TMR2L
                                    195 	.globl _TMR2H
                                    196 	.globl _TMR2CN1
                                    197 	.globl _TMR2CN0
                                    198 	.globl _TMOD
                                    199 	.globl _TL1
                                    200 	.globl _TL0
                                    201 	.globl _TH1
                                    202 	.globl _TH0
                                    203 	.globl _TCON
                                    204 	.globl _SPI0FCT
                                    205 	.globl _SPI0FCN1
                                    206 	.globl _SPI0FCN0
                                    207 	.globl _SPI0DAT
                                    208 	.globl _SPI0CN0
                                    209 	.globl _SPI0CKR
                                    210 	.globl _SPI0CFG
                                    211 	.globl _SP
                                    212 	.globl _SMOD1
                                    213 	.globl _SMB0TC
                                    214 	.globl _SMB0RXLN
                                    215 	.globl _SMB0FCT
                                    216 	.globl _SMB0FCN1
                                    217 	.globl _SMB0FCN0
                                    218 	.globl _SMB0DAT
                                    219 	.globl _SMB0CN0
                                    220 	.globl _SMB0CF
                                    221 	.globl _SMB0ADR
                                    222 	.globl _SMB0ADM
                                    223 	.globl _SFRSTACK
                                    224 	.globl _SFRPGCN
                                    225 	.globl _SFRPAGE
                                    226 	.globl _SCON1
                                    227 	.globl _SCON0
                                    228 	.globl _SBUF1
                                    229 	.globl _SBUF0
                                    230 	.globl _SBRLL1
                                    231 	.globl _SBRLH1
                                    232 	.globl _SBCON1
                                    233 	.globl _RSTSRC
                                    234 	.globl _REVID
                                    235 	.globl _REG1CN
                                    236 	.globl _REG0CN
                                    237 	.globl _REF0CN
                                    238 	.globl _PSW
                                    239 	.globl _PSCTL
                                    240 	.globl _PRTDRV
                                    241 	.globl _PFE0CN
                                    242 	.globl _PCON1
                                    243 	.globl _PCON0
                                    244 	.globl _PCA0PWM
                                    245 	.globl _PCA0POL
                                    246 	.globl _PCA0MD
                                    247 	.globl _PCA0L
                                    248 	.globl _PCA0H
                                    249 	.globl _PCA0CPM2
                                    250 	.globl _PCA0CPM1
                                    251 	.globl _PCA0CPM0
                                    252 	.globl _PCA0CPL2
                                    253 	.globl _PCA0CPL1
                                    254 	.globl _PCA0CPL0
                                    255 	.globl _PCA0CPH2
                                    256 	.globl _PCA0CPH1
                                    257 	.globl _PCA0CPH0
                                    258 	.globl _PCA0CN0
                                    259 	.globl _PCA0CLR
                                    260 	.globl _PCA0CENT
                                    261 	.globl _P3MDOUT
                                    262 	.globl _P3MDIN
                                    263 	.globl _P3
                                    264 	.globl _P2SKIP
                                    265 	.globl _P2MDOUT
                                    266 	.globl _P2MDIN
                                    267 	.globl _P2MAT
                                    268 	.globl _P2MASK
                                    269 	.globl _P2
                                    270 	.globl _P1SKIP
                                    271 	.globl _P1MDOUT
                                    272 	.globl _P1MDIN
                                    273 	.globl _P1MAT
                                    274 	.globl _P1MASK
                                    275 	.globl _P1
                                    276 	.globl _P0SKIP
                                    277 	.globl _P0MDOUT
                                    278 	.globl _P0MDIN
                                    279 	.globl _P0MAT
                                    280 	.globl _P0MASK
                                    281 	.globl _P0
                                    282 	.globl _LFO0CN
                                    283 	.globl _IT01CF
                                    284 	.globl _IPH
                                    285 	.globl _IP
                                    286 	.globl _IE
                                    287 	.globl _I2C0STAT
                                    288 	.globl _I2C0SLAD
                                    289 	.globl _I2C0FCT
                                    290 	.globl _I2C0FCN1
                                    291 	.globl _I2C0FCN0
                                    292 	.globl _I2C0DOUT
                                    293 	.globl _I2C0DIN
                                    294 	.globl _I2C0CN0
                                    295 	.globl _HFOCN
                                    296 	.globl _HFO1CAL
                                    297 	.globl _HFO0CAL
                                    298 	.globl _FLKEY
                                    299 	.globl _EMI0CN
                                    300 	.globl _EIP2H
                                    301 	.globl _EIP2
                                    302 	.globl _EIP1H
                                    303 	.globl _EIP1
                                    304 	.globl _EIE2
                                    305 	.globl _EIE1
                                    306 	.globl _DPL
                                    307 	.globl _DPH
                                    308 	.globl _DEVICEID
                                    309 	.globl _DERIVID
                                    310 	.globl _CRC0ST
                                    311 	.globl _CRC0IN
                                    312 	.globl _CRC0FLIP
                                    313 	.globl _CRC0DAT
                                    314 	.globl _CRC0CNT
                                    315 	.globl _CRC0CN1
                                    316 	.globl _CRC0CN0
                                    317 	.globl _CMP1MX
                                    318 	.globl _CMP1MD
                                    319 	.globl _CMP1CN1
                                    320 	.globl _CMP1CN0
                                    321 	.globl _CMP0MX
                                    322 	.globl _CMP0MD
                                    323 	.globl _CMP0CN1
                                    324 	.globl _CMP0CN0
                                    325 	.globl _CLKSEL
                                    326 	.globl _CKCON1
                                    327 	.globl _CKCON0
                                    328 	.globl _B
                                    329 	.globl _ADC0TK
                                    330 	.globl _ADC0PWR
                                    331 	.globl _ADC0MX
                                    332 	.globl _ADC0LTL
                                    333 	.globl _ADC0LTH
                                    334 	.globl _ADC0L
                                    335 	.globl _ADC0H
                                    336 	.globl _ADC0GTL
                                    337 	.globl _ADC0GTH
                                    338 	.globl _ADC0CN1
                                    339 	.globl _ADC0CN0
                                    340 	.globl _ADC0CF
                                    341 	.globl _ADC0AC
                                    342 	.globl _ACC
                                    343 	.globl _enter_DefaultMode_from_RESET
                                    344 	.globl _VREG_0_enter_DefaultMode_from_RESET
                                    345 	.globl _CLOCK_0_enter_DefaultMode_from_RESET
                                    346 	.globl _PORTS_0_enter_DefaultMode_from_RESET
                                    347 	.globl _PORTS_1_enter_DefaultMode_from_RESET
                                    348 	.globl _PBCFG_0_enter_DefaultMode_from_RESET
                                    349 	.globl _CIP51_0_enter_DefaultMode_from_RESET
                                    350 	.globl _TIMER01_0_enter_DefaultMode_from_RESET
                                    351 	.globl _TIMER16_2_enter_DefaultMode_from_RESET
                                    352 	.globl _TIMER16_3_enter_DefaultMode_from_RESET
                                    353 	.globl _TIMER_SETUP_0_enter_DefaultMode_from_RESET
                                    354 	.globl _SMBUS_0_enter_DefaultMode_from_RESET
                                    355 	.globl _UART_0_enter_DefaultMode_from_RESET
                                    356 	.globl _INTERRUPT_0_enter_DefaultMode_from_RESET
                                    357 	.globl _PCA_0_enter_DefaultMode_from_RESET
                                    358 	.globl _PCACH_0_enter_DefaultMode_from_RESET
                                    359 	.globl _PCACH_1_enter_DefaultMode_from_RESET
                                    360 	.globl _PCACH_2_enter_DefaultMode_from_RESET
                                    361 ;--------------------------------------------------------
                                    362 ; special function registers
                                    363 ;--------------------------------------------------------
                                    364 	.area RSEG    (ABS,DATA)
      000000                        365 	.org 0x0000
                           0000E0   366 G$ACC$0$0 == 0x00e0
                           0000E0   367 _ACC	=	0x00e0
                           0000B3   368 G$ADC0AC$0$0 == 0x00b3
                           0000B3   369 _ADC0AC	=	0x00b3
                           0000BC   370 G$ADC0CF$0$0 == 0x00bc
                           0000BC   371 _ADC0CF	=	0x00bc
                           0000E8   372 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   373 _ADC0CN0	=	0x00e8
                           0000B2   374 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   375 _ADC0CN1	=	0x00b2
                           0000C4   376 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   377 _ADC0GTH	=	0x00c4
                           0000C3   378 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   379 _ADC0GTL	=	0x00c3
                           0000BE   380 G$ADC0H$0$0 == 0x00be
                           0000BE   381 _ADC0H	=	0x00be
                           0000BD   382 G$ADC0L$0$0 == 0x00bd
                           0000BD   383 _ADC0L	=	0x00bd
                           0000C6   384 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   385 _ADC0LTH	=	0x00c6
                           0000C5   386 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   387 _ADC0LTL	=	0x00c5
                           0000BB   388 G$ADC0MX$0$0 == 0x00bb
                           0000BB   389 _ADC0MX	=	0x00bb
                           0000DF   390 G$ADC0PWR$0$0 == 0x00df
                           0000DF   391 _ADC0PWR	=	0x00df
                           0000B9   392 G$ADC0TK$0$0 == 0x00b9
                           0000B9   393 _ADC0TK	=	0x00b9
                           0000F0   394 G$B$0$0 == 0x00f0
                           0000F0   395 _B	=	0x00f0
                           00008E   396 G$CKCON0$0$0 == 0x008e
                           00008E   397 _CKCON0	=	0x008e
                           0000A6   398 G$CKCON1$0$0 == 0x00a6
                           0000A6   399 _CKCON1	=	0x00a6
                           0000A9   400 G$CLKSEL$0$0 == 0x00a9
                           0000A9   401 _CLKSEL	=	0x00a9
                           00009B   402 G$CMP0CN0$0$0 == 0x009b
                           00009B   403 _CMP0CN0	=	0x009b
                           000099   404 G$CMP0CN1$0$0 == 0x0099
                           000099   405 _CMP0CN1	=	0x0099
                           00009D   406 G$CMP0MD$0$0 == 0x009d
                           00009D   407 _CMP0MD	=	0x009d
                           00009F   408 G$CMP0MX$0$0 == 0x009f
                           00009F   409 _CMP0MX	=	0x009f
                           0000BF   410 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   411 _CMP1CN0	=	0x00bf
                           0000AC   412 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   413 _CMP1CN1	=	0x00ac
                           0000AB   414 G$CMP1MD$0$0 == 0x00ab
                           0000AB   415 _CMP1MD	=	0x00ab
                           0000AA   416 G$CMP1MX$0$0 == 0x00aa
                           0000AA   417 _CMP1MX	=	0x00aa
                           0000CE   418 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   419 _CRC0CN0	=	0x00ce
                           000086   420 G$CRC0CN1$0$0 == 0x0086
                           000086   421 _CRC0CN1	=	0x0086
                           0000D3   422 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   423 _CRC0CNT	=	0x00d3
                           0000DE   424 G$CRC0DAT$0$0 == 0x00de
                           0000DE   425 _CRC0DAT	=	0x00de
                           0000CF   426 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   427 _CRC0FLIP	=	0x00cf
                           0000DD   428 G$CRC0IN$0$0 == 0x00dd
                           0000DD   429 _CRC0IN	=	0x00dd
                           0000D2   430 G$CRC0ST$0$0 == 0x00d2
                           0000D2   431 _CRC0ST	=	0x00d2
                           0000AD   432 G$DERIVID$0$0 == 0x00ad
                           0000AD   433 _DERIVID	=	0x00ad
                           0000B5   434 G$DEVICEID$0$0 == 0x00b5
                           0000B5   435 _DEVICEID	=	0x00b5
                           000083   436 G$DPH$0$0 == 0x0083
                           000083   437 _DPH	=	0x0083
                           000082   438 G$DPL$0$0 == 0x0082
                           000082   439 _DPL	=	0x0082
                           0000E6   440 G$EIE1$0$0 == 0x00e6
                           0000E6   441 _EIE1	=	0x00e6
                           0000CE   442 G$EIE2$0$0 == 0x00ce
                           0000CE   443 _EIE2	=	0x00ce
                           0000F3   444 G$EIP1$0$0 == 0x00f3
                           0000F3   445 _EIP1	=	0x00f3
                           0000F5   446 G$EIP1H$0$0 == 0x00f5
                           0000F5   447 _EIP1H	=	0x00f5
                           0000F4   448 G$EIP2$0$0 == 0x00f4
                           0000F4   449 _EIP2	=	0x00f4
                           0000F6   450 G$EIP2H$0$0 == 0x00f6
                           0000F6   451 _EIP2H	=	0x00f6
                           0000E7   452 G$EMI0CN$0$0 == 0x00e7
                           0000E7   453 _EMI0CN	=	0x00e7
                           0000B7   454 G$FLKEY$0$0 == 0x00b7
                           0000B7   455 _FLKEY	=	0x00b7
                           0000C7   456 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   457 _HFO0CAL	=	0x00c7
                           0000D6   458 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   459 _HFO1CAL	=	0x00d6
                           0000EF   460 G$HFOCN$0$0 == 0x00ef
                           0000EF   461 _HFOCN	=	0x00ef
                           0000BA   462 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   463 _I2C0CN0	=	0x00ba
                           0000BC   464 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   465 _I2C0DIN	=	0x00bc
                           0000BB   466 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   467 _I2C0DOUT	=	0x00bb
                           0000AD   468 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   469 _I2C0FCN0	=	0x00ad
                           0000AB   470 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   471 _I2C0FCN1	=	0x00ab
                           0000F5   472 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   473 _I2C0FCT	=	0x00f5
                           0000BD   474 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   475 _I2C0SLAD	=	0x00bd
                           0000B9   476 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   477 _I2C0STAT	=	0x00b9
                           0000A8   478 G$IE$0$0 == 0x00a8
                           0000A8   479 _IE	=	0x00a8
                           0000B8   480 G$IP$0$0 == 0x00b8
                           0000B8   481 _IP	=	0x00b8
                           0000F2   482 G$IPH$0$0 == 0x00f2
                           0000F2   483 _IPH	=	0x00f2
                           0000E4   484 G$IT01CF$0$0 == 0x00e4
                           0000E4   485 _IT01CF	=	0x00e4
                           0000B1   486 G$LFO0CN$0$0 == 0x00b1
                           0000B1   487 _LFO0CN	=	0x00b1
                           000080   488 G$P0$0$0 == 0x0080
                           000080   489 _P0	=	0x0080
                           0000FE   490 G$P0MASK$0$0 == 0x00fe
                           0000FE   491 _P0MASK	=	0x00fe
                           0000FD   492 G$P0MAT$0$0 == 0x00fd
                           0000FD   493 _P0MAT	=	0x00fd
                           0000F1   494 G$P0MDIN$0$0 == 0x00f1
                           0000F1   495 _P0MDIN	=	0x00f1
                           0000A4   496 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   497 _P0MDOUT	=	0x00a4
                           0000D4   498 G$P0SKIP$0$0 == 0x00d4
                           0000D4   499 _P0SKIP	=	0x00d4
                           000090   500 G$P1$0$0 == 0x0090
                           000090   501 _P1	=	0x0090
                           0000EE   502 G$P1MASK$0$0 == 0x00ee
                           0000EE   503 _P1MASK	=	0x00ee
                           0000ED   504 G$P1MAT$0$0 == 0x00ed
                           0000ED   505 _P1MAT	=	0x00ed
                           0000F2   506 G$P1MDIN$0$0 == 0x00f2
                           0000F2   507 _P1MDIN	=	0x00f2
                           0000A5   508 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   509 _P1MDOUT	=	0x00a5
                           0000D5   510 G$P1SKIP$0$0 == 0x00d5
                           0000D5   511 _P1SKIP	=	0x00d5
                           0000A0   512 G$P2$0$0 == 0x00a0
                           0000A0   513 _P2	=	0x00a0
                           0000FC   514 G$P2MASK$0$0 == 0x00fc
                           0000FC   515 _P2MASK	=	0x00fc
                           0000FB   516 G$P2MAT$0$0 == 0x00fb
                           0000FB   517 _P2MAT	=	0x00fb
                           0000F3   518 G$P2MDIN$0$0 == 0x00f3
                           0000F3   519 _P2MDIN	=	0x00f3
                           0000A6   520 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   521 _P2MDOUT	=	0x00a6
                           0000CC   522 G$P2SKIP$0$0 == 0x00cc
                           0000CC   523 _P2SKIP	=	0x00cc
                           0000B0   524 G$P3$0$0 == 0x00b0
                           0000B0   525 _P3	=	0x00b0
                           0000F4   526 G$P3MDIN$0$0 == 0x00f4
                           0000F4   527 _P3MDIN	=	0x00f4
                           00009C   528 G$P3MDOUT$0$0 == 0x009c
                           00009C   529 _P3MDOUT	=	0x009c
                           00009E   530 G$PCA0CENT$0$0 == 0x009e
                           00009E   531 _PCA0CENT	=	0x009e
                           00009C   532 G$PCA0CLR$0$0 == 0x009c
                           00009C   533 _PCA0CLR	=	0x009c
                           0000D8   534 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   535 _PCA0CN0	=	0x00d8
                           0000FC   536 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   537 _PCA0CPH0	=	0x00fc
                           0000EA   538 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   539 _PCA0CPH1	=	0x00ea
                           0000EC   540 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   541 _PCA0CPH2	=	0x00ec
                           0000FB   542 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   543 _PCA0CPL0	=	0x00fb
                           0000E9   544 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   545 _PCA0CPL1	=	0x00e9
                           0000EB   546 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   547 _PCA0CPL2	=	0x00eb
                           0000DA   548 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   549 _PCA0CPM0	=	0x00da
                           0000DB   550 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   551 _PCA0CPM1	=	0x00db
                           0000DC   552 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   553 _PCA0CPM2	=	0x00dc
                           0000FA   554 G$PCA0H$0$0 == 0x00fa
                           0000FA   555 _PCA0H	=	0x00fa
                           0000F9   556 G$PCA0L$0$0 == 0x00f9
                           0000F9   557 _PCA0L	=	0x00f9
                           0000D9   558 G$PCA0MD$0$0 == 0x00d9
                           0000D9   559 _PCA0MD	=	0x00d9
                           000096   560 G$PCA0POL$0$0 == 0x0096
                           000096   561 _PCA0POL	=	0x0096
                           0000F7   562 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   563 _PCA0PWM	=	0x00f7
                           000087   564 G$PCON0$0$0 == 0x0087
                           000087   565 _PCON0	=	0x0087
                           00009A   566 G$PCON1$0$0 == 0x009a
                           00009A   567 _PCON1	=	0x009a
                           0000C1   568 G$PFE0CN$0$0 == 0x00c1
                           0000C1   569 _PFE0CN	=	0x00c1
                           0000F6   570 G$PRTDRV$0$0 == 0x00f6
                           0000F6   571 _PRTDRV	=	0x00f6
                           00008F   572 G$PSCTL$0$0 == 0x008f
                           00008F   573 _PSCTL	=	0x008f
                           0000D0   574 G$PSW$0$0 == 0x00d0
                           0000D0   575 _PSW	=	0x00d0
                           0000D1   576 G$REF0CN$0$0 == 0x00d1
                           0000D1   577 _REF0CN	=	0x00d1
                           0000C9   578 G$REG0CN$0$0 == 0x00c9
                           0000C9   579 _REG0CN	=	0x00c9
                           0000C6   580 G$REG1CN$0$0 == 0x00c6
                           0000C6   581 _REG1CN	=	0x00c6
                           0000B6   582 G$REVID$0$0 == 0x00b6
                           0000B6   583 _REVID	=	0x00b6
                           0000EF   584 G$RSTSRC$0$0 == 0x00ef
                           0000EF   585 _RSTSRC	=	0x00ef
                           000094   586 G$SBCON1$0$0 == 0x0094
                           000094   587 _SBCON1	=	0x0094
                           000096   588 G$SBRLH1$0$0 == 0x0096
                           000096   589 _SBRLH1	=	0x0096
                           000095   590 G$SBRLL1$0$0 == 0x0095
                           000095   591 _SBRLL1	=	0x0095
                           000099   592 G$SBUF0$0$0 == 0x0099
                           000099   593 _SBUF0	=	0x0099
                           000092   594 G$SBUF1$0$0 == 0x0092
                           000092   595 _SBUF1	=	0x0092
                           000098   596 G$SCON0$0$0 == 0x0098
                           000098   597 _SCON0	=	0x0098
                           0000C8   598 G$SCON1$0$0 == 0x00c8
                           0000C8   599 _SCON1	=	0x00c8
                           0000A7   600 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   601 _SFRPAGE	=	0x00a7
                           0000CF   602 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   603 _SFRPGCN	=	0x00cf
                           0000D7   604 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   605 _SFRSTACK	=	0x00d7
                           0000D6   606 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   607 _SMB0ADM	=	0x00d6
                           0000D7   608 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   609 _SMB0ADR	=	0x00d7
                           0000C1   610 G$SMB0CF$0$0 == 0x00c1
                           0000C1   611 _SMB0CF	=	0x00c1
                           0000C0   612 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   613 _SMB0CN0	=	0x00c0
                           0000C2   614 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   615 _SMB0DAT	=	0x00c2
                           0000C3   616 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   617 _SMB0FCN0	=	0x00c3
                           0000C4   618 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   619 _SMB0FCN1	=	0x00c4
                           0000EF   620 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   621 _SMB0FCT	=	0x00ef
                           0000C5   622 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   623 _SMB0RXLN	=	0x00c5
                           0000AC   624 G$SMB0TC$0$0 == 0x00ac
                           0000AC   625 _SMB0TC	=	0x00ac
                           000093   626 G$SMOD1$0$0 == 0x0093
                           000093   627 _SMOD1	=	0x0093
                           000081   628 G$SP$0$0 == 0x0081
                           000081   629 _SP	=	0x0081
                           0000A1   630 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   631 _SPI0CFG	=	0x00a1
                           0000A2   632 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   633 _SPI0CKR	=	0x00a2
                           0000F8   634 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   635 _SPI0CN0	=	0x00f8
                           0000A3   636 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   637 _SPI0DAT	=	0x00a3
                           00009A   638 G$SPI0FCN0$0$0 == 0x009a
                           00009A   639 _SPI0FCN0	=	0x009a
                           00009B   640 G$SPI0FCN1$0$0 == 0x009b
                           00009B   641 _SPI0FCN1	=	0x009b
                           0000F7   642 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   643 _SPI0FCT	=	0x00f7
                           000088   644 G$TCON$0$0 == 0x0088
                           000088   645 _TCON	=	0x0088
                           00008C   646 G$TH0$0$0 == 0x008c
                           00008C   647 _TH0	=	0x008c
                           00008D   648 G$TH1$0$0 == 0x008d
                           00008D   649 _TH1	=	0x008d
                           00008A   650 G$TL0$0$0 == 0x008a
                           00008A   651 _TL0	=	0x008a
                           00008B   652 G$TL1$0$0 == 0x008b
                           00008B   653 _TL1	=	0x008b
                           000089   654 G$TMOD$0$0 == 0x0089
                           000089   655 _TMOD	=	0x0089
                           0000C8   656 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   657 _TMR2CN0	=	0x00c8
                           0000FD   658 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   659 _TMR2CN1	=	0x00fd
                           0000CD   660 G$TMR2H$0$0 == 0x00cd
                           0000CD   661 _TMR2H	=	0x00cd
                           0000CC   662 G$TMR2L$0$0 == 0x00cc
                           0000CC   663 _TMR2L	=	0x00cc
                           0000CB   664 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   665 _TMR2RLH	=	0x00cb
                           0000CA   666 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   667 _TMR2RLL	=	0x00ca
                           000091   668 G$TMR3CN0$0$0 == 0x0091
                           000091   669 _TMR3CN0	=	0x0091
                           0000FE   670 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   671 _TMR3CN1	=	0x00fe
                           000095   672 G$TMR3H$0$0 == 0x0095
                           000095   673 _TMR3H	=	0x0095
                           000094   674 G$TMR3L$0$0 == 0x0094
                           000094   675 _TMR3L	=	0x0094
                           000093   676 G$TMR3RLH$0$0 == 0x0093
                           000093   677 _TMR3RLH	=	0x0093
                           000092   678 G$TMR3RLL$0$0 == 0x0092
                           000092   679 _TMR3RLL	=	0x0092
                           000098   680 G$TMR4CN0$0$0 == 0x0098
                           000098   681 _TMR4CN0	=	0x0098
                           0000FF   682 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   683 _TMR4CN1	=	0x00ff
                           0000A5   684 G$TMR4H$0$0 == 0x00a5
                           0000A5   685 _TMR4H	=	0x00a5
                           0000A4   686 G$TMR4L$0$0 == 0x00a4
                           0000A4   687 _TMR4L	=	0x00a4
                           0000A3   688 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   689 _TMR4RLH	=	0x00a3
                           0000A2   690 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   691 _TMR4RLL	=	0x00a2
                           00009D   692 G$UART1FCN0$0$0 == 0x009d
                           00009D   693 _UART1FCN0	=	0x009d
                           0000D8   694 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   695 _UART1FCN1	=	0x00d8
                           0000FA   696 G$UART1FCT$0$0 == 0x00fa
                           0000FA   697 _UART1FCT	=	0x00fa
                           00009E   698 G$UART1LIN$0$0 == 0x009e
                           00009E   699 _UART1LIN	=	0x009e
                           0000AE   700 G$USB0ADR$0$0 == 0x00ae
                           0000AE   701 _USB0ADR	=	0x00ae
                           0000B2   702 G$USB0AEC$0$0 == 0x00b2
                           0000B2   703 _USB0AEC	=	0x00b2
                           0000B6   704 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   705 _USB0CDCF	=	0x00b6
                           0000BE   706 G$USB0CDCN$0$0 == 0x00be
                           0000BE   707 _USB0CDCN	=	0x00be
                           0000BF   708 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   709 _USB0CDSTA	=	0x00bf
                           0000B5   710 G$USB0CF$0$0 == 0x00b5
                           0000B5   711 _USB0CF	=	0x00b5
                           0000AF   712 G$USB0DAT$0$0 == 0x00af
                           0000AF   713 _USB0DAT	=	0x00af
                           0000B3   714 G$USB0XCN$0$0 == 0x00b3
                           0000B3   715 _USB0XCN	=	0x00b3
                           0000FF   716 G$VDM0CN$0$0 == 0x00ff
                           0000FF   717 _VDM0CN	=	0x00ff
                           000097   718 G$WDTCN$0$0 == 0x0097
                           000097   719 _WDTCN	=	0x0097
                           0000E1   720 G$XBR0$0$0 == 0x00e1
                           0000E1   721 _XBR0	=	0x00e1
                           0000E2   722 G$XBR1$0$0 == 0x00e2
                           0000E2   723 _XBR1	=	0x00e2
                           0000E3   724 G$XBR2$0$0 == 0x00e3
                           0000E3   725 _XBR2	=	0x00e3
                           0000C3   726 G$ADC0GT$0$0 == 0x00c3
                           0000C3   727 _ADC0GT	=	0x00c3
                           0000BD   728 G$ADC0$0$0 == 0x00bd
                           0000BD   729 _ADC0	=	0x00bd
                           0000C5   730 G$ADC0LT$0$0 == 0x00c5
                           0000C5   731 _ADC0LT	=	0x00c5
                           000082   732 G$DP$0$0 == 0x0082
                           000082   733 _DP	=	0x0082
                           0000FB   734 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   735 _PCA0CP0	=	0x00fb
                           0000E9   736 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   737 _PCA0CP1	=	0x00e9
                           0000EB   738 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   739 _PCA0CP2	=	0x00eb
                           0000F9   740 G$PCA0$0$0 == 0x00f9
                           0000F9   741 _PCA0	=	0x00f9
                           000095   742 G$SBRL1$0$0 == 0x0095
                           000095   743 _SBRL1	=	0x0095
                           0000CC   744 G$TMR2$0$0 == 0x00cc
                           0000CC   745 _TMR2	=	0x00cc
                           0000CA   746 G$TMR2RL$0$0 == 0x00ca
                           0000CA   747 _TMR2RL	=	0x00ca
                           000094   748 G$TMR3$0$0 == 0x0094
                           000094   749 _TMR3	=	0x0094
                           000092   750 G$TMR3RL$0$0 == 0x0092
                           000092   751 _TMR3RL	=	0x0092
                           0000A4   752 G$TMR4$0$0 == 0x00a4
                           0000A4   753 _TMR4	=	0x00a4
                           0000A2   754 G$TMR4RL$0$0 == 0x00a2
                           0000A2   755 _TMR4RL	=	0x00a2
                           0000AA   756 G$_XPAGE$0$0 == 0x00aa
                           0000AA   757 __XPAGE	=	0x00aa
                                    758 ;--------------------------------------------------------
                                    759 ; special function bits
                                    760 ;--------------------------------------------------------
                                    761 	.area RSEG    (ABS,DATA)
      000000                        762 	.org 0x0000
                           0000E0   763 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   764 _ACC_ACC0	=	0x00e0
                           0000E1   765 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   766 _ACC_ACC1	=	0x00e1
                           0000E2   767 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   768 _ACC_ACC2	=	0x00e2
                           0000E3   769 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   770 _ACC_ACC3	=	0x00e3
                           0000E4   771 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   772 _ACC_ACC4	=	0x00e4
                           0000E5   773 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   774 _ACC_ACC5	=	0x00e5
                           0000E6   775 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   776 _ACC_ACC6	=	0x00e6
                           0000E7   777 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   778 _ACC_ACC7	=	0x00e7
                           0000E8   779 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   780 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   781 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   782 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   783 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   784 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   785 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   786 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   787 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   788 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   789 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   790 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   791 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   792 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   793 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   794 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   795 G$B_B0$0$0 == 0x00f0
                           0000F0   796 _B_B0	=	0x00f0
                           0000F1   797 G$B_B1$0$0 == 0x00f1
                           0000F1   798 _B_B1	=	0x00f1
                           0000F2   799 G$B_B2$0$0 == 0x00f2
                           0000F2   800 _B_B2	=	0x00f2
                           0000F3   801 G$B_B3$0$0 == 0x00f3
                           0000F3   802 _B_B3	=	0x00f3
                           0000F4   803 G$B_B4$0$0 == 0x00f4
                           0000F4   804 _B_B4	=	0x00f4
                           0000F5   805 G$B_B5$0$0 == 0x00f5
                           0000F5   806 _B_B5	=	0x00f5
                           0000F6   807 G$B_B6$0$0 == 0x00f6
                           0000F6   808 _B_B6	=	0x00f6
                           0000F7   809 G$B_B7$0$0 == 0x00f7
                           0000F7   810 _B_B7	=	0x00f7
                           0000A8   811 G$IE_EX0$0$0 == 0x00a8
                           0000A8   812 _IE_EX0	=	0x00a8
                           0000A9   813 G$IE_ET0$0$0 == 0x00a9
                           0000A9   814 _IE_ET0	=	0x00a9
                           0000AA   815 G$IE_EX1$0$0 == 0x00aa
                           0000AA   816 _IE_EX1	=	0x00aa
                           0000AB   817 G$IE_ET1$0$0 == 0x00ab
                           0000AB   818 _IE_ET1	=	0x00ab
                           0000AC   819 G$IE_ES0$0$0 == 0x00ac
                           0000AC   820 _IE_ES0	=	0x00ac
                           0000AD   821 G$IE_ET2$0$0 == 0x00ad
                           0000AD   822 _IE_ET2	=	0x00ad
                           0000AE   823 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   824 _IE_ESPI0	=	0x00ae
                           0000AF   825 G$IE_EA$0$0 == 0x00af
                           0000AF   826 _IE_EA	=	0x00af
                           0000B8   827 G$IP_PX0$0$0 == 0x00b8
                           0000B8   828 _IP_PX0	=	0x00b8
                           0000B9   829 G$IP_PT0$0$0 == 0x00b9
                           0000B9   830 _IP_PT0	=	0x00b9
                           0000BA   831 G$IP_PX1$0$0 == 0x00ba
                           0000BA   832 _IP_PX1	=	0x00ba
                           0000BB   833 G$IP_PT1$0$0 == 0x00bb
                           0000BB   834 _IP_PT1	=	0x00bb
                           0000BC   835 G$IP_PS0$0$0 == 0x00bc
                           0000BC   836 _IP_PS0	=	0x00bc
                           0000BD   837 G$IP_PT2$0$0 == 0x00bd
                           0000BD   838 _IP_PT2	=	0x00bd
                           0000BE   839 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   840 _IP_PSPI0	=	0x00be
                           000080   841 G$P0_B0$0$0 == 0x0080
                           000080   842 _P0_B0	=	0x0080
                           000081   843 G$P0_B1$0$0 == 0x0081
                           000081   844 _P0_B1	=	0x0081
                           000082   845 G$P0_B2$0$0 == 0x0082
                           000082   846 _P0_B2	=	0x0082
                           000083   847 G$P0_B3$0$0 == 0x0083
                           000083   848 _P0_B3	=	0x0083
                           000084   849 G$P0_B4$0$0 == 0x0084
                           000084   850 _P0_B4	=	0x0084
                           000085   851 G$P0_B5$0$0 == 0x0085
                           000085   852 _P0_B5	=	0x0085
                           000086   853 G$P0_B6$0$0 == 0x0086
                           000086   854 _P0_B6	=	0x0086
                           000087   855 G$P0_B7$0$0 == 0x0087
                           000087   856 _P0_B7	=	0x0087
                           000090   857 G$P1_B0$0$0 == 0x0090
                           000090   858 _P1_B0	=	0x0090
                           000091   859 G$P1_B1$0$0 == 0x0091
                           000091   860 _P1_B1	=	0x0091
                           000092   861 G$P1_B2$0$0 == 0x0092
                           000092   862 _P1_B2	=	0x0092
                           000093   863 G$P1_B3$0$0 == 0x0093
                           000093   864 _P1_B3	=	0x0093
                           000094   865 G$P1_B4$0$0 == 0x0094
                           000094   866 _P1_B4	=	0x0094
                           000095   867 G$P1_B5$0$0 == 0x0095
                           000095   868 _P1_B5	=	0x0095
                           000096   869 G$P1_B6$0$0 == 0x0096
                           000096   870 _P1_B6	=	0x0096
                           000097   871 G$P1_B7$0$0 == 0x0097
                           000097   872 _P1_B7	=	0x0097
                           0000A0   873 G$P2_B0$0$0 == 0x00a0
                           0000A0   874 _P2_B0	=	0x00a0
                           0000A1   875 G$P2_B1$0$0 == 0x00a1
                           0000A1   876 _P2_B1	=	0x00a1
                           0000A2   877 G$P2_B2$0$0 == 0x00a2
                           0000A2   878 _P2_B2	=	0x00a2
                           0000A3   879 G$P2_B3$0$0 == 0x00a3
                           0000A3   880 _P2_B3	=	0x00a3
                           0000B0   881 G$P3_B0$0$0 == 0x00b0
                           0000B0   882 _P3_B0	=	0x00b0
                           0000B1   883 G$P3_B1$0$0 == 0x00b1
                           0000B1   884 _P3_B1	=	0x00b1
                           0000D8   885 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   886 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   887 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   888 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   889 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   890 _PCA0CN0_CCF2	=	0x00da
                           0000DE   891 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   892 _PCA0CN0_CR	=	0x00de
                           0000DF   893 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   894 _PCA0CN0_CF	=	0x00df
                           0000D0   895 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   896 _PSW_PARITY	=	0x00d0
                           0000D1   897 G$PSW_F1$0$0 == 0x00d1
                           0000D1   898 _PSW_F1	=	0x00d1
                           0000D2   899 G$PSW_OV$0$0 == 0x00d2
                           0000D2   900 _PSW_OV	=	0x00d2
                           0000D3   901 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   902 _PSW_RS0	=	0x00d3
                           0000D4   903 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   904 _PSW_RS1	=	0x00d4
                           0000D5   905 G$PSW_F0$0$0 == 0x00d5
                           0000D5   906 _PSW_F0	=	0x00d5
                           0000D6   907 G$PSW_AC$0$0 == 0x00d6
                           0000D6   908 _PSW_AC	=	0x00d6
                           0000D7   909 G$PSW_CY$0$0 == 0x00d7
                           0000D7   910 _PSW_CY	=	0x00d7
                           000098   911 G$SCON0_RI$0$0 == 0x0098
                           000098   912 _SCON0_RI	=	0x0098
                           000099   913 G$SCON0_TI$0$0 == 0x0099
                           000099   914 _SCON0_TI	=	0x0099
                           00009A   915 G$SCON0_RB8$0$0 == 0x009a
                           00009A   916 _SCON0_RB8	=	0x009a
                           00009B   917 G$SCON0_TB8$0$0 == 0x009b
                           00009B   918 _SCON0_TB8	=	0x009b
                           00009C   919 G$SCON0_REN$0$0 == 0x009c
                           00009C   920 _SCON0_REN	=	0x009c
                           00009D   921 G$SCON0_MCE$0$0 == 0x009d
                           00009D   922 _SCON0_MCE	=	0x009d
                           00009F   923 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   924 _SCON0_SMODE	=	0x009f
                           0000C8   925 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   926 _SCON1_RI	=	0x00c8
                           0000C9   927 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   928 _SCON1_TI	=	0x00c9
                           0000CA   929 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   930 _SCON1_RBX	=	0x00ca
                           0000CB   931 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   932 _SCON1_TBX	=	0x00cb
                           0000CC   933 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   934 _SCON1_REN	=	0x00cc
                           0000CE   935 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   936 _SCON1_PERR	=	0x00ce
                           0000CF   937 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   938 _SCON1_OVR	=	0x00cf
                           0000C0   939 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   940 _SMB0CN0_SI	=	0x00c0
                           0000C1   941 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   942 _SMB0CN0_ACK	=	0x00c1
                           0000C2   943 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   944 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   945 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   946 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   947 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   948 _SMB0CN0_STO	=	0x00c4
                           0000C5   949 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   950 _SMB0CN0_STA	=	0x00c5
                           0000C6   951 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   952 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   953 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   954 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   955 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   956 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   957 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   958 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   959 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   960 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   961 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   962 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   963 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   964 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   965 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   966 _SPI0CN0_MODF	=	0x00fd
                           0000FE   967 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   968 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   969 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   970 _SPI0CN0_SPIF	=	0x00ff
                           000088   971 G$TCON_IT0$0$0 == 0x0088
                           000088   972 _TCON_IT0	=	0x0088
                           000089   973 G$TCON_IE0$0$0 == 0x0089
                           000089   974 _TCON_IE0	=	0x0089
                           00008A   975 G$TCON_IT1$0$0 == 0x008a
                           00008A   976 _TCON_IT1	=	0x008a
                           00008B   977 G$TCON_IE1$0$0 == 0x008b
                           00008B   978 _TCON_IE1	=	0x008b
                           00008C   979 G$TCON_TR0$0$0 == 0x008c
                           00008C   980 _TCON_TR0	=	0x008c
                           00008D   981 G$TCON_TF0$0$0 == 0x008d
                           00008D   982 _TCON_TF0	=	0x008d
                           00008E   983 G$TCON_TR1$0$0 == 0x008e
                           00008E   984 _TCON_TR1	=	0x008e
                           00008F   985 G$TCON_TF1$0$0 == 0x008f
                           00008F   986 _TCON_TF1	=	0x008f
                           0000C8   987 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   988 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   989 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   990 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   991 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   992 _TMR2CN0_TR2	=	0x00ca
                           0000CB   993 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   994 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   995 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   996 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   997 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   998 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   999 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE  1000 _TMR2CN0_TF2L	=	0x00ce
                           0000CF  1001 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF  1002 _TMR2CN0_TF2H	=	0x00cf
                           000098  1003 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1004 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1005 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1006 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1007 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1008 _TMR4CN0_TR4	=	0x009a
                           00009B  1009 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1010 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1011 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1012 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1013 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1014 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1015 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1016 _TMR4CN0_TF4L	=	0x009e
                           00009F  1017 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1018 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1019 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1020 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1021 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1022 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1023 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1024 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1025 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1026 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1027 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1028 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1029 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1030 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1031 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1032 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1033 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1034 _UART1FCN1_TFRQ	=	0x00df
                                   1035 ;--------------------------------------------------------
                                   1036 ; overlayable register banks
                                   1037 ;--------------------------------------------------------
                                   1038 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1039 	.ds 8
                                   1040 ;--------------------------------------------------------
                                   1041 ; internal ram data
                                   1042 ;--------------------------------------------------------
                                   1043 	.area DSEG    (DATA)
                                   1044 ;--------------------------------------------------------
                                   1045 ; overlayable items in internal ram 
                                   1046 ;--------------------------------------------------------
                                   1047 ;--------------------------------------------------------
                                   1048 ; indirectly addressable internal ram data
                                   1049 ;--------------------------------------------------------
                                   1050 	.area ISEG    (DATA)
                                   1051 ;--------------------------------------------------------
                                   1052 ; absolute internal ram data
                                   1053 ;--------------------------------------------------------
                                   1054 	.area IABS    (ABS,DATA)
                                   1055 	.area IABS    (ABS,DATA)
                                   1056 ;--------------------------------------------------------
                                   1057 ; bit data
                                   1058 ;--------------------------------------------------------
                                   1059 	.area BSEG    (BIT)
                                   1060 ;--------------------------------------------------------
                                   1061 ; paged external ram data
                                   1062 ;--------------------------------------------------------
                                   1063 	.area PSEG    (PAG,XDATA)
                                   1064 ;--------------------------------------------------------
                                   1065 ; external ram data
                                   1066 ;--------------------------------------------------------
                                   1067 	.area XSEG    (XDATA)
                                   1068 ;--------------------------------------------------------
                                   1069 ; absolute external ram data
                                   1070 ;--------------------------------------------------------
                                   1071 	.area XABS    (ABS,XDATA)
                                   1072 ;--------------------------------------------------------
                                   1073 ; external initialized ram data
                                   1074 ;--------------------------------------------------------
                                   1075 	.area XISEG   (XDATA)
                                   1076 	.area HOME    (CODE)
                                   1077 	.area GSINIT0 (CODE)
                                   1078 	.area GSINIT1 (CODE)
                                   1079 	.area GSINIT2 (CODE)
                                   1080 	.area GSINIT3 (CODE)
                                   1081 	.area GSINIT4 (CODE)
                                   1082 	.area GSINIT5 (CODE)
                                   1083 	.area GSINIT  (CODE)
                                   1084 	.area GSFINAL (CODE)
                                   1085 	.area CSEG    (CODE)
                                   1086 ;--------------------------------------------------------
                                   1087 ; global & static initialisations
                                   1088 ;--------------------------------------------------------
                                   1089 	.area HOME    (CODE)
                                   1090 	.area GSINIT  (CODE)
                                   1091 	.area GSFINAL (CODE)
                                   1092 	.area GSINIT  (CODE)
                                   1093 ;--------------------------------------------------------
                                   1094 ; Home
                                   1095 ;--------------------------------------------------------
                                   1096 	.area HOME    (CODE)
                                   1097 	.area HOME    (CODE)
                                   1098 ;--------------------------------------------------------
                                   1099 ; code
                                   1100 ;--------------------------------------------------------
                                   1101 	.area CSEG    (CODE)
                                   1102 ;------------------------------------------------------------
                                   1103 ;Allocation info for local variables in function 'enter_DefaultMode_from_RESET'
                                   1104 ;------------------------------------------------------------
                                   1105 ;SFRPAGE_save              Allocated to registers r7 
                                   1106 ;------------------------------------------------------------
                           000000  1107 	G$enter_DefaultMode_from_RESET$0$0 ==.
                           000000  1108 	C$InitDevice.c$26$0$0 ==.
                                   1109 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:26: void enter_DefaultMode_from_RESET(void) {
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function enter_DefaultMode_from_RESET
                                   1112 ;	-----------------------------------------
      0004D2                       1113 _enter_DefaultMode_from_RESET:
                           000007  1114 	ar7 = 0x07
                           000006  1115 	ar6 = 0x06
                           000005  1116 	ar5 = 0x05
                           000004  1117 	ar4 = 0x04
                           000003  1118 	ar3 = 0x03
                           000002  1119 	ar2 = 0x02
                           000001  1120 	ar1 = 0x01
                           000000  1121 	ar0 = 0x00
                           000000  1122 	C$InitDevice.c$29$1$0 ==.
                                   1123 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:29: uint8_t SFRPAGE_save = SFRPAGE;
      0004D2 AF A7            [24] 1124 	mov	r7,_SFRPAGE
                           000002  1125 	C$InitDevice.c$30$1$21 ==.
                                   1126 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:30: SFRPAGE = 0x00;
      0004D4 75 A7 00         [24] 1127 	mov	_SFRPAGE,#0x00
                           000005  1128 	C$InitDevice.c$32$1$21 ==.
                                   1129 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:32: VREG_0_enter_DefaultMode_from_RESET();
      0004D7 C0 07            [24] 1130 	push	ar7
      0004D9 12 05 14         [24] 1131 	lcall	_VREG_0_enter_DefaultMode_from_RESET
                           00000A  1132 	C$InitDevice.c$33$1$21 ==.
                                   1133 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:33: CLOCK_0_enter_DefaultMode_from_RESET();
      0004DC 12 05 1B         [24] 1134 	lcall	_CLOCK_0_enter_DefaultMode_from_RESET
                           00000D  1135 	C$InitDevice.c$34$1$21 ==.
                                   1136 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:34: LFO0CN = 0xC3;
      0004DF 75 B1 C3         [24] 1137 	mov	_LFO0CN,#0xc3
                           000010  1138 	C$InitDevice.c$35$1$21 ==.
                                   1139 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:35: PORTS_0_enter_DefaultMode_from_RESET();
      0004E2 12 05 27         [24] 1140 	lcall	_PORTS_0_enter_DefaultMode_from_RESET
                           000013  1141 	C$InitDevice.c$36$1$21 ==.
                                   1142 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:36: PORTS_1_enter_DefaultMode_from_RESET();
      0004E5 12 05 31         [24] 1143 	lcall	_PORTS_1_enter_DefaultMode_from_RESET
                           000016  1144 	C$InitDevice.c$37$1$21 ==.
                                   1145 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:37: PBCFG_0_enter_DefaultMode_from_RESET();
      0004E8 12 05 38         [24] 1146 	lcall	_PBCFG_0_enter_DefaultMode_from_RESET
                           000019  1147 	C$InitDevice.c$38$1$21 ==.
                                   1148 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:38: CIP51_0_enter_DefaultMode_from_RESET();
      0004EB 12 05 42         [24] 1149 	lcall	_CIP51_0_enter_DefaultMode_from_RESET
                           00001C  1150 	C$InitDevice.c$39$1$21 ==.
                                   1151 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:39: TIMER01_0_enter_DefaultMode_from_RESET();
      0004EE 12 05 49         [24] 1152 	lcall	_TIMER01_0_enter_DefaultMode_from_RESET
                           00001F  1153 	C$InitDevice.c$40$1$21 ==.
                                   1154 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:40: TIMER16_2_enter_DefaultMode_from_RESET();
      0004F1 12 05 5C         [24] 1155 	lcall	_TIMER16_2_enter_DefaultMode_from_RESET
                           000022  1156 	C$InitDevice.c$41$1$21 ==.
                                   1157 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:41: TIMER16_3_enter_DefaultMode_from_RESET();
      0004F4 12 05 71         [24] 1158 	lcall	_TIMER16_3_enter_DefaultMode_from_RESET
                           000025  1159 	C$InitDevice.c$42$1$21 ==.
                                   1160 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:42: TIMER_SETUP_0_enter_DefaultMode_from_RESET();
      0004F7 12 05 80         [24] 1161 	lcall	_TIMER_SETUP_0_enter_DefaultMode_from_RESET
                           000028  1162 	C$InitDevice.c$43$1$21 ==.
                                   1163 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:43: PCA_0_enter_DefaultMode_from_RESET();
      0004FA 12 05 99         [24] 1164 	lcall	_PCA_0_enter_DefaultMode_from_RESET
                           00002B  1165 	C$InitDevice.c$44$1$21 ==.
                                   1166 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:44: PCACH_0_enter_DefaultMode_from_RESET();
      0004FD 12 05 9E         [24] 1167 	lcall	_PCACH_0_enter_DefaultMode_from_RESET
                           00002E  1168 	C$InitDevice.c$45$1$21 ==.
                                   1169 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:45: PCACH_1_enter_DefaultMode_from_RESET();
      000500 12 05 AB         [24] 1170 	lcall	_PCACH_1_enter_DefaultMode_from_RESET
                           000031  1171 	C$InitDevice.c$46$1$21 ==.
                                   1172 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:46: PCACH_2_enter_DefaultMode_from_RESET();
      000503 12 05 B8         [24] 1173 	lcall	_PCACH_2_enter_DefaultMode_from_RESET
                           000034  1174 	C$InitDevice.c$47$1$21 ==.
                                   1175 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:47: SMBUS_0_enter_DefaultMode_from_RESET();
      000506 12 05 8A         [24] 1176 	lcall	_SMBUS_0_enter_DefaultMode_from_RESET
                           000037  1177 	C$InitDevice.c$48$1$21 ==.
                                   1178 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:48: UART_0_enter_DefaultMode_from_RESET();
      000509 12 05 8E         [24] 1179 	lcall	_UART_0_enter_DefaultMode_from_RESET
                           00003A  1180 	C$InitDevice.c$49$1$21 ==.
                                   1181 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:49: INTERRUPT_0_enter_DefaultMode_from_RESET();
      00050C 12 05 92         [24] 1182 	lcall	_INTERRUPT_0_enter_DefaultMode_from_RESET
      00050F D0 07            [24] 1183 	pop	ar7
                           00003F  1184 	C$InitDevice.c$52$1$21 ==.
                                   1185 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:52: SFRPAGE = SFRPAGE_save;
      000511 8F A7            [24] 1186 	mov	_SFRPAGE,r7
                           000041  1187 	C$InitDevice.c$55$1$21 ==.
                           000041  1188 	XG$enter_DefaultMode_from_RESET$0$0 ==.
      000513 22               [24] 1189 	ret
                                   1190 ;------------------------------------------------------------
                                   1191 ;Allocation info for local variables in function 'VREG_0_enter_DefaultMode_from_RESET'
                                   1192 ;------------------------------------------------------------
                           000042  1193 	G$VREG_0_enter_DefaultMode_from_RESET$0$0 ==.
                           000042  1194 	C$InitDevice.c$60$1$21 ==.
                                   1195 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:60: void VREG_0_enter_DefaultMode_from_RESET(void) {
                                   1196 ;	-----------------------------------------
                                   1197 ;	 function VREG_0_enter_DefaultMode_from_RESET
                                   1198 ;	-----------------------------------------
      000514                       1199 _VREG_0_enter_DefaultMode_from_RESET:
                           000042  1200 	C$InitDevice.c$71$1$23 ==.
                                   1201 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:71: SFRPAGE = 0x20;
      000514 75 A7 20         [24] 1202 	mov	_SFRPAGE,#0x20
                           000045  1203 	C$InitDevice.c$73$1$23 ==.
                                   1204 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:73: | REG1CN_SUSEN__NORMAL;
      000517 75 C6 04         [24] 1205 	mov	_REG1CN,#0x04
                           000048  1206 	C$InitDevice.c$76$1$23 ==.
                           000048  1207 	XG$VREG_0_enter_DefaultMode_from_RESET$0$0 ==.
      00051A 22               [24] 1208 	ret
                                   1209 ;------------------------------------------------------------
                                   1210 ;Allocation info for local variables in function 'CLOCK_0_enter_DefaultMode_from_RESET'
                                   1211 ;------------------------------------------------------------
                           000049  1212 	G$CLOCK_0_enter_DefaultMode_from_RESET$0$0 ==.
                           000049  1213 	C$InitDevice.c$81$1$23 ==.
                                   1214 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:81: void CLOCK_0_enter_DefaultMode_from_RESET(void) {
                                   1215 ;	-----------------------------------------
                                   1216 ;	 function CLOCK_0_enter_DefaultMode_from_RESET
                                   1217 ;	-----------------------------------------
      00051B                       1218 _CLOCK_0_enter_DefaultMode_from_RESET:
                           000049  1219 	C$InitDevice.c$84$1$25 ==.
                                   1220 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:84: SFRPAGE = 0x00;
      00051B 75 A7 00         [24] 1221 	mov	_SFRPAGE,#0x00
                           00004C  1222 	C$InitDevice.c$95$1$25 ==.
                                   1223 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:95: CLKSEL = CLKSEL_CLKSL__HFOSC1 | CLKSEL_CLKDIV__SYSCLK_DIV_1;
      00051E 75 A9 03         [24] 1224 	mov	_CLKSEL,#0x03
                           00004F  1225 	C$InitDevice.c$96$1$25 ==.
                                   1226 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:96: while ((CLKSEL & CLKSEL_DIVRDY__BMASK) == CLKSEL_DIVRDY__NOT_READY)
      000521                       1227 00101$:
      000521 E5 A9            [12] 1228 	mov	a,_CLKSEL
      000523 30 E7 FB         [24] 1229 	jnb	acc.7,00101$
                           000054  1230 	C$InitDevice.c$100$1$25 ==.
                           000054  1231 	XG$CLOCK_0_enter_DefaultMode_from_RESET$0$0 ==.
      000526 22               [24] 1232 	ret
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'PORTS_0_enter_DefaultMode_from_RESET'
                                   1235 ;------------------------------------------------------------
                           000055  1236 	G$PORTS_0_enter_DefaultMode_from_RESET$0$0 ==.
                           000055  1237 	C$InitDevice.c$105$1$25 ==.
                                   1238 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:105: void PORTS_0_enter_DefaultMode_from_RESET(void) {
                                   1239 ;	-----------------------------------------
                                   1240 ;	 function PORTS_0_enter_DefaultMode_from_RESET
                                   1241 ;	-----------------------------------------
      000527                       1242 _PORTS_0_enter_DefaultMode_from_RESET:
                           000055  1243 	C$InitDevice.c$119$1$27 ==.
                                   1244 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:119: SFRPAGE = 0x00;
      000527 75 A7 00         [24] 1245 	mov	_SFRPAGE,#0x00
                           000058  1246 	C$InitDevice.c$122$1$27 ==.
                                   1247 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:122: | P0MDOUT_B5__OPEN_DRAIN | P0MDOUT_B6__OPEN_DRAIN;
      00052A 75 A4 10         [24] 1248 	mov	_P0MDOUT,#0x10
                           00005B  1249 	C$InitDevice.c$141$1$27 ==.
                                   1250 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:141: | P0SKIP_B7__SKIPPED;
      00052D 75 D4 CF         [24] 1251 	mov	_P0SKIP,#0xcf
                           00005E  1252 	C$InitDevice.c$150$1$27 ==.
                           00005E  1253 	XG$PORTS_0_enter_DefaultMode_from_RESET$0$0 ==.
      000530 22               [24] 1254 	ret
                                   1255 ;------------------------------------------------------------
                                   1256 ;Allocation info for local variables in function 'PORTS_1_enter_DefaultMode_from_RESET'
                                   1257 ;------------------------------------------------------------
                           00005F  1258 	G$PORTS_1_enter_DefaultMode_from_RESET$0$0 ==.
                           00005F  1259 	C$InitDevice.c$155$1$27 ==.
                                   1260 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:155: void PORTS_1_enter_DefaultMode_from_RESET(void) {
                                   1261 ;	-----------------------------------------
                                   1262 ;	 function PORTS_1_enter_DefaultMode_from_RESET
                                   1263 ;	-----------------------------------------
      000531                       1264 _PORTS_1_enter_DefaultMode_from_RESET:
                           00005F  1265 	C$InitDevice.c$169$1$29 ==.
                                   1266 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:169: P1MDOUT = P1MDOUT_B1__OPEN_DRAIN | P1MDOUT_B2__OPEN_DRAIN;
      000531 75 A5 00         [24] 1267 	mov	_P1MDOUT,#0x00
                           000062  1268 	C$InitDevice.c$170$1$29 ==.
                                   1269 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:170: P1SKIP = P1SKIP_B0__SKIPPED | P1SKIP_B1__NOT_SKIPPED | P1SKIP_B2__NOT_SKIPPED;
      000534 75 D5 01         [24] 1270 	mov	_P1SKIP,#0x01
                           000065  1271 	C$InitDevice.c$185$1$29 ==.
                           000065  1272 	XG$PORTS_1_enter_DefaultMode_from_RESET$0$0 ==.
      000537 22               [24] 1273 	ret
                                   1274 ;------------------------------------------------------------
                                   1275 ;Allocation info for local variables in function 'PBCFG_0_enter_DefaultMode_from_RESET'
                                   1276 ;------------------------------------------------------------
                           000066  1277 	G$PBCFG_0_enter_DefaultMode_from_RESET$0$0 ==.
                           000066  1278 	C$InitDevice.c$190$1$29 ==.
                                   1279 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:190: void PBCFG_0_enter_DefaultMode_from_RESET(void) {
                                   1280 ;	-----------------------------------------
                                   1281 ;	 function PBCFG_0_enter_DefaultMode_from_RESET
                                   1282 ;	-----------------------------------------
      000538                       1283 _PBCFG_0_enter_DefaultMode_from_RESET:
                           000066  1284 	C$InitDevice.c$218$1$31 ==.
                                   1285 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:218: | XBR0_CP1AE__DISABLED | XBR0_SYSCKE__DISABLED;
      000538 75 E1 05         [24] 1286 	mov	_XBR0,#0x05
                           000069  1287 	C$InitDevice.c$230$1$31 ==.
                                   1288 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:230: | XBR1_T0E__DISABLED | XBR1_T1E__DISABLED | XBR1_T2E__DISABLED;
      00053B 75 E2 03         [24] 1289 	mov	_XBR1,#0x03
                           00006C  1290 	C$InitDevice.c$235$1$31 ==.
                                   1291 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:235: | XBR2_URT1CTSE__DISABLED;
      00053E 75 E3 40         [24] 1292 	mov	_XBR2,#0x40
                           00006F  1293 	C$InitDevice.c$237$1$31 ==.
                           00006F  1294 	XG$PBCFG_0_enter_DefaultMode_from_RESET$0$0 ==.
      000541 22               [24] 1295 	ret
                                   1296 ;------------------------------------------------------------
                                   1297 ;Allocation info for local variables in function 'CIP51_0_enter_DefaultMode_from_RESET'
                                   1298 ;------------------------------------------------------------
                           000070  1299 	G$CIP51_0_enter_DefaultMode_from_RESET$0$0 ==.
                           000070  1300 	C$InitDevice.c$242$1$31 ==.
                                   1301 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:242: void CIP51_0_enter_DefaultMode_from_RESET(void) {
                                   1302 ;	-----------------------------------------
                                   1303 ;	 function CIP51_0_enter_DefaultMode_from_RESET
                                   1304 ;	-----------------------------------------
      000542                       1305 _CIP51_0_enter_DefaultMode_from_RESET:
                           000070  1306 	C$InitDevice.c$248$1$33 ==.
                                   1307 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:248: SFRPAGE = 0x10;
      000542 75 A7 10         [24] 1308 	mov	_SFRPAGE,#0x10
                           000073  1309 	C$InitDevice.c$249$1$33 ==.
                                   1310 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:249: PFE0CN = PFE0CN_PFEN__ENABLED | PFE0CN_FLRT__SYSCLK_BELOW_50_MHZ;
      000545 75 C1 30         [24] 1311 	mov	_PFE0CN,#0x30
                           000076  1312 	C$InitDevice.c$252$1$33 ==.
                           000076  1313 	XG$CIP51_0_enter_DefaultMode_from_RESET$0$0 ==.
      000548 22               [24] 1314 	ret
                                   1315 ;------------------------------------------------------------
                                   1316 ;Allocation info for local variables in function 'TIMER01_0_enter_DefaultMode_from_RESET'
                                   1317 ;------------------------------------------------------------
                                   1318 ;TCON_save                 Allocated to registers r7 
                                   1319 ;------------------------------------------------------------
                           000077  1320 	G$TIMER01_0_enter_DefaultMode_from_RESET$0$0 ==.
                           000077  1321 	C$InitDevice.c$257$1$33 ==.
                                   1322 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:257: void TIMER01_0_enter_DefaultMode_from_RESET(void) {
                                   1323 ;	-----------------------------------------
                                   1324 ;	 function TIMER01_0_enter_DefaultMode_from_RESET
                                   1325 ;	-----------------------------------------
      000549                       1326 _TIMER01_0_enter_DefaultMode_from_RESET:
                           000077  1327 	C$InitDevice.c$261$1$35 ==.
                                   1328 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:261: TCON_save = TCON;
      000549 AF 88            [24] 1329 	mov	r7,_TCON
                           000079  1330 	C$InitDevice.c$263$1$35 ==.
                                   1331 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:263: TCON &= ~TCON_TR0__BMASK & ~TCON_TR1__BMASK;
      00054B 53 88 AF         [24] 1332 	anl	_TCON,#0xaf
                           00007C  1333 	C$InitDevice.c$277$1$35 ==.
                                   1334 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:277: TH1 = (0x30 << TH1_TH1__SHIFT);
      00054E 75 8D 30         [24] 1335 	mov	_TH1,#0x30
                           00007F  1336 	C$InitDevice.c$285$1$35 ==.
                                   1337 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:285: TCON |= (TCON_save & TCON_TR0__BMASK) | (TCON_save & TCON_TR1__BMASK);
      000551 74 10            [12] 1338 	mov	a,#0x10
      000553 5F               [12] 1339 	anl	a,r7
      000554 FE               [12] 1340 	mov	r6,a
      000555 74 40            [12] 1341 	mov	a,#0x40
      000557 5F               [12] 1342 	anl	a,r7
      000558 4E               [12] 1343 	orl	a,r6
      000559 42 88            [12] 1344 	orl	_TCON,a
                           000089  1345 	C$InitDevice.c$289$1$35 ==.
                           000089  1346 	XG$TIMER01_0_enter_DefaultMode_from_RESET$0$0 ==.
      00055B 22               [24] 1347 	ret
                                   1348 ;------------------------------------------------------------
                                   1349 ;Allocation info for local variables in function 'TIMER16_2_enter_DefaultMode_from_RESET'
                                   1350 ;------------------------------------------------------------
                                   1351 ;TMR2CN0_TR2_save          Allocated to registers r7 
                                   1352 ;------------------------------------------------------------
                           00008A  1353 	G$TIMER16_2_enter_DefaultMode_from_RESET$0$0 ==.
                           00008A  1354 	C$InitDevice.c$294$1$35 ==.
                                   1355 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:294: void TIMER16_2_enter_DefaultMode_from_RESET(void) {
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function TIMER16_2_enter_DefaultMode_from_RESET
                                   1358 ;	-----------------------------------------
      00055C                       1359 _TIMER16_2_enter_DefaultMode_from_RESET:
                           00008A  1360 	C$InitDevice.c$298$1$37 ==.
                                   1361 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:298: TMR2CN0_TR2_save = TMR2CN0 & TMR2CN0_TR2__BMASK;
      00055C 74 04            [12] 1362 	mov	a,#0x04
      00055E 55 C8            [12] 1363 	anl	a,_TMR2CN0
      000560 FF               [12] 1364 	mov	r7,a
                           00008F  1365 	C$InitDevice.c$300$1$37 ==.
                                   1366 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:300: TMR2CN0 &= ~(TMR2CN0_TR2__BMASK);
      000561 53 C8 FB         [24] 1367 	anl	_TMR2CN0,#0xfb
                           000092  1368 	C$InitDevice.c$319$1$37 ==.
                                   1369 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:319: TMR2RLH = (0x44 << TMR2RLH_TMR2RLH__SHIFT);
      000564 75 CB 44         [24] 1370 	mov	_TMR2RLH,#0x44
                           000095  1371 	C$InitDevice.c$326$1$37 ==.
                                   1372 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:326: TMR2RLL = (0x80 << TMR2RLL_TMR2RLL__SHIFT);
      000567 75 CA 80         [24] 1373 	mov	_TMR2RLL,#0x80
                           000098  1374 	C$InitDevice.c$333$1$37 ==.
                                   1375 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:333: TMR2CN0 |= TMR2CN0_TR2__RUN;
      00056A 43 C8 04         [24] 1376 	orl	_TMR2CN0,#0x04
                           00009B  1377 	C$InitDevice.c$338$1$37 ==.
                                   1378 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:338: TMR2CN0 |= TMR2CN0_TR2_save;
      00056D EF               [12] 1379 	mov	a,r7
      00056E 42 C8            [12] 1380 	orl	_TMR2CN0,a
                           00009E  1381 	C$InitDevice.c$341$1$37 ==.
                           00009E  1382 	XG$TIMER16_2_enter_DefaultMode_from_RESET$0$0 ==.
      000570 22               [24] 1383 	ret
                                   1384 ;------------------------------------------------------------
                                   1385 ;Allocation info for local variables in function 'TIMER16_3_enter_DefaultMode_from_RESET'
                                   1386 ;------------------------------------------------------------
                                   1387 ;TMR3CN0_TR3_save          Allocated to registers r7 
                                   1388 ;------------------------------------------------------------
                           00009F  1389 	G$TIMER16_3_enter_DefaultMode_from_RESET$0$0 ==.
                           00009F  1390 	C$InitDevice.c$346$1$37 ==.
                                   1391 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:346: void TIMER16_3_enter_DefaultMode_from_RESET(void) {
                                   1392 ;	-----------------------------------------
                                   1393 ;	 function TIMER16_3_enter_DefaultMode_from_RESET
                                   1394 ;	-----------------------------------------
      000571                       1395 _TIMER16_3_enter_DefaultMode_from_RESET:
                           00009F  1396 	C$InitDevice.c$350$1$39 ==.
                                   1397 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:350: TMR3CN0_TR3_save = TMR3CN0 & TMR3CN0_TR3__BMASK;
      000571 74 04            [12] 1398 	mov	a,#0x04
      000573 55 91            [12] 1399 	anl	a,_TMR3CN0
      000575 FF               [12] 1400 	mov	r7,a
                           0000A4  1401 	C$InitDevice.c$352$1$39 ==.
                                   1402 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:352: TMR3CN0 &= ~(TMR3CN0_TR3__BMASK);
      000576 53 91 FB         [24] 1403 	anl	_TMR3CN0,#0xfb
                           0000A7  1404 	C$InitDevice.c$377$1$39 ==.
                                   1405 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:377: TMR3CN0 |= TMR3CN0_TR3__RUN;
      000579 43 91 04         [24] 1406 	orl	_TMR3CN0,#0x04
                           0000AA  1407 	C$InitDevice.c$382$1$39 ==.
                                   1408 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:382: TMR3CN0 |= TMR3CN0_TR3_save;
      00057C EF               [12] 1409 	mov	a,r7
      00057D 42 91            [12] 1410 	orl	_TMR3CN0,a
                           0000AD  1411 	C$InitDevice.c$385$1$39 ==.
                           0000AD  1412 	XG$TIMER16_3_enter_DefaultMode_from_RESET$0$0 ==.
      00057F 22               [24] 1413 	ret
                                   1414 ;------------------------------------------------------------
                                   1415 ;Allocation info for local variables in function 'TIMER_SETUP_0_enter_DefaultMode_from_RESET'
                                   1416 ;------------------------------------------------------------
                           0000AE  1417 	G$TIMER_SETUP_0_enter_DefaultMode_from_RESET$0$0 ==.
                           0000AE  1418 	C$InitDevice.c$390$1$39 ==.
                                   1419 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:390: void TIMER_SETUP_0_enter_DefaultMode_from_RESET(void) {
                                   1420 ;	-----------------------------------------
                                   1421 ;	 function TIMER_SETUP_0_enter_DefaultMode_from_RESET
                                   1422 ;	-----------------------------------------
      000580                       1423 _TIMER_SETUP_0_enter_DefaultMode_from_RESET:
                           0000AE  1424 	C$InitDevice.c$404$1$41 ==.
                                   1425 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:404: | CKCON0_T1M__SYSCLK;
      000580 75 8E 1C         [24] 1426 	mov	_CKCON0,#0x1c
                           0000B1  1427 	C$InitDevice.c$422$1$41 ==.
                                   1428 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:422: | TMOD_GATE0__DISABLED | TMOD_CT1__TIMER | TMOD_GATE1__DISABLED;
      000583 75 89 21         [24] 1429 	mov	_TMOD,#0x21
                           0000B4  1430 	C$InitDevice.c$429$1$41 ==.
                                   1431 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:429: TCON |= TCON_TR1__RUN;
      000586 43 88 40         [24] 1432 	orl	_TCON,#0x40
                           0000B7  1433 	C$InitDevice.c$432$1$41 ==.
                           0000B7  1434 	XG$TIMER_SETUP_0_enter_DefaultMode_from_RESET$0$0 ==.
      000589 22               [24] 1435 	ret
                                   1436 ;------------------------------------------------------------
                                   1437 ;Allocation info for local variables in function 'SMBUS_0_enter_DefaultMode_from_RESET'
                                   1438 ;------------------------------------------------------------
                           0000B8  1439 	G$SMBUS_0_enter_DefaultMode_from_RESET$0$0 ==.
                           0000B8  1440 	C$InitDevice.c$437$1$41 ==.
                                   1441 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:437: void SMBUS_0_enter_DefaultMode_from_RESET(void) {
                                   1442 ;	-----------------------------------------
                                   1443 ;	 function SMBUS_0_enter_DefaultMode_from_RESET
                                   1444 ;	-----------------------------------------
      00058A                       1445 _SMBUS_0_enter_DefaultMode_from_RESET:
                           0000B8  1446 	C$InitDevice.c$458$1$43 ==.
                                   1447 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:458: | SMB0CF_EXTHOLD__ENABLED;
      00058A 43 C1 9F         [24] 1448 	orl	_SMB0CF,#0x9f
                           0000BB  1449 	C$InitDevice.c$467$1$43 ==.
                           0000BB  1450 	XG$SMBUS_0_enter_DefaultMode_from_RESET$0$0 ==.
      00058D 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'UART_0_enter_DefaultMode_from_RESET'
                                   1454 ;------------------------------------------------------------
                           0000BC  1455 	G$UART_0_enter_DefaultMode_from_RESET$0$0 ==.
                           0000BC  1456 	C$InitDevice.c$472$1$43 ==.
                                   1457 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:472: void UART_0_enter_DefaultMode_from_RESET(void) {
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function UART_0_enter_DefaultMode_from_RESET
                                   1460 ;	-----------------------------------------
      00058E                       1461 _UART_0_enter_DefaultMode_from_RESET:
                           0000BC  1462 	C$InitDevice.c$477$1$45 ==.
                                   1463 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:477: SCON0 |= SCON0_REN__RECEIVE_ENABLED;
      00058E 43 98 10         [24] 1464 	orl	_SCON0,#0x10
                           0000BF  1465 	C$InitDevice.c$480$1$45 ==.
                           0000BF  1466 	XG$UART_0_enter_DefaultMode_from_RESET$0$0 ==.
      000591 22               [24] 1467 	ret
                                   1468 ;------------------------------------------------------------
                                   1469 ;Allocation info for local variables in function 'INTERRUPT_0_enter_DefaultMode_from_RESET'
                                   1470 ;------------------------------------------------------------
                           0000C0  1471 	G$INTERRUPT_0_enter_DefaultMode_from_RESET$0$0 ==.
                           0000C0  1472 	C$InitDevice.c$485$1$45 ==.
                                   1473 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:485: void INTERRUPT_0_enter_DefaultMode_from_RESET(void) {
                                   1474 ;	-----------------------------------------
                                   1475 ;	 function INTERRUPT_0_enter_DefaultMode_from_RESET
                                   1476 ;	-----------------------------------------
      000592                       1477 _INTERRUPT_0_enter_DefaultMode_from_RESET:
                           0000C0  1478 	C$InitDevice.c$499$1$47 ==.
                                   1479 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:499: | EIE1_ESMB0__ENABLED | EIE1_ET3__ENABLED;
      000592 75 E6 81         [24] 1480 	mov	_EIE1,#0x81
                           0000C3  1481 	C$InitDevice.c$530$1$47 ==.
                                   1482 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:530: | IE_ET2__ENABLED | IE_ES0__DISABLED;
      000595 75 A8 A0         [24] 1483 	mov	_IE,#0xa0
                           0000C6  1484 	C$InitDevice.c$539$1$47 ==.
                           0000C6  1485 	XG$INTERRUPT_0_enter_DefaultMode_from_RESET$0$0 ==.
      000598 22               [24] 1486 	ret
                                   1487 ;------------------------------------------------------------
                                   1488 ;Allocation info for local variables in function 'PCA_0_enter_DefaultMode_from_RESET'
                                   1489 ;------------------------------------------------------------
                           0000C7  1490 	G$PCA_0_enter_DefaultMode_from_RESET$0$0 ==.
                           0000C7  1491 	C$InitDevice.c$551$1$47 ==.
                                   1492 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:551: void PCA_0_enter_DefaultMode_from_RESET(void) {
                                   1493 ;	-----------------------------------------
                                   1494 ;	 function PCA_0_enter_DefaultMode_from_RESET
                                   1495 ;	-----------------------------------------
      000599                       1496 _PCA_0_enter_DefaultMode_from_RESET:
                           0000C7  1497 	C$InitDevice.c$554$1$49 ==.
                                   1498 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:554: PCA0CN0_CR = PCA0CN0_CR__STOP;
      000599 C2 DE            [12] 1499 	clr	_PCA0CN0_CR
                           0000C9  1500 	C$InitDevice.c$579$1$49 ==.
                                   1501 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:579: PCA0CN0_CR = PCA0CN0_CR__RUN;
      00059B D2 DE            [12] 1502 	setb	_PCA0CN0_CR
                           0000CB  1503 	C$InitDevice.c$582$1$49 ==.
                           0000CB  1504 	XG$PCA_0_enter_DefaultMode_from_RESET$0$0 ==.
      00059D 22               [24] 1505 	ret
                                   1506 ;------------------------------------------------------------
                                   1507 ;Allocation info for local variables in function 'PCACH_0_enter_DefaultMode_from_RESET'
                                   1508 ;------------------------------------------------------------
                           0000CC  1509 	G$PCACH_0_enter_DefaultMode_from_RESET$0$0 ==.
                           0000CC  1510 	C$InitDevice.c$584$1$49 ==.
                                   1511 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:584: void PCACH_0_enter_DefaultMode_from_RESET(void) {
                                   1512 ;	-----------------------------------------
                                   1513 ;	 function PCACH_0_enter_DefaultMode_from_RESET
                                   1514 ;	-----------------------------------------
      00059E                       1515 _PCACH_0_enter_DefaultMode_from_RESET:
                           0000CC  1516 	C$InitDevice.c$588$1$51 ==.
                                   1517 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:588: PCA0PWM &= ~PCA0PWM_ARSEL__BMASK;
      00059E 53 F7 7F         [24] 1518 	anl	_PCA0PWM,#0x7f
                           0000CF  1519 	C$InitDevice.c$605$1$51 ==.
                                   1520 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:605: | PCA0CPM0_PWM__ENABLED | PCA0CPM0_TOG__DISABLED;
      0005A1 75 DA 42         [24] 1521 	mov	_PCA0CPM0,#0x42
                           0000D2  1522 	C$InitDevice.c$612$1$51 ==.
                                   1523 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:612: PCA0CPL0 = (0x96 << PCA0CPL0_PCA0CPL0__SHIFT);
      0005A4 75 FB 96         [24] 1524 	mov	_PCA0CPL0,#0x96
                           0000D5  1525 	C$InitDevice.c$619$1$51 ==.
                                   1526 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:619: PCA0CPH0 = (0x96 << PCA0CPH0_PCA0CPH0__SHIFT);
      0005A7 75 FC 96         [24] 1527 	mov	_PCA0CPH0,#0x96
                           0000D8  1528 	C$InitDevice.c$628$1$51 ==.
                           0000D8  1529 	XG$PCACH_0_enter_DefaultMode_from_RESET$0$0 ==.
      0005AA 22               [24] 1530 	ret
                                   1531 ;------------------------------------------------------------
                                   1532 ;Allocation info for local variables in function 'PCACH_1_enter_DefaultMode_from_RESET'
                                   1533 ;------------------------------------------------------------
                           0000D9  1534 	G$PCACH_1_enter_DefaultMode_from_RESET$0$0 ==.
                           0000D9  1535 	C$InitDevice.c$630$1$51 ==.
                                   1536 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:630: void PCACH_1_enter_DefaultMode_from_RESET(void) {
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function PCACH_1_enter_DefaultMode_from_RESET
                                   1539 ;	-----------------------------------------
      0005AB                       1540 _PCACH_1_enter_DefaultMode_from_RESET:
                           0000D9  1541 	C$InitDevice.c$634$1$53 ==.
                                   1542 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:634: PCA0PWM &= ~PCA0PWM_ARSEL__BMASK;
      0005AB 53 F7 7F         [24] 1543 	anl	_PCA0PWM,#0x7f
                           0000DC  1544 	C$InitDevice.c$651$1$53 ==.
                                   1545 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:651: | PCA0CPM1_PWM__ENABLED | PCA0CPM1_TOG__DISABLED;
      0005AE 75 DB 42         [24] 1546 	mov	_PCA0CPM1,#0x42
                           0000DF  1547 	C$InitDevice.c$658$1$53 ==.
                                   1548 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:658: PCA0CPL1 = (0x96 << PCA0CPL1_PCA0CPL1__SHIFT);
      0005B1 75 E9 96         [24] 1549 	mov	_PCA0CPL1,#0x96
                           0000E2  1550 	C$InitDevice.c$665$1$53 ==.
                                   1551 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:665: PCA0CPH1 = (0x96 << PCA0CPH1_PCA0CPH1__SHIFT);
      0005B4 75 EA 96         [24] 1552 	mov	_PCA0CPH1,#0x96
                           0000E5  1553 	C$InitDevice.c$674$1$53 ==.
                           0000E5  1554 	XG$PCACH_1_enter_DefaultMode_from_RESET$0$0 ==.
      0005B7 22               [24] 1555 	ret
                                   1556 ;------------------------------------------------------------
                                   1557 ;Allocation info for local variables in function 'PCACH_2_enter_DefaultMode_from_RESET'
                                   1558 ;------------------------------------------------------------
                           0000E6  1559 	G$PCACH_2_enter_DefaultMode_from_RESET$0$0 ==.
                           0000E6  1560 	C$InitDevice.c$676$1$53 ==.
                                   1561 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:676: void PCACH_2_enter_DefaultMode_from_RESET(void) {
                                   1562 ;	-----------------------------------------
                                   1563 ;	 function PCACH_2_enter_DefaultMode_from_RESET
                                   1564 ;	-----------------------------------------
      0005B8                       1565 _PCACH_2_enter_DefaultMode_from_RESET:
                           0000E6  1566 	C$InitDevice.c$680$1$55 ==.
                                   1567 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:680: PCA0PWM &= ~PCA0PWM_ARSEL__BMASK;
      0005B8 53 F7 7F         [24] 1568 	anl	_PCA0PWM,#0x7f
                           0000E9  1569 	C$InitDevice.c$697$1$55 ==.
                                   1570 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:697: | PCA0CPM2_PWM__ENABLED | PCA0CPM2_TOG__DISABLED;
      0005BB 75 DC 42         [24] 1571 	mov	_PCA0CPM2,#0x42
                           0000EC  1572 	C$InitDevice.c$704$1$55 ==.
                                   1573 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:704: PCA0CPL2 = (0x96 << PCA0CPL2_PCA0CPL2__SHIFT);
      0005BE 75 EB 96         [24] 1574 	mov	_PCA0CPL2,#0x96
                           0000EF  1575 	C$InitDevice.c$711$1$55 ==.
                                   1576 ;	D:\Freelancer_projects\jan333\sdcc_project\src\InitDevice.c:711: PCA0CPH2 = (0x96 << PCA0CPH2_PCA0CPH2__SHIFT);
      0005C1 75 EC 96         [24] 1577 	mov	_PCA0CPH2,#0x96
                           0000F2  1578 	C$InitDevice.c$720$1$55 ==.
                           0000F2  1579 	XG$PCACH_2_enter_DefaultMode_from_RESET$0$0 ==.
      0005C4 22               [24] 1580 	ret
                                   1581 	.area CSEG    (CODE)
                                   1582 	.area CONST   (CODE)
                                   1583 	.area XINIT   (CODE)
                                   1584 	.area CABS    (ABS,CODE)
