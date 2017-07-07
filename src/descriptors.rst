                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module descriptors
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _initstruct
                                     12 	.globl _configDesc
                                     13 	.globl _deviceDesc
                                     14 	.globl _ReportDescriptor0
                                     15 	.globl _UART1FCN1_TFRQ
                                     16 	.globl _UART1FCN1_TXNF
                                     17 	.globl _UART1FCN1_TXHOLD
                                     18 	.globl _UART1FCN1_TIE
                                     19 	.globl _UART1FCN1_RFRQ
                                     20 	.globl _UART1FCN1_RXTO1
                                     21 	.globl _UART1FCN1_RXTO0
                                     22 	.globl _UART1FCN1_RIE
                                     23 	.globl _TMR4CN0_TF4H
                                     24 	.globl _TMR4CN0_TF4L
                                     25 	.globl _TMR4CN0_TF4LEN
                                     26 	.globl _TMR4CN0_TF4CEN
                                     27 	.globl _TMR4CN0_T4SPLIT
                                     28 	.globl _TMR4CN0_TR4
                                     29 	.globl _TMR4CN0_T4XCLK1
                                     30 	.globl _TMR4CN0_T4XCLK0
                                     31 	.globl _TMR2CN0_TF2H
                                     32 	.globl _TMR2CN0_TF2L
                                     33 	.globl _TMR2CN0_TF2LEN
                                     34 	.globl _TMR2CN0_TF2CEN
                                     35 	.globl _TMR2CN0_T2SPLIT
                                     36 	.globl _TMR2CN0_TR2
                                     37 	.globl _TMR2CN0_T2XCLK1
                                     38 	.globl _TMR2CN0_T2XCLK0
                                     39 	.globl _TCON_TF1
                                     40 	.globl _TCON_TR1
                                     41 	.globl _TCON_TF0
                                     42 	.globl _TCON_TR0
                                     43 	.globl _TCON_IE1
                                     44 	.globl _TCON_IT1
                                     45 	.globl _TCON_IE0
                                     46 	.globl _TCON_IT0
                                     47 	.globl _SPI0CN0_SPIF
                                     48 	.globl _SPI0CN0_WCOL
                                     49 	.globl _SPI0CN0_MODF
                                     50 	.globl _SPI0CN0_RXOVRN
                                     51 	.globl _SPI0CN0_NSSMD1
                                     52 	.globl _SPI0CN0_NSSMD0
                                     53 	.globl _SPI0CN0_TXNF
                                     54 	.globl _SPI0CN0_SPIEN
                                     55 	.globl _SMB0CN0_MASTER
                                     56 	.globl _SMB0CN0_TXMODE
                                     57 	.globl _SMB0CN0_STA
                                     58 	.globl _SMB0CN0_STO
                                     59 	.globl _SMB0CN0_ACKRQ
                                     60 	.globl _SMB0CN0_ARBLOST
                                     61 	.globl _SMB0CN0_ACK
                                     62 	.globl _SMB0CN0_SI
                                     63 	.globl _SCON1_OVR
                                     64 	.globl _SCON1_PERR
                                     65 	.globl _SCON1_REN
                                     66 	.globl _SCON1_TBX
                                     67 	.globl _SCON1_RBX
                                     68 	.globl _SCON1_TI
                                     69 	.globl _SCON1_RI
                                     70 	.globl _SCON0_SMODE
                                     71 	.globl _SCON0_MCE
                                     72 	.globl _SCON0_REN
                                     73 	.globl _SCON0_TB8
                                     74 	.globl _SCON0_RB8
                                     75 	.globl _SCON0_TI
                                     76 	.globl _SCON0_RI
                                     77 	.globl _PSW_CY
                                     78 	.globl _PSW_AC
                                     79 	.globl _PSW_F0
                                     80 	.globl _PSW_RS1
                                     81 	.globl _PSW_RS0
                                     82 	.globl _PSW_OV
                                     83 	.globl _PSW_F1
                                     84 	.globl _PSW_PARITY
                                     85 	.globl _PCA0CN0_CF
                                     86 	.globl _PCA0CN0_CR
                                     87 	.globl _PCA0CN0_CCF2
                                     88 	.globl _PCA0CN0_CCF1
                                     89 	.globl _PCA0CN0_CCF0
                                     90 	.globl _P3_B1
                                     91 	.globl _P3_B0
                                     92 	.globl _P2_B3
                                     93 	.globl _P2_B2
                                     94 	.globl _P2_B1
                                     95 	.globl _P2_B0
                                     96 	.globl _P1_B7
                                     97 	.globl _P1_B6
                                     98 	.globl _P1_B5
                                     99 	.globl _P1_B4
                                    100 	.globl _P1_B3
                                    101 	.globl _P1_B2
                                    102 	.globl _P1_B1
                                    103 	.globl _P1_B0
                                    104 	.globl _P0_B7
                                    105 	.globl _P0_B6
                                    106 	.globl _P0_B5
                                    107 	.globl _P0_B4
                                    108 	.globl _P0_B3
                                    109 	.globl _P0_B2
                                    110 	.globl _P0_B1
                                    111 	.globl _P0_B0
                                    112 	.globl _IP_PSPI0
                                    113 	.globl _IP_PT2
                                    114 	.globl _IP_PS0
                                    115 	.globl _IP_PT1
                                    116 	.globl _IP_PX1
                                    117 	.globl _IP_PT0
                                    118 	.globl _IP_PX0
                                    119 	.globl _IE_EA
                                    120 	.globl _IE_ESPI0
                                    121 	.globl _IE_ET2
                                    122 	.globl _IE_ES0
                                    123 	.globl _IE_ET1
                                    124 	.globl _IE_EX1
                                    125 	.globl _IE_ET0
                                    126 	.globl _IE_EX0
                                    127 	.globl _B_B7
                                    128 	.globl _B_B6
                                    129 	.globl _B_B5
                                    130 	.globl _B_B4
                                    131 	.globl _B_B3
                                    132 	.globl _B_B2
                                    133 	.globl _B_B1
                                    134 	.globl _B_B0
                                    135 	.globl _ADC0CN0_ADEN
                                    136 	.globl _ADC0CN0_ADBMEN
                                    137 	.globl _ADC0CN0_ADINT
                                    138 	.globl _ADC0CN0_ADBUSY
                                    139 	.globl _ADC0CN0_ADWINT
                                    140 	.globl _ADC0CN0_ADCM2
                                    141 	.globl _ADC0CN0_ADCM1
                                    142 	.globl _ADC0CN0_ADCM0
                                    143 	.globl _ACC_ACC7
                                    144 	.globl _ACC_ACC6
                                    145 	.globl _ACC_ACC5
                                    146 	.globl _ACC_ACC4
                                    147 	.globl _ACC_ACC3
                                    148 	.globl _ACC_ACC2
                                    149 	.globl _ACC_ACC1
                                    150 	.globl _ACC_ACC0
                                    151 	.globl __XPAGE
                                    152 	.globl _TMR4RL
                                    153 	.globl _TMR4
                                    154 	.globl _TMR3RL
                                    155 	.globl _TMR3
                                    156 	.globl _TMR2RL
                                    157 	.globl _TMR2
                                    158 	.globl _SBRL1
                                    159 	.globl _PCA0
                                    160 	.globl _PCA0CP2
                                    161 	.globl _PCA0CP1
                                    162 	.globl _PCA0CP0
                                    163 	.globl _DP
                                    164 	.globl _ADC0LT
                                    165 	.globl _ADC0
                                    166 	.globl _ADC0GT
                                    167 	.globl _XBR2
                                    168 	.globl _XBR1
                                    169 	.globl _XBR0
                                    170 	.globl _WDTCN
                                    171 	.globl _VDM0CN
                                    172 	.globl _USB0XCN
                                    173 	.globl _USB0DAT
                                    174 	.globl _USB0CF
                                    175 	.globl _USB0CDSTA
                                    176 	.globl _USB0CDCN
                                    177 	.globl _USB0CDCF
                                    178 	.globl _USB0AEC
                                    179 	.globl _USB0ADR
                                    180 	.globl _UART1LIN
                                    181 	.globl _UART1FCT
                                    182 	.globl _UART1FCN1
                                    183 	.globl _UART1FCN0
                                    184 	.globl _TMR4RLL
                                    185 	.globl _TMR4RLH
                                    186 	.globl _TMR4L
                                    187 	.globl _TMR4H
                                    188 	.globl _TMR4CN1
                                    189 	.globl _TMR4CN0
                                    190 	.globl _TMR3RLL
                                    191 	.globl _TMR3RLH
                                    192 	.globl _TMR3L
                                    193 	.globl _TMR3H
                                    194 	.globl _TMR3CN1
                                    195 	.globl _TMR3CN0
                                    196 	.globl _TMR2RLL
                                    197 	.globl _TMR2RLH
                                    198 	.globl _TMR2L
                                    199 	.globl _TMR2H
                                    200 	.globl _TMR2CN1
                                    201 	.globl _TMR2CN0
                                    202 	.globl _TMOD
                                    203 	.globl _TL1
                                    204 	.globl _TL0
                                    205 	.globl _TH1
                                    206 	.globl _TH0
                                    207 	.globl _TCON
                                    208 	.globl _SPI0FCT
                                    209 	.globl _SPI0FCN1
                                    210 	.globl _SPI0FCN0
                                    211 	.globl _SPI0DAT
                                    212 	.globl _SPI0CN0
                                    213 	.globl _SPI0CKR
                                    214 	.globl _SPI0CFG
                                    215 	.globl _SP
                                    216 	.globl _SMOD1
                                    217 	.globl _SMB0TC
                                    218 	.globl _SMB0RXLN
                                    219 	.globl _SMB0FCT
                                    220 	.globl _SMB0FCN1
                                    221 	.globl _SMB0FCN0
                                    222 	.globl _SMB0DAT
                                    223 	.globl _SMB0CN0
                                    224 	.globl _SMB0CF
                                    225 	.globl _SMB0ADR
                                    226 	.globl _SMB0ADM
                                    227 	.globl _SFRSTACK
                                    228 	.globl _SFRPGCN
                                    229 	.globl _SFRPAGE
                                    230 	.globl _SCON1
                                    231 	.globl _SCON0
                                    232 	.globl _SBUF1
                                    233 	.globl _SBUF0
                                    234 	.globl _SBRLL1
                                    235 	.globl _SBRLH1
                                    236 	.globl _SBCON1
                                    237 	.globl _RSTSRC
                                    238 	.globl _REVID
                                    239 	.globl _REG1CN
                                    240 	.globl _REG0CN
                                    241 	.globl _REF0CN
                                    242 	.globl _PSW
                                    243 	.globl _PSCTL
                                    244 	.globl _PRTDRV
                                    245 	.globl _PFE0CN
                                    246 	.globl _PCON1
                                    247 	.globl _PCON0
                                    248 	.globl _PCA0PWM
                                    249 	.globl _PCA0POL
                                    250 	.globl _PCA0MD
                                    251 	.globl _PCA0L
                                    252 	.globl _PCA0H
                                    253 	.globl _PCA0CPM2
                                    254 	.globl _PCA0CPM1
                                    255 	.globl _PCA0CPM0
                                    256 	.globl _PCA0CPL2
                                    257 	.globl _PCA0CPL1
                                    258 	.globl _PCA0CPL0
                                    259 	.globl _PCA0CPH2
                                    260 	.globl _PCA0CPH1
                                    261 	.globl _PCA0CPH0
                                    262 	.globl _PCA0CN0
                                    263 	.globl _PCA0CLR
                                    264 	.globl _PCA0CENT
                                    265 	.globl _P3MDOUT
                                    266 	.globl _P3MDIN
                                    267 	.globl _P3
                                    268 	.globl _P2SKIP
                                    269 	.globl _P2MDOUT
                                    270 	.globl _P2MDIN
                                    271 	.globl _P2MAT
                                    272 	.globl _P2MASK
                                    273 	.globl _P2
                                    274 	.globl _P1SKIP
                                    275 	.globl _P1MDOUT
                                    276 	.globl _P1MDIN
                                    277 	.globl _P1MAT
                                    278 	.globl _P1MASK
                                    279 	.globl _P1
                                    280 	.globl _P0SKIP
                                    281 	.globl _P0MDOUT
                                    282 	.globl _P0MDIN
                                    283 	.globl _P0MAT
                                    284 	.globl _P0MASK
                                    285 	.globl _P0
                                    286 	.globl _LFO0CN
                                    287 	.globl _IT01CF
                                    288 	.globl _IPH
                                    289 	.globl _IP
                                    290 	.globl _IE
                                    291 	.globl _I2C0STAT
                                    292 	.globl _I2C0SLAD
                                    293 	.globl _I2C0FCT
                                    294 	.globl _I2C0FCN1
                                    295 	.globl _I2C0FCN0
                                    296 	.globl _I2C0DOUT
                                    297 	.globl _I2C0DIN
                                    298 	.globl _I2C0CN0
                                    299 	.globl _HFOCN
                                    300 	.globl _HFO1CAL
                                    301 	.globl _HFO0CAL
                                    302 	.globl _FLKEY
                                    303 	.globl _EMI0CN
                                    304 	.globl _EIP2H
                                    305 	.globl _EIP2
                                    306 	.globl _EIP1H
                                    307 	.globl _EIP1
                                    308 	.globl _EIE2
                                    309 	.globl _EIE1
                                    310 	.globl _DPL
                                    311 	.globl _DPH
                                    312 	.globl _DEVICEID
                                    313 	.globl _DERIVID
                                    314 	.globl _CRC0ST
                                    315 	.globl _CRC0IN
                                    316 	.globl _CRC0FLIP
                                    317 	.globl _CRC0DAT
                                    318 	.globl _CRC0CNT
                                    319 	.globl _CRC0CN1
                                    320 	.globl _CRC0CN0
                                    321 	.globl _CMP1MX
                                    322 	.globl _CMP1MD
                                    323 	.globl _CMP1CN1
                                    324 	.globl _CMP1CN0
                                    325 	.globl _CMP0MX
                                    326 	.globl _CMP0MD
                                    327 	.globl _CMP0CN1
                                    328 	.globl _CMP0CN0
                                    329 	.globl _CLKSEL
                                    330 	.globl _CKCON1
                                    331 	.globl _CKCON0
                                    332 	.globl _B
                                    333 	.globl _ADC0TK
                                    334 	.globl _ADC0PWR
                                    335 	.globl _ADC0MX
                                    336 	.globl _ADC0LTL
                                    337 	.globl _ADC0LTH
                                    338 	.globl _ADC0L
                                    339 	.globl _ADC0H
                                    340 	.globl _ADC0GTL
                                    341 	.globl _ADC0GTH
                                    342 	.globl _ADC0CN1
                                    343 	.globl _ADC0CN0
                                    344 	.globl _ADC0CF
                                    345 	.globl _ADC0AC
                                    346 	.globl _ACC
                                    347 ;--------------------------------------------------------
                                    348 ; special function registers
                                    349 ;--------------------------------------------------------
                                    350 	.area RSEG    (ABS,DATA)
      000000                        351 	.org 0x0000
                           0000E0   352 G$ACC$0$0 == 0x00e0
                           0000E0   353 _ACC	=	0x00e0
                           0000B3   354 G$ADC0AC$0$0 == 0x00b3
                           0000B3   355 _ADC0AC	=	0x00b3
                           0000BC   356 G$ADC0CF$0$0 == 0x00bc
                           0000BC   357 _ADC0CF	=	0x00bc
                           0000E8   358 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   359 _ADC0CN0	=	0x00e8
                           0000B2   360 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   361 _ADC0CN1	=	0x00b2
                           0000C4   362 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   363 _ADC0GTH	=	0x00c4
                           0000C3   364 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   365 _ADC0GTL	=	0x00c3
                           0000BE   366 G$ADC0H$0$0 == 0x00be
                           0000BE   367 _ADC0H	=	0x00be
                           0000BD   368 G$ADC0L$0$0 == 0x00bd
                           0000BD   369 _ADC0L	=	0x00bd
                           0000C6   370 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   371 _ADC0LTH	=	0x00c6
                           0000C5   372 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   373 _ADC0LTL	=	0x00c5
                           0000BB   374 G$ADC0MX$0$0 == 0x00bb
                           0000BB   375 _ADC0MX	=	0x00bb
                           0000DF   376 G$ADC0PWR$0$0 == 0x00df
                           0000DF   377 _ADC0PWR	=	0x00df
                           0000B9   378 G$ADC0TK$0$0 == 0x00b9
                           0000B9   379 _ADC0TK	=	0x00b9
                           0000F0   380 G$B$0$0 == 0x00f0
                           0000F0   381 _B	=	0x00f0
                           00008E   382 G$CKCON0$0$0 == 0x008e
                           00008E   383 _CKCON0	=	0x008e
                           0000A6   384 G$CKCON1$0$0 == 0x00a6
                           0000A6   385 _CKCON1	=	0x00a6
                           0000A9   386 G$CLKSEL$0$0 == 0x00a9
                           0000A9   387 _CLKSEL	=	0x00a9
                           00009B   388 G$CMP0CN0$0$0 == 0x009b
                           00009B   389 _CMP0CN0	=	0x009b
                           000099   390 G$CMP0CN1$0$0 == 0x0099
                           000099   391 _CMP0CN1	=	0x0099
                           00009D   392 G$CMP0MD$0$0 == 0x009d
                           00009D   393 _CMP0MD	=	0x009d
                           00009F   394 G$CMP0MX$0$0 == 0x009f
                           00009F   395 _CMP0MX	=	0x009f
                           0000BF   396 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   397 _CMP1CN0	=	0x00bf
                           0000AC   398 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   399 _CMP1CN1	=	0x00ac
                           0000AB   400 G$CMP1MD$0$0 == 0x00ab
                           0000AB   401 _CMP1MD	=	0x00ab
                           0000AA   402 G$CMP1MX$0$0 == 0x00aa
                           0000AA   403 _CMP1MX	=	0x00aa
                           0000CE   404 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   405 _CRC0CN0	=	0x00ce
                           000086   406 G$CRC0CN1$0$0 == 0x0086
                           000086   407 _CRC0CN1	=	0x0086
                           0000D3   408 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   409 _CRC0CNT	=	0x00d3
                           0000DE   410 G$CRC0DAT$0$0 == 0x00de
                           0000DE   411 _CRC0DAT	=	0x00de
                           0000CF   412 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   413 _CRC0FLIP	=	0x00cf
                           0000DD   414 G$CRC0IN$0$0 == 0x00dd
                           0000DD   415 _CRC0IN	=	0x00dd
                           0000D2   416 G$CRC0ST$0$0 == 0x00d2
                           0000D2   417 _CRC0ST	=	0x00d2
                           0000AD   418 G$DERIVID$0$0 == 0x00ad
                           0000AD   419 _DERIVID	=	0x00ad
                           0000B5   420 G$DEVICEID$0$0 == 0x00b5
                           0000B5   421 _DEVICEID	=	0x00b5
                           000083   422 G$DPH$0$0 == 0x0083
                           000083   423 _DPH	=	0x0083
                           000082   424 G$DPL$0$0 == 0x0082
                           000082   425 _DPL	=	0x0082
                           0000E6   426 G$EIE1$0$0 == 0x00e6
                           0000E6   427 _EIE1	=	0x00e6
                           0000CE   428 G$EIE2$0$0 == 0x00ce
                           0000CE   429 _EIE2	=	0x00ce
                           0000F3   430 G$EIP1$0$0 == 0x00f3
                           0000F3   431 _EIP1	=	0x00f3
                           0000F5   432 G$EIP1H$0$0 == 0x00f5
                           0000F5   433 _EIP1H	=	0x00f5
                           0000F4   434 G$EIP2$0$0 == 0x00f4
                           0000F4   435 _EIP2	=	0x00f4
                           0000F6   436 G$EIP2H$0$0 == 0x00f6
                           0000F6   437 _EIP2H	=	0x00f6
                           0000E7   438 G$EMI0CN$0$0 == 0x00e7
                           0000E7   439 _EMI0CN	=	0x00e7
                           0000B7   440 G$FLKEY$0$0 == 0x00b7
                           0000B7   441 _FLKEY	=	0x00b7
                           0000C7   442 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   443 _HFO0CAL	=	0x00c7
                           0000D6   444 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   445 _HFO1CAL	=	0x00d6
                           0000EF   446 G$HFOCN$0$0 == 0x00ef
                           0000EF   447 _HFOCN	=	0x00ef
                           0000BA   448 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   449 _I2C0CN0	=	0x00ba
                           0000BC   450 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   451 _I2C0DIN	=	0x00bc
                           0000BB   452 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   453 _I2C0DOUT	=	0x00bb
                           0000AD   454 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   455 _I2C0FCN0	=	0x00ad
                           0000AB   456 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   457 _I2C0FCN1	=	0x00ab
                           0000F5   458 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   459 _I2C0FCT	=	0x00f5
                           0000BD   460 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   461 _I2C0SLAD	=	0x00bd
                           0000B9   462 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   463 _I2C0STAT	=	0x00b9
                           0000A8   464 G$IE$0$0 == 0x00a8
                           0000A8   465 _IE	=	0x00a8
                           0000B8   466 G$IP$0$0 == 0x00b8
                           0000B8   467 _IP	=	0x00b8
                           0000F2   468 G$IPH$0$0 == 0x00f2
                           0000F2   469 _IPH	=	0x00f2
                           0000E4   470 G$IT01CF$0$0 == 0x00e4
                           0000E4   471 _IT01CF	=	0x00e4
                           0000B1   472 G$LFO0CN$0$0 == 0x00b1
                           0000B1   473 _LFO0CN	=	0x00b1
                           000080   474 G$P0$0$0 == 0x0080
                           000080   475 _P0	=	0x0080
                           0000FE   476 G$P0MASK$0$0 == 0x00fe
                           0000FE   477 _P0MASK	=	0x00fe
                           0000FD   478 G$P0MAT$0$0 == 0x00fd
                           0000FD   479 _P0MAT	=	0x00fd
                           0000F1   480 G$P0MDIN$0$0 == 0x00f1
                           0000F1   481 _P0MDIN	=	0x00f1
                           0000A4   482 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   483 _P0MDOUT	=	0x00a4
                           0000D4   484 G$P0SKIP$0$0 == 0x00d4
                           0000D4   485 _P0SKIP	=	0x00d4
                           000090   486 G$P1$0$0 == 0x0090
                           000090   487 _P1	=	0x0090
                           0000EE   488 G$P1MASK$0$0 == 0x00ee
                           0000EE   489 _P1MASK	=	0x00ee
                           0000ED   490 G$P1MAT$0$0 == 0x00ed
                           0000ED   491 _P1MAT	=	0x00ed
                           0000F2   492 G$P1MDIN$0$0 == 0x00f2
                           0000F2   493 _P1MDIN	=	0x00f2
                           0000A5   494 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   495 _P1MDOUT	=	0x00a5
                           0000D5   496 G$P1SKIP$0$0 == 0x00d5
                           0000D5   497 _P1SKIP	=	0x00d5
                           0000A0   498 G$P2$0$0 == 0x00a0
                           0000A0   499 _P2	=	0x00a0
                           0000FC   500 G$P2MASK$0$0 == 0x00fc
                           0000FC   501 _P2MASK	=	0x00fc
                           0000FB   502 G$P2MAT$0$0 == 0x00fb
                           0000FB   503 _P2MAT	=	0x00fb
                           0000F3   504 G$P2MDIN$0$0 == 0x00f3
                           0000F3   505 _P2MDIN	=	0x00f3
                           0000A6   506 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   507 _P2MDOUT	=	0x00a6
                           0000CC   508 G$P2SKIP$0$0 == 0x00cc
                           0000CC   509 _P2SKIP	=	0x00cc
                           0000B0   510 G$P3$0$0 == 0x00b0
                           0000B0   511 _P3	=	0x00b0
                           0000F4   512 G$P3MDIN$0$0 == 0x00f4
                           0000F4   513 _P3MDIN	=	0x00f4
                           00009C   514 G$P3MDOUT$0$0 == 0x009c
                           00009C   515 _P3MDOUT	=	0x009c
                           00009E   516 G$PCA0CENT$0$0 == 0x009e
                           00009E   517 _PCA0CENT	=	0x009e
                           00009C   518 G$PCA0CLR$0$0 == 0x009c
                           00009C   519 _PCA0CLR	=	0x009c
                           0000D8   520 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   521 _PCA0CN0	=	0x00d8
                           0000FC   522 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   523 _PCA0CPH0	=	0x00fc
                           0000EA   524 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   525 _PCA0CPH1	=	0x00ea
                           0000EC   526 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   527 _PCA0CPH2	=	0x00ec
                           0000FB   528 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   529 _PCA0CPL0	=	0x00fb
                           0000E9   530 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   531 _PCA0CPL1	=	0x00e9
                           0000EB   532 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   533 _PCA0CPL2	=	0x00eb
                           0000DA   534 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   535 _PCA0CPM0	=	0x00da
                           0000DB   536 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   537 _PCA0CPM1	=	0x00db
                           0000DC   538 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   539 _PCA0CPM2	=	0x00dc
                           0000FA   540 G$PCA0H$0$0 == 0x00fa
                           0000FA   541 _PCA0H	=	0x00fa
                           0000F9   542 G$PCA0L$0$0 == 0x00f9
                           0000F9   543 _PCA0L	=	0x00f9
                           0000D9   544 G$PCA0MD$0$0 == 0x00d9
                           0000D9   545 _PCA0MD	=	0x00d9
                           000096   546 G$PCA0POL$0$0 == 0x0096
                           000096   547 _PCA0POL	=	0x0096
                           0000F7   548 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   549 _PCA0PWM	=	0x00f7
                           000087   550 G$PCON0$0$0 == 0x0087
                           000087   551 _PCON0	=	0x0087
                           00009A   552 G$PCON1$0$0 == 0x009a
                           00009A   553 _PCON1	=	0x009a
                           0000C1   554 G$PFE0CN$0$0 == 0x00c1
                           0000C1   555 _PFE0CN	=	0x00c1
                           0000F6   556 G$PRTDRV$0$0 == 0x00f6
                           0000F6   557 _PRTDRV	=	0x00f6
                           00008F   558 G$PSCTL$0$0 == 0x008f
                           00008F   559 _PSCTL	=	0x008f
                           0000D0   560 G$PSW$0$0 == 0x00d0
                           0000D0   561 _PSW	=	0x00d0
                           0000D1   562 G$REF0CN$0$0 == 0x00d1
                           0000D1   563 _REF0CN	=	0x00d1
                           0000C9   564 G$REG0CN$0$0 == 0x00c9
                           0000C9   565 _REG0CN	=	0x00c9
                           0000C6   566 G$REG1CN$0$0 == 0x00c6
                           0000C6   567 _REG1CN	=	0x00c6
                           0000B6   568 G$REVID$0$0 == 0x00b6
                           0000B6   569 _REVID	=	0x00b6
                           0000EF   570 G$RSTSRC$0$0 == 0x00ef
                           0000EF   571 _RSTSRC	=	0x00ef
                           000094   572 G$SBCON1$0$0 == 0x0094
                           000094   573 _SBCON1	=	0x0094
                           000096   574 G$SBRLH1$0$0 == 0x0096
                           000096   575 _SBRLH1	=	0x0096
                           000095   576 G$SBRLL1$0$0 == 0x0095
                           000095   577 _SBRLL1	=	0x0095
                           000099   578 G$SBUF0$0$0 == 0x0099
                           000099   579 _SBUF0	=	0x0099
                           000092   580 G$SBUF1$0$0 == 0x0092
                           000092   581 _SBUF1	=	0x0092
                           000098   582 G$SCON0$0$0 == 0x0098
                           000098   583 _SCON0	=	0x0098
                           0000C8   584 G$SCON1$0$0 == 0x00c8
                           0000C8   585 _SCON1	=	0x00c8
                           0000A7   586 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   587 _SFRPAGE	=	0x00a7
                           0000CF   588 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   589 _SFRPGCN	=	0x00cf
                           0000D7   590 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   591 _SFRSTACK	=	0x00d7
                           0000D6   592 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   593 _SMB0ADM	=	0x00d6
                           0000D7   594 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   595 _SMB0ADR	=	0x00d7
                           0000C1   596 G$SMB0CF$0$0 == 0x00c1
                           0000C1   597 _SMB0CF	=	0x00c1
                           0000C0   598 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   599 _SMB0CN0	=	0x00c0
                           0000C2   600 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   601 _SMB0DAT	=	0x00c2
                           0000C3   602 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   603 _SMB0FCN0	=	0x00c3
                           0000C4   604 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   605 _SMB0FCN1	=	0x00c4
                           0000EF   606 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   607 _SMB0FCT	=	0x00ef
                           0000C5   608 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   609 _SMB0RXLN	=	0x00c5
                           0000AC   610 G$SMB0TC$0$0 == 0x00ac
                           0000AC   611 _SMB0TC	=	0x00ac
                           000093   612 G$SMOD1$0$0 == 0x0093
                           000093   613 _SMOD1	=	0x0093
                           000081   614 G$SP$0$0 == 0x0081
                           000081   615 _SP	=	0x0081
                           0000A1   616 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   617 _SPI0CFG	=	0x00a1
                           0000A2   618 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   619 _SPI0CKR	=	0x00a2
                           0000F8   620 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   621 _SPI0CN0	=	0x00f8
                           0000A3   622 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   623 _SPI0DAT	=	0x00a3
                           00009A   624 G$SPI0FCN0$0$0 == 0x009a
                           00009A   625 _SPI0FCN0	=	0x009a
                           00009B   626 G$SPI0FCN1$0$0 == 0x009b
                           00009B   627 _SPI0FCN1	=	0x009b
                           0000F7   628 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   629 _SPI0FCT	=	0x00f7
                           000088   630 G$TCON$0$0 == 0x0088
                           000088   631 _TCON	=	0x0088
                           00008C   632 G$TH0$0$0 == 0x008c
                           00008C   633 _TH0	=	0x008c
                           00008D   634 G$TH1$0$0 == 0x008d
                           00008D   635 _TH1	=	0x008d
                           00008A   636 G$TL0$0$0 == 0x008a
                           00008A   637 _TL0	=	0x008a
                           00008B   638 G$TL1$0$0 == 0x008b
                           00008B   639 _TL1	=	0x008b
                           000089   640 G$TMOD$0$0 == 0x0089
                           000089   641 _TMOD	=	0x0089
                           0000C8   642 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   643 _TMR2CN0	=	0x00c8
                           0000FD   644 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   645 _TMR2CN1	=	0x00fd
                           0000CD   646 G$TMR2H$0$0 == 0x00cd
                           0000CD   647 _TMR2H	=	0x00cd
                           0000CC   648 G$TMR2L$0$0 == 0x00cc
                           0000CC   649 _TMR2L	=	0x00cc
                           0000CB   650 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   651 _TMR2RLH	=	0x00cb
                           0000CA   652 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   653 _TMR2RLL	=	0x00ca
                           000091   654 G$TMR3CN0$0$0 == 0x0091
                           000091   655 _TMR3CN0	=	0x0091
                           0000FE   656 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   657 _TMR3CN1	=	0x00fe
                           000095   658 G$TMR3H$0$0 == 0x0095
                           000095   659 _TMR3H	=	0x0095
                           000094   660 G$TMR3L$0$0 == 0x0094
                           000094   661 _TMR3L	=	0x0094
                           000093   662 G$TMR3RLH$0$0 == 0x0093
                           000093   663 _TMR3RLH	=	0x0093
                           000092   664 G$TMR3RLL$0$0 == 0x0092
                           000092   665 _TMR3RLL	=	0x0092
                           000098   666 G$TMR4CN0$0$0 == 0x0098
                           000098   667 _TMR4CN0	=	0x0098
                           0000FF   668 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   669 _TMR4CN1	=	0x00ff
                           0000A5   670 G$TMR4H$0$0 == 0x00a5
                           0000A5   671 _TMR4H	=	0x00a5
                           0000A4   672 G$TMR4L$0$0 == 0x00a4
                           0000A4   673 _TMR4L	=	0x00a4
                           0000A3   674 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   675 _TMR4RLH	=	0x00a3
                           0000A2   676 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   677 _TMR4RLL	=	0x00a2
                           00009D   678 G$UART1FCN0$0$0 == 0x009d
                           00009D   679 _UART1FCN0	=	0x009d
                           0000D8   680 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   681 _UART1FCN1	=	0x00d8
                           0000FA   682 G$UART1FCT$0$0 == 0x00fa
                           0000FA   683 _UART1FCT	=	0x00fa
                           00009E   684 G$UART1LIN$0$0 == 0x009e
                           00009E   685 _UART1LIN	=	0x009e
                           0000AE   686 G$USB0ADR$0$0 == 0x00ae
                           0000AE   687 _USB0ADR	=	0x00ae
                           0000B2   688 G$USB0AEC$0$0 == 0x00b2
                           0000B2   689 _USB0AEC	=	0x00b2
                           0000B6   690 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   691 _USB0CDCF	=	0x00b6
                           0000BE   692 G$USB0CDCN$0$0 == 0x00be
                           0000BE   693 _USB0CDCN	=	0x00be
                           0000BF   694 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   695 _USB0CDSTA	=	0x00bf
                           0000B5   696 G$USB0CF$0$0 == 0x00b5
                           0000B5   697 _USB0CF	=	0x00b5
                           0000AF   698 G$USB0DAT$0$0 == 0x00af
                           0000AF   699 _USB0DAT	=	0x00af
                           0000B3   700 G$USB0XCN$0$0 == 0x00b3
                           0000B3   701 _USB0XCN	=	0x00b3
                           0000FF   702 G$VDM0CN$0$0 == 0x00ff
                           0000FF   703 _VDM0CN	=	0x00ff
                           000097   704 G$WDTCN$0$0 == 0x0097
                           000097   705 _WDTCN	=	0x0097
                           0000E1   706 G$XBR0$0$0 == 0x00e1
                           0000E1   707 _XBR0	=	0x00e1
                           0000E2   708 G$XBR1$0$0 == 0x00e2
                           0000E2   709 _XBR1	=	0x00e2
                           0000E3   710 G$XBR2$0$0 == 0x00e3
                           0000E3   711 _XBR2	=	0x00e3
                           0000C3   712 G$ADC0GT$0$0 == 0x00c3
                           0000C3   713 _ADC0GT	=	0x00c3
                           0000BD   714 G$ADC0$0$0 == 0x00bd
                           0000BD   715 _ADC0	=	0x00bd
                           0000C5   716 G$ADC0LT$0$0 == 0x00c5
                           0000C5   717 _ADC0LT	=	0x00c5
                           000082   718 G$DP$0$0 == 0x0082
                           000082   719 _DP	=	0x0082
                           0000FB   720 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   721 _PCA0CP0	=	0x00fb
                           0000E9   722 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   723 _PCA0CP1	=	0x00e9
                           0000EB   724 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   725 _PCA0CP2	=	0x00eb
                           0000F9   726 G$PCA0$0$0 == 0x00f9
                           0000F9   727 _PCA0	=	0x00f9
                           000095   728 G$SBRL1$0$0 == 0x0095
                           000095   729 _SBRL1	=	0x0095
                           0000CC   730 G$TMR2$0$0 == 0x00cc
                           0000CC   731 _TMR2	=	0x00cc
                           0000CA   732 G$TMR2RL$0$0 == 0x00ca
                           0000CA   733 _TMR2RL	=	0x00ca
                           000094   734 G$TMR3$0$0 == 0x0094
                           000094   735 _TMR3	=	0x0094
                           000092   736 G$TMR3RL$0$0 == 0x0092
                           000092   737 _TMR3RL	=	0x0092
                           0000A4   738 G$TMR4$0$0 == 0x00a4
                           0000A4   739 _TMR4	=	0x00a4
                           0000A2   740 G$TMR4RL$0$0 == 0x00a2
                           0000A2   741 _TMR4RL	=	0x00a2
                           0000AA   742 G$_XPAGE$0$0 == 0x00aa
                           0000AA   743 __XPAGE	=	0x00aa
                                    744 ;--------------------------------------------------------
                                    745 ; special function bits
                                    746 ;--------------------------------------------------------
                                    747 	.area RSEG    (ABS,DATA)
      000000                        748 	.org 0x0000
                           0000E0   749 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   750 _ACC_ACC0	=	0x00e0
                           0000E1   751 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   752 _ACC_ACC1	=	0x00e1
                           0000E2   753 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   754 _ACC_ACC2	=	0x00e2
                           0000E3   755 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   756 _ACC_ACC3	=	0x00e3
                           0000E4   757 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   758 _ACC_ACC4	=	0x00e4
                           0000E5   759 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   760 _ACC_ACC5	=	0x00e5
                           0000E6   761 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   762 _ACC_ACC6	=	0x00e6
                           0000E7   763 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   764 _ACC_ACC7	=	0x00e7
                           0000E8   765 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   766 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   767 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   768 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   769 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   770 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   771 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   772 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   773 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   774 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   775 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   776 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   777 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   778 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   779 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   780 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   781 G$B_B0$0$0 == 0x00f0
                           0000F0   782 _B_B0	=	0x00f0
                           0000F1   783 G$B_B1$0$0 == 0x00f1
                           0000F1   784 _B_B1	=	0x00f1
                           0000F2   785 G$B_B2$0$0 == 0x00f2
                           0000F2   786 _B_B2	=	0x00f2
                           0000F3   787 G$B_B3$0$0 == 0x00f3
                           0000F3   788 _B_B3	=	0x00f3
                           0000F4   789 G$B_B4$0$0 == 0x00f4
                           0000F4   790 _B_B4	=	0x00f4
                           0000F5   791 G$B_B5$0$0 == 0x00f5
                           0000F5   792 _B_B5	=	0x00f5
                           0000F6   793 G$B_B6$0$0 == 0x00f6
                           0000F6   794 _B_B6	=	0x00f6
                           0000F7   795 G$B_B7$0$0 == 0x00f7
                           0000F7   796 _B_B7	=	0x00f7
                           0000A8   797 G$IE_EX0$0$0 == 0x00a8
                           0000A8   798 _IE_EX0	=	0x00a8
                           0000A9   799 G$IE_ET0$0$0 == 0x00a9
                           0000A9   800 _IE_ET0	=	0x00a9
                           0000AA   801 G$IE_EX1$0$0 == 0x00aa
                           0000AA   802 _IE_EX1	=	0x00aa
                           0000AB   803 G$IE_ET1$0$0 == 0x00ab
                           0000AB   804 _IE_ET1	=	0x00ab
                           0000AC   805 G$IE_ES0$0$0 == 0x00ac
                           0000AC   806 _IE_ES0	=	0x00ac
                           0000AD   807 G$IE_ET2$0$0 == 0x00ad
                           0000AD   808 _IE_ET2	=	0x00ad
                           0000AE   809 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   810 _IE_ESPI0	=	0x00ae
                           0000AF   811 G$IE_EA$0$0 == 0x00af
                           0000AF   812 _IE_EA	=	0x00af
                           0000B8   813 G$IP_PX0$0$0 == 0x00b8
                           0000B8   814 _IP_PX0	=	0x00b8
                           0000B9   815 G$IP_PT0$0$0 == 0x00b9
                           0000B9   816 _IP_PT0	=	0x00b9
                           0000BA   817 G$IP_PX1$0$0 == 0x00ba
                           0000BA   818 _IP_PX1	=	0x00ba
                           0000BB   819 G$IP_PT1$0$0 == 0x00bb
                           0000BB   820 _IP_PT1	=	0x00bb
                           0000BC   821 G$IP_PS0$0$0 == 0x00bc
                           0000BC   822 _IP_PS0	=	0x00bc
                           0000BD   823 G$IP_PT2$0$0 == 0x00bd
                           0000BD   824 _IP_PT2	=	0x00bd
                           0000BE   825 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   826 _IP_PSPI0	=	0x00be
                           000080   827 G$P0_B0$0$0 == 0x0080
                           000080   828 _P0_B0	=	0x0080
                           000081   829 G$P0_B1$0$0 == 0x0081
                           000081   830 _P0_B1	=	0x0081
                           000082   831 G$P0_B2$0$0 == 0x0082
                           000082   832 _P0_B2	=	0x0082
                           000083   833 G$P0_B3$0$0 == 0x0083
                           000083   834 _P0_B3	=	0x0083
                           000084   835 G$P0_B4$0$0 == 0x0084
                           000084   836 _P0_B4	=	0x0084
                           000085   837 G$P0_B5$0$0 == 0x0085
                           000085   838 _P0_B5	=	0x0085
                           000086   839 G$P0_B6$0$0 == 0x0086
                           000086   840 _P0_B6	=	0x0086
                           000087   841 G$P0_B7$0$0 == 0x0087
                           000087   842 _P0_B7	=	0x0087
                           000090   843 G$P1_B0$0$0 == 0x0090
                           000090   844 _P1_B0	=	0x0090
                           000091   845 G$P1_B1$0$0 == 0x0091
                           000091   846 _P1_B1	=	0x0091
                           000092   847 G$P1_B2$0$0 == 0x0092
                           000092   848 _P1_B2	=	0x0092
                           000093   849 G$P1_B3$0$0 == 0x0093
                           000093   850 _P1_B3	=	0x0093
                           000094   851 G$P1_B4$0$0 == 0x0094
                           000094   852 _P1_B4	=	0x0094
                           000095   853 G$P1_B5$0$0 == 0x0095
                           000095   854 _P1_B5	=	0x0095
                           000096   855 G$P1_B6$0$0 == 0x0096
                           000096   856 _P1_B6	=	0x0096
                           000097   857 G$P1_B7$0$0 == 0x0097
                           000097   858 _P1_B7	=	0x0097
                           0000A0   859 G$P2_B0$0$0 == 0x00a0
                           0000A0   860 _P2_B0	=	0x00a0
                           0000A1   861 G$P2_B1$0$0 == 0x00a1
                           0000A1   862 _P2_B1	=	0x00a1
                           0000A2   863 G$P2_B2$0$0 == 0x00a2
                           0000A2   864 _P2_B2	=	0x00a2
                           0000A3   865 G$P2_B3$0$0 == 0x00a3
                           0000A3   866 _P2_B3	=	0x00a3
                           0000B0   867 G$P3_B0$0$0 == 0x00b0
                           0000B0   868 _P3_B0	=	0x00b0
                           0000B1   869 G$P3_B1$0$0 == 0x00b1
                           0000B1   870 _P3_B1	=	0x00b1
                           0000D8   871 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   872 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   873 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   874 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   875 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   876 _PCA0CN0_CCF2	=	0x00da
                           0000DE   877 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   878 _PCA0CN0_CR	=	0x00de
                           0000DF   879 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   880 _PCA0CN0_CF	=	0x00df
                           0000D0   881 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   882 _PSW_PARITY	=	0x00d0
                           0000D1   883 G$PSW_F1$0$0 == 0x00d1
                           0000D1   884 _PSW_F1	=	0x00d1
                           0000D2   885 G$PSW_OV$0$0 == 0x00d2
                           0000D2   886 _PSW_OV	=	0x00d2
                           0000D3   887 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   888 _PSW_RS0	=	0x00d3
                           0000D4   889 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   890 _PSW_RS1	=	0x00d4
                           0000D5   891 G$PSW_F0$0$0 == 0x00d5
                           0000D5   892 _PSW_F0	=	0x00d5
                           0000D6   893 G$PSW_AC$0$0 == 0x00d6
                           0000D6   894 _PSW_AC	=	0x00d6
                           0000D7   895 G$PSW_CY$0$0 == 0x00d7
                           0000D7   896 _PSW_CY	=	0x00d7
                           000098   897 G$SCON0_RI$0$0 == 0x0098
                           000098   898 _SCON0_RI	=	0x0098
                           000099   899 G$SCON0_TI$0$0 == 0x0099
                           000099   900 _SCON0_TI	=	0x0099
                           00009A   901 G$SCON0_RB8$0$0 == 0x009a
                           00009A   902 _SCON0_RB8	=	0x009a
                           00009B   903 G$SCON0_TB8$0$0 == 0x009b
                           00009B   904 _SCON0_TB8	=	0x009b
                           00009C   905 G$SCON0_REN$0$0 == 0x009c
                           00009C   906 _SCON0_REN	=	0x009c
                           00009D   907 G$SCON0_MCE$0$0 == 0x009d
                           00009D   908 _SCON0_MCE	=	0x009d
                           00009F   909 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   910 _SCON0_SMODE	=	0x009f
                           0000C8   911 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   912 _SCON1_RI	=	0x00c8
                           0000C9   913 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   914 _SCON1_TI	=	0x00c9
                           0000CA   915 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   916 _SCON1_RBX	=	0x00ca
                           0000CB   917 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   918 _SCON1_TBX	=	0x00cb
                           0000CC   919 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   920 _SCON1_REN	=	0x00cc
                           0000CE   921 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   922 _SCON1_PERR	=	0x00ce
                           0000CF   923 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   924 _SCON1_OVR	=	0x00cf
                           0000C0   925 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   926 _SMB0CN0_SI	=	0x00c0
                           0000C1   927 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   928 _SMB0CN0_ACK	=	0x00c1
                           0000C2   929 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   930 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   931 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   932 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   933 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   934 _SMB0CN0_STO	=	0x00c4
                           0000C5   935 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   936 _SMB0CN0_STA	=	0x00c5
                           0000C6   937 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   938 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   939 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   940 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   941 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   942 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   943 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   944 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   945 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   946 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   947 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   948 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   949 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   950 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   951 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   952 _SPI0CN0_MODF	=	0x00fd
                           0000FE   953 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   954 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   955 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   956 _SPI0CN0_SPIF	=	0x00ff
                           000088   957 G$TCON_IT0$0$0 == 0x0088
                           000088   958 _TCON_IT0	=	0x0088
                           000089   959 G$TCON_IE0$0$0 == 0x0089
                           000089   960 _TCON_IE0	=	0x0089
                           00008A   961 G$TCON_IT1$0$0 == 0x008a
                           00008A   962 _TCON_IT1	=	0x008a
                           00008B   963 G$TCON_IE1$0$0 == 0x008b
                           00008B   964 _TCON_IE1	=	0x008b
                           00008C   965 G$TCON_TR0$0$0 == 0x008c
                           00008C   966 _TCON_TR0	=	0x008c
                           00008D   967 G$TCON_TF0$0$0 == 0x008d
                           00008D   968 _TCON_TF0	=	0x008d
                           00008E   969 G$TCON_TR1$0$0 == 0x008e
                           00008E   970 _TCON_TR1	=	0x008e
                           00008F   971 G$TCON_TF1$0$0 == 0x008f
                           00008F   972 _TCON_TF1	=	0x008f
                           0000C8   973 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   974 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   975 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   976 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   977 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   978 _TMR2CN0_TR2	=	0x00ca
                           0000CB   979 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   980 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   981 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   982 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   983 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   984 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   985 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE   986 _TMR2CN0_TF2L	=	0x00ce
                           0000CF   987 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF   988 _TMR2CN0_TF2H	=	0x00cf
                           000098   989 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098   990 _TMR4CN0_T4XCLK0	=	0x0098
                           000099   991 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099   992 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A   993 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A   994 _TMR4CN0_TR4	=	0x009a
                           00009B   995 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B   996 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C   997 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C   998 _TMR4CN0_TF4CEN	=	0x009c
                           00009D   999 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1000 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1001 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1002 _TMR4CN0_TF4L	=	0x009e
                           00009F  1003 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1004 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1005 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1006 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1007 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1008 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1009 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1010 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1011 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1012 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1013 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1014 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1015 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1016 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1017 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1018 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1019 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1020 _UART1FCN1_TFRQ	=	0x00df
                                   1021 ;--------------------------------------------------------
                                   1022 ; overlayable register banks
                                   1023 ;--------------------------------------------------------
                                   1024 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1025 	.ds 8
                                   1026 ;--------------------------------------------------------
                                   1027 ; internal ram data
                                   1028 ;--------------------------------------------------------
                                   1029 	.area DSEG    (DATA)
                                   1030 ;--------------------------------------------------------
                                   1031 ; overlayable items in internal ram 
                                   1032 ;--------------------------------------------------------
                                   1033 ;--------------------------------------------------------
                                   1034 ; indirectly addressable internal ram data
                                   1035 ;--------------------------------------------------------
                                   1036 	.area ISEG    (DATA)
                                   1037 ;--------------------------------------------------------
                                   1038 ; absolute internal ram data
                                   1039 ;--------------------------------------------------------
                                   1040 	.area IABS    (ABS,DATA)
                                   1041 	.area IABS    (ABS,DATA)
                                   1042 ;--------------------------------------------------------
                                   1043 ; bit data
                                   1044 ;--------------------------------------------------------
                                   1045 	.area BSEG    (BIT)
                                   1046 ;--------------------------------------------------------
                                   1047 ; paged external ram data
                                   1048 ;--------------------------------------------------------
                                   1049 	.area PSEG    (PAG,XDATA)
                                   1050 ;--------------------------------------------------------
                                   1051 ; external ram data
                                   1052 ;--------------------------------------------------------
                                   1053 	.area XSEG    (XDATA)
                                   1054 ;--------------------------------------------------------
                                   1055 ; absolute external ram data
                                   1056 ;--------------------------------------------------------
                                   1057 	.area XABS    (ABS,XDATA)
                                   1058 ;--------------------------------------------------------
                                   1059 ; external initialized ram data
                                   1060 ;--------------------------------------------------------
                                   1061 	.area XISEG   (XDATA)
                           000000  1062 Fdescriptors$myUsbStringTable_USEnglish$0$0==.
      0002FE                       1063 _myUsbStringTable_USEnglish:
      0002FE                       1064 	.ds 10
                                   1065 	.area HOME    (CODE)
                                   1066 	.area GSINIT0 (CODE)
                                   1067 	.area GSINIT1 (CODE)
                                   1068 	.area GSINIT2 (CODE)
                                   1069 	.area GSINIT3 (CODE)
                                   1070 	.area GSINIT4 (CODE)
                                   1071 	.area GSINIT5 (CODE)
                                   1072 	.area GSINIT  (CODE)
                                   1073 	.area GSFINAL (CODE)
                                   1074 	.area CSEG    (CODE)
                                   1075 ;--------------------------------------------------------
                                   1076 ; global & static initialisations
                                   1077 ;--------------------------------------------------------
                                   1078 	.area HOME    (CODE)
                                   1079 	.area GSINIT  (CODE)
                                   1080 	.area GSFINAL (CODE)
                                   1081 	.area GSINIT  (CODE)
                                   1082 ;--------------------------------------------------------
                                   1083 ; Home
                                   1084 ;--------------------------------------------------------
                                   1085 	.area HOME    (CODE)
                                   1086 	.area HOME    (CODE)
                                   1087 ;--------------------------------------------------------
                                   1088 ; code
                                   1089 ;--------------------------------------------------------
                                   1090 	.area CSEG    (CODE)
                                   1091 	.area CSEG    (CODE)
                                   1092 	.area CONST   (CODE)
                           000000  1093 G$ReportDescriptor0$0$0 == .
      005EBD                       1094 _ReportDescriptor0:
      005EBD 06                    1095 	.db #0x06	; 6
      005EBE D0                    1096 	.db #0xd0	; 208
      005EBF F1                    1097 	.db #0xf1	; 241
      005EC0 09                    1098 	.db #0x09	; 9
      005EC1 01                    1099 	.db #0x01	; 1
      005EC2 A1                    1100 	.db #0xa1	; 161
      005EC3 01                    1101 	.db #0x01	; 1
      005EC4 09                    1102 	.db #0x09	; 9
      005EC5 20                    1103 	.db #0x20	; 32
      005EC6 15                    1104 	.db #0x15	; 21
      005EC7 00                    1105 	.db #0x00	; 0
      005EC8 26                    1106 	.db #0x26	; 38
      005EC9 FF                    1107 	.db #0xff	; 255
      005ECA 00                    1108 	.db #0x00	; 0
      005ECB 75                    1109 	.db #0x75	; 117	'u'
      005ECC 08                    1110 	.db #0x08	; 8
      005ECD 95                    1111 	.db #0x95	; 149
      005ECE 40                    1112 	.db #0x40	; 64
      005ECF 81                    1113 	.db #0x81	; 129
      005ED0 02                    1114 	.db #0x02	; 2
      005ED1 09                    1115 	.db #0x09	; 9
      005ED2 21                    1116 	.db #0x21	; 33
      005ED3 15                    1117 	.db #0x15	; 21
      005ED4 00                    1118 	.db #0x00	; 0
      005ED5 26                    1119 	.db #0x26	; 38
      005ED6 FF                    1120 	.db #0xff	; 255
      005ED7 00                    1121 	.db #0x00	; 0
      005ED8 75                    1122 	.db #0x75	; 117	'u'
      005ED9 08                    1123 	.db #0x08	; 8
      005EDA 95                    1124 	.db #0x95	; 149
      005EDB 40                    1125 	.db #0x40	; 64
      005EDC 91                    1126 	.db #0x91	; 145
      005EDD 02                    1127 	.db #0x02	; 2
      005EDE C0                    1128 	.db #0xc0	; 192
                           000022  1129 G$deviceDesc$0$0 == .
      005EDF                       1130 _deviceDesc:
      005EDF 12                    1131 	.db #0x12	; 18
      005EE0 01                    1132 	.db #0x01	; 1
      005EE1 00                    1133 	.db #0x00	; 0
      005EE2 00                    1134 	.db #0x00	; 0
      005EE3 00                    1135 	.db #0x00	; 0
      005EE4 00                    1136 	.db #0x00	; 0
      005EE5 40                    1137 	.db #0x40	; 64
      005EE6 C4                    1138 	.db #0xc4	; 196
      005EE7 CF                    1139 	.db #0xcf	; 207
      005EE8 00                    1140 	.db #0x00	; 0
      005EE9 01                    1141 	.db #0x01	; 1
      005EEA 02                    1142 	.db #0x02	; 2
      005EEB 03                    1143 	.db #0x03	; 3
      005EEC 01                    1144 	.db #0x01	; 1
                           000030  1145 G$configDesc$0$0 == .
      005EED                       1146 _configDesc:
      005EED 09                    1147 	.db #0x09	; 9
      005EEE 02                    1148 	.db #0x02	; 2
      005EEF 29                    1149 	.db #0x29	; 41
      005EF0 00                    1150 	.db #0x00	; 0
      005EF1 01                    1151 	.db #0x01	; 1
      005EF2 01                    1152 	.db #0x01	; 1
      005EF3 00                    1153 	.db #0x00	; 0
      005EF4 80                    1154 	.db #0x80	; 128
      005EF5 32                    1155 	.db #0x32	; 50	'2'
      005EF6 09                    1156 	.db #0x09	; 9
      005EF7 04                    1157 	.db #0x04	; 4
      005EF8 00                    1158 	.db #0x00	; 0
      005EF9 00                    1159 	.db #0x00	; 0
      005EFA 02                    1160 	.db #0x02	; 2
      005EFB 03                    1161 	.db #0x03	; 3
      005EFC 00                    1162 	.db #0x00	; 0
      005EFD 00                    1163 	.db #0x00	; 0
      005EFE 04                    1164 	.db #0x04	; 4
      005EFF 09                    1165 	.db #0x09	; 9
      005F00 21                    1166 	.db #0x21	; 33
      005F01 11                    1167 	.db #0x11	; 17
      005F02 01                    1168 	.db #0x01	; 1
      005F03 00                    1169 	.db #0x00	; 0
      005F04 01                    1170 	.db #0x01	; 1
      005F05 22                    1171 	.db #0x22	; 34
      005F06 22                    1172 	.db #0x22	; 34
      005F07 00                    1173 	.db #0x00	; 0
      005F08 07                    1174 	.db #0x07	; 7
      005F09 05                    1175 	.db #0x05	; 5
      005F0A 81                    1176 	.db #0x81	; 129
      005F0B 03                    1177 	.db #0x03	; 3
      005F0C 40                    1178 	.db #0x40	; 64
      005F0D 00                    1179 	.db #0x00	; 0
      005F0E 05                    1180 	.db #0x05	; 5
      005F0F 07                    1181 	.db #0x07	; 7
      005F10 05                    1182 	.db #0x05	; 5
      005F11 01                    1183 	.db #0x01	; 1
      005F12 03                    1184 	.db #0x03	; 3
      005F13 40                    1185 	.db #0x40	; 64
      005F14 00                    1186 	.db #0x00	; 0
      005F15 05                    1187 	.db #0x05	; 5
                           000059  1188 Fdescriptors$langDesc$0$0 == .
      005F16                       1189 _langDesc:
      005F16 03 04                 1190 	.byte #0x03,#0x04	; 1027
      005F18 09 04                 1191 	.byte #0x09,#0x04	; 1033
                           00005D  1192 Fdescriptors$mfrDesc$0$0 == .
      005F1A                       1193 _mfrDesc:
      005F1A 01                    1194 	.db #0x01	; 1
      005F1B 1A                    1195 	.db #0x1a	; 26
      005F1C 03                    1196 	.db #0x03	; 3
      005F1D 53                    1197 	.db #0x53	; 83	'S'
      005F1E 69                    1198 	.db #0x69	; 105	'i'
      005F1F 6C                    1199 	.db #0x6c	; 108	'l'
      005F20 69                    1200 	.db #0x69	; 105	'i'
      005F21 63                    1201 	.db #0x63	; 99	'c'
      005F22 6F                    1202 	.db #0x6f	; 111	'o'
      005F23 6E                    1203 	.db #0x6e	; 110	'n'
      005F24 20                    1204 	.db #0x20	; 32
      005F25 4C                    1205 	.db #0x4c	; 76	'L'
      005F26 61                    1206 	.db #0x61	; 97	'a'
      005F27 62                    1207 	.db #0x62	; 98	'b'
      005F28 73                    1208 	.db #0x73	; 115	's'
      005F29 00                    1209 	.db #0x00	; 0
                           00006D  1210 Fdescriptors$prodDesc$0$0 == .
      005F2A                       1211 _prodDesc:
      005F2A 01                    1212 	.db #0x01	; 1
      005F2B 12                    1213 	.db #0x12	; 18
      005F2C 03                    1214 	.db #0x03	; 3
      005F2D 55                    1215 	.db #0x55	; 85	'U'
      005F2E 32                    1216 	.db #0x32	; 50	'2'
      005F2F 46                    1217 	.db #0x46	; 70	'F'
      005F30 20                    1218 	.db #0x20	; 32
      005F31 5A                    1219 	.db #0x5a	; 90	'Z'
      005F32 65                    1220 	.db #0x65	; 101	'e'
      005F33 72                    1221 	.db #0x72	; 114	'r'
      005F34 6F                    1222 	.db #0x6f	; 111	'o'
      005F35 00                    1223 	.db #0x00	; 0
                           000079  1224 Fdescriptors$serDesc$0$0 == .
      005F36                       1225 _serDesc:
      005F36 01                    1226 	.db #0x01	; 1
      005F37 22                    1227 	.db #0x22	; 34
      005F38 03                    1228 	.db #0x03	; 3
      005F39 43                    1229 	.db #0x43	; 67	'C'
      005F3A 41                    1230 	.db #0x41	; 65	'A'
      005F3B 46                    1231 	.db #0x46	; 70	'F'
      005F3C 45                    1232 	.db #0x45	; 69	'E'
      005F3D 42                    1233 	.db #0x42	; 66	'B'
      005F3E 41                    1234 	.db #0x41	; 65	'A'
      005F3F 42                    1235 	.db #0x42	; 66	'B'
      005F40 45                    1236 	.db #0x45	; 69	'E'
      005F41 46                    1237 	.db #0x46	; 70	'F'
      005F42 46                    1238 	.db #0x46	; 70	'F'
      005F43 46                    1239 	.db #0x46	; 70	'F'
      005F44 46                    1240 	.db #0x46	; 70	'F'
      005F45 46                    1241 	.db #0x46	; 70	'F'
      005F46 46                    1242 	.db #0x46	; 70	'F'
      005F47 46                    1243 	.db #0x46	; 70	'F'
      005F48 46                    1244 	.db #0x46	; 70	'F'
      005F49 00                    1245 	.db #0x00	; 0
                           00008D  1246 Fdescriptors$int0Desc$0$0 == .
      005F4A                       1247 _int0Desc:
      005F4A 01                    1248 	.db #0x01	; 1
      005F4B 12                    1249 	.db #0x12	; 18
      005F4C 03                    1250 	.db #0x03	; 3
      005F4D 55                    1251 	.db #0x55	; 85	'U'
      005F4E 32                    1252 	.db #0x32	; 50	'2'
      005F4F 46                    1253 	.db #0x46	; 70	'F'
      005F50 20                    1254 	.db #0x20	; 32
      005F51 5A                    1255 	.db #0x5a	; 90	'Z'
      005F52 65                    1256 	.db #0x65	; 101	'e'
      005F53 72                    1257 	.db #0x72	; 114	'r'
      005F54 6F                    1258 	.db #0x6f	; 111	'o'
      005F55 00                    1259 	.db #0x00	; 0
                           000099  1260 G$initstruct$0$0 == .
      005F56                       1261 _initstruct:
      005F56 DF 5E 80              1262 	.byte _deviceDesc, (_deviceDesc >> 8),#0x80
      005F59 ED 5E 80              1263 	.byte _configDesc, (_configDesc >> 8),#0x80
      005F5C FE 02 00              1264 	.byte _myUsbStringTable_USEnglish, (_myUsbStringTable_USEnglish >> 8),#0x00
      005F5F 03                    1265 	.db #0x03	; 3
                                   1266 	.area XINIT   (CODE)
                           000000  1267 Fdescriptors$__xinit_myUsbStringTable_USEnglish$0$0 == .
      006189                       1268 __xinit__myUsbStringTable_USEnglish:
      006189 16 5F                 1269 	.byte _langDesc, (_langDesc >> 8)
      00618B 1A 5F                 1270 	.byte _mfrDesc, (_mfrDesc >> 8)
      00618D 2A 5F                 1271 	.byte _prodDesc, (_prodDesc >> 8)
      00618F 36 5F                 1272 	.byte _serDesc, (_serDesc >> 8)
      006191 4A 5F                 1273 	.byte _int0Desc, (_int0Desc >> 8)
                                   1274 	.area CABS    (ABS,CODE)
