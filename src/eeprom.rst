                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
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
                                    343 	.globl _eeprom_init
                                    344 	.globl _eeprom_read
                                    345 	.globl __eeprom_write
                                    346 ;--------------------------------------------------------
                                    347 ; special function registers
                                    348 ;--------------------------------------------------------
                                    349 	.area RSEG    (ABS,DATA)
      000000                        350 	.org 0x0000
                           0000E0   351 G$ACC$0$0 == 0x00e0
                           0000E0   352 _ACC	=	0x00e0
                           0000B3   353 G$ADC0AC$0$0 == 0x00b3
                           0000B3   354 _ADC0AC	=	0x00b3
                           0000BC   355 G$ADC0CF$0$0 == 0x00bc
                           0000BC   356 _ADC0CF	=	0x00bc
                           0000E8   357 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   358 _ADC0CN0	=	0x00e8
                           0000B2   359 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   360 _ADC0CN1	=	0x00b2
                           0000C4   361 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   362 _ADC0GTH	=	0x00c4
                           0000C3   363 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   364 _ADC0GTL	=	0x00c3
                           0000BE   365 G$ADC0H$0$0 == 0x00be
                           0000BE   366 _ADC0H	=	0x00be
                           0000BD   367 G$ADC0L$0$0 == 0x00bd
                           0000BD   368 _ADC0L	=	0x00bd
                           0000C6   369 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   370 _ADC0LTH	=	0x00c6
                           0000C5   371 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   372 _ADC0LTL	=	0x00c5
                           0000BB   373 G$ADC0MX$0$0 == 0x00bb
                           0000BB   374 _ADC0MX	=	0x00bb
                           0000DF   375 G$ADC0PWR$0$0 == 0x00df
                           0000DF   376 _ADC0PWR	=	0x00df
                           0000B9   377 G$ADC0TK$0$0 == 0x00b9
                           0000B9   378 _ADC0TK	=	0x00b9
                           0000F0   379 G$B$0$0 == 0x00f0
                           0000F0   380 _B	=	0x00f0
                           00008E   381 G$CKCON0$0$0 == 0x008e
                           00008E   382 _CKCON0	=	0x008e
                           0000A6   383 G$CKCON1$0$0 == 0x00a6
                           0000A6   384 _CKCON1	=	0x00a6
                           0000A9   385 G$CLKSEL$0$0 == 0x00a9
                           0000A9   386 _CLKSEL	=	0x00a9
                           00009B   387 G$CMP0CN0$0$0 == 0x009b
                           00009B   388 _CMP0CN0	=	0x009b
                           000099   389 G$CMP0CN1$0$0 == 0x0099
                           000099   390 _CMP0CN1	=	0x0099
                           00009D   391 G$CMP0MD$0$0 == 0x009d
                           00009D   392 _CMP0MD	=	0x009d
                           00009F   393 G$CMP0MX$0$0 == 0x009f
                           00009F   394 _CMP0MX	=	0x009f
                           0000BF   395 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   396 _CMP1CN0	=	0x00bf
                           0000AC   397 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   398 _CMP1CN1	=	0x00ac
                           0000AB   399 G$CMP1MD$0$0 == 0x00ab
                           0000AB   400 _CMP1MD	=	0x00ab
                           0000AA   401 G$CMP1MX$0$0 == 0x00aa
                           0000AA   402 _CMP1MX	=	0x00aa
                           0000CE   403 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   404 _CRC0CN0	=	0x00ce
                           000086   405 G$CRC0CN1$0$0 == 0x0086
                           000086   406 _CRC0CN1	=	0x0086
                           0000D3   407 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   408 _CRC0CNT	=	0x00d3
                           0000DE   409 G$CRC0DAT$0$0 == 0x00de
                           0000DE   410 _CRC0DAT	=	0x00de
                           0000CF   411 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   412 _CRC0FLIP	=	0x00cf
                           0000DD   413 G$CRC0IN$0$0 == 0x00dd
                           0000DD   414 _CRC0IN	=	0x00dd
                           0000D2   415 G$CRC0ST$0$0 == 0x00d2
                           0000D2   416 _CRC0ST	=	0x00d2
                           0000AD   417 G$DERIVID$0$0 == 0x00ad
                           0000AD   418 _DERIVID	=	0x00ad
                           0000B5   419 G$DEVICEID$0$0 == 0x00b5
                           0000B5   420 _DEVICEID	=	0x00b5
                           000083   421 G$DPH$0$0 == 0x0083
                           000083   422 _DPH	=	0x0083
                           000082   423 G$DPL$0$0 == 0x0082
                           000082   424 _DPL	=	0x0082
                           0000E6   425 G$EIE1$0$0 == 0x00e6
                           0000E6   426 _EIE1	=	0x00e6
                           0000CE   427 G$EIE2$0$0 == 0x00ce
                           0000CE   428 _EIE2	=	0x00ce
                           0000F3   429 G$EIP1$0$0 == 0x00f3
                           0000F3   430 _EIP1	=	0x00f3
                           0000F5   431 G$EIP1H$0$0 == 0x00f5
                           0000F5   432 _EIP1H	=	0x00f5
                           0000F4   433 G$EIP2$0$0 == 0x00f4
                           0000F4   434 _EIP2	=	0x00f4
                           0000F6   435 G$EIP2H$0$0 == 0x00f6
                           0000F6   436 _EIP2H	=	0x00f6
                           0000E7   437 G$EMI0CN$0$0 == 0x00e7
                           0000E7   438 _EMI0CN	=	0x00e7
                           0000B7   439 G$FLKEY$0$0 == 0x00b7
                           0000B7   440 _FLKEY	=	0x00b7
                           0000C7   441 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   442 _HFO0CAL	=	0x00c7
                           0000D6   443 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   444 _HFO1CAL	=	0x00d6
                           0000EF   445 G$HFOCN$0$0 == 0x00ef
                           0000EF   446 _HFOCN	=	0x00ef
                           0000BA   447 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   448 _I2C0CN0	=	0x00ba
                           0000BC   449 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   450 _I2C0DIN	=	0x00bc
                           0000BB   451 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   452 _I2C0DOUT	=	0x00bb
                           0000AD   453 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   454 _I2C0FCN0	=	0x00ad
                           0000AB   455 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   456 _I2C0FCN1	=	0x00ab
                           0000F5   457 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   458 _I2C0FCT	=	0x00f5
                           0000BD   459 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   460 _I2C0SLAD	=	0x00bd
                           0000B9   461 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   462 _I2C0STAT	=	0x00b9
                           0000A8   463 G$IE$0$0 == 0x00a8
                           0000A8   464 _IE	=	0x00a8
                           0000B8   465 G$IP$0$0 == 0x00b8
                           0000B8   466 _IP	=	0x00b8
                           0000F2   467 G$IPH$0$0 == 0x00f2
                           0000F2   468 _IPH	=	0x00f2
                           0000E4   469 G$IT01CF$0$0 == 0x00e4
                           0000E4   470 _IT01CF	=	0x00e4
                           0000B1   471 G$LFO0CN$0$0 == 0x00b1
                           0000B1   472 _LFO0CN	=	0x00b1
                           000080   473 G$P0$0$0 == 0x0080
                           000080   474 _P0	=	0x0080
                           0000FE   475 G$P0MASK$0$0 == 0x00fe
                           0000FE   476 _P0MASK	=	0x00fe
                           0000FD   477 G$P0MAT$0$0 == 0x00fd
                           0000FD   478 _P0MAT	=	0x00fd
                           0000F1   479 G$P0MDIN$0$0 == 0x00f1
                           0000F1   480 _P0MDIN	=	0x00f1
                           0000A4   481 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   482 _P0MDOUT	=	0x00a4
                           0000D4   483 G$P0SKIP$0$0 == 0x00d4
                           0000D4   484 _P0SKIP	=	0x00d4
                           000090   485 G$P1$0$0 == 0x0090
                           000090   486 _P1	=	0x0090
                           0000EE   487 G$P1MASK$0$0 == 0x00ee
                           0000EE   488 _P1MASK	=	0x00ee
                           0000ED   489 G$P1MAT$0$0 == 0x00ed
                           0000ED   490 _P1MAT	=	0x00ed
                           0000F2   491 G$P1MDIN$0$0 == 0x00f2
                           0000F2   492 _P1MDIN	=	0x00f2
                           0000A5   493 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   494 _P1MDOUT	=	0x00a5
                           0000D5   495 G$P1SKIP$0$0 == 0x00d5
                           0000D5   496 _P1SKIP	=	0x00d5
                           0000A0   497 G$P2$0$0 == 0x00a0
                           0000A0   498 _P2	=	0x00a0
                           0000FC   499 G$P2MASK$0$0 == 0x00fc
                           0000FC   500 _P2MASK	=	0x00fc
                           0000FB   501 G$P2MAT$0$0 == 0x00fb
                           0000FB   502 _P2MAT	=	0x00fb
                           0000F3   503 G$P2MDIN$0$0 == 0x00f3
                           0000F3   504 _P2MDIN	=	0x00f3
                           0000A6   505 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   506 _P2MDOUT	=	0x00a6
                           0000CC   507 G$P2SKIP$0$0 == 0x00cc
                           0000CC   508 _P2SKIP	=	0x00cc
                           0000B0   509 G$P3$0$0 == 0x00b0
                           0000B0   510 _P3	=	0x00b0
                           0000F4   511 G$P3MDIN$0$0 == 0x00f4
                           0000F4   512 _P3MDIN	=	0x00f4
                           00009C   513 G$P3MDOUT$0$0 == 0x009c
                           00009C   514 _P3MDOUT	=	0x009c
                           00009E   515 G$PCA0CENT$0$0 == 0x009e
                           00009E   516 _PCA0CENT	=	0x009e
                           00009C   517 G$PCA0CLR$0$0 == 0x009c
                           00009C   518 _PCA0CLR	=	0x009c
                           0000D8   519 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   520 _PCA0CN0	=	0x00d8
                           0000FC   521 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   522 _PCA0CPH0	=	0x00fc
                           0000EA   523 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   524 _PCA0CPH1	=	0x00ea
                           0000EC   525 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   526 _PCA0CPH2	=	0x00ec
                           0000FB   527 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   528 _PCA0CPL0	=	0x00fb
                           0000E9   529 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   530 _PCA0CPL1	=	0x00e9
                           0000EB   531 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   532 _PCA0CPL2	=	0x00eb
                           0000DA   533 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   534 _PCA0CPM0	=	0x00da
                           0000DB   535 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   536 _PCA0CPM1	=	0x00db
                           0000DC   537 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   538 _PCA0CPM2	=	0x00dc
                           0000FA   539 G$PCA0H$0$0 == 0x00fa
                           0000FA   540 _PCA0H	=	0x00fa
                           0000F9   541 G$PCA0L$0$0 == 0x00f9
                           0000F9   542 _PCA0L	=	0x00f9
                           0000D9   543 G$PCA0MD$0$0 == 0x00d9
                           0000D9   544 _PCA0MD	=	0x00d9
                           000096   545 G$PCA0POL$0$0 == 0x0096
                           000096   546 _PCA0POL	=	0x0096
                           0000F7   547 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   548 _PCA0PWM	=	0x00f7
                           000087   549 G$PCON0$0$0 == 0x0087
                           000087   550 _PCON0	=	0x0087
                           00009A   551 G$PCON1$0$0 == 0x009a
                           00009A   552 _PCON1	=	0x009a
                           0000C1   553 G$PFE0CN$0$0 == 0x00c1
                           0000C1   554 _PFE0CN	=	0x00c1
                           0000F6   555 G$PRTDRV$0$0 == 0x00f6
                           0000F6   556 _PRTDRV	=	0x00f6
                           00008F   557 G$PSCTL$0$0 == 0x008f
                           00008F   558 _PSCTL	=	0x008f
                           0000D0   559 G$PSW$0$0 == 0x00d0
                           0000D0   560 _PSW	=	0x00d0
                           0000D1   561 G$REF0CN$0$0 == 0x00d1
                           0000D1   562 _REF0CN	=	0x00d1
                           0000C9   563 G$REG0CN$0$0 == 0x00c9
                           0000C9   564 _REG0CN	=	0x00c9
                           0000C6   565 G$REG1CN$0$0 == 0x00c6
                           0000C6   566 _REG1CN	=	0x00c6
                           0000B6   567 G$REVID$0$0 == 0x00b6
                           0000B6   568 _REVID	=	0x00b6
                           0000EF   569 G$RSTSRC$0$0 == 0x00ef
                           0000EF   570 _RSTSRC	=	0x00ef
                           000094   571 G$SBCON1$0$0 == 0x0094
                           000094   572 _SBCON1	=	0x0094
                           000096   573 G$SBRLH1$0$0 == 0x0096
                           000096   574 _SBRLH1	=	0x0096
                           000095   575 G$SBRLL1$0$0 == 0x0095
                           000095   576 _SBRLL1	=	0x0095
                           000099   577 G$SBUF0$0$0 == 0x0099
                           000099   578 _SBUF0	=	0x0099
                           000092   579 G$SBUF1$0$0 == 0x0092
                           000092   580 _SBUF1	=	0x0092
                           000098   581 G$SCON0$0$0 == 0x0098
                           000098   582 _SCON0	=	0x0098
                           0000C8   583 G$SCON1$0$0 == 0x00c8
                           0000C8   584 _SCON1	=	0x00c8
                           0000A7   585 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   586 _SFRPAGE	=	0x00a7
                           0000CF   587 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   588 _SFRPGCN	=	0x00cf
                           0000D7   589 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   590 _SFRSTACK	=	0x00d7
                           0000D6   591 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   592 _SMB0ADM	=	0x00d6
                           0000D7   593 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   594 _SMB0ADR	=	0x00d7
                           0000C1   595 G$SMB0CF$0$0 == 0x00c1
                           0000C1   596 _SMB0CF	=	0x00c1
                           0000C0   597 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   598 _SMB0CN0	=	0x00c0
                           0000C2   599 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   600 _SMB0DAT	=	0x00c2
                           0000C3   601 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   602 _SMB0FCN0	=	0x00c3
                           0000C4   603 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   604 _SMB0FCN1	=	0x00c4
                           0000EF   605 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   606 _SMB0FCT	=	0x00ef
                           0000C5   607 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   608 _SMB0RXLN	=	0x00c5
                           0000AC   609 G$SMB0TC$0$0 == 0x00ac
                           0000AC   610 _SMB0TC	=	0x00ac
                           000093   611 G$SMOD1$0$0 == 0x0093
                           000093   612 _SMOD1	=	0x0093
                           000081   613 G$SP$0$0 == 0x0081
                           000081   614 _SP	=	0x0081
                           0000A1   615 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   616 _SPI0CFG	=	0x00a1
                           0000A2   617 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   618 _SPI0CKR	=	0x00a2
                           0000F8   619 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   620 _SPI0CN0	=	0x00f8
                           0000A3   621 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   622 _SPI0DAT	=	0x00a3
                           00009A   623 G$SPI0FCN0$0$0 == 0x009a
                           00009A   624 _SPI0FCN0	=	0x009a
                           00009B   625 G$SPI0FCN1$0$0 == 0x009b
                           00009B   626 _SPI0FCN1	=	0x009b
                           0000F7   627 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   628 _SPI0FCT	=	0x00f7
                           000088   629 G$TCON$0$0 == 0x0088
                           000088   630 _TCON	=	0x0088
                           00008C   631 G$TH0$0$0 == 0x008c
                           00008C   632 _TH0	=	0x008c
                           00008D   633 G$TH1$0$0 == 0x008d
                           00008D   634 _TH1	=	0x008d
                           00008A   635 G$TL0$0$0 == 0x008a
                           00008A   636 _TL0	=	0x008a
                           00008B   637 G$TL1$0$0 == 0x008b
                           00008B   638 _TL1	=	0x008b
                           000089   639 G$TMOD$0$0 == 0x0089
                           000089   640 _TMOD	=	0x0089
                           0000C8   641 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   642 _TMR2CN0	=	0x00c8
                           0000FD   643 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   644 _TMR2CN1	=	0x00fd
                           0000CD   645 G$TMR2H$0$0 == 0x00cd
                           0000CD   646 _TMR2H	=	0x00cd
                           0000CC   647 G$TMR2L$0$0 == 0x00cc
                           0000CC   648 _TMR2L	=	0x00cc
                           0000CB   649 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   650 _TMR2RLH	=	0x00cb
                           0000CA   651 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   652 _TMR2RLL	=	0x00ca
                           000091   653 G$TMR3CN0$0$0 == 0x0091
                           000091   654 _TMR3CN0	=	0x0091
                           0000FE   655 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   656 _TMR3CN1	=	0x00fe
                           000095   657 G$TMR3H$0$0 == 0x0095
                           000095   658 _TMR3H	=	0x0095
                           000094   659 G$TMR3L$0$0 == 0x0094
                           000094   660 _TMR3L	=	0x0094
                           000093   661 G$TMR3RLH$0$0 == 0x0093
                           000093   662 _TMR3RLH	=	0x0093
                           000092   663 G$TMR3RLL$0$0 == 0x0092
                           000092   664 _TMR3RLL	=	0x0092
                           000098   665 G$TMR4CN0$0$0 == 0x0098
                           000098   666 _TMR4CN0	=	0x0098
                           0000FF   667 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   668 _TMR4CN1	=	0x00ff
                           0000A5   669 G$TMR4H$0$0 == 0x00a5
                           0000A5   670 _TMR4H	=	0x00a5
                           0000A4   671 G$TMR4L$0$0 == 0x00a4
                           0000A4   672 _TMR4L	=	0x00a4
                           0000A3   673 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   674 _TMR4RLH	=	0x00a3
                           0000A2   675 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   676 _TMR4RLL	=	0x00a2
                           00009D   677 G$UART1FCN0$0$0 == 0x009d
                           00009D   678 _UART1FCN0	=	0x009d
                           0000D8   679 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   680 _UART1FCN1	=	0x00d8
                           0000FA   681 G$UART1FCT$0$0 == 0x00fa
                           0000FA   682 _UART1FCT	=	0x00fa
                           00009E   683 G$UART1LIN$0$0 == 0x009e
                           00009E   684 _UART1LIN	=	0x009e
                           0000AE   685 G$USB0ADR$0$0 == 0x00ae
                           0000AE   686 _USB0ADR	=	0x00ae
                           0000B2   687 G$USB0AEC$0$0 == 0x00b2
                           0000B2   688 _USB0AEC	=	0x00b2
                           0000B6   689 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   690 _USB0CDCF	=	0x00b6
                           0000BE   691 G$USB0CDCN$0$0 == 0x00be
                           0000BE   692 _USB0CDCN	=	0x00be
                           0000BF   693 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   694 _USB0CDSTA	=	0x00bf
                           0000B5   695 G$USB0CF$0$0 == 0x00b5
                           0000B5   696 _USB0CF	=	0x00b5
                           0000AF   697 G$USB0DAT$0$0 == 0x00af
                           0000AF   698 _USB0DAT	=	0x00af
                           0000B3   699 G$USB0XCN$0$0 == 0x00b3
                           0000B3   700 _USB0XCN	=	0x00b3
                           0000FF   701 G$VDM0CN$0$0 == 0x00ff
                           0000FF   702 _VDM0CN	=	0x00ff
                           000097   703 G$WDTCN$0$0 == 0x0097
                           000097   704 _WDTCN	=	0x0097
                           0000E1   705 G$XBR0$0$0 == 0x00e1
                           0000E1   706 _XBR0	=	0x00e1
                           0000E2   707 G$XBR1$0$0 == 0x00e2
                           0000E2   708 _XBR1	=	0x00e2
                           0000E3   709 G$XBR2$0$0 == 0x00e3
                           0000E3   710 _XBR2	=	0x00e3
                           0000C3   711 G$ADC0GT$0$0 == 0x00c3
                           0000C3   712 _ADC0GT	=	0x00c3
                           0000BD   713 G$ADC0$0$0 == 0x00bd
                           0000BD   714 _ADC0	=	0x00bd
                           0000C5   715 G$ADC0LT$0$0 == 0x00c5
                           0000C5   716 _ADC0LT	=	0x00c5
                           000082   717 G$DP$0$0 == 0x0082
                           000082   718 _DP	=	0x0082
                           0000FB   719 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   720 _PCA0CP0	=	0x00fb
                           0000E9   721 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   722 _PCA0CP1	=	0x00e9
                           0000EB   723 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   724 _PCA0CP2	=	0x00eb
                           0000F9   725 G$PCA0$0$0 == 0x00f9
                           0000F9   726 _PCA0	=	0x00f9
                           000095   727 G$SBRL1$0$0 == 0x0095
                           000095   728 _SBRL1	=	0x0095
                           0000CC   729 G$TMR2$0$0 == 0x00cc
                           0000CC   730 _TMR2	=	0x00cc
                           0000CA   731 G$TMR2RL$0$0 == 0x00ca
                           0000CA   732 _TMR2RL	=	0x00ca
                           000094   733 G$TMR3$0$0 == 0x0094
                           000094   734 _TMR3	=	0x0094
                           000092   735 G$TMR3RL$0$0 == 0x0092
                           000092   736 _TMR3RL	=	0x0092
                           0000A4   737 G$TMR4$0$0 == 0x00a4
                           0000A4   738 _TMR4	=	0x00a4
                           0000A2   739 G$TMR4RL$0$0 == 0x00a2
                           0000A2   740 _TMR4RL	=	0x00a2
                           0000AA   741 G$_XPAGE$0$0 == 0x00aa
                           0000AA   742 __XPAGE	=	0x00aa
                                    743 ;--------------------------------------------------------
                                    744 ; special function bits
                                    745 ;--------------------------------------------------------
                                    746 	.area RSEG    (ABS,DATA)
      000000                        747 	.org 0x0000
                           0000E0   748 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   749 _ACC_ACC0	=	0x00e0
                           0000E1   750 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   751 _ACC_ACC1	=	0x00e1
                           0000E2   752 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   753 _ACC_ACC2	=	0x00e2
                           0000E3   754 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   755 _ACC_ACC3	=	0x00e3
                           0000E4   756 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   757 _ACC_ACC4	=	0x00e4
                           0000E5   758 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   759 _ACC_ACC5	=	0x00e5
                           0000E6   760 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   761 _ACC_ACC6	=	0x00e6
                           0000E7   762 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   763 _ACC_ACC7	=	0x00e7
                           0000E8   764 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   765 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   766 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   767 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   768 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   769 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   770 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   771 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   772 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   773 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   774 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   775 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   776 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   777 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   778 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   779 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   780 G$B_B0$0$0 == 0x00f0
                           0000F0   781 _B_B0	=	0x00f0
                           0000F1   782 G$B_B1$0$0 == 0x00f1
                           0000F1   783 _B_B1	=	0x00f1
                           0000F2   784 G$B_B2$0$0 == 0x00f2
                           0000F2   785 _B_B2	=	0x00f2
                           0000F3   786 G$B_B3$0$0 == 0x00f3
                           0000F3   787 _B_B3	=	0x00f3
                           0000F4   788 G$B_B4$0$0 == 0x00f4
                           0000F4   789 _B_B4	=	0x00f4
                           0000F5   790 G$B_B5$0$0 == 0x00f5
                           0000F5   791 _B_B5	=	0x00f5
                           0000F6   792 G$B_B6$0$0 == 0x00f6
                           0000F6   793 _B_B6	=	0x00f6
                           0000F7   794 G$B_B7$0$0 == 0x00f7
                           0000F7   795 _B_B7	=	0x00f7
                           0000A8   796 G$IE_EX0$0$0 == 0x00a8
                           0000A8   797 _IE_EX0	=	0x00a8
                           0000A9   798 G$IE_ET0$0$0 == 0x00a9
                           0000A9   799 _IE_ET0	=	0x00a9
                           0000AA   800 G$IE_EX1$0$0 == 0x00aa
                           0000AA   801 _IE_EX1	=	0x00aa
                           0000AB   802 G$IE_ET1$0$0 == 0x00ab
                           0000AB   803 _IE_ET1	=	0x00ab
                           0000AC   804 G$IE_ES0$0$0 == 0x00ac
                           0000AC   805 _IE_ES0	=	0x00ac
                           0000AD   806 G$IE_ET2$0$0 == 0x00ad
                           0000AD   807 _IE_ET2	=	0x00ad
                           0000AE   808 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   809 _IE_ESPI0	=	0x00ae
                           0000AF   810 G$IE_EA$0$0 == 0x00af
                           0000AF   811 _IE_EA	=	0x00af
                           0000B8   812 G$IP_PX0$0$0 == 0x00b8
                           0000B8   813 _IP_PX0	=	0x00b8
                           0000B9   814 G$IP_PT0$0$0 == 0x00b9
                           0000B9   815 _IP_PT0	=	0x00b9
                           0000BA   816 G$IP_PX1$0$0 == 0x00ba
                           0000BA   817 _IP_PX1	=	0x00ba
                           0000BB   818 G$IP_PT1$0$0 == 0x00bb
                           0000BB   819 _IP_PT1	=	0x00bb
                           0000BC   820 G$IP_PS0$0$0 == 0x00bc
                           0000BC   821 _IP_PS0	=	0x00bc
                           0000BD   822 G$IP_PT2$0$0 == 0x00bd
                           0000BD   823 _IP_PT2	=	0x00bd
                           0000BE   824 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   825 _IP_PSPI0	=	0x00be
                           000080   826 G$P0_B0$0$0 == 0x0080
                           000080   827 _P0_B0	=	0x0080
                           000081   828 G$P0_B1$0$0 == 0x0081
                           000081   829 _P0_B1	=	0x0081
                           000082   830 G$P0_B2$0$0 == 0x0082
                           000082   831 _P0_B2	=	0x0082
                           000083   832 G$P0_B3$0$0 == 0x0083
                           000083   833 _P0_B3	=	0x0083
                           000084   834 G$P0_B4$0$0 == 0x0084
                           000084   835 _P0_B4	=	0x0084
                           000085   836 G$P0_B5$0$0 == 0x0085
                           000085   837 _P0_B5	=	0x0085
                           000086   838 G$P0_B6$0$0 == 0x0086
                           000086   839 _P0_B6	=	0x0086
                           000087   840 G$P0_B7$0$0 == 0x0087
                           000087   841 _P0_B7	=	0x0087
                           000090   842 G$P1_B0$0$0 == 0x0090
                           000090   843 _P1_B0	=	0x0090
                           000091   844 G$P1_B1$0$0 == 0x0091
                           000091   845 _P1_B1	=	0x0091
                           000092   846 G$P1_B2$0$0 == 0x0092
                           000092   847 _P1_B2	=	0x0092
                           000093   848 G$P1_B3$0$0 == 0x0093
                           000093   849 _P1_B3	=	0x0093
                           000094   850 G$P1_B4$0$0 == 0x0094
                           000094   851 _P1_B4	=	0x0094
                           000095   852 G$P1_B5$0$0 == 0x0095
                           000095   853 _P1_B5	=	0x0095
                           000096   854 G$P1_B6$0$0 == 0x0096
                           000096   855 _P1_B6	=	0x0096
                           000097   856 G$P1_B7$0$0 == 0x0097
                           000097   857 _P1_B7	=	0x0097
                           0000A0   858 G$P2_B0$0$0 == 0x00a0
                           0000A0   859 _P2_B0	=	0x00a0
                           0000A1   860 G$P2_B1$0$0 == 0x00a1
                           0000A1   861 _P2_B1	=	0x00a1
                           0000A2   862 G$P2_B2$0$0 == 0x00a2
                           0000A2   863 _P2_B2	=	0x00a2
                           0000A3   864 G$P2_B3$0$0 == 0x00a3
                           0000A3   865 _P2_B3	=	0x00a3
                           0000B0   866 G$P3_B0$0$0 == 0x00b0
                           0000B0   867 _P3_B0	=	0x00b0
                           0000B1   868 G$P3_B1$0$0 == 0x00b1
                           0000B1   869 _P3_B1	=	0x00b1
                           0000D8   870 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   871 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   872 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   873 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   874 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   875 _PCA0CN0_CCF2	=	0x00da
                           0000DE   876 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   877 _PCA0CN0_CR	=	0x00de
                           0000DF   878 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   879 _PCA0CN0_CF	=	0x00df
                           0000D0   880 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   881 _PSW_PARITY	=	0x00d0
                           0000D1   882 G$PSW_F1$0$0 == 0x00d1
                           0000D1   883 _PSW_F1	=	0x00d1
                           0000D2   884 G$PSW_OV$0$0 == 0x00d2
                           0000D2   885 _PSW_OV	=	0x00d2
                           0000D3   886 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   887 _PSW_RS0	=	0x00d3
                           0000D4   888 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   889 _PSW_RS1	=	0x00d4
                           0000D5   890 G$PSW_F0$0$0 == 0x00d5
                           0000D5   891 _PSW_F0	=	0x00d5
                           0000D6   892 G$PSW_AC$0$0 == 0x00d6
                           0000D6   893 _PSW_AC	=	0x00d6
                           0000D7   894 G$PSW_CY$0$0 == 0x00d7
                           0000D7   895 _PSW_CY	=	0x00d7
                           000098   896 G$SCON0_RI$0$0 == 0x0098
                           000098   897 _SCON0_RI	=	0x0098
                           000099   898 G$SCON0_TI$0$0 == 0x0099
                           000099   899 _SCON0_TI	=	0x0099
                           00009A   900 G$SCON0_RB8$0$0 == 0x009a
                           00009A   901 _SCON0_RB8	=	0x009a
                           00009B   902 G$SCON0_TB8$0$0 == 0x009b
                           00009B   903 _SCON0_TB8	=	0x009b
                           00009C   904 G$SCON0_REN$0$0 == 0x009c
                           00009C   905 _SCON0_REN	=	0x009c
                           00009D   906 G$SCON0_MCE$0$0 == 0x009d
                           00009D   907 _SCON0_MCE	=	0x009d
                           00009F   908 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   909 _SCON0_SMODE	=	0x009f
                           0000C8   910 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   911 _SCON1_RI	=	0x00c8
                           0000C9   912 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   913 _SCON1_TI	=	0x00c9
                           0000CA   914 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   915 _SCON1_RBX	=	0x00ca
                           0000CB   916 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   917 _SCON1_TBX	=	0x00cb
                           0000CC   918 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   919 _SCON1_REN	=	0x00cc
                           0000CE   920 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   921 _SCON1_PERR	=	0x00ce
                           0000CF   922 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   923 _SCON1_OVR	=	0x00cf
                           0000C0   924 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   925 _SMB0CN0_SI	=	0x00c0
                           0000C1   926 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   927 _SMB0CN0_ACK	=	0x00c1
                           0000C2   928 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   929 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   930 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   931 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   932 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   933 _SMB0CN0_STO	=	0x00c4
                           0000C5   934 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   935 _SMB0CN0_STA	=	0x00c5
                           0000C6   936 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   937 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   938 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   939 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   940 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   941 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   942 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   943 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   944 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   945 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   946 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   947 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   948 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   949 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   950 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   951 _SPI0CN0_MODF	=	0x00fd
                           0000FE   952 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   953 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   954 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   955 _SPI0CN0_SPIF	=	0x00ff
                           000088   956 G$TCON_IT0$0$0 == 0x0088
                           000088   957 _TCON_IT0	=	0x0088
                           000089   958 G$TCON_IE0$0$0 == 0x0089
                           000089   959 _TCON_IE0	=	0x0089
                           00008A   960 G$TCON_IT1$0$0 == 0x008a
                           00008A   961 _TCON_IT1	=	0x008a
                           00008B   962 G$TCON_IE1$0$0 == 0x008b
                           00008B   963 _TCON_IE1	=	0x008b
                           00008C   964 G$TCON_TR0$0$0 == 0x008c
                           00008C   965 _TCON_TR0	=	0x008c
                           00008D   966 G$TCON_TF0$0$0 == 0x008d
                           00008D   967 _TCON_TF0	=	0x008d
                           00008E   968 G$TCON_TR1$0$0 == 0x008e
                           00008E   969 _TCON_TR1	=	0x008e
                           00008F   970 G$TCON_TF1$0$0 == 0x008f
                           00008F   971 _TCON_TF1	=	0x008f
                           0000C8   972 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   973 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   974 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   975 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   976 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   977 _TMR2CN0_TR2	=	0x00ca
                           0000CB   978 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   979 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   980 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   981 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   982 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   983 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   984 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE   985 _TMR2CN0_TF2L	=	0x00ce
                           0000CF   986 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF   987 _TMR2CN0_TF2H	=	0x00cf
                           000098   988 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098   989 _TMR4CN0_T4XCLK0	=	0x0098
                           000099   990 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099   991 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A   992 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A   993 _TMR4CN0_TR4	=	0x009a
                           00009B   994 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B   995 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C   996 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C   997 _TMR4CN0_TF4CEN	=	0x009c
                           00009D   998 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D   999 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1000 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1001 _TMR4CN0_TF4L	=	0x009e
                           00009F  1002 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1003 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1004 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1005 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1006 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1007 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1008 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1009 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1010 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1011 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1012 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1013 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1014 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1015 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1016 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1017 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1018 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1019 _UART1FCN1_TFRQ	=	0x00df
                                   1020 ;--------------------------------------------------------
                                   1021 ; overlayable register banks
                                   1022 ;--------------------------------------------------------
                                   1023 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1024 	.ds 8
                                   1025 ;--------------------------------------------------------
                                   1026 ; overlayable bit register bank
                                   1027 ;--------------------------------------------------------
                                   1028 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1029 bits:
      000020                       1030 	.ds 1
                           008000  1031 	b0 = bits[0]
                           008100  1032 	b1 = bits[1]
                           008200  1033 	b2 = bits[2]
                           008300  1034 	b3 = bits[3]
                           008400  1035 	b4 = bits[4]
                           008500  1036 	b5 = bits[5]
                           008600  1037 	b6 = bits[6]
                           008700  1038 	b7 = bits[7]
                                   1039 ;--------------------------------------------------------
                                   1040 ; internal ram data
                                   1041 ;--------------------------------------------------------
                                   1042 	.area DSEG    (DATA)
                                   1043 ;--------------------------------------------------------
                                   1044 ; overlayable items in internal ram 
                                   1045 ;--------------------------------------------------------
                                   1046 ;--------------------------------------------------------
                                   1047 ; indirectly addressable internal ram data
                                   1048 ;--------------------------------------------------------
                                   1049 	.area ISEG    (DATA)
                                   1050 ;--------------------------------------------------------
                                   1051 ; absolute internal ram data
                                   1052 ;--------------------------------------------------------
                                   1053 	.area IABS    (ABS,DATA)
                                   1054 	.area IABS    (ABS,DATA)
                                   1055 ;--------------------------------------------------------
                                   1056 ; bit data
                                   1057 ;--------------------------------------------------------
                                   1058 	.area BSEG    (BIT)
                                   1059 ;--------------------------------------------------------
                                   1060 ; paged external ram data
                                   1061 ;--------------------------------------------------------
                                   1062 	.area PSEG    (PAG,XDATA)
                                   1063 ;--------------------------------------------------------
                                   1064 ; external ram data
                                   1065 ;--------------------------------------------------------
                                   1066 	.area XSEG    (XDATA)
                                   1067 ;--------------------------------------------------------
                                   1068 ; absolute external ram data
                                   1069 ;--------------------------------------------------------
                                   1070 	.area XABS    (ABS,XDATA)
                                   1071 ;--------------------------------------------------------
                                   1072 ; external initialized ram data
                                   1073 ;--------------------------------------------------------
                                   1074 	.area XISEG   (XDATA)
                                   1075 	.area HOME    (CODE)
                                   1076 	.area GSINIT0 (CODE)
                                   1077 	.area GSINIT1 (CODE)
                                   1078 	.area GSINIT2 (CODE)
                                   1079 	.area GSINIT3 (CODE)
                                   1080 	.area GSINIT4 (CODE)
                                   1081 	.area GSINIT5 (CODE)
                                   1082 	.area GSINIT  (CODE)
                                   1083 	.area GSFINAL (CODE)
                                   1084 	.area CSEG    (CODE)
                                   1085 ;--------------------------------------------------------
                                   1086 ; global & static initialisations
                                   1087 ;--------------------------------------------------------
                                   1088 	.area HOME    (CODE)
                                   1089 	.area GSINIT  (CODE)
                                   1090 	.area GSFINAL (CODE)
                                   1091 	.area GSINIT  (CODE)
                                   1092 ;--------------------------------------------------------
                                   1093 ; Home
                                   1094 ;--------------------------------------------------------
                                   1095 	.area HOME    (CODE)
                                   1096 	.area HOME    (CODE)
                                   1097 ;--------------------------------------------------------
                                   1098 ; code
                                   1099 ;--------------------------------------------------------
                                   1100 	.area CSEG    (CODE)
                                   1101 ;------------------------------------------------------------
                                   1102 ;Allocation info for local variables in function 'eeprom_init'
                                   1103 ;------------------------------------------------------------
                                   1104 ;secbyte                   Allocated to stack - _bp +1
                                   1105 ;------------------------------------------------------------
                           000000  1106 	G$eeprom_init$0$0 ==.
                           000000  1107 	C$eeprom.c$31$0$0 ==.
                                   1108 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:31: void eeprom_init()
                                   1109 ;	-----------------------------------------
                                   1110 ;	 function eeprom_init
                                   1111 ;	-----------------------------------------
      004523                       1112 _eeprom_init:
                           000007  1113 	ar7 = 0x07
                           000006  1114 	ar6 = 0x06
                           000005  1115 	ar5 = 0x05
                           000004  1116 	ar4 = 0x04
                           000003  1117 	ar3 = 0x03
                           000002  1118 	ar2 = 0x02
                           000001  1119 	ar1 = 0x01
                           000000  1120 	ar0 = 0x00
      004523 C0 1B            [24] 1121 	push	_bp
      004525 85 81 1B         [24] 1122 	mov	_bp,sp
      004528 05 81            [12] 1123 	inc	sp
                           000007  1124 	C$eeprom.c$34$1$108 ==.
                                   1125 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:34: eeprom_read(0xFBFF,&secbyte,1);
      00452A AF 1B            [24] 1126 	mov	r7,_bp
      00452C 0F               [12] 1127 	inc	r7
      00452D 7E 00            [12] 1128 	mov	r6,#0x00
      00452F 7D 40            [12] 1129 	mov	r5,#0x40
      004531 74 01            [12] 1130 	mov	a,#0x01
      004533 C0 E0            [24] 1131 	push	acc
      004535 C0 07            [24] 1132 	push	ar7
      004537 C0 06            [24] 1133 	push	ar6
      004539 C0 05            [24] 1134 	push	ar5
      00453B 90 FB FF         [24] 1135 	mov	dptr,#0xfbff
      00453E 12 45 96         [24] 1136 	lcall	_eeprom_read
      004541 E5 81            [12] 1137 	mov	a,sp
      004543 24 FC            [12] 1138 	add	a,#0xfc
      004545 F5 81            [12] 1139 	mov	sp,a
                           000024  1140 	C$eeprom.c$35$1$108 ==.
                                   1141 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:35: if (secbyte == 0xff)
      004547 A8 1B            [24] 1142 	mov	r0,_bp
      004549 08               [12] 1143 	inc	r0
      00454A B6 FF 44         [24] 1144 	cjne	@r0,#0xff,00103$
                           00002A  1145 	C$eeprom.c$37$2$109 ==.
                                   1146 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:37: eeprom_erase(0xFBC0);
      00454D 74 03            [12] 1147 	mov	a,#0x03
      00454F C0 E0            [24] 1148 	push	acc
      004551 74 01            [12] 1149 	mov	a,#0x01
      004553 C0 E0            [24] 1150 	push	acc
      004555 74 21            [12] 1151 	mov	a,#_appdata
      004557 C0 E0            [24] 1152 	push	acc
      004559 74 00            [12] 1153 	mov	a,#(_appdata >> 8)
      00455B C0 E0            [24] 1154 	push	acc
      00455D 74 40            [12] 1155 	mov	a,#0x40
      00455F C0 E0            [24] 1156 	push	acc
      004561 90 FB C0         [24] 1157 	mov	dptr,#0xfbc0
      004564 12 45 F0         [24] 1158 	lcall	__eeprom_write
      004567 E5 81            [12] 1159 	mov	a,sp
      004569 24 FB            [12] 1160 	add	a,#0xfb
      00456B F5 81            [12] 1161 	mov	sp,a
                           00004A  1162 	C$eeprom.c$38$2$109 ==.
                                   1163 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:38: secbyte = -32;
      00456D A8 1B            [24] 1164 	mov	r0,_bp
      00456F 08               [12] 1165 	inc	r0
      004570 76 E0            [12] 1166 	mov	@r0,#0xe0
                           00004F  1167 	C$eeprom.c$39$2$109 ==.
                                   1168 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:39: eeprom_write(0xFBFF, &secbyte, 1);
      004572 AF 1B            [24] 1169 	mov	r7,_bp
      004574 0F               [12] 1170 	inc	r7
      004575 7E 00            [12] 1171 	mov	r6,#0x00
      004577 7D 40            [12] 1172 	mov	r5,#0x40
      004579 74 01            [12] 1173 	mov	a,#0x01
      00457B C0 E0            [24] 1174 	push	acc
      00457D C0 E0            [24] 1175 	push	acc
      00457F C0 07            [24] 1176 	push	ar7
      004581 C0 06            [24] 1177 	push	ar6
      004583 C0 05            [24] 1178 	push	ar5
      004585 90 FB FF         [24] 1179 	mov	dptr,#0xfbff
      004588 12 45 F0         [24] 1180 	lcall	__eeprom_write
      00458B E5 81            [12] 1181 	mov	a,sp
      00458D 24 FB            [12] 1182 	add	a,#0xfb
      00458F F5 81            [12] 1183 	mov	sp,a
      004591                       1184 00103$:
      004591 15 81            [12] 1185 	dec	sp
      004593 D0 1B            [24] 1186 	pop	_bp
                           000072  1187 	C$eeprom.c$41$1$108 ==.
                           000072  1188 	XG$eeprom_init$0$0 ==.
      004595 22               [24] 1189 	ret
                                   1190 ;------------------------------------------------------------
                                   1191 ;Allocation info for local variables in function 'eeprom_read'
                                   1192 ;------------------------------------------------------------
                                   1193 ;buf                       Allocated to stack - _bp -5
                                   1194 ;len                       Allocated to stack - _bp -6
                                   1195 ;addr                      Allocated to registers r6 r7 
                                   1196 ;eepaddr                   Allocated to registers 
                                   1197 ;old_int                   Allocated to registers b0 
                                   1198 ;sloc0                     Allocated to stack - _bp +1
                                   1199 ;------------------------------------------------------------
                           000073  1200 	G$eeprom_read$0$0 ==.
                           000073  1201 	C$eeprom.c$43$1$108 ==.
                                   1202 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:43: void eeprom_read(uint16_t addr, uint8_t * buf, uint8_t len)
                                   1203 ;	-----------------------------------------
                                   1204 ;	 function eeprom_read
                                   1205 ;	-----------------------------------------
      004596                       1206 _eeprom_read:
      004596 C0 1B            [24] 1207 	push	_bp
      004598 85 81 1B         [24] 1208 	mov	_bp,sp
      00459B 05 81            [12] 1209 	inc	sp
      00459D AE 82            [24] 1210 	mov	r6,dpl
      00459F AF 83            [24] 1211 	mov	r7,dph
                           00007E  1212 	C$eeprom.c$45$1$111 ==.
                                   1213 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:45: uint8_t __code * eepaddr =  (uint8_t __code *) addr;
                           00007E  1214 	C$eeprom.c$48$1$111 ==.
                                   1215 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:48: while(len--)
      0045A1 E5 1B            [12] 1216 	mov	a,_bp
      0045A3 24 FB            [12] 1217 	add	a,#0xfb
      0045A5 F8               [12] 1218 	mov	r0,a
      0045A6 86 03            [24] 1219 	mov	ar3,@r0
      0045A8 08               [12] 1220 	inc	r0
      0045A9 86 04            [24] 1221 	mov	ar4,@r0
      0045AB 08               [12] 1222 	inc	r0
      0045AC 86 05            [24] 1223 	mov	ar5,@r0
      0045AE E5 1B            [12] 1224 	mov	a,_bp
      0045B0 24 FA            [12] 1225 	add	a,#0xfa
      0045B2 F8               [12] 1226 	mov	r0,a
      0045B3 A9 1B            [24] 1227 	mov	r1,_bp
      0045B5 09               [12] 1228 	inc	r1
      0045B6 E6               [12] 1229 	mov	a,@r0
      0045B7 F7               [12] 1230 	mov	@r1,a
      0045B8                       1231 00101$:
      0045B8 A8 1B            [24] 1232 	mov	r0,_bp
      0045BA 08               [12] 1233 	inc	r0
      0045BB 86 02            [24] 1234 	mov	ar2,@r0
      0045BD A8 1B            [24] 1235 	mov	r0,_bp
      0045BF 08               [12] 1236 	inc	r0
      0045C0 16               [12] 1237 	dec	@r0
      0045C1 EA               [12] 1238 	mov	a,r2
      0045C2 60 27            [24] 1239 	jz	00104$
                           0000A1  1240 	C$eeprom.c$50$2$112 ==.
                                   1241 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:50: old_int = IE_EA;
      0045C4 A2 AF            [12] 1242 	mov	c,_IE_EA
      0045C6 92 00            [24] 1243 	mov	b0,c
                           0000A5  1244 	C$eeprom.c$51$2$112 ==.
                                   1245 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:51: IE_EA = 0;
      0045C8 C2 AF            [12] 1246 	clr	_IE_EA
                           0000A7  1247 	C$eeprom.c$52$2$112 ==.
                                   1248 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:52: *buf++ = *eepaddr++;
      0045CA 8E 82            [24] 1249 	mov	dpl,r6
      0045CC 8F 83            [24] 1250 	mov	dph,r7
      0045CE E4               [12] 1251 	clr	a
      0045CF 93               [24] 1252 	movc	a,@a+dptr
      0045D0 FA               [12] 1253 	mov	r2,a
      0045D1 A3               [24] 1254 	inc	dptr
      0045D2 AE 82            [24] 1255 	mov	r6,dpl
      0045D4 AF 83            [24] 1256 	mov	r7,dph
      0045D6 8B 82            [24] 1257 	mov	dpl,r3
      0045D8 8C 83            [24] 1258 	mov	dph,r4
      0045DA 8D F0            [24] 1259 	mov	b,r5
      0045DC EA               [12] 1260 	mov	a,r2
      0045DD 12 5A 48         [24] 1261 	lcall	__gptrput
      0045E0 A3               [24] 1262 	inc	dptr
      0045E1 AB 82            [24] 1263 	mov	r3,dpl
      0045E3 AC 83            [24] 1264 	mov	r4,dph
                           0000C2  1265 	C$eeprom.c$53$2$112 ==.
                                   1266 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:53: IE_EA = old_int;
      0045E5 A2 00            [12] 1267 	mov	c,b0
      0045E7 92 AF            [24] 1268 	mov	_IE_EA,c
      0045E9 80 CD            [24] 1269 	sjmp	00101$
      0045EB                       1270 00104$:
      0045EB 15 81            [12] 1271 	dec	sp
      0045ED D0 1B            [24] 1272 	pop	_bp
                           0000CC  1273 	C$eeprom.c$55$1$111 ==.
                           0000CC  1274 	XG$eeprom_read$0$0 ==.
      0045EF 22               [24] 1275 	ret
                                   1276 ;------------------------------------------------------------
                                   1277 ;Allocation info for local variables in function '_eeprom_write'
                                   1278 ;------------------------------------------------------------
                                   1279 ;buf                       Allocated to stack - _bp -5
                                   1280 ;len                       Allocated to stack - _bp -6
                                   1281 ;flags                     Allocated to stack - _bp -7
                                   1282 ;addr                      Allocated to registers r6 r7 
                                   1283 ;eepaddr                   Allocated to registers 
                                   1284 ;old_int                   Allocated to registers b0 
                                   1285 ;sloc0                     Allocated to stack - _bp +1
                                   1286 ;sloc1                     Allocated to stack - _bp +2
                                   1287 ;------------------------------------------------------------
                           0000CD  1288 	G$_eeprom_write$0$0 ==.
                           0000CD  1289 	C$eeprom.c$57$1$111 ==.
                                   1290 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:57: void _eeprom_write(uint16_t addr, uint8_t * buf, uint8_t len, uint8_t flags)
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function _eeprom_write
                                   1293 ;	-----------------------------------------
      0045F0                       1294 __eeprom_write:
      0045F0 C0 1B            [24] 1295 	push	_bp
      0045F2 85 81 1B         [24] 1296 	mov	_bp,sp
      0045F5 05 81            [12] 1297 	inc	sp
      0045F7 05 81            [12] 1298 	inc	sp
      0045F9 AE 82            [24] 1299 	mov	r6,dpl
      0045FB AF 83            [24] 1300 	mov	r7,dph
                           0000DA  1301 	C$eeprom.c$59$1$114 ==.
                                   1302 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:59: uint8_t __xdata *  eepaddr = (uint8_t __xdata *) addr;
                           0000DA  1303 	C$eeprom.c$62$2$115 ==.
                                   1304 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:62: while(len--)
      0045FD E5 1B            [12] 1305 	mov	a,_bp
      0045FF 24 F9            [12] 1306 	add	a,#0xf9
      004601 F8               [12] 1307 	mov	r0,a
      004602 A9 1B            [24] 1308 	mov	r1,_bp
      004604 09               [12] 1309 	inc	r1
      004605 09               [12] 1310 	inc	r1
      004606 E6               [12] 1311 	mov	a,@r0
      004607 F4               [12] 1312 	cpl	a
      004608 F7               [12] 1313 	mov	@r1,a
      004609 E5 1B            [12] 1314 	mov	a,_bp
      00460B 24 FB            [12] 1315 	add	a,#0xfb
      00460D F8               [12] 1316 	mov	r0,a
      00460E 86 02            [24] 1317 	mov	ar2,@r0
      004610 08               [12] 1318 	inc	r0
      004611 86 03            [24] 1319 	mov	ar3,@r0
      004613 08               [12] 1320 	inc	r0
      004614 86 04            [24] 1321 	mov	ar4,@r0
      004616 E5 1B            [12] 1322 	mov	a,_bp
      004618 24 FA            [12] 1323 	add	a,#0xfa
      00461A F8               [12] 1324 	mov	r0,a
      00461B A9 1B            [24] 1325 	mov	r1,_bp
      00461D 09               [12] 1326 	inc	r1
      00461E E6               [12] 1327 	mov	a,@r0
      00461F F7               [12] 1328 	mov	@r1,a
      004620                       1329 00101$:
      004620 A8 1B            [24] 1330 	mov	r0,_bp
      004622 08               [12] 1331 	inc	r0
      004623 86 05            [24] 1332 	mov	ar5,@r0
      004625 A8 1B            [24] 1333 	mov	r0,_bp
      004627 08               [12] 1334 	inc	r0
      004628 16               [12] 1335 	dec	@r0
      004629 ED               [12] 1336 	mov	a,r5
      00462A 60 41            [24] 1337 	jz	00104$
                           000109  1338 	C$eeprom.c$64$2$115 ==.
                                   1339 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:64: old_int = IE_EA;
      00462C A2 AF            [12] 1340 	mov	c,_IE_EA
      00462E 92 00            [24] 1341 	mov	b0,c
                           00010D  1342 	C$eeprom.c$65$2$115 ==.
                                   1343 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:65: IE_EA = 0;
      004630 C2 AF            [12] 1344 	clr	_IE_EA
                           00010F  1345 	C$eeprom.c$67$2$115 ==.
                                   1346 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:67: VDM0CN = 0x80;
      004632 75 FF 80         [24] 1347 	mov	_VDM0CN,#0x80
                           000112  1348 	C$eeprom.c$68$2$115 ==.
                                   1349 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:68: RSTSRC = 0x02;
      004635 75 EF 02         [24] 1350 	mov	_RSTSRC,#0x02
                           000115  1351 	C$eeprom.c$71$2$115 ==.
                                   1352 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:71: FLKEY  = 0xA5;
      004638 75 B7 A5         [24] 1353 	mov	_FLKEY,#0xa5
                           000118  1354 	C$eeprom.c$72$2$115 ==.
                                   1355 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:72: FLKEY  = 0xF1;
      00463B 75 B7 F1         [24] 1356 	mov	_FLKEY,#0xf1
                           00011B  1357 	C$eeprom.c$73$2$115 ==.
                                   1358 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:73: PSCTL |= flags;
      00463E E5 1B            [12] 1359 	mov	a,_bp
      004640 24 F9            [12] 1360 	add	a,#0xf9
      004642 F8               [12] 1361 	mov	r0,a
      004643 E6               [12] 1362 	mov	a,@r0
      004644 42 8F            [12] 1363 	orl	_PSCTL,a
                           000123  1364 	C$eeprom.c$75$2$115 ==.
                                   1365 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:75: *eepaddr = *buf;
      004646 8A 82            [24] 1366 	mov	dpl,r2
      004648 8B 83            [24] 1367 	mov	dph,r3
      00464A 8C F0            [24] 1368 	mov	b,r4
      00464C 12 5E 3E         [24] 1369 	lcall	__gptrget
      00464F FD               [12] 1370 	mov	r5,a
      004650 A3               [24] 1371 	inc	dptr
      004651 AA 82            [24] 1372 	mov	r2,dpl
      004653 AB 83            [24] 1373 	mov	r3,dph
      004655 8E 82            [24] 1374 	mov	dpl,r6
      004657 8F 83            [24] 1375 	mov	dph,r7
      004659 ED               [12] 1376 	mov	a,r5
      00465A F0               [24] 1377 	movx	@dptr,a
      00465B A3               [24] 1378 	inc	dptr
      00465C AE 82            [24] 1379 	mov	r6,dpl
      00465E AF 83            [24] 1380 	mov	r7,dph
                           00013D  1381 	C$eeprom.c$76$2$115 ==.
                                   1382 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:76: PSCTL &= ~flags;
      004660 A8 1B            [24] 1383 	mov	r0,_bp
      004662 08               [12] 1384 	inc	r0
      004663 08               [12] 1385 	inc	r0
      004664 E6               [12] 1386 	mov	a,@r0
      004665 52 8F            [12] 1387 	anl	_PSCTL,a
                           000144  1388 	C$eeprom.c$77$2$115 ==.
                                   1389 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:77: IE_EA = old_int;
      004667 A2 00            [12] 1390 	mov	c,b0
      004669 92 AF            [24] 1391 	mov	_IE_EA,c
                           000148  1392 	C$eeprom.c$79$2$115 ==.
                                   1393 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:79: eepaddr++;
                           000148  1394 	C$eeprom.c$80$2$115 ==.
                                   1395 ;	D:\Freelancer_projects\jan333\sdcc_project\src\eeprom.c:80: buf++;
      00466B 80 B3            [24] 1396 	sjmp	00101$
      00466D                       1397 00104$:
      00466D 85 1B 81         [24] 1398 	mov	sp,_bp
      004670 D0 1B            [24] 1399 	pop	_bp
                           00014F  1400 	C$eeprom.c$82$1$114 ==.
                           00014F  1401 	XG$_eeprom_write$0$0 ==.
      004672 22               [24] 1402 	ret
                                   1403 	.area CSEG    (CODE)
                                   1404 	.area CONST   (CODE)
                                   1405 	.area XINIT   (CODE)
                                   1406 	.area CABS    (ABS,CODE)
