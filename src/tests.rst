                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module tests
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _U2F_BLUE
                                     12 	.globl _U2F_GREEN
                                     13 	.globl _U2F_RED
                                     14 	.globl _U2F_BUTTON_VAL
                                     15 	.globl _U2F_BUTTON
                                     16 	.globl _UART1FCN1_TFRQ
                                     17 	.globl _UART1FCN1_TXNF
                                     18 	.globl _UART1FCN1_TXHOLD
                                     19 	.globl _UART1FCN1_TIE
                                     20 	.globl _UART1FCN1_RFRQ
                                     21 	.globl _UART1FCN1_RXTO1
                                     22 	.globl _UART1FCN1_RXTO0
                                     23 	.globl _UART1FCN1_RIE
                                     24 	.globl _TMR4CN0_TF4H
                                     25 	.globl _TMR4CN0_TF4L
                                     26 	.globl _TMR4CN0_TF4LEN
                                     27 	.globl _TMR4CN0_TF4CEN
                                     28 	.globl _TMR4CN0_T4SPLIT
                                     29 	.globl _TMR4CN0_TR4
                                     30 	.globl _TMR4CN0_T4XCLK1
                                     31 	.globl _TMR4CN0_T4XCLK0
                                     32 	.globl _TMR2CN0_TF2H
                                     33 	.globl _TMR2CN0_TF2L
                                     34 	.globl _TMR2CN0_TF2LEN
                                     35 	.globl _TMR2CN0_TF2CEN
                                     36 	.globl _TMR2CN0_T2SPLIT
                                     37 	.globl _TMR2CN0_TR2
                                     38 	.globl _TMR2CN0_T2XCLK1
                                     39 	.globl _TMR2CN0_T2XCLK0
                                     40 	.globl _TCON_TF1
                                     41 	.globl _TCON_TR1
                                     42 	.globl _TCON_TF0
                                     43 	.globl _TCON_TR0
                                     44 	.globl _TCON_IE1
                                     45 	.globl _TCON_IT1
                                     46 	.globl _TCON_IE0
                                     47 	.globl _TCON_IT0
                                     48 	.globl _SPI0CN0_SPIF
                                     49 	.globl _SPI0CN0_WCOL
                                     50 	.globl _SPI0CN0_MODF
                                     51 	.globl _SPI0CN0_RXOVRN
                                     52 	.globl _SPI0CN0_NSSMD1
                                     53 	.globl _SPI0CN0_NSSMD0
                                     54 	.globl _SPI0CN0_TXNF
                                     55 	.globl _SPI0CN0_SPIEN
                                     56 	.globl _SMB0CN0_MASTER
                                     57 	.globl _SMB0CN0_TXMODE
                                     58 	.globl _SMB0CN0_STA
                                     59 	.globl _SMB0CN0_STO
                                     60 	.globl _SMB0CN0_ACKRQ
                                     61 	.globl _SMB0CN0_ARBLOST
                                     62 	.globl _SMB0CN0_ACK
                                     63 	.globl _SMB0CN0_SI
                                     64 	.globl _SCON1_OVR
                                     65 	.globl _SCON1_PERR
                                     66 	.globl _SCON1_REN
                                     67 	.globl _SCON1_TBX
                                     68 	.globl _SCON1_RBX
                                     69 	.globl _SCON1_TI
                                     70 	.globl _SCON1_RI
                                     71 	.globl _SCON0_SMODE
                                     72 	.globl _SCON0_MCE
                                     73 	.globl _SCON0_REN
                                     74 	.globl _SCON0_TB8
                                     75 	.globl _SCON0_RB8
                                     76 	.globl _SCON0_TI
                                     77 	.globl _SCON0_RI
                                     78 	.globl _PSW_CY
                                     79 	.globl _PSW_AC
                                     80 	.globl _PSW_F0
                                     81 	.globl _PSW_RS1
                                     82 	.globl _PSW_RS0
                                     83 	.globl _PSW_OV
                                     84 	.globl _PSW_F1
                                     85 	.globl _PSW_PARITY
                                     86 	.globl _PCA0CN0_CF
                                     87 	.globl _PCA0CN0_CR
                                     88 	.globl _PCA0CN0_CCF2
                                     89 	.globl _PCA0CN0_CCF1
                                     90 	.globl _PCA0CN0_CCF0
                                     91 	.globl _P3_B1
                                     92 	.globl _P3_B0
                                     93 	.globl _P2_B3
                                     94 	.globl _P2_B2
                                     95 	.globl _P2_B1
                                     96 	.globl _P2_B0
                                     97 	.globl _P1_B7
                                     98 	.globl _P1_B6
                                     99 	.globl _P1_B5
                                    100 	.globl _P1_B4
                                    101 	.globl _P1_B3
                                    102 	.globl _P1_B2
                                    103 	.globl _P1_B1
                                    104 	.globl _P1_B0
                                    105 	.globl _P0_B7
                                    106 	.globl _P0_B6
                                    107 	.globl _P0_B5
                                    108 	.globl _P0_B4
                                    109 	.globl _P0_B3
                                    110 	.globl _P0_B2
                                    111 	.globl _P0_B1
                                    112 	.globl _P0_B0
                                    113 	.globl _IP_PSPI0
                                    114 	.globl _IP_PT2
                                    115 	.globl _IP_PS0
                                    116 	.globl _IP_PT1
                                    117 	.globl _IP_PX1
                                    118 	.globl _IP_PT0
                                    119 	.globl _IP_PX0
                                    120 	.globl _IE_EA
                                    121 	.globl _IE_ESPI0
                                    122 	.globl _IE_ET2
                                    123 	.globl _IE_ES0
                                    124 	.globl _IE_ET1
                                    125 	.globl _IE_EX1
                                    126 	.globl _IE_ET0
                                    127 	.globl _IE_EX0
                                    128 	.globl _B_B7
                                    129 	.globl _B_B6
                                    130 	.globl _B_B5
                                    131 	.globl _B_B4
                                    132 	.globl _B_B3
                                    133 	.globl _B_B2
                                    134 	.globl _B_B1
                                    135 	.globl _B_B0
                                    136 	.globl _ADC0CN0_ADEN
                                    137 	.globl _ADC0CN0_ADBMEN
                                    138 	.globl _ADC0CN0_ADINT
                                    139 	.globl _ADC0CN0_ADBUSY
                                    140 	.globl _ADC0CN0_ADWINT
                                    141 	.globl _ADC0CN0_ADCM2
                                    142 	.globl _ADC0CN0_ADCM1
                                    143 	.globl _ADC0CN0_ADCM0
                                    144 	.globl _ACC_ACC7
                                    145 	.globl _ACC_ACC6
                                    146 	.globl _ACC_ACC5
                                    147 	.globl _ACC_ACC4
                                    148 	.globl _ACC_ACC3
                                    149 	.globl _ACC_ACC2
                                    150 	.globl _ACC_ACC1
                                    151 	.globl _ACC_ACC0
                                    152 	.globl __XPAGE
                                    153 	.globl _TMR4RL
                                    154 	.globl _TMR4
                                    155 	.globl _TMR3RL
                                    156 	.globl _TMR3
                                    157 	.globl _TMR2RL
                                    158 	.globl _TMR2
                                    159 	.globl _SBRL1
                                    160 	.globl _PCA0
                                    161 	.globl _PCA0CP2
                                    162 	.globl _PCA0CP1
                                    163 	.globl _PCA0CP0
                                    164 	.globl _DP
                                    165 	.globl _ADC0LT
                                    166 	.globl _ADC0
                                    167 	.globl _ADC0GT
                                    168 	.globl _XBR2
                                    169 	.globl _XBR1
                                    170 	.globl _XBR0
                                    171 	.globl _WDTCN
                                    172 	.globl _VDM0CN
                                    173 	.globl _USB0XCN
                                    174 	.globl _USB0DAT
                                    175 	.globl _USB0CF
                                    176 	.globl _USB0CDSTA
                                    177 	.globl _USB0CDCN
                                    178 	.globl _USB0CDCF
                                    179 	.globl _USB0AEC
                                    180 	.globl _USB0ADR
                                    181 	.globl _UART1LIN
                                    182 	.globl _UART1FCT
                                    183 	.globl _UART1FCN1
                                    184 	.globl _UART1FCN0
                                    185 	.globl _TMR4RLL
                                    186 	.globl _TMR4RLH
                                    187 	.globl _TMR4L
                                    188 	.globl _TMR4H
                                    189 	.globl _TMR4CN1
                                    190 	.globl _TMR4CN0
                                    191 	.globl _TMR3RLL
                                    192 	.globl _TMR3RLH
                                    193 	.globl _TMR3L
                                    194 	.globl _TMR3H
                                    195 	.globl _TMR3CN1
                                    196 	.globl _TMR3CN0
                                    197 	.globl _TMR2RLL
                                    198 	.globl _TMR2RLH
                                    199 	.globl _TMR2L
                                    200 	.globl _TMR2H
                                    201 	.globl _TMR2CN1
                                    202 	.globl _TMR2CN0
                                    203 	.globl _TMOD
                                    204 	.globl _TL1
                                    205 	.globl _TL0
                                    206 	.globl _TH1
                                    207 	.globl _TH0
                                    208 	.globl _TCON
                                    209 	.globl _SPI0FCT
                                    210 	.globl _SPI0FCN1
                                    211 	.globl _SPI0FCN0
                                    212 	.globl _SPI0DAT
                                    213 	.globl _SPI0CN0
                                    214 	.globl _SPI0CKR
                                    215 	.globl _SPI0CFG
                                    216 	.globl _SP
                                    217 	.globl _SMOD1
                                    218 	.globl _SMB0TC
                                    219 	.globl _SMB0RXLN
                                    220 	.globl _SMB0FCT
                                    221 	.globl _SMB0FCN1
                                    222 	.globl _SMB0FCN0
                                    223 	.globl _SMB0DAT
                                    224 	.globl _SMB0CN0
                                    225 	.globl _SMB0CF
                                    226 	.globl _SMB0ADR
                                    227 	.globl _SMB0ADM
                                    228 	.globl _SFRSTACK
                                    229 	.globl _SFRPGCN
                                    230 	.globl _SFRPAGE
                                    231 	.globl _SCON1
                                    232 	.globl _SCON0
                                    233 	.globl _SBUF1
                                    234 	.globl _SBUF0
                                    235 	.globl _SBRLL1
                                    236 	.globl _SBRLH1
                                    237 	.globl _SBCON1
                                    238 	.globl _RSTSRC
                                    239 	.globl _REVID
                                    240 	.globl _REG1CN
                                    241 	.globl _REG0CN
                                    242 	.globl _REF0CN
                                    243 	.globl _PSW
                                    244 	.globl _PSCTL
                                    245 	.globl _PRTDRV
                                    246 	.globl _PFE0CN
                                    247 	.globl _PCON1
                                    248 	.globl _PCON0
                                    249 	.globl _PCA0PWM
                                    250 	.globl _PCA0POL
                                    251 	.globl _PCA0MD
                                    252 	.globl _PCA0L
                                    253 	.globl _PCA0H
                                    254 	.globl _PCA0CPM2
                                    255 	.globl _PCA0CPM1
                                    256 	.globl _PCA0CPM0
                                    257 	.globl _PCA0CPL2
                                    258 	.globl _PCA0CPL1
                                    259 	.globl _PCA0CPL0
                                    260 	.globl _PCA0CPH2
                                    261 	.globl _PCA0CPH1
                                    262 	.globl _PCA0CPH0
                                    263 	.globl _PCA0CN0
                                    264 	.globl _PCA0CLR
                                    265 	.globl _PCA0CENT
                                    266 	.globl _P3MDOUT
                                    267 	.globl _P3MDIN
                                    268 	.globl _P3
                                    269 	.globl _P2SKIP
                                    270 	.globl _P2MDOUT
                                    271 	.globl _P2MDIN
                                    272 	.globl _P2MAT
                                    273 	.globl _P2MASK
                                    274 	.globl _P2
                                    275 	.globl _P1SKIP
                                    276 	.globl _P1MDOUT
                                    277 	.globl _P1MDIN
                                    278 	.globl _P1MAT
                                    279 	.globl _P1MASK
                                    280 	.globl _P1
                                    281 	.globl _P0SKIP
                                    282 	.globl _P0MDOUT
                                    283 	.globl _P0MDIN
                                    284 	.globl _P0MAT
                                    285 	.globl _P0MASK
                                    286 	.globl _P0
                                    287 	.globl _LFO0CN
                                    288 	.globl _IT01CF
                                    289 	.globl _IPH
                                    290 	.globl _IP
                                    291 	.globl _IE
                                    292 	.globl _I2C0STAT
                                    293 	.globl _I2C0SLAD
                                    294 	.globl _I2C0FCT
                                    295 	.globl _I2C0FCN1
                                    296 	.globl _I2C0FCN0
                                    297 	.globl _I2C0DOUT
                                    298 	.globl _I2C0DIN
                                    299 	.globl _I2C0CN0
                                    300 	.globl _HFOCN
                                    301 	.globl _HFO1CAL
                                    302 	.globl _HFO0CAL
                                    303 	.globl _FLKEY
                                    304 	.globl _EMI0CN
                                    305 	.globl _EIP2H
                                    306 	.globl _EIP2
                                    307 	.globl _EIP1H
                                    308 	.globl _EIP1
                                    309 	.globl _EIE2
                                    310 	.globl _EIE1
                                    311 	.globl _DPL
                                    312 	.globl _DPH
                                    313 	.globl _DEVICEID
                                    314 	.globl _DERIVID
                                    315 	.globl _CRC0ST
                                    316 	.globl _CRC0IN
                                    317 	.globl _CRC0FLIP
                                    318 	.globl _CRC0DAT
                                    319 	.globl _CRC0CNT
                                    320 	.globl _CRC0CN1
                                    321 	.globl _CRC0CN0
                                    322 	.globl _CMP1MX
                                    323 	.globl _CMP1MD
                                    324 	.globl _CMP1CN1
                                    325 	.globl _CMP1CN0
                                    326 	.globl _CMP0MX
                                    327 	.globl _CMP0MD
                                    328 	.globl _CMP0CN1
                                    329 	.globl _CMP0CN0
                                    330 	.globl _CLKSEL
                                    331 	.globl _CKCON1
                                    332 	.globl _CKCON0
                                    333 	.globl _B
                                    334 	.globl _ADC0TK
                                    335 	.globl _ADC0PWR
                                    336 	.globl _ADC0MX
                                    337 	.globl _ADC0LTL
                                    338 	.globl _ADC0LTH
                                    339 	.globl _ADC0L
                                    340 	.globl _ADC0H
                                    341 	.globl _ADC0GTL
                                    342 	.globl _ADC0GTH
                                    343 	.globl _ADC0CN1
                                    344 	.globl _ADC0CN0
                                    345 	.globl _ADC0CF
                                    346 	.globl _ADC0AC
                                    347 	.globl _ACC
                                    348 ;--------------------------------------------------------
                                    349 ; special function registers
                                    350 ;--------------------------------------------------------
                                    351 	.area RSEG    (ABS,DATA)
      000000                        352 	.org 0x0000
                           0000E0   353 G$ACC$0$0 == 0x00e0
                           0000E0   354 _ACC	=	0x00e0
                           0000B3   355 G$ADC0AC$0$0 == 0x00b3
                           0000B3   356 _ADC0AC	=	0x00b3
                           0000BC   357 G$ADC0CF$0$0 == 0x00bc
                           0000BC   358 _ADC0CF	=	0x00bc
                           0000E8   359 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   360 _ADC0CN0	=	0x00e8
                           0000B2   361 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   362 _ADC0CN1	=	0x00b2
                           0000C4   363 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   364 _ADC0GTH	=	0x00c4
                           0000C3   365 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   366 _ADC0GTL	=	0x00c3
                           0000BE   367 G$ADC0H$0$0 == 0x00be
                           0000BE   368 _ADC0H	=	0x00be
                           0000BD   369 G$ADC0L$0$0 == 0x00bd
                           0000BD   370 _ADC0L	=	0x00bd
                           0000C6   371 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   372 _ADC0LTH	=	0x00c6
                           0000C5   373 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   374 _ADC0LTL	=	0x00c5
                           0000BB   375 G$ADC0MX$0$0 == 0x00bb
                           0000BB   376 _ADC0MX	=	0x00bb
                           0000DF   377 G$ADC0PWR$0$0 == 0x00df
                           0000DF   378 _ADC0PWR	=	0x00df
                           0000B9   379 G$ADC0TK$0$0 == 0x00b9
                           0000B9   380 _ADC0TK	=	0x00b9
                           0000F0   381 G$B$0$0 == 0x00f0
                           0000F0   382 _B	=	0x00f0
                           00008E   383 G$CKCON0$0$0 == 0x008e
                           00008E   384 _CKCON0	=	0x008e
                           0000A6   385 G$CKCON1$0$0 == 0x00a6
                           0000A6   386 _CKCON1	=	0x00a6
                           0000A9   387 G$CLKSEL$0$0 == 0x00a9
                           0000A9   388 _CLKSEL	=	0x00a9
                           00009B   389 G$CMP0CN0$0$0 == 0x009b
                           00009B   390 _CMP0CN0	=	0x009b
                           000099   391 G$CMP0CN1$0$0 == 0x0099
                           000099   392 _CMP0CN1	=	0x0099
                           00009D   393 G$CMP0MD$0$0 == 0x009d
                           00009D   394 _CMP0MD	=	0x009d
                           00009F   395 G$CMP0MX$0$0 == 0x009f
                           00009F   396 _CMP0MX	=	0x009f
                           0000BF   397 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   398 _CMP1CN0	=	0x00bf
                           0000AC   399 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   400 _CMP1CN1	=	0x00ac
                           0000AB   401 G$CMP1MD$0$0 == 0x00ab
                           0000AB   402 _CMP1MD	=	0x00ab
                           0000AA   403 G$CMP1MX$0$0 == 0x00aa
                           0000AA   404 _CMP1MX	=	0x00aa
                           0000CE   405 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   406 _CRC0CN0	=	0x00ce
                           000086   407 G$CRC0CN1$0$0 == 0x0086
                           000086   408 _CRC0CN1	=	0x0086
                           0000D3   409 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   410 _CRC0CNT	=	0x00d3
                           0000DE   411 G$CRC0DAT$0$0 == 0x00de
                           0000DE   412 _CRC0DAT	=	0x00de
                           0000CF   413 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   414 _CRC0FLIP	=	0x00cf
                           0000DD   415 G$CRC0IN$0$0 == 0x00dd
                           0000DD   416 _CRC0IN	=	0x00dd
                           0000D2   417 G$CRC0ST$0$0 == 0x00d2
                           0000D2   418 _CRC0ST	=	0x00d2
                           0000AD   419 G$DERIVID$0$0 == 0x00ad
                           0000AD   420 _DERIVID	=	0x00ad
                           0000B5   421 G$DEVICEID$0$0 == 0x00b5
                           0000B5   422 _DEVICEID	=	0x00b5
                           000083   423 G$DPH$0$0 == 0x0083
                           000083   424 _DPH	=	0x0083
                           000082   425 G$DPL$0$0 == 0x0082
                           000082   426 _DPL	=	0x0082
                           0000E6   427 G$EIE1$0$0 == 0x00e6
                           0000E6   428 _EIE1	=	0x00e6
                           0000CE   429 G$EIE2$0$0 == 0x00ce
                           0000CE   430 _EIE2	=	0x00ce
                           0000F3   431 G$EIP1$0$0 == 0x00f3
                           0000F3   432 _EIP1	=	0x00f3
                           0000F5   433 G$EIP1H$0$0 == 0x00f5
                           0000F5   434 _EIP1H	=	0x00f5
                           0000F4   435 G$EIP2$0$0 == 0x00f4
                           0000F4   436 _EIP2	=	0x00f4
                           0000F6   437 G$EIP2H$0$0 == 0x00f6
                           0000F6   438 _EIP2H	=	0x00f6
                           0000E7   439 G$EMI0CN$0$0 == 0x00e7
                           0000E7   440 _EMI0CN	=	0x00e7
                           0000B7   441 G$FLKEY$0$0 == 0x00b7
                           0000B7   442 _FLKEY	=	0x00b7
                           0000C7   443 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   444 _HFO0CAL	=	0x00c7
                           0000D6   445 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   446 _HFO1CAL	=	0x00d6
                           0000EF   447 G$HFOCN$0$0 == 0x00ef
                           0000EF   448 _HFOCN	=	0x00ef
                           0000BA   449 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   450 _I2C0CN0	=	0x00ba
                           0000BC   451 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   452 _I2C0DIN	=	0x00bc
                           0000BB   453 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   454 _I2C0DOUT	=	0x00bb
                           0000AD   455 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   456 _I2C0FCN0	=	0x00ad
                           0000AB   457 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   458 _I2C0FCN1	=	0x00ab
                           0000F5   459 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   460 _I2C0FCT	=	0x00f5
                           0000BD   461 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   462 _I2C0SLAD	=	0x00bd
                           0000B9   463 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   464 _I2C0STAT	=	0x00b9
                           0000A8   465 G$IE$0$0 == 0x00a8
                           0000A8   466 _IE	=	0x00a8
                           0000B8   467 G$IP$0$0 == 0x00b8
                           0000B8   468 _IP	=	0x00b8
                           0000F2   469 G$IPH$0$0 == 0x00f2
                           0000F2   470 _IPH	=	0x00f2
                           0000E4   471 G$IT01CF$0$0 == 0x00e4
                           0000E4   472 _IT01CF	=	0x00e4
                           0000B1   473 G$LFO0CN$0$0 == 0x00b1
                           0000B1   474 _LFO0CN	=	0x00b1
                           000080   475 G$P0$0$0 == 0x0080
                           000080   476 _P0	=	0x0080
                           0000FE   477 G$P0MASK$0$0 == 0x00fe
                           0000FE   478 _P0MASK	=	0x00fe
                           0000FD   479 G$P0MAT$0$0 == 0x00fd
                           0000FD   480 _P0MAT	=	0x00fd
                           0000F1   481 G$P0MDIN$0$0 == 0x00f1
                           0000F1   482 _P0MDIN	=	0x00f1
                           0000A4   483 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   484 _P0MDOUT	=	0x00a4
                           0000D4   485 G$P0SKIP$0$0 == 0x00d4
                           0000D4   486 _P0SKIP	=	0x00d4
                           000090   487 G$P1$0$0 == 0x0090
                           000090   488 _P1	=	0x0090
                           0000EE   489 G$P1MASK$0$0 == 0x00ee
                           0000EE   490 _P1MASK	=	0x00ee
                           0000ED   491 G$P1MAT$0$0 == 0x00ed
                           0000ED   492 _P1MAT	=	0x00ed
                           0000F2   493 G$P1MDIN$0$0 == 0x00f2
                           0000F2   494 _P1MDIN	=	0x00f2
                           0000A5   495 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   496 _P1MDOUT	=	0x00a5
                           0000D5   497 G$P1SKIP$0$0 == 0x00d5
                           0000D5   498 _P1SKIP	=	0x00d5
                           0000A0   499 G$P2$0$0 == 0x00a0
                           0000A0   500 _P2	=	0x00a0
                           0000FC   501 G$P2MASK$0$0 == 0x00fc
                           0000FC   502 _P2MASK	=	0x00fc
                           0000FB   503 G$P2MAT$0$0 == 0x00fb
                           0000FB   504 _P2MAT	=	0x00fb
                           0000F3   505 G$P2MDIN$0$0 == 0x00f3
                           0000F3   506 _P2MDIN	=	0x00f3
                           0000A6   507 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   508 _P2MDOUT	=	0x00a6
                           0000CC   509 G$P2SKIP$0$0 == 0x00cc
                           0000CC   510 _P2SKIP	=	0x00cc
                           0000B0   511 G$P3$0$0 == 0x00b0
                           0000B0   512 _P3	=	0x00b0
                           0000F4   513 G$P3MDIN$0$0 == 0x00f4
                           0000F4   514 _P3MDIN	=	0x00f4
                           00009C   515 G$P3MDOUT$0$0 == 0x009c
                           00009C   516 _P3MDOUT	=	0x009c
                           00009E   517 G$PCA0CENT$0$0 == 0x009e
                           00009E   518 _PCA0CENT	=	0x009e
                           00009C   519 G$PCA0CLR$0$0 == 0x009c
                           00009C   520 _PCA0CLR	=	0x009c
                           0000D8   521 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   522 _PCA0CN0	=	0x00d8
                           0000FC   523 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   524 _PCA0CPH0	=	0x00fc
                           0000EA   525 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   526 _PCA0CPH1	=	0x00ea
                           0000EC   527 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   528 _PCA0CPH2	=	0x00ec
                           0000FB   529 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   530 _PCA0CPL0	=	0x00fb
                           0000E9   531 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   532 _PCA0CPL1	=	0x00e9
                           0000EB   533 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   534 _PCA0CPL2	=	0x00eb
                           0000DA   535 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   536 _PCA0CPM0	=	0x00da
                           0000DB   537 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   538 _PCA0CPM1	=	0x00db
                           0000DC   539 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   540 _PCA0CPM2	=	0x00dc
                           0000FA   541 G$PCA0H$0$0 == 0x00fa
                           0000FA   542 _PCA0H	=	0x00fa
                           0000F9   543 G$PCA0L$0$0 == 0x00f9
                           0000F9   544 _PCA0L	=	0x00f9
                           0000D9   545 G$PCA0MD$0$0 == 0x00d9
                           0000D9   546 _PCA0MD	=	0x00d9
                           000096   547 G$PCA0POL$0$0 == 0x0096
                           000096   548 _PCA0POL	=	0x0096
                           0000F7   549 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   550 _PCA0PWM	=	0x00f7
                           000087   551 G$PCON0$0$0 == 0x0087
                           000087   552 _PCON0	=	0x0087
                           00009A   553 G$PCON1$0$0 == 0x009a
                           00009A   554 _PCON1	=	0x009a
                           0000C1   555 G$PFE0CN$0$0 == 0x00c1
                           0000C1   556 _PFE0CN	=	0x00c1
                           0000F6   557 G$PRTDRV$0$0 == 0x00f6
                           0000F6   558 _PRTDRV	=	0x00f6
                           00008F   559 G$PSCTL$0$0 == 0x008f
                           00008F   560 _PSCTL	=	0x008f
                           0000D0   561 G$PSW$0$0 == 0x00d0
                           0000D0   562 _PSW	=	0x00d0
                           0000D1   563 G$REF0CN$0$0 == 0x00d1
                           0000D1   564 _REF0CN	=	0x00d1
                           0000C9   565 G$REG0CN$0$0 == 0x00c9
                           0000C9   566 _REG0CN	=	0x00c9
                           0000C6   567 G$REG1CN$0$0 == 0x00c6
                           0000C6   568 _REG1CN	=	0x00c6
                           0000B6   569 G$REVID$0$0 == 0x00b6
                           0000B6   570 _REVID	=	0x00b6
                           0000EF   571 G$RSTSRC$0$0 == 0x00ef
                           0000EF   572 _RSTSRC	=	0x00ef
                           000094   573 G$SBCON1$0$0 == 0x0094
                           000094   574 _SBCON1	=	0x0094
                           000096   575 G$SBRLH1$0$0 == 0x0096
                           000096   576 _SBRLH1	=	0x0096
                           000095   577 G$SBRLL1$0$0 == 0x0095
                           000095   578 _SBRLL1	=	0x0095
                           000099   579 G$SBUF0$0$0 == 0x0099
                           000099   580 _SBUF0	=	0x0099
                           000092   581 G$SBUF1$0$0 == 0x0092
                           000092   582 _SBUF1	=	0x0092
                           000098   583 G$SCON0$0$0 == 0x0098
                           000098   584 _SCON0	=	0x0098
                           0000C8   585 G$SCON1$0$0 == 0x00c8
                           0000C8   586 _SCON1	=	0x00c8
                           0000A7   587 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   588 _SFRPAGE	=	0x00a7
                           0000CF   589 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   590 _SFRPGCN	=	0x00cf
                           0000D7   591 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   592 _SFRSTACK	=	0x00d7
                           0000D6   593 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   594 _SMB0ADM	=	0x00d6
                           0000D7   595 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   596 _SMB0ADR	=	0x00d7
                           0000C1   597 G$SMB0CF$0$0 == 0x00c1
                           0000C1   598 _SMB0CF	=	0x00c1
                           0000C0   599 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   600 _SMB0CN0	=	0x00c0
                           0000C2   601 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   602 _SMB0DAT	=	0x00c2
                           0000C3   603 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   604 _SMB0FCN0	=	0x00c3
                           0000C4   605 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   606 _SMB0FCN1	=	0x00c4
                           0000EF   607 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   608 _SMB0FCT	=	0x00ef
                           0000C5   609 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   610 _SMB0RXLN	=	0x00c5
                           0000AC   611 G$SMB0TC$0$0 == 0x00ac
                           0000AC   612 _SMB0TC	=	0x00ac
                           000093   613 G$SMOD1$0$0 == 0x0093
                           000093   614 _SMOD1	=	0x0093
                           000081   615 G$SP$0$0 == 0x0081
                           000081   616 _SP	=	0x0081
                           0000A1   617 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   618 _SPI0CFG	=	0x00a1
                           0000A2   619 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   620 _SPI0CKR	=	0x00a2
                           0000F8   621 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   622 _SPI0CN0	=	0x00f8
                           0000A3   623 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   624 _SPI0DAT	=	0x00a3
                           00009A   625 G$SPI0FCN0$0$0 == 0x009a
                           00009A   626 _SPI0FCN0	=	0x009a
                           00009B   627 G$SPI0FCN1$0$0 == 0x009b
                           00009B   628 _SPI0FCN1	=	0x009b
                           0000F7   629 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   630 _SPI0FCT	=	0x00f7
                           000088   631 G$TCON$0$0 == 0x0088
                           000088   632 _TCON	=	0x0088
                           00008C   633 G$TH0$0$0 == 0x008c
                           00008C   634 _TH0	=	0x008c
                           00008D   635 G$TH1$0$0 == 0x008d
                           00008D   636 _TH1	=	0x008d
                           00008A   637 G$TL0$0$0 == 0x008a
                           00008A   638 _TL0	=	0x008a
                           00008B   639 G$TL1$0$0 == 0x008b
                           00008B   640 _TL1	=	0x008b
                           000089   641 G$TMOD$0$0 == 0x0089
                           000089   642 _TMOD	=	0x0089
                           0000C8   643 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   644 _TMR2CN0	=	0x00c8
                           0000FD   645 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   646 _TMR2CN1	=	0x00fd
                           0000CD   647 G$TMR2H$0$0 == 0x00cd
                           0000CD   648 _TMR2H	=	0x00cd
                           0000CC   649 G$TMR2L$0$0 == 0x00cc
                           0000CC   650 _TMR2L	=	0x00cc
                           0000CB   651 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   652 _TMR2RLH	=	0x00cb
                           0000CA   653 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   654 _TMR2RLL	=	0x00ca
                           000091   655 G$TMR3CN0$0$0 == 0x0091
                           000091   656 _TMR3CN0	=	0x0091
                           0000FE   657 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   658 _TMR3CN1	=	0x00fe
                           000095   659 G$TMR3H$0$0 == 0x0095
                           000095   660 _TMR3H	=	0x0095
                           000094   661 G$TMR3L$0$0 == 0x0094
                           000094   662 _TMR3L	=	0x0094
                           000093   663 G$TMR3RLH$0$0 == 0x0093
                           000093   664 _TMR3RLH	=	0x0093
                           000092   665 G$TMR3RLL$0$0 == 0x0092
                           000092   666 _TMR3RLL	=	0x0092
                           000098   667 G$TMR4CN0$0$0 == 0x0098
                           000098   668 _TMR4CN0	=	0x0098
                           0000FF   669 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   670 _TMR4CN1	=	0x00ff
                           0000A5   671 G$TMR4H$0$0 == 0x00a5
                           0000A5   672 _TMR4H	=	0x00a5
                           0000A4   673 G$TMR4L$0$0 == 0x00a4
                           0000A4   674 _TMR4L	=	0x00a4
                           0000A3   675 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   676 _TMR4RLH	=	0x00a3
                           0000A2   677 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   678 _TMR4RLL	=	0x00a2
                           00009D   679 G$UART1FCN0$0$0 == 0x009d
                           00009D   680 _UART1FCN0	=	0x009d
                           0000D8   681 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   682 _UART1FCN1	=	0x00d8
                           0000FA   683 G$UART1FCT$0$0 == 0x00fa
                           0000FA   684 _UART1FCT	=	0x00fa
                           00009E   685 G$UART1LIN$0$0 == 0x009e
                           00009E   686 _UART1LIN	=	0x009e
                           0000AE   687 G$USB0ADR$0$0 == 0x00ae
                           0000AE   688 _USB0ADR	=	0x00ae
                           0000B2   689 G$USB0AEC$0$0 == 0x00b2
                           0000B2   690 _USB0AEC	=	0x00b2
                           0000B6   691 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   692 _USB0CDCF	=	0x00b6
                           0000BE   693 G$USB0CDCN$0$0 == 0x00be
                           0000BE   694 _USB0CDCN	=	0x00be
                           0000BF   695 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   696 _USB0CDSTA	=	0x00bf
                           0000B5   697 G$USB0CF$0$0 == 0x00b5
                           0000B5   698 _USB0CF	=	0x00b5
                           0000AF   699 G$USB0DAT$0$0 == 0x00af
                           0000AF   700 _USB0DAT	=	0x00af
                           0000B3   701 G$USB0XCN$0$0 == 0x00b3
                           0000B3   702 _USB0XCN	=	0x00b3
                           0000FF   703 G$VDM0CN$0$0 == 0x00ff
                           0000FF   704 _VDM0CN	=	0x00ff
                           000097   705 G$WDTCN$0$0 == 0x0097
                           000097   706 _WDTCN	=	0x0097
                           0000E1   707 G$XBR0$0$0 == 0x00e1
                           0000E1   708 _XBR0	=	0x00e1
                           0000E2   709 G$XBR1$0$0 == 0x00e2
                           0000E2   710 _XBR1	=	0x00e2
                           0000E3   711 G$XBR2$0$0 == 0x00e3
                           0000E3   712 _XBR2	=	0x00e3
                           0000C3   713 G$ADC0GT$0$0 == 0x00c3
                           0000C3   714 _ADC0GT	=	0x00c3
                           0000BD   715 G$ADC0$0$0 == 0x00bd
                           0000BD   716 _ADC0	=	0x00bd
                           0000C5   717 G$ADC0LT$0$0 == 0x00c5
                           0000C5   718 _ADC0LT	=	0x00c5
                           000082   719 G$DP$0$0 == 0x0082
                           000082   720 _DP	=	0x0082
                           0000FB   721 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   722 _PCA0CP0	=	0x00fb
                           0000E9   723 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   724 _PCA0CP1	=	0x00e9
                           0000EB   725 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   726 _PCA0CP2	=	0x00eb
                           0000F9   727 G$PCA0$0$0 == 0x00f9
                           0000F9   728 _PCA0	=	0x00f9
                           000095   729 G$SBRL1$0$0 == 0x0095
                           000095   730 _SBRL1	=	0x0095
                           0000CC   731 G$TMR2$0$0 == 0x00cc
                           0000CC   732 _TMR2	=	0x00cc
                           0000CA   733 G$TMR2RL$0$0 == 0x00ca
                           0000CA   734 _TMR2RL	=	0x00ca
                           000094   735 G$TMR3$0$0 == 0x0094
                           000094   736 _TMR3	=	0x0094
                           000092   737 G$TMR3RL$0$0 == 0x0092
                           000092   738 _TMR3RL	=	0x0092
                           0000A4   739 G$TMR4$0$0 == 0x00a4
                           0000A4   740 _TMR4	=	0x00a4
                           0000A2   741 G$TMR4RL$0$0 == 0x00a2
                           0000A2   742 _TMR4RL	=	0x00a2
                           0000AA   743 G$_XPAGE$0$0 == 0x00aa
                           0000AA   744 __XPAGE	=	0x00aa
                                    745 ;--------------------------------------------------------
                                    746 ; special function bits
                                    747 ;--------------------------------------------------------
                                    748 	.area RSEG    (ABS,DATA)
      000000                        749 	.org 0x0000
                           0000E0   750 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   751 _ACC_ACC0	=	0x00e0
                           0000E1   752 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   753 _ACC_ACC1	=	0x00e1
                           0000E2   754 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   755 _ACC_ACC2	=	0x00e2
                           0000E3   756 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   757 _ACC_ACC3	=	0x00e3
                           0000E4   758 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   759 _ACC_ACC4	=	0x00e4
                           0000E5   760 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   761 _ACC_ACC5	=	0x00e5
                           0000E6   762 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   763 _ACC_ACC6	=	0x00e6
                           0000E7   764 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   765 _ACC_ACC7	=	0x00e7
                           0000E8   766 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   767 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   768 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   769 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   770 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   771 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   772 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   773 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   774 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   775 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   776 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   777 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   778 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   779 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   780 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   781 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   782 G$B_B0$0$0 == 0x00f0
                           0000F0   783 _B_B0	=	0x00f0
                           0000F1   784 G$B_B1$0$0 == 0x00f1
                           0000F1   785 _B_B1	=	0x00f1
                           0000F2   786 G$B_B2$0$0 == 0x00f2
                           0000F2   787 _B_B2	=	0x00f2
                           0000F3   788 G$B_B3$0$0 == 0x00f3
                           0000F3   789 _B_B3	=	0x00f3
                           0000F4   790 G$B_B4$0$0 == 0x00f4
                           0000F4   791 _B_B4	=	0x00f4
                           0000F5   792 G$B_B5$0$0 == 0x00f5
                           0000F5   793 _B_B5	=	0x00f5
                           0000F6   794 G$B_B6$0$0 == 0x00f6
                           0000F6   795 _B_B6	=	0x00f6
                           0000F7   796 G$B_B7$0$0 == 0x00f7
                           0000F7   797 _B_B7	=	0x00f7
                           0000A8   798 G$IE_EX0$0$0 == 0x00a8
                           0000A8   799 _IE_EX0	=	0x00a8
                           0000A9   800 G$IE_ET0$0$0 == 0x00a9
                           0000A9   801 _IE_ET0	=	0x00a9
                           0000AA   802 G$IE_EX1$0$0 == 0x00aa
                           0000AA   803 _IE_EX1	=	0x00aa
                           0000AB   804 G$IE_ET1$0$0 == 0x00ab
                           0000AB   805 _IE_ET1	=	0x00ab
                           0000AC   806 G$IE_ES0$0$0 == 0x00ac
                           0000AC   807 _IE_ES0	=	0x00ac
                           0000AD   808 G$IE_ET2$0$0 == 0x00ad
                           0000AD   809 _IE_ET2	=	0x00ad
                           0000AE   810 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   811 _IE_ESPI0	=	0x00ae
                           0000AF   812 G$IE_EA$0$0 == 0x00af
                           0000AF   813 _IE_EA	=	0x00af
                           0000B8   814 G$IP_PX0$0$0 == 0x00b8
                           0000B8   815 _IP_PX0	=	0x00b8
                           0000B9   816 G$IP_PT0$0$0 == 0x00b9
                           0000B9   817 _IP_PT0	=	0x00b9
                           0000BA   818 G$IP_PX1$0$0 == 0x00ba
                           0000BA   819 _IP_PX1	=	0x00ba
                           0000BB   820 G$IP_PT1$0$0 == 0x00bb
                           0000BB   821 _IP_PT1	=	0x00bb
                           0000BC   822 G$IP_PS0$0$0 == 0x00bc
                           0000BC   823 _IP_PS0	=	0x00bc
                           0000BD   824 G$IP_PT2$0$0 == 0x00bd
                           0000BD   825 _IP_PT2	=	0x00bd
                           0000BE   826 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   827 _IP_PSPI0	=	0x00be
                           000080   828 G$P0_B0$0$0 == 0x0080
                           000080   829 _P0_B0	=	0x0080
                           000081   830 G$P0_B1$0$0 == 0x0081
                           000081   831 _P0_B1	=	0x0081
                           000082   832 G$P0_B2$0$0 == 0x0082
                           000082   833 _P0_B2	=	0x0082
                           000083   834 G$P0_B3$0$0 == 0x0083
                           000083   835 _P0_B3	=	0x0083
                           000084   836 G$P0_B4$0$0 == 0x0084
                           000084   837 _P0_B4	=	0x0084
                           000085   838 G$P0_B5$0$0 == 0x0085
                           000085   839 _P0_B5	=	0x0085
                           000086   840 G$P0_B6$0$0 == 0x0086
                           000086   841 _P0_B6	=	0x0086
                           000087   842 G$P0_B7$0$0 == 0x0087
                           000087   843 _P0_B7	=	0x0087
                           000090   844 G$P1_B0$0$0 == 0x0090
                           000090   845 _P1_B0	=	0x0090
                           000091   846 G$P1_B1$0$0 == 0x0091
                           000091   847 _P1_B1	=	0x0091
                           000092   848 G$P1_B2$0$0 == 0x0092
                           000092   849 _P1_B2	=	0x0092
                           000093   850 G$P1_B3$0$0 == 0x0093
                           000093   851 _P1_B3	=	0x0093
                           000094   852 G$P1_B4$0$0 == 0x0094
                           000094   853 _P1_B4	=	0x0094
                           000095   854 G$P1_B5$0$0 == 0x0095
                           000095   855 _P1_B5	=	0x0095
                           000096   856 G$P1_B6$0$0 == 0x0096
                           000096   857 _P1_B6	=	0x0096
                           000097   858 G$P1_B7$0$0 == 0x0097
                           000097   859 _P1_B7	=	0x0097
                           0000A0   860 G$P2_B0$0$0 == 0x00a0
                           0000A0   861 _P2_B0	=	0x00a0
                           0000A1   862 G$P2_B1$0$0 == 0x00a1
                           0000A1   863 _P2_B1	=	0x00a1
                           0000A2   864 G$P2_B2$0$0 == 0x00a2
                           0000A2   865 _P2_B2	=	0x00a2
                           0000A3   866 G$P2_B3$0$0 == 0x00a3
                           0000A3   867 _P2_B3	=	0x00a3
                           0000B0   868 G$P3_B0$0$0 == 0x00b0
                           0000B0   869 _P3_B0	=	0x00b0
                           0000B1   870 G$P3_B1$0$0 == 0x00b1
                           0000B1   871 _P3_B1	=	0x00b1
                           0000D8   872 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   873 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   874 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   875 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   876 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   877 _PCA0CN0_CCF2	=	0x00da
                           0000DE   878 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   879 _PCA0CN0_CR	=	0x00de
                           0000DF   880 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   881 _PCA0CN0_CF	=	0x00df
                           0000D0   882 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   883 _PSW_PARITY	=	0x00d0
                           0000D1   884 G$PSW_F1$0$0 == 0x00d1
                           0000D1   885 _PSW_F1	=	0x00d1
                           0000D2   886 G$PSW_OV$0$0 == 0x00d2
                           0000D2   887 _PSW_OV	=	0x00d2
                           0000D3   888 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   889 _PSW_RS0	=	0x00d3
                           0000D4   890 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   891 _PSW_RS1	=	0x00d4
                           0000D5   892 G$PSW_F0$0$0 == 0x00d5
                           0000D5   893 _PSW_F0	=	0x00d5
                           0000D6   894 G$PSW_AC$0$0 == 0x00d6
                           0000D6   895 _PSW_AC	=	0x00d6
                           0000D7   896 G$PSW_CY$0$0 == 0x00d7
                           0000D7   897 _PSW_CY	=	0x00d7
                           000098   898 G$SCON0_RI$0$0 == 0x0098
                           000098   899 _SCON0_RI	=	0x0098
                           000099   900 G$SCON0_TI$0$0 == 0x0099
                           000099   901 _SCON0_TI	=	0x0099
                           00009A   902 G$SCON0_RB8$0$0 == 0x009a
                           00009A   903 _SCON0_RB8	=	0x009a
                           00009B   904 G$SCON0_TB8$0$0 == 0x009b
                           00009B   905 _SCON0_TB8	=	0x009b
                           00009C   906 G$SCON0_REN$0$0 == 0x009c
                           00009C   907 _SCON0_REN	=	0x009c
                           00009D   908 G$SCON0_MCE$0$0 == 0x009d
                           00009D   909 _SCON0_MCE	=	0x009d
                           00009F   910 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   911 _SCON0_SMODE	=	0x009f
                           0000C8   912 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   913 _SCON1_RI	=	0x00c8
                           0000C9   914 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   915 _SCON1_TI	=	0x00c9
                           0000CA   916 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   917 _SCON1_RBX	=	0x00ca
                           0000CB   918 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   919 _SCON1_TBX	=	0x00cb
                           0000CC   920 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   921 _SCON1_REN	=	0x00cc
                           0000CE   922 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   923 _SCON1_PERR	=	0x00ce
                           0000CF   924 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   925 _SCON1_OVR	=	0x00cf
                           0000C0   926 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   927 _SMB0CN0_SI	=	0x00c0
                           0000C1   928 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   929 _SMB0CN0_ACK	=	0x00c1
                           0000C2   930 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   931 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   932 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   933 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   934 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   935 _SMB0CN0_STO	=	0x00c4
                           0000C5   936 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   937 _SMB0CN0_STA	=	0x00c5
                           0000C6   938 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   939 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   940 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   941 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   942 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   943 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   944 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   945 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   946 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   947 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   948 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   949 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   950 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   951 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   952 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   953 _SPI0CN0_MODF	=	0x00fd
                           0000FE   954 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   955 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   956 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   957 _SPI0CN0_SPIF	=	0x00ff
                           000088   958 G$TCON_IT0$0$0 == 0x0088
                           000088   959 _TCON_IT0	=	0x0088
                           000089   960 G$TCON_IE0$0$0 == 0x0089
                           000089   961 _TCON_IE0	=	0x0089
                           00008A   962 G$TCON_IT1$0$0 == 0x008a
                           00008A   963 _TCON_IT1	=	0x008a
                           00008B   964 G$TCON_IE1$0$0 == 0x008b
                           00008B   965 _TCON_IE1	=	0x008b
                           00008C   966 G$TCON_TR0$0$0 == 0x008c
                           00008C   967 _TCON_TR0	=	0x008c
                           00008D   968 G$TCON_TF0$0$0 == 0x008d
                           00008D   969 _TCON_TF0	=	0x008d
                           00008E   970 G$TCON_TR1$0$0 == 0x008e
                           00008E   971 _TCON_TR1	=	0x008e
                           00008F   972 G$TCON_TF1$0$0 == 0x008f
                           00008F   973 _TCON_TF1	=	0x008f
                           0000C8   974 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   975 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   976 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   977 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   978 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   979 _TMR2CN0_TR2	=	0x00ca
                           0000CB   980 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   981 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   982 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   983 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   984 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   985 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   986 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE   987 _TMR2CN0_TF2L	=	0x00ce
                           0000CF   988 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF   989 _TMR2CN0_TF2H	=	0x00cf
                           000098   990 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098   991 _TMR4CN0_T4XCLK0	=	0x0098
                           000099   992 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099   993 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A   994 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A   995 _TMR4CN0_TR4	=	0x009a
                           00009B   996 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B   997 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C   998 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C   999 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1000 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1001 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1002 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1003 _TMR4CN0_TF4L	=	0x009e
                           00009F  1004 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1005 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1006 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1007 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1008 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1009 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1010 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1011 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1012 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1013 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1014 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1015 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1016 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1017 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1018 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1019 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1020 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1021 _UART1FCN1_TFRQ	=	0x00df
                           000095  1022 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1023 _U2F_BUTTON	=	0x0095
                           000096  1024 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1025 _U2F_BUTTON_VAL	=	0x0096
                           000091  1026 G$U2F_RED$0$0 == 0x0091
                           000091  1027 _U2F_RED	=	0x0091
                           000090  1028 G$U2F_GREEN$0$0 == 0x0090
                           000090  1029 _U2F_GREEN	=	0x0090
                           000087  1030 G$U2F_BLUE$0$0 == 0x0087
                           000087  1031 _U2F_BLUE	=	0x0087
                                   1032 ;--------------------------------------------------------
                                   1033 ; overlayable register banks
                                   1034 ;--------------------------------------------------------
                                   1035 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1036 	.ds 8
                                   1037 ;--------------------------------------------------------
                                   1038 ; internal ram data
                                   1039 ;--------------------------------------------------------
                                   1040 	.area DSEG    (DATA)
                                   1041 ;--------------------------------------------------------
                                   1042 ; overlayable items in internal ram 
                                   1043 ;--------------------------------------------------------
                                   1044 ;--------------------------------------------------------
                                   1045 ; indirectly addressable internal ram data
                                   1046 ;--------------------------------------------------------
                                   1047 	.area ISEG    (DATA)
                                   1048 ;--------------------------------------------------------
                                   1049 ; absolute internal ram data
                                   1050 ;--------------------------------------------------------
                                   1051 	.area IABS    (ABS,DATA)
                                   1052 	.area IABS    (ABS,DATA)
                                   1053 ;--------------------------------------------------------
                                   1054 ; bit data
                                   1055 ;--------------------------------------------------------
                                   1056 	.area BSEG    (BIT)
                                   1057 ;--------------------------------------------------------
                                   1058 ; paged external ram data
                                   1059 ;--------------------------------------------------------
                                   1060 	.area PSEG    (PAG,XDATA)
                                   1061 ;--------------------------------------------------------
                                   1062 ; external ram data
                                   1063 ;--------------------------------------------------------
                                   1064 	.area XSEG    (XDATA)
                                   1065 ;--------------------------------------------------------
                                   1066 ; absolute external ram data
                                   1067 ;--------------------------------------------------------
                                   1068 	.area XABS    (ABS,XDATA)
                                   1069 ;--------------------------------------------------------
                                   1070 ; external initialized ram data
                                   1071 ;--------------------------------------------------------
                                   1072 	.area XISEG   (XDATA)
                                   1073 	.area HOME    (CODE)
                                   1074 	.area GSINIT0 (CODE)
                                   1075 	.area GSINIT1 (CODE)
                                   1076 	.area GSINIT2 (CODE)
                                   1077 	.area GSINIT3 (CODE)
                                   1078 	.area GSINIT4 (CODE)
                                   1079 	.area GSINIT5 (CODE)
                                   1080 	.area GSINIT  (CODE)
                                   1081 	.area GSFINAL (CODE)
                                   1082 	.area CSEG    (CODE)
                                   1083 ;--------------------------------------------------------
                                   1084 ; global & static initialisations
                                   1085 ;--------------------------------------------------------
                                   1086 	.area HOME    (CODE)
                                   1087 	.area GSINIT  (CODE)
                                   1088 	.area GSFINAL (CODE)
                                   1089 	.area GSINIT  (CODE)
                                   1090 ;--------------------------------------------------------
                                   1091 ; Home
                                   1092 ;--------------------------------------------------------
                                   1093 	.area HOME    (CODE)
                                   1094 	.area HOME    (CODE)
                                   1095 ;--------------------------------------------------------
                                   1096 ; code
                                   1097 ;--------------------------------------------------------
                                   1098 	.area CSEG    (CODE)
                                   1099 	.area CSEG    (CODE)
                                   1100 	.area CONST   (CODE)
                                   1101 	.area XINIT   (CODE)
                                   1102 	.area CABS    (ABS,CODE)
