                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb_0
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
                                    343 	.globl _USB_SetIndex
                                    344 	.globl _USB_GetCommonInts
                                    345 	.globl _USB_GetInInts
                                    346 	.globl _USB_GetOutInts
                                    347 	.globl _USB_GetIndex
                                    348 	.globl _USB_IsSuspended
                                    349 	.globl _USB_GetSetupEnd
                                    350 	.globl _USB_Ep0SentStall
                                    351 	.globl _USB_Ep0OutPacketReady
                                    352 	.globl _USB_Ep0InPacketReady
                                    353 	.globl _USB_Ep0GetCount
                                    354 	.globl _USB_EpnInGetSentStall
                                    355 	.globl _USB_AbortInEp
                                    356 	.globl _USB_EpnOutGetSentStall
                                    357 	.globl _USB_EpnGetOutPacketReady
                                    358 	.globl _USB_EpOutGetCount
                                    359 	.globl _USB_AbortOutEp
                                    360 	.globl _USB_ActivateEp
                                    361 	.globl _USB_GetSofNumber
                                    362 	.globl _USB_GetIntsEnabled
                                    363 	.globl _USB_IsPrefetchEnabled
                                    364 	.globl _USB_IsRegulatorEnabled
                                    365 	.globl _USB_SuspendOscillator
                                    366 ;--------------------------------------------------------
                                    367 ; special function registers
                                    368 ;--------------------------------------------------------
                                    369 	.area RSEG    (ABS,DATA)
      000000                        370 	.org 0x0000
                           0000E0   371 G$ACC$0$0 == 0x00e0
                           0000E0   372 _ACC	=	0x00e0
                           0000B3   373 G$ADC0AC$0$0 == 0x00b3
                           0000B3   374 _ADC0AC	=	0x00b3
                           0000BC   375 G$ADC0CF$0$0 == 0x00bc
                           0000BC   376 _ADC0CF	=	0x00bc
                           0000E8   377 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   378 _ADC0CN0	=	0x00e8
                           0000B2   379 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   380 _ADC0CN1	=	0x00b2
                           0000C4   381 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   382 _ADC0GTH	=	0x00c4
                           0000C3   383 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   384 _ADC0GTL	=	0x00c3
                           0000BE   385 G$ADC0H$0$0 == 0x00be
                           0000BE   386 _ADC0H	=	0x00be
                           0000BD   387 G$ADC0L$0$0 == 0x00bd
                           0000BD   388 _ADC0L	=	0x00bd
                           0000C6   389 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   390 _ADC0LTH	=	0x00c6
                           0000C5   391 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   392 _ADC0LTL	=	0x00c5
                           0000BB   393 G$ADC0MX$0$0 == 0x00bb
                           0000BB   394 _ADC0MX	=	0x00bb
                           0000DF   395 G$ADC0PWR$0$0 == 0x00df
                           0000DF   396 _ADC0PWR	=	0x00df
                           0000B9   397 G$ADC0TK$0$0 == 0x00b9
                           0000B9   398 _ADC0TK	=	0x00b9
                           0000F0   399 G$B$0$0 == 0x00f0
                           0000F0   400 _B	=	0x00f0
                           00008E   401 G$CKCON0$0$0 == 0x008e
                           00008E   402 _CKCON0	=	0x008e
                           0000A6   403 G$CKCON1$0$0 == 0x00a6
                           0000A6   404 _CKCON1	=	0x00a6
                           0000A9   405 G$CLKSEL$0$0 == 0x00a9
                           0000A9   406 _CLKSEL	=	0x00a9
                           00009B   407 G$CMP0CN0$0$0 == 0x009b
                           00009B   408 _CMP0CN0	=	0x009b
                           000099   409 G$CMP0CN1$0$0 == 0x0099
                           000099   410 _CMP0CN1	=	0x0099
                           00009D   411 G$CMP0MD$0$0 == 0x009d
                           00009D   412 _CMP0MD	=	0x009d
                           00009F   413 G$CMP0MX$0$0 == 0x009f
                           00009F   414 _CMP0MX	=	0x009f
                           0000BF   415 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   416 _CMP1CN0	=	0x00bf
                           0000AC   417 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   418 _CMP1CN1	=	0x00ac
                           0000AB   419 G$CMP1MD$0$0 == 0x00ab
                           0000AB   420 _CMP1MD	=	0x00ab
                           0000AA   421 G$CMP1MX$0$0 == 0x00aa
                           0000AA   422 _CMP1MX	=	0x00aa
                           0000CE   423 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   424 _CRC0CN0	=	0x00ce
                           000086   425 G$CRC0CN1$0$0 == 0x0086
                           000086   426 _CRC0CN1	=	0x0086
                           0000D3   427 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   428 _CRC0CNT	=	0x00d3
                           0000DE   429 G$CRC0DAT$0$0 == 0x00de
                           0000DE   430 _CRC0DAT	=	0x00de
                           0000CF   431 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   432 _CRC0FLIP	=	0x00cf
                           0000DD   433 G$CRC0IN$0$0 == 0x00dd
                           0000DD   434 _CRC0IN	=	0x00dd
                           0000D2   435 G$CRC0ST$0$0 == 0x00d2
                           0000D2   436 _CRC0ST	=	0x00d2
                           0000AD   437 G$DERIVID$0$0 == 0x00ad
                           0000AD   438 _DERIVID	=	0x00ad
                           0000B5   439 G$DEVICEID$0$0 == 0x00b5
                           0000B5   440 _DEVICEID	=	0x00b5
                           000083   441 G$DPH$0$0 == 0x0083
                           000083   442 _DPH	=	0x0083
                           000082   443 G$DPL$0$0 == 0x0082
                           000082   444 _DPL	=	0x0082
                           0000E6   445 G$EIE1$0$0 == 0x00e6
                           0000E6   446 _EIE1	=	0x00e6
                           0000CE   447 G$EIE2$0$0 == 0x00ce
                           0000CE   448 _EIE2	=	0x00ce
                           0000F3   449 G$EIP1$0$0 == 0x00f3
                           0000F3   450 _EIP1	=	0x00f3
                           0000F5   451 G$EIP1H$0$0 == 0x00f5
                           0000F5   452 _EIP1H	=	0x00f5
                           0000F4   453 G$EIP2$0$0 == 0x00f4
                           0000F4   454 _EIP2	=	0x00f4
                           0000F6   455 G$EIP2H$0$0 == 0x00f6
                           0000F6   456 _EIP2H	=	0x00f6
                           0000E7   457 G$EMI0CN$0$0 == 0x00e7
                           0000E7   458 _EMI0CN	=	0x00e7
                           0000B7   459 G$FLKEY$0$0 == 0x00b7
                           0000B7   460 _FLKEY	=	0x00b7
                           0000C7   461 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   462 _HFO0CAL	=	0x00c7
                           0000D6   463 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   464 _HFO1CAL	=	0x00d6
                           0000EF   465 G$HFOCN$0$0 == 0x00ef
                           0000EF   466 _HFOCN	=	0x00ef
                           0000BA   467 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   468 _I2C0CN0	=	0x00ba
                           0000BC   469 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   470 _I2C0DIN	=	0x00bc
                           0000BB   471 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   472 _I2C0DOUT	=	0x00bb
                           0000AD   473 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   474 _I2C0FCN0	=	0x00ad
                           0000AB   475 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   476 _I2C0FCN1	=	0x00ab
                           0000F5   477 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   478 _I2C0FCT	=	0x00f5
                           0000BD   479 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   480 _I2C0SLAD	=	0x00bd
                           0000B9   481 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   482 _I2C0STAT	=	0x00b9
                           0000A8   483 G$IE$0$0 == 0x00a8
                           0000A8   484 _IE	=	0x00a8
                           0000B8   485 G$IP$0$0 == 0x00b8
                           0000B8   486 _IP	=	0x00b8
                           0000F2   487 G$IPH$0$0 == 0x00f2
                           0000F2   488 _IPH	=	0x00f2
                           0000E4   489 G$IT01CF$0$0 == 0x00e4
                           0000E4   490 _IT01CF	=	0x00e4
                           0000B1   491 G$LFO0CN$0$0 == 0x00b1
                           0000B1   492 _LFO0CN	=	0x00b1
                           000080   493 G$P0$0$0 == 0x0080
                           000080   494 _P0	=	0x0080
                           0000FE   495 G$P0MASK$0$0 == 0x00fe
                           0000FE   496 _P0MASK	=	0x00fe
                           0000FD   497 G$P0MAT$0$0 == 0x00fd
                           0000FD   498 _P0MAT	=	0x00fd
                           0000F1   499 G$P0MDIN$0$0 == 0x00f1
                           0000F1   500 _P0MDIN	=	0x00f1
                           0000A4   501 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   502 _P0MDOUT	=	0x00a4
                           0000D4   503 G$P0SKIP$0$0 == 0x00d4
                           0000D4   504 _P0SKIP	=	0x00d4
                           000090   505 G$P1$0$0 == 0x0090
                           000090   506 _P1	=	0x0090
                           0000EE   507 G$P1MASK$0$0 == 0x00ee
                           0000EE   508 _P1MASK	=	0x00ee
                           0000ED   509 G$P1MAT$0$0 == 0x00ed
                           0000ED   510 _P1MAT	=	0x00ed
                           0000F2   511 G$P1MDIN$0$0 == 0x00f2
                           0000F2   512 _P1MDIN	=	0x00f2
                           0000A5   513 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   514 _P1MDOUT	=	0x00a5
                           0000D5   515 G$P1SKIP$0$0 == 0x00d5
                           0000D5   516 _P1SKIP	=	0x00d5
                           0000A0   517 G$P2$0$0 == 0x00a0
                           0000A0   518 _P2	=	0x00a0
                           0000FC   519 G$P2MASK$0$0 == 0x00fc
                           0000FC   520 _P2MASK	=	0x00fc
                           0000FB   521 G$P2MAT$0$0 == 0x00fb
                           0000FB   522 _P2MAT	=	0x00fb
                           0000F3   523 G$P2MDIN$0$0 == 0x00f3
                           0000F3   524 _P2MDIN	=	0x00f3
                           0000A6   525 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   526 _P2MDOUT	=	0x00a6
                           0000CC   527 G$P2SKIP$0$0 == 0x00cc
                           0000CC   528 _P2SKIP	=	0x00cc
                           0000B0   529 G$P3$0$0 == 0x00b0
                           0000B0   530 _P3	=	0x00b0
                           0000F4   531 G$P3MDIN$0$0 == 0x00f4
                           0000F4   532 _P3MDIN	=	0x00f4
                           00009C   533 G$P3MDOUT$0$0 == 0x009c
                           00009C   534 _P3MDOUT	=	0x009c
                           00009E   535 G$PCA0CENT$0$0 == 0x009e
                           00009E   536 _PCA0CENT	=	0x009e
                           00009C   537 G$PCA0CLR$0$0 == 0x009c
                           00009C   538 _PCA0CLR	=	0x009c
                           0000D8   539 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   540 _PCA0CN0	=	0x00d8
                           0000FC   541 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   542 _PCA0CPH0	=	0x00fc
                           0000EA   543 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   544 _PCA0CPH1	=	0x00ea
                           0000EC   545 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   546 _PCA0CPH2	=	0x00ec
                           0000FB   547 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   548 _PCA0CPL0	=	0x00fb
                           0000E9   549 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   550 _PCA0CPL1	=	0x00e9
                           0000EB   551 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   552 _PCA0CPL2	=	0x00eb
                           0000DA   553 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   554 _PCA0CPM0	=	0x00da
                           0000DB   555 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   556 _PCA0CPM1	=	0x00db
                           0000DC   557 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   558 _PCA0CPM2	=	0x00dc
                           0000FA   559 G$PCA0H$0$0 == 0x00fa
                           0000FA   560 _PCA0H	=	0x00fa
                           0000F9   561 G$PCA0L$0$0 == 0x00f9
                           0000F9   562 _PCA0L	=	0x00f9
                           0000D9   563 G$PCA0MD$0$0 == 0x00d9
                           0000D9   564 _PCA0MD	=	0x00d9
                           000096   565 G$PCA0POL$0$0 == 0x0096
                           000096   566 _PCA0POL	=	0x0096
                           0000F7   567 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   568 _PCA0PWM	=	0x00f7
                           000087   569 G$PCON0$0$0 == 0x0087
                           000087   570 _PCON0	=	0x0087
                           00009A   571 G$PCON1$0$0 == 0x009a
                           00009A   572 _PCON1	=	0x009a
                           0000C1   573 G$PFE0CN$0$0 == 0x00c1
                           0000C1   574 _PFE0CN	=	0x00c1
                           0000F6   575 G$PRTDRV$0$0 == 0x00f6
                           0000F6   576 _PRTDRV	=	0x00f6
                           00008F   577 G$PSCTL$0$0 == 0x008f
                           00008F   578 _PSCTL	=	0x008f
                           0000D0   579 G$PSW$0$0 == 0x00d0
                           0000D0   580 _PSW	=	0x00d0
                           0000D1   581 G$REF0CN$0$0 == 0x00d1
                           0000D1   582 _REF0CN	=	0x00d1
                           0000C9   583 G$REG0CN$0$0 == 0x00c9
                           0000C9   584 _REG0CN	=	0x00c9
                           0000C6   585 G$REG1CN$0$0 == 0x00c6
                           0000C6   586 _REG1CN	=	0x00c6
                           0000B6   587 G$REVID$0$0 == 0x00b6
                           0000B6   588 _REVID	=	0x00b6
                           0000EF   589 G$RSTSRC$0$0 == 0x00ef
                           0000EF   590 _RSTSRC	=	0x00ef
                           000094   591 G$SBCON1$0$0 == 0x0094
                           000094   592 _SBCON1	=	0x0094
                           000096   593 G$SBRLH1$0$0 == 0x0096
                           000096   594 _SBRLH1	=	0x0096
                           000095   595 G$SBRLL1$0$0 == 0x0095
                           000095   596 _SBRLL1	=	0x0095
                           000099   597 G$SBUF0$0$0 == 0x0099
                           000099   598 _SBUF0	=	0x0099
                           000092   599 G$SBUF1$0$0 == 0x0092
                           000092   600 _SBUF1	=	0x0092
                           000098   601 G$SCON0$0$0 == 0x0098
                           000098   602 _SCON0	=	0x0098
                           0000C8   603 G$SCON1$0$0 == 0x00c8
                           0000C8   604 _SCON1	=	0x00c8
                           0000A7   605 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   606 _SFRPAGE	=	0x00a7
                           0000CF   607 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   608 _SFRPGCN	=	0x00cf
                           0000D7   609 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   610 _SFRSTACK	=	0x00d7
                           0000D6   611 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   612 _SMB0ADM	=	0x00d6
                           0000D7   613 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   614 _SMB0ADR	=	0x00d7
                           0000C1   615 G$SMB0CF$0$0 == 0x00c1
                           0000C1   616 _SMB0CF	=	0x00c1
                           0000C0   617 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   618 _SMB0CN0	=	0x00c0
                           0000C2   619 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   620 _SMB0DAT	=	0x00c2
                           0000C3   621 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   622 _SMB0FCN0	=	0x00c3
                           0000C4   623 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   624 _SMB0FCN1	=	0x00c4
                           0000EF   625 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   626 _SMB0FCT	=	0x00ef
                           0000C5   627 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   628 _SMB0RXLN	=	0x00c5
                           0000AC   629 G$SMB0TC$0$0 == 0x00ac
                           0000AC   630 _SMB0TC	=	0x00ac
                           000093   631 G$SMOD1$0$0 == 0x0093
                           000093   632 _SMOD1	=	0x0093
                           000081   633 G$SP$0$0 == 0x0081
                           000081   634 _SP	=	0x0081
                           0000A1   635 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   636 _SPI0CFG	=	0x00a1
                           0000A2   637 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   638 _SPI0CKR	=	0x00a2
                           0000F8   639 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   640 _SPI0CN0	=	0x00f8
                           0000A3   641 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   642 _SPI0DAT	=	0x00a3
                           00009A   643 G$SPI0FCN0$0$0 == 0x009a
                           00009A   644 _SPI0FCN0	=	0x009a
                           00009B   645 G$SPI0FCN1$0$0 == 0x009b
                           00009B   646 _SPI0FCN1	=	0x009b
                           0000F7   647 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   648 _SPI0FCT	=	0x00f7
                           000088   649 G$TCON$0$0 == 0x0088
                           000088   650 _TCON	=	0x0088
                           00008C   651 G$TH0$0$0 == 0x008c
                           00008C   652 _TH0	=	0x008c
                           00008D   653 G$TH1$0$0 == 0x008d
                           00008D   654 _TH1	=	0x008d
                           00008A   655 G$TL0$0$0 == 0x008a
                           00008A   656 _TL0	=	0x008a
                           00008B   657 G$TL1$0$0 == 0x008b
                           00008B   658 _TL1	=	0x008b
                           000089   659 G$TMOD$0$0 == 0x0089
                           000089   660 _TMOD	=	0x0089
                           0000C8   661 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   662 _TMR2CN0	=	0x00c8
                           0000FD   663 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   664 _TMR2CN1	=	0x00fd
                           0000CD   665 G$TMR2H$0$0 == 0x00cd
                           0000CD   666 _TMR2H	=	0x00cd
                           0000CC   667 G$TMR2L$0$0 == 0x00cc
                           0000CC   668 _TMR2L	=	0x00cc
                           0000CB   669 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   670 _TMR2RLH	=	0x00cb
                           0000CA   671 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   672 _TMR2RLL	=	0x00ca
                           000091   673 G$TMR3CN0$0$0 == 0x0091
                           000091   674 _TMR3CN0	=	0x0091
                           0000FE   675 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   676 _TMR3CN1	=	0x00fe
                           000095   677 G$TMR3H$0$0 == 0x0095
                           000095   678 _TMR3H	=	0x0095
                           000094   679 G$TMR3L$0$0 == 0x0094
                           000094   680 _TMR3L	=	0x0094
                           000093   681 G$TMR3RLH$0$0 == 0x0093
                           000093   682 _TMR3RLH	=	0x0093
                           000092   683 G$TMR3RLL$0$0 == 0x0092
                           000092   684 _TMR3RLL	=	0x0092
                           000098   685 G$TMR4CN0$0$0 == 0x0098
                           000098   686 _TMR4CN0	=	0x0098
                           0000FF   687 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   688 _TMR4CN1	=	0x00ff
                           0000A5   689 G$TMR4H$0$0 == 0x00a5
                           0000A5   690 _TMR4H	=	0x00a5
                           0000A4   691 G$TMR4L$0$0 == 0x00a4
                           0000A4   692 _TMR4L	=	0x00a4
                           0000A3   693 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   694 _TMR4RLH	=	0x00a3
                           0000A2   695 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   696 _TMR4RLL	=	0x00a2
                           00009D   697 G$UART1FCN0$0$0 == 0x009d
                           00009D   698 _UART1FCN0	=	0x009d
                           0000D8   699 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   700 _UART1FCN1	=	0x00d8
                           0000FA   701 G$UART1FCT$0$0 == 0x00fa
                           0000FA   702 _UART1FCT	=	0x00fa
                           00009E   703 G$UART1LIN$0$0 == 0x009e
                           00009E   704 _UART1LIN	=	0x009e
                           0000AE   705 G$USB0ADR$0$0 == 0x00ae
                           0000AE   706 _USB0ADR	=	0x00ae
                           0000B2   707 G$USB0AEC$0$0 == 0x00b2
                           0000B2   708 _USB0AEC	=	0x00b2
                           0000B6   709 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   710 _USB0CDCF	=	0x00b6
                           0000BE   711 G$USB0CDCN$0$0 == 0x00be
                           0000BE   712 _USB0CDCN	=	0x00be
                           0000BF   713 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   714 _USB0CDSTA	=	0x00bf
                           0000B5   715 G$USB0CF$0$0 == 0x00b5
                           0000B5   716 _USB0CF	=	0x00b5
                           0000AF   717 G$USB0DAT$0$0 == 0x00af
                           0000AF   718 _USB0DAT	=	0x00af
                           0000B3   719 G$USB0XCN$0$0 == 0x00b3
                           0000B3   720 _USB0XCN	=	0x00b3
                           0000FF   721 G$VDM0CN$0$0 == 0x00ff
                           0000FF   722 _VDM0CN	=	0x00ff
                           000097   723 G$WDTCN$0$0 == 0x0097
                           000097   724 _WDTCN	=	0x0097
                           0000E1   725 G$XBR0$0$0 == 0x00e1
                           0000E1   726 _XBR0	=	0x00e1
                           0000E2   727 G$XBR1$0$0 == 0x00e2
                           0000E2   728 _XBR1	=	0x00e2
                           0000E3   729 G$XBR2$0$0 == 0x00e3
                           0000E3   730 _XBR2	=	0x00e3
                           0000C3   731 G$ADC0GT$0$0 == 0x00c3
                           0000C3   732 _ADC0GT	=	0x00c3
                           0000BD   733 G$ADC0$0$0 == 0x00bd
                           0000BD   734 _ADC0	=	0x00bd
                           0000C5   735 G$ADC0LT$0$0 == 0x00c5
                           0000C5   736 _ADC0LT	=	0x00c5
                           000082   737 G$DP$0$0 == 0x0082
                           000082   738 _DP	=	0x0082
                           0000FB   739 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   740 _PCA0CP0	=	0x00fb
                           0000E9   741 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   742 _PCA0CP1	=	0x00e9
                           0000EB   743 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   744 _PCA0CP2	=	0x00eb
                           0000F9   745 G$PCA0$0$0 == 0x00f9
                           0000F9   746 _PCA0	=	0x00f9
                           000095   747 G$SBRL1$0$0 == 0x0095
                           000095   748 _SBRL1	=	0x0095
                           0000CC   749 G$TMR2$0$0 == 0x00cc
                           0000CC   750 _TMR2	=	0x00cc
                           0000CA   751 G$TMR2RL$0$0 == 0x00ca
                           0000CA   752 _TMR2RL	=	0x00ca
                           000094   753 G$TMR3$0$0 == 0x0094
                           000094   754 _TMR3	=	0x0094
                           000092   755 G$TMR3RL$0$0 == 0x0092
                           000092   756 _TMR3RL	=	0x0092
                           0000A4   757 G$TMR4$0$0 == 0x00a4
                           0000A4   758 _TMR4	=	0x00a4
                           0000A2   759 G$TMR4RL$0$0 == 0x00a2
                           0000A2   760 _TMR4RL	=	0x00a2
                           0000AA   761 G$_XPAGE$0$0 == 0x00aa
                           0000AA   762 __XPAGE	=	0x00aa
                                    763 ;--------------------------------------------------------
                                    764 ; special function bits
                                    765 ;--------------------------------------------------------
                                    766 	.area RSEG    (ABS,DATA)
      000000                        767 	.org 0x0000
                           0000E0   768 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   769 _ACC_ACC0	=	0x00e0
                           0000E1   770 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   771 _ACC_ACC1	=	0x00e1
                           0000E2   772 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   773 _ACC_ACC2	=	0x00e2
                           0000E3   774 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   775 _ACC_ACC3	=	0x00e3
                           0000E4   776 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   777 _ACC_ACC4	=	0x00e4
                           0000E5   778 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   779 _ACC_ACC5	=	0x00e5
                           0000E6   780 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   781 _ACC_ACC6	=	0x00e6
                           0000E7   782 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   783 _ACC_ACC7	=	0x00e7
                           0000E8   784 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   785 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   786 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   787 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   788 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   789 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   790 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   791 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   792 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   793 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   794 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   795 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   796 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   797 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   798 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   799 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   800 G$B_B0$0$0 == 0x00f0
                           0000F0   801 _B_B0	=	0x00f0
                           0000F1   802 G$B_B1$0$0 == 0x00f1
                           0000F1   803 _B_B1	=	0x00f1
                           0000F2   804 G$B_B2$0$0 == 0x00f2
                           0000F2   805 _B_B2	=	0x00f2
                           0000F3   806 G$B_B3$0$0 == 0x00f3
                           0000F3   807 _B_B3	=	0x00f3
                           0000F4   808 G$B_B4$0$0 == 0x00f4
                           0000F4   809 _B_B4	=	0x00f4
                           0000F5   810 G$B_B5$0$0 == 0x00f5
                           0000F5   811 _B_B5	=	0x00f5
                           0000F6   812 G$B_B6$0$0 == 0x00f6
                           0000F6   813 _B_B6	=	0x00f6
                           0000F7   814 G$B_B7$0$0 == 0x00f7
                           0000F7   815 _B_B7	=	0x00f7
                           0000A8   816 G$IE_EX0$0$0 == 0x00a8
                           0000A8   817 _IE_EX0	=	0x00a8
                           0000A9   818 G$IE_ET0$0$0 == 0x00a9
                           0000A9   819 _IE_ET0	=	0x00a9
                           0000AA   820 G$IE_EX1$0$0 == 0x00aa
                           0000AA   821 _IE_EX1	=	0x00aa
                           0000AB   822 G$IE_ET1$0$0 == 0x00ab
                           0000AB   823 _IE_ET1	=	0x00ab
                           0000AC   824 G$IE_ES0$0$0 == 0x00ac
                           0000AC   825 _IE_ES0	=	0x00ac
                           0000AD   826 G$IE_ET2$0$0 == 0x00ad
                           0000AD   827 _IE_ET2	=	0x00ad
                           0000AE   828 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   829 _IE_ESPI0	=	0x00ae
                           0000AF   830 G$IE_EA$0$0 == 0x00af
                           0000AF   831 _IE_EA	=	0x00af
                           0000B8   832 G$IP_PX0$0$0 == 0x00b8
                           0000B8   833 _IP_PX0	=	0x00b8
                           0000B9   834 G$IP_PT0$0$0 == 0x00b9
                           0000B9   835 _IP_PT0	=	0x00b9
                           0000BA   836 G$IP_PX1$0$0 == 0x00ba
                           0000BA   837 _IP_PX1	=	0x00ba
                           0000BB   838 G$IP_PT1$0$0 == 0x00bb
                           0000BB   839 _IP_PT1	=	0x00bb
                           0000BC   840 G$IP_PS0$0$0 == 0x00bc
                           0000BC   841 _IP_PS0	=	0x00bc
                           0000BD   842 G$IP_PT2$0$0 == 0x00bd
                           0000BD   843 _IP_PT2	=	0x00bd
                           0000BE   844 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   845 _IP_PSPI0	=	0x00be
                           000080   846 G$P0_B0$0$0 == 0x0080
                           000080   847 _P0_B0	=	0x0080
                           000081   848 G$P0_B1$0$0 == 0x0081
                           000081   849 _P0_B1	=	0x0081
                           000082   850 G$P0_B2$0$0 == 0x0082
                           000082   851 _P0_B2	=	0x0082
                           000083   852 G$P0_B3$0$0 == 0x0083
                           000083   853 _P0_B3	=	0x0083
                           000084   854 G$P0_B4$0$0 == 0x0084
                           000084   855 _P0_B4	=	0x0084
                           000085   856 G$P0_B5$0$0 == 0x0085
                           000085   857 _P0_B5	=	0x0085
                           000086   858 G$P0_B6$0$0 == 0x0086
                           000086   859 _P0_B6	=	0x0086
                           000087   860 G$P0_B7$0$0 == 0x0087
                           000087   861 _P0_B7	=	0x0087
                           000090   862 G$P1_B0$0$0 == 0x0090
                           000090   863 _P1_B0	=	0x0090
                           000091   864 G$P1_B1$0$0 == 0x0091
                           000091   865 _P1_B1	=	0x0091
                           000092   866 G$P1_B2$0$0 == 0x0092
                           000092   867 _P1_B2	=	0x0092
                           000093   868 G$P1_B3$0$0 == 0x0093
                           000093   869 _P1_B3	=	0x0093
                           000094   870 G$P1_B4$0$0 == 0x0094
                           000094   871 _P1_B4	=	0x0094
                           000095   872 G$P1_B5$0$0 == 0x0095
                           000095   873 _P1_B5	=	0x0095
                           000096   874 G$P1_B6$0$0 == 0x0096
                           000096   875 _P1_B6	=	0x0096
                           000097   876 G$P1_B7$0$0 == 0x0097
                           000097   877 _P1_B7	=	0x0097
                           0000A0   878 G$P2_B0$0$0 == 0x00a0
                           0000A0   879 _P2_B0	=	0x00a0
                           0000A1   880 G$P2_B1$0$0 == 0x00a1
                           0000A1   881 _P2_B1	=	0x00a1
                           0000A2   882 G$P2_B2$0$0 == 0x00a2
                           0000A2   883 _P2_B2	=	0x00a2
                           0000A3   884 G$P2_B3$0$0 == 0x00a3
                           0000A3   885 _P2_B3	=	0x00a3
                           0000B0   886 G$P3_B0$0$0 == 0x00b0
                           0000B0   887 _P3_B0	=	0x00b0
                           0000B1   888 G$P3_B1$0$0 == 0x00b1
                           0000B1   889 _P3_B1	=	0x00b1
                           0000D8   890 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   891 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   892 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   893 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   894 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   895 _PCA0CN0_CCF2	=	0x00da
                           0000DE   896 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   897 _PCA0CN0_CR	=	0x00de
                           0000DF   898 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   899 _PCA0CN0_CF	=	0x00df
                           0000D0   900 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   901 _PSW_PARITY	=	0x00d0
                           0000D1   902 G$PSW_F1$0$0 == 0x00d1
                           0000D1   903 _PSW_F1	=	0x00d1
                           0000D2   904 G$PSW_OV$0$0 == 0x00d2
                           0000D2   905 _PSW_OV	=	0x00d2
                           0000D3   906 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   907 _PSW_RS0	=	0x00d3
                           0000D4   908 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   909 _PSW_RS1	=	0x00d4
                           0000D5   910 G$PSW_F0$0$0 == 0x00d5
                           0000D5   911 _PSW_F0	=	0x00d5
                           0000D6   912 G$PSW_AC$0$0 == 0x00d6
                           0000D6   913 _PSW_AC	=	0x00d6
                           0000D7   914 G$PSW_CY$0$0 == 0x00d7
                           0000D7   915 _PSW_CY	=	0x00d7
                           000098   916 G$SCON0_RI$0$0 == 0x0098
                           000098   917 _SCON0_RI	=	0x0098
                           000099   918 G$SCON0_TI$0$0 == 0x0099
                           000099   919 _SCON0_TI	=	0x0099
                           00009A   920 G$SCON0_RB8$0$0 == 0x009a
                           00009A   921 _SCON0_RB8	=	0x009a
                           00009B   922 G$SCON0_TB8$0$0 == 0x009b
                           00009B   923 _SCON0_TB8	=	0x009b
                           00009C   924 G$SCON0_REN$0$0 == 0x009c
                           00009C   925 _SCON0_REN	=	0x009c
                           00009D   926 G$SCON0_MCE$0$0 == 0x009d
                           00009D   927 _SCON0_MCE	=	0x009d
                           00009F   928 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   929 _SCON0_SMODE	=	0x009f
                           0000C8   930 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   931 _SCON1_RI	=	0x00c8
                           0000C9   932 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   933 _SCON1_TI	=	0x00c9
                           0000CA   934 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   935 _SCON1_RBX	=	0x00ca
                           0000CB   936 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   937 _SCON1_TBX	=	0x00cb
                           0000CC   938 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   939 _SCON1_REN	=	0x00cc
                           0000CE   940 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   941 _SCON1_PERR	=	0x00ce
                           0000CF   942 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   943 _SCON1_OVR	=	0x00cf
                           0000C0   944 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   945 _SMB0CN0_SI	=	0x00c0
                           0000C1   946 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   947 _SMB0CN0_ACK	=	0x00c1
                           0000C2   948 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   949 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   950 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   951 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   952 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   953 _SMB0CN0_STO	=	0x00c4
                           0000C5   954 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   955 _SMB0CN0_STA	=	0x00c5
                           0000C6   956 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   957 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   958 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   959 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   960 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   961 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   962 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   963 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   964 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   965 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   966 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   967 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   968 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   969 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   970 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   971 _SPI0CN0_MODF	=	0x00fd
                           0000FE   972 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   973 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   974 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   975 _SPI0CN0_SPIF	=	0x00ff
                           000088   976 G$TCON_IT0$0$0 == 0x0088
                           000088   977 _TCON_IT0	=	0x0088
                           000089   978 G$TCON_IE0$0$0 == 0x0089
                           000089   979 _TCON_IE0	=	0x0089
                           00008A   980 G$TCON_IT1$0$0 == 0x008a
                           00008A   981 _TCON_IT1	=	0x008a
                           00008B   982 G$TCON_IE1$0$0 == 0x008b
                           00008B   983 _TCON_IE1	=	0x008b
                           00008C   984 G$TCON_TR0$0$0 == 0x008c
                           00008C   985 _TCON_TR0	=	0x008c
                           00008D   986 G$TCON_TF0$0$0 == 0x008d
                           00008D   987 _TCON_TF0	=	0x008d
                           00008E   988 G$TCON_TR1$0$0 == 0x008e
                           00008E   989 _TCON_TR1	=	0x008e
                           00008F   990 G$TCON_TF1$0$0 == 0x008f
                           00008F   991 _TCON_TF1	=	0x008f
                           0000C8   992 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   993 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   994 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   995 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   996 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   997 _TMR2CN0_TR2	=	0x00ca
                           0000CB   998 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   999 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC  1000 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC  1001 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD  1002 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD  1003 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE  1004 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE  1005 _TMR2CN0_TF2L	=	0x00ce
                           0000CF  1006 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF  1007 _TMR2CN0_TF2H	=	0x00cf
                           000098  1008 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1009 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1010 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1011 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1012 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1013 _TMR4CN0_TR4	=	0x009a
                           00009B  1014 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1015 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1016 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1017 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1018 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1019 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1020 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1021 _TMR4CN0_TF4L	=	0x009e
                           00009F  1022 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1023 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1024 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1025 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1026 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1027 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1028 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1029 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1030 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1031 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1032 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1033 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1034 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1035 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1036 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1037 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1038 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1039 _UART1FCN1_TFRQ	=	0x00df
                                   1040 ;--------------------------------------------------------
                                   1041 ; overlayable register banks
                                   1042 ;--------------------------------------------------------
                                   1043 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1044 	.ds 8
                                   1045 ;--------------------------------------------------------
                                   1046 ; overlayable bit register bank
                                   1047 ;--------------------------------------------------------
                                   1048 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1049 bits:
      000020                       1050 	.ds 1
                           008000  1051 	b0 = bits[0]
                           008100  1052 	b1 = bits[1]
                           008200  1053 	b2 = bits[2]
                           008300  1054 	b3 = bits[3]
                           008400  1055 	b4 = bits[4]
                           008500  1056 	b5 = bits[5]
                           008600  1057 	b6 = bits[6]
                           008700  1058 	b7 = bits[7]
                                   1059 ;--------------------------------------------------------
                                   1060 ; internal ram data
                                   1061 ;--------------------------------------------------------
                                   1062 	.area DSEG    (DATA)
                                   1063 ;--------------------------------------------------------
                                   1064 ; overlayable items in internal ram 
                                   1065 ;--------------------------------------------------------
                                   1066 ;--------------------------------------------------------
                                   1067 ; indirectly addressable internal ram data
                                   1068 ;--------------------------------------------------------
                                   1069 	.area ISEG    (DATA)
                                   1070 ;--------------------------------------------------------
                                   1071 ; absolute internal ram data
                                   1072 ;--------------------------------------------------------
                                   1073 	.area IABS    (ABS,DATA)
                                   1074 	.area IABS    (ABS,DATA)
                                   1075 ;--------------------------------------------------------
                                   1076 ; bit data
                                   1077 ;--------------------------------------------------------
                                   1078 	.area BSEG    (BIT)
                                   1079 ;--------------------------------------------------------
                                   1080 ; paged external ram data
                                   1081 ;--------------------------------------------------------
                                   1082 	.area PSEG    (PAG,XDATA)
                                   1083 ;--------------------------------------------------------
                                   1084 ; external ram data
                                   1085 ;--------------------------------------------------------
                                   1086 	.area XSEG    (XDATA)
                                   1087 ;--------------------------------------------------------
                                   1088 ; absolute external ram data
                                   1089 ;--------------------------------------------------------
                                   1090 	.area XABS    (ABS,XDATA)
                                   1091 ;--------------------------------------------------------
                                   1092 ; external initialized ram data
                                   1093 ;--------------------------------------------------------
                                   1094 	.area XISEG   (XDATA)
                                   1095 	.area HOME    (CODE)
                                   1096 	.area GSINIT0 (CODE)
                                   1097 	.area GSINIT1 (CODE)
                                   1098 	.area GSINIT2 (CODE)
                                   1099 	.area GSINIT3 (CODE)
                                   1100 	.area GSINIT4 (CODE)
                                   1101 	.area GSINIT5 (CODE)
                                   1102 	.area GSINIT  (CODE)
                                   1103 	.area GSFINAL (CODE)
                                   1104 	.area CSEG    (CODE)
                                   1105 ;--------------------------------------------------------
                                   1106 ; global & static initialisations
                                   1107 ;--------------------------------------------------------
                                   1108 	.area HOME    (CODE)
                                   1109 	.area GSINIT  (CODE)
                                   1110 	.area GSFINAL (CODE)
                                   1111 	.area GSINIT  (CODE)
                                   1112 ;--------------------------------------------------------
                                   1113 ; Home
                                   1114 ;--------------------------------------------------------
                                   1115 	.area HOME    (CODE)
                                   1116 	.area HOME    (CODE)
                                   1117 ;--------------------------------------------------------
                                   1118 ; code
                                   1119 ;--------------------------------------------------------
                                   1120 	.area CSEG    (CODE)
                                   1121 ;------------------------------------------------------------
                                   1122 ;Allocation info for local variables in function 'USB_GetShortRegister'
                                   1123 ;------------------------------------------------------------
                                   1124 ;regAddr                   Allocated to registers r7 
                                   1125 ;retVal                    Allocated to registers r5 r6 
                                   1126 ;------------------------------------------------------------
                           000000  1127 	Fusb_0$USB_GetShortRegister$0$0 ==.
                           000000  1128 	C$usb_0.c$25$0$0 ==.
                                   1129 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:25: static uint16_t USB_GetShortRegister(uint8_t regAddr)
                                   1130 ;	-----------------------------------------
                                   1131 ;	 function USB_GetShortRegister
                                   1132 ;	-----------------------------------------
      003FCF                       1133 _USB_GetShortRegister:
                           000007  1134 	ar7 = 0x07
                           000006  1135 	ar6 = 0x06
                           000005  1136 	ar5 = 0x05
                           000004  1137 	ar4 = 0x04
                           000003  1138 	ar3 = 0x03
                           000002  1139 	ar2 = 0x02
                           000001  1140 	ar1 = 0x01
                           000000  1141 	ar0 = 0x00
      003FCF AF 82            [24] 1142 	mov	r7,dpl
                           000002  1143 	C$usb_0.c$29$2$27 ==.
                                   1144 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:29: USB_READ_BYTE(regAddr);
      003FD1 74 80            [12] 1145 	mov	a,#0x80
      003FD3 4F               [12] 1146 	orl	a,r7
      003FD4 F5 AE            [12] 1147 	mov	_USB0ADR,a
      003FD6                       1148 00101$:
      003FD6 E5 AE            [12] 1149 	mov	a,_USB0ADR
      003FD8 20 E7 FB         [24] 1150 	jb	acc.7,00101$
                           00000C  1151 	C$usb_0.c$30$1$26 ==.
                                   1152 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:30: retVal = (USB0DAT << 8);
      003FDB AE AF            [24] 1153 	mov	r6,_USB0DAT
      003FDD 7D 00            [12] 1154 	mov	r5,#0x00
                           000010  1155 	C$usb_0.c$31$2$29 ==.
                                   1156 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:31: USB_READ_BYTE((regAddr - 1));
      003FDF EF               [12] 1157 	mov	a,r7
      003FE0 14               [12] 1158 	dec	a
      003FE1 44 80            [12] 1159 	orl	a,#0x80
      003FE3 F5 AE            [12] 1160 	mov	_USB0ADR,a
      003FE5                       1161 00107$:
      003FE5 E5 AE            [12] 1162 	mov	a,_USB0ADR
      003FE7 20 E7 FB         [24] 1163 	jb	acc.7,00107$
                           00001B  1164 	C$usb_0.c$32$1$26 ==.
                                   1165 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:32: retVal |= USB0DAT;
      003FEA AC AF            [24] 1166 	mov	r4,_USB0DAT
      003FEC 7F 00            [12] 1167 	mov	r7,#0x00
      003FEE EC               [12] 1168 	mov	a,r4
      003FEF 42 05            [12] 1169 	orl	ar5,a
      003FF1 EF               [12] 1170 	mov	a,r7
      003FF2 42 06            [12] 1171 	orl	ar6,a
                           000025  1172 	C$usb_0.c$34$1$26 ==.
                                   1173 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:34: return retVal;
      003FF4 8D 82            [24] 1174 	mov	dpl,r5
      003FF6 8E 83            [24] 1175 	mov	dph,r6
                           000029  1176 	C$usb_0.c$35$1$26 ==.
                           000029  1177 	XFusb_0$USB_GetShortRegister$0$0 ==.
      003FF8 22               [24] 1178 	ret
                                   1179 ;------------------------------------------------------------
                                   1180 ;Allocation info for local variables in function 'USB_SetIndex'
                                   1181 ;------------------------------------------------------------
                                   1182 ;epsel                     Allocated to registers r7 
                                   1183 ;------------------------------------------------------------
                           00002A  1184 	G$USB_SetIndex$0$0 ==.
                           00002A  1185 	C$usb_0.c$40$1$26 ==.
                                   1186 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:40: void USB_SetIndex(uint8_t epsel)
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function USB_SetIndex
                                   1189 ;	-----------------------------------------
      003FF9                       1190 _USB_SetIndex:
      003FF9 AF 82            [24] 1191 	mov	r7,dpl
                           00002C  1192 	C$usb_0.c$42$2$33 ==.
                                   1193 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:42: USB_WRITE_BYTE(INDEX, epsel);
      003FFB 75 AE 0E         [24] 1194 	mov	_USB0ADR,#0x0e
      003FFE 8F AF            [24] 1195 	mov	_USB0DAT,r7
      004000                       1196 00101$:
      004000 E5 AE            [12] 1197 	mov	a,_USB0ADR
      004002 20 E7 FB         [24] 1198 	jb	acc.7,00101$
                           000036  1199 	C$usb_0.c$43$1$32 ==.
                           000036  1200 	XG$USB_SetIndex$0$0 ==.
      004005 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'USB_GetCommonInts'
                                   1204 ;------------------------------------------------------------
                           000037  1205 	G$USB_GetCommonInts$0$0 ==.
                           000037  1206 	C$usb_0.c$45$1$32 ==.
                                   1207 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:45: uint8_t USB_GetCommonInts(void)
                                   1208 ;	-----------------------------------------
                                   1209 ;	 function USB_GetCommonInts
                                   1210 ;	-----------------------------------------
      004006                       1211 _USB_GetCommonInts:
                           000037  1212 	C$usb_0.c$47$2$37 ==.
                                   1213 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:47: USB_READ_BYTE(CMINT);
      004006 75 AE 86         [24] 1214 	mov	_USB0ADR,#0x86
      004009                       1215 00101$:
      004009 E5 AE            [12] 1216 	mov	a,_USB0ADR
      00400B 20 E7 FB         [24] 1217 	jb	acc.7,00101$
                           00003F  1218 	C$usb_0.c$48$1$36 ==.
                                   1219 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:48: return USB0DAT;
      00400E 85 AF 82         [24] 1220 	mov	dpl,_USB0DAT
                           000042  1221 	C$usb_0.c$49$1$36 ==.
                           000042  1222 	XG$USB_GetCommonInts$0$0 ==.
      004011 22               [24] 1223 	ret
                                   1224 ;------------------------------------------------------------
                                   1225 ;Allocation info for local variables in function 'USB_GetInInts'
                                   1226 ;------------------------------------------------------------
                           000043  1227 	G$USB_GetInInts$0$0 ==.
                           000043  1228 	C$usb_0.c$51$1$36 ==.
                                   1229 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:51: uint8_t USB_GetInInts(void)
                                   1230 ;	-----------------------------------------
                                   1231 ;	 function USB_GetInInts
                                   1232 ;	-----------------------------------------
      004012                       1233 _USB_GetInInts:
                           000043  1234 	C$usb_0.c$53$2$41 ==.
                                   1235 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:53: USB_READ_BYTE(IN1INT);
      004012 75 AE 82         [24] 1236 	mov	_USB0ADR,#0x82
      004015                       1237 00101$:
      004015 E5 AE            [12] 1238 	mov	a,_USB0ADR
      004017 20 E7 FB         [24] 1239 	jb	acc.7,00101$
                           00004B  1240 	C$usb_0.c$54$1$40 ==.
                                   1241 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:54: return USB0DAT;
      00401A 85 AF 82         [24] 1242 	mov	dpl,_USB0DAT
                           00004E  1243 	C$usb_0.c$55$1$40 ==.
                           00004E  1244 	XG$USB_GetInInts$0$0 ==.
      00401D 22               [24] 1245 	ret
                                   1246 ;------------------------------------------------------------
                                   1247 ;Allocation info for local variables in function 'USB_GetOutInts'
                                   1248 ;------------------------------------------------------------
                           00004F  1249 	G$USB_GetOutInts$0$0 ==.
                           00004F  1250 	C$usb_0.c$57$1$40 ==.
                                   1251 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:57: uint8_t USB_GetOutInts(void)
                                   1252 ;	-----------------------------------------
                                   1253 ;	 function USB_GetOutInts
                                   1254 ;	-----------------------------------------
      00401E                       1255 _USB_GetOutInts:
                           00004F  1256 	C$usb_0.c$59$2$45 ==.
                                   1257 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:59: USB_READ_BYTE(OUT1INT);
      00401E 75 AE 84         [24] 1258 	mov	_USB0ADR,#0x84
      004021                       1259 00101$:
      004021 E5 AE            [12] 1260 	mov	a,_USB0ADR
      004023 20 E7 FB         [24] 1261 	jb	acc.7,00101$
                           000057  1262 	C$usb_0.c$60$1$44 ==.
                                   1263 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:60: return USB0DAT;
      004026 85 AF 82         [24] 1264 	mov	dpl,_USB0DAT
                           00005A  1265 	C$usb_0.c$61$1$44 ==.
                           00005A  1266 	XG$USB_GetOutInts$0$0 ==.
      004029 22               [24] 1267 	ret
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'USB_GetIndex'
                                   1270 ;------------------------------------------------------------
                           00005B  1271 	G$USB_GetIndex$0$0 ==.
                           00005B  1272 	C$usb_0.c$63$1$44 ==.
                                   1273 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:63: uint8_t USB_GetIndex(void)
                                   1274 ;	-----------------------------------------
                                   1275 ;	 function USB_GetIndex
                                   1276 ;	-----------------------------------------
      00402A                       1277 _USB_GetIndex:
                           00005B  1278 	C$usb_0.c$65$2$49 ==.
                                   1279 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:65: USB_READ_BYTE(INDEX);
      00402A 75 AE 8E         [24] 1280 	mov	_USB0ADR,#0x8e
      00402D                       1281 00101$:
      00402D E5 AE            [12] 1282 	mov	a,_USB0ADR
      00402F 20 E7 FB         [24] 1283 	jb	acc.7,00101$
                           000063  1284 	C$usb_0.c$66$1$48 ==.
                                   1285 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:66: return USB0DAT;
      004032 85 AF 82         [24] 1286 	mov	dpl,_USB0DAT
                           000066  1287 	C$usb_0.c$67$1$48 ==.
                           000066  1288 	XG$USB_GetIndex$0$0 ==.
      004035 22               [24] 1289 	ret
                                   1290 ;------------------------------------------------------------
                                   1291 ;Allocation info for local variables in function 'USB_IsSuspended'
                                   1292 ;------------------------------------------------------------
                           000067  1293 	G$USB_IsSuspended$0$0 ==.
                           000067  1294 	C$usb_0.c$69$1$48 ==.
                                   1295 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:69: bool USB_IsSuspended(void)
                                   1296 ;	-----------------------------------------
                                   1297 ;	 function USB_IsSuspended
                                   1298 ;	-----------------------------------------
      004036                       1299 _USB_IsSuspended:
                           000067  1300 	C$usb_0.c$71$2$53 ==.
                                   1301 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:71: USB_READ_BYTE(POWER);
      004036 75 AE 81         [24] 1302 	mov	_USB0ADR,#0x81
      004039                       1303 00101$:
      004039 E5 AE            [12] 1304 	mov	a,_USB0ADR
      00403B 20 E7 FB         [24] 1305 	jb	acc.7,00101$
                           00006F  1306 	C$usb_0.c$72$1$52 ==.
                                   1307 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:72: return USB0DAT & POWER_SUSMD__SUSPENDED;
      00403E E5 AF            [12] 1308 	mov	a,_USB0DAT
      004040 A2 E1            [12] 1309 	mov	c,acc[1]
      004042 92 00            [24] 1310 	mov  b0,c
                           000075  1311 	C$usb_0.c$73$1$52 ==.
                           000075  1312 	XG$USB_IsSuspended$0$0 ==.
      004044 22               [24] 1313 	ret
                                   1314 ;------------------------------------------------------------
                                   1315 ;Allocation info for local variables in function 'USB_GetSetupEnd'
                                   1316 ;------------------------------------------------------------
                           000076  1317 	G$USB_GetSetupEnd$0$0 ==.
                           000076  1318 	C$usb_0.c$75$1$52 ==.
                                   1319 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:75: bool USB_GetSetupEnd(void)
                                   1320 ;	-----------------------------------------
                                   1321 ;	 function USB_GetSetupEnd
                                   1322 ;	-----------------------------------------
      004045                       1323 _USB_GetSetupEnd:
                           000076  1324 	C$usb_0.c$77$2$57 ==.
                                   1325 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:77: USB_READ_BYTE(E0CSR);
      004045 75 AE 91         [24] 1326 	mov	_USB0ADR,#0x91
      004048                       1327 00101$:
      004048 E5 AE            [12] 1328 	mov	a,_USB0ADR
      00404A 20 E7 FB         [24] 1329 	jb	acc.7,00101$
                           00007E  1330 	C$usb_0.c$78$1$56 ==.
                                   1331 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:78: return USB0DAT & E0CSR_SUEND__SET;
      00404D E5 AF            [12] 1332 	mov	a,_USB0DAT
      00404F A2 E4            [12] 1333 	mov	c,acc[4]
      004051 92 00            [24] 1334 	mov  b0,c
                           000084  1335 	C$usb_0.c$79$1$56 ==.
                           000084  1336 	XG$USB_GetSetupEnd$0$0 ==.
      004053 22               [24] 1337 	ret
                                   1338 ;------------------------------------------------------------
                                   1339 ;Allocation info for local variables in function 'USB_Ep0SentStall'
                                   1340 ;------------------------------------------------------------
                           000085  1341 	G$USB_Ep0SentStall$0$0 ==.
                           000085  1342 	C$usb_0.c$81$1$56 ==.
                                   1343 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:81: bool USB_Ep0SentStall(void)
                                   1344 ;	-----------------------------------------
                                   1345 ;	 function USB_Ep0SentStall
                                   1346 ;	-----------------------------------------
      004054                       1347 _USB_Ep0SentStall:
                           000085  1348 	C$usb_0.c$83$2$61 ==.
                                   1349 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:83: USB_READ_BYTE(E0CSR);
      004054 75 AE 91         [24] 1350 	mov	_USB0ADR,#0x91
      004057                       1351 00101$:
      004057 E5 AE            [12] 1352 	mov	a,_USB0ADR
      004059 20 E7 FB         [24] 1353 	jb	acc.7,00101$
                           00008D  1354 	C$usb_0.c$84$1$60 ==.
                                   1355 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:84: return USB0DAT & E0CSR_STSTL__SET;
      00405C E5 AF            [12] 1356 	mov	a,_USB0DAT
      00405E A2 E2            [12] 1357 	mov	c,acc[2]
      004060 92 00            [24] 1358 	mov  b0,c
                           000093  1359 	C$usb_0.c$85$1$60 ==.
                           000093  1360 	XG$USB_Ep0SentStall$0$0 ==.
      004062 22               [24] 1361 	ret
                                   1362 ;------------------------------------------------------------
                                   1363 ;Allocation info for local variables in function 'USB_Ep0OutPacketReady'
                                   1364 ;------------------------------------------------------------
                           000094  1365 	G$USB_Ep0OutPacketReady$0$0 ==.
                           000094  1366 	C$usb_0.c$87$1$60 ==.
                                   1367 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:87: bool USB_Ep0OutPacketReady(void)
                                   1368 ;	-----------------------------------------
                                   1369 ;	 function USB_Ep0OutPacketReady
                                   1370 ;	-----------------------------------------
      004063                       1371 _USB_Ep0OutPacketReady:
                           000094  1372 	C$usb_0.c$89$2$65 ==.
                                   1373 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:89: USB_READ_BYTE(E0CSR);
      004063 75 AE 91         [24] 1374 	mov	_USB0ADR,#0x91
      004066                       1375 00101$:
      004066 E5 AE            [12] 1376 	mov	a,_USB0ADR
      004068 20 E7 FB         [24] 1377 	jb	acc.7,00101$
                           00009C  1378 	C$usb_0.c$90$1$64 ==.
                                   1379 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:90: return USB0DAT & E0CSR_OPRDY__SET;
      00406B E5 AF            [12] 1380 	mov	a,_USB0DAT
      00406D 13               [12] 1381 	rrc	a
      00406E 92 00            [24] 1382 	mov  b0,c
                           0000A1  1383 	C$usb_0.c$91$1$64 ==.
                           0000A1  1384 	XG$USB_Ep0OutPacketReady$0$0 ==.
      004070 22               [24] 1385 	ret
                                   1386 ;------------------------------------------------------------
                                   1387 ;Allocation info for local variables in function 'USB_Ep0InPacketReady'
                                   1388 ;------------------------------------------------------------
                           0000A2  1389 	G$USB_Ep0InPacketReady$0$0 ==.
                           0000A2  1390 	C$usb_0.c$93$1$64 ==.
                                   1391 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:93: bool USB_Ep0InPacketReady(void)
                                   1392 ;	-----------------------------------------
                                   1393 ;	 function USB_Ep0InPacketReady
                                   1394 ;	-----------------------------------------
      004071                       1395 _USB_Ep0InPacketReady:
                           0000A2  1396 	C$usb_0.c$95$2$69 ==.
                                   1397 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:95: USB_READ_BYTE(E0CSR);
      004071 75 AE 91         [24] 1398 	mov	_USB0ADR,#0x91
      004074                       1399 00101$:
      004074 E5 AE            [12] 1400 	mov	a,_USB0ADR
      004076 20 E7 FB         [24] 1401 	jb	acc.7,00101$
                           0000AA  1402 	C$usb_0.c$96$1$68 ==.
                                   1403 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:96: return USB0DAT & E0CSR_INPRDY__SET;
      004079 E5 AF            [12] 1404 	mov	a,_USB0DAT
      00407B A2 E1            [12] 1405 	mov	c,acc[1]
      00407D 92 00            [24] 1406 	mov  b0,c
                           0000B0  1407 	C$usb_0.c$97$1$68 ==.
                           0000B0  1408 	XG$USB_Ep0InPacketReady$0$0 ==.
      00407F 22               [24] 1409 	ret
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'USB_Ep0GetCount'
                                   1412 ;------------------------------------------------------------
                           0000B1  1413 	G$USB_Ep0GetCount$0$0 ==.
                           0000B1  1414 	C$usb_0.c$99$1$68 ==.
                                   1415 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:99: uint8_t USB_Ep0GetCount(void)
                                   1416 ;	-----------------------------------------
                                   1417 ;	 function USB_Ep0GetCount
                                   1418 ;	-----------------------------------------
      004080                       1419 _USB_Ep0GetCount:
                           0000B1  1420 	C$usb_0.c$101$2$73 ==.
                                   1421 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:101: USB_READ_BYTE(E0CNT);
      004080 75 AE 96         [24] 1422 	mov	_USB0ADR,#0x96
      004083                       1423 00101$:
      004083 E5 AE            [12] 1424 	mov	a,_USB0ADR
      004085 20 E7 FB         [24] 1425 	jb	acc.7,00101$
                           0000B9  1426 	C$usb_0.c$102$1$72 ==.
                                   1427 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:102: return USB0DAT;
      004088 85 AF 82         [24] 1428 	mov	dpl,_USB0DAT
                           0000BC  1429 	C$usb_0.c$103$1$72 ==.
                           0000BC  1430 	XG$USB_Ep0GetCount$0$0 ==.
      00408B 22               [24] 1431 	ret
                                   1432 ;------------------------------------------------------------
                                   1433 ;Allocation info for local variables in function 'USB_EpnInGetSentStall'
                                   1434 ;------------------------------------------------------------
                           0000BD  1435 	G$USB_EpnInGetSentStall$0$0 ==.
                           0000BD  1436 	C$usb_0.c$105$1$72 ==.
                                   1437 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:105: bool USB_EpnInGetSentStall(void)
                                   1438 ;	-----------------------------------------
                                   1439 ;	 function USB_EpnInGetSentStall
                                   1440 ;	-----------------------------------------
      00408C                       1441 _USB_EpnInGetSentStall:
                           0000BD  1442 	C$usb_0.c$107$2$77 ==.
                                   1443 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:107: USB_READ_BYTE(EINCSRL);
      00408C 75 AE 91         [24] 1444 	mov	_USB0ADR,#0x91
      00408F                       1445 00101$:
      00408F E5 AE            [12] 1446 	mov	a,_USB0ADR
      004091 20 E7 FB         [24] 1447 	jb	acc.7,00101$
                           0000C5  1448 	C$usb_0.c$108$1$76 ==.
                                   1449 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:108: return (bool)(USB0DAT & EINCSRL_STSTL__SET);
      004094 E5 AF            [12] 1450 	mov	a,_USB0DAT
      004096 A2 E5            [12] 1451 	mov	c,acc[5]
      004098 92 00            [24] 1452 	mov	b0,c
                           0000CB  1453 	C$usb_0.c$109$1$76 ==.
                           0000CB  1454 	XG$USB_EpnInGetSentStall$0$0 ==.
      00409A 22               [24] 1455 	ret
                                   1456 ;------------------------------------------------------------
                                   1457 ;Allocation info for local variables in function 'USB_AbortInEp'
                                   1458 ;------------------------------------------------------------
                                   1459 ;fifoNum                   Allocated to registers r7 
                                   1460 ;------------------------------------------------------------
                           0000CC  1461 	G$USB_AbortInEp$0$0 ==.
                           0000CC  1462 	C$usb_0.c$111$1$76 ==.
                                   1463 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:111: void USB_AbortInEp(uint8_t fifoNum)
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function USB_AbortInEp
                                   1466 ;	-----------------------------------------
      00409B                       1467 _USB_AbortInEp:
                           0000CC  1468 	C$usb_0.c$113$1$80 ==.
                                   1469 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:113: USB_SetIndex(fifoNum);
      00409B 12 3F F9         [24] 1470 	lcall	_USB_SetIndex
                           0000CF  1471 	C$usb_0.c$114$3$82 ==.
                                   1472 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:114: USB_EpnInFlush();
      00409E 75 AE 11         [24] 1473 	mov	_USB0ADR,#0x11
      0040A1 75 AF 08         [24] 1474 	mov	_USB0DAT,#0x08
      0040A4                       1475 00101$:
      0040A4 E5 AE            [12] 1476 	mov	a,_USB0ADR
      0040A6 20 E7 FB         [24] 1477 	jb	acc.7,00101$
      0040A9                       1478 00110$:
      0040A9 75 AE 91         [24] 1479 	mov	_USB0ADR,#0x91
      0040AC                       1480 00107$:
      0040AC E5 AE            [12] 1481 	mov	a,_USB0ADR
      0040AE 20 E7 FB         [24] 1482 	jb	acc.7,00107$
      0040B1 E5 AF            [12] 1483 	mov	a,_USB0DAT
      0040B3 20 E3 F3         [24] 1484 	jb	acc.3,00110$
                           0000E7  1485 	C$usb_0.c$115$3$88 ==.
                                   1486 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:115: USB_EpnInFlush();
      0040B6 75 AE 11         [24] 1487 	mov	_USB0ADR,#0x11
      0040B9 75 AF 08         [24] 1488 	mov	_USB0DAT,#0x08
      0040BC                       1489 00119$:
      0040BC E5 AE            [12] 1490 	mov	a,_USB0ADR
      0040BE 20 E7 FB         [24] 1491 	jb	acc.7,00119$
      0040C1                       1492 00128$:
      0040C1 75 AE 91         [24] 1493 	mov	_USB0ADR,#0x91
      0040C4                       1494 00125$:
      0040C4 E5 AE            [12] 1495 	mov	a,_USB0ADR
      0040C6 20 E7 FB         [24] 1496 	jb	acc.7,00125$
      0040C9 E5 AF            [12] 1497 	mov	a,_USB0DAT
      0040CB 20 E3 F3         [24] 1498 	jb	acc.3,00128$
                           0000FF  1499 	C$usb_0.c$116$1$80 ==.
                           0000FF  1500 	XG$USB_AbortInEp$0$0 ==.
      0040CE 22               [24] 1501 	ret
                                   1502 ;------------------------------------------------------------
                                   1503 ;Allocation info for local variables in function 'USB_EpnOutGetSentStall'
                                   1504 ;------------------------------------------------------------
                           000100  1505 	G$USB_EpnOutGetSentStall$0$0 ==.
                           000100  1506 	C$usb_0.c$118$1$80 ==.
                                   1507 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:118: bool USB_EpnOutGetSentStall(void)
                                   1508 ;	-----------------------------------------
                                   1509 ;	 function USB_EpnOutGetSentStall
                                   1510 ;	-----------------------------------------
      0040CF                       1511 _USB_EpnOutGetSentStall:
                           000100  1512 	C$usb_0.c$120$2$95 ==.
                                   1513 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:120: USB_READ_BYTE(EOUTCSRL);
      0040CF 75 AE 94         [24] 1514 	mov	_USB0ADR,#0x94
      0040D2                       1515 00101$:
      0040D2 E5 AE            [12] 1516 	mov	a,_USB0ADR
      0040D4 20 E7 FB         [24] 1517 	jb	acc.7,00101$
                           000108  1518 	C$usb_0.c$121$1$94 ==.
                                   1519 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:121: return (bool)(USB0DAT & EOUTCSRL_STSTL__SET);
      0040D7 E5 AF            [12] 1520 	mov	a,_USB0DAT
      0040D9 A2 E6            [12] 1521 	mov	c,acc[6]
      0040DB 92 00            [24] 1522 	mov	b0,c
                           00010E  1523 	C$usb_0.c$122$1$94 ==.
                           00010E  1524 	XG$USB_EpnOutGetSentStall$0$0 ==.
      0040DD 22               [24] 1525 	ret
                                   1526 ;------------------------------------------------------------
                                   1527 ;Allocation info for local variables in function 'USB_EpnGetOutPacketReady'
                                   1528 ;------------------------------------------------------------
                           00010F  1529 	G$USB_EpnGetOutPacketReady$0$0 ==.
                           00010F  1530 	C$usb_0.c$124$1$94 ==.
                                   1531 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:124: bool USB_EpnGetOutPacketReady(void)
                                   1532 ;	-----------------------------------------
                                   1533 ;	 function USB_EpnGetOutPacketReady
                                   1534 ;	-----------------------------------------
      0040DE                       1535 _USB_EpnGetOutPacketReady:
                           00010F  1536 	C$usb_0.c$126$2$99 ==.
                                   1537 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:126: USB_READ_BYTE(EOUTCSRL);
      0040DE 75 AE 94         [24] 1538 	mov	_USB0ADR,#0x94
      0040E1                       1539 00101$:
      0040E1 E5 AE            [12] 1540 	mov	a,_USB0ADR
      0040E3 20 E7 FB         [24] 1541 	jb	acc.7,00101$
                           000117  1542 	C$usb_0.c$127$1$98 ==.
                                   1543 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:127: return (bool)(USB0DAT & EOUTCSRL_OPRDY__SET);
      0040E6 E5 AF            [12] 1544 	mov	a,_USB0DAT
      0040E8 13               [12] 1545 	rrc	a
      0040E9 92 00            [24] 1546 	mov	b0,c
                           00011C  1547 	C$usb_0.c$128$1$98 ==.
                           00011C  1548 	XG$USB_EpnGetOutPacketReady$0$0 ==.
      0040EB 22               [24] 1549 	ret
                                   1550 ;------------------------------------------------------------
                                   1551 ;Allocation info for local variables in function 'USB_EpOutGetCount'
                                   1552 ;------------------------------------------------------------
                           00011D  1553 	G$USB_EpOutGetCount$0$0 ==.
                           00011D  1554 	C$usb_0.c$130$1$98 ==.
                                   1555 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:130: uint16_t USB_EpOutGetCount(void)
                                   1556 ;	-----------------------------------------
                                   1557 ;	 function USB_EpOutGetCount
                                   1558 ;	-----------------------------------------
      0040EC                       1559 _USB_EpOutGetCount:
                           00011D  1560 	C$usb_0.c$132$1$102 ==.
                                   1561 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:132: return USB_GetShortRegister(EOUTCNTH);
      0040EC 75 82 17         [24] 1562 	mov	dpl,#0x17
      0040EF 12 3F CF         [24] 1563 	lcall	_USB_GetShortRegister
                           000123  1564 	C$usb_0.c$133$1$102 ==.
                           000123  1565 	XG$USB_EpOutGetCount$0$0 ==.
      0040F2 22               [24] 1566 	ret
                                   1567 ;------------------------------------------------------------
                                   1568 ;Allocation info for local variables in function 'USB_AbortOutEp'
                                   1569 ;------------------------------------------------------------
                                   1570 ;fifoNum                   Allocated to registers r7 
                                   1571 ;------------------------------------------------------------
                           000124  1572 	G$USB_AbortOutEp$0$0 ==.
                           000124  1573 	C$usb_0.c$135$1$102 ==.
                                   1574 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:135: void USB_AbortOutEp(uint8_t fifoNum)
                                   1575 ;	-----------------------------------------
                                   1576 ;	 function USB_AbortOutEp
                                   1577 ;	-----------------------------------------
      0040F3                       1578 _USB_AbortOutEp:
                           000124  1579 	C$usb_0.c$137$1$104 ==.
                                   1580 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:137: USB_SetIndex(fifoNum);
      0040F3 12 3F F9         [24] 1581 	lcall	_USB_SetIndex
                           000127  1582 	C$usb_0.c$138$3$106 ==.
                                   1583 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:138: USB_EpnOutFlush();
      0040F6 75 AE 14         [24] 1584 	mov	_USB0ADR,#0x14
      0040F9 75 AF 10         [24] 1585 	mov	_USB0DAT,#0x10
      0040FC                       1586 00101$:
      0040FC E5 AE            [12] 1587 	mov	a,_USB0ADR
      0040FE 20 E7 FB         [24] 1588 	jb	acc.7,00101$
      004101                       1589 00110$:
      004101 75 AE 94         [24] 1590 	mov	_USB0ADR,#0x94
      004104                       1591 00107$:
      004104 E5 AE            [12] 1592 	mov	a,_USB0ADR
      004106 20 E7 FB         [24] 1593 	jb	acc.7,00107$
      004109 E5 AF            [12] 1594 	mov	a,_USB0DAT
      00410B 20 E4 F3         [24] 1595 	jb	acc.4,00110$
                           00013F  1596 	C$usb_0.c$139$3$112 ==.
                                   1597 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:139: USB_EpnOutFlush();
      00410E 75 AE 14         [24] 1598 	mov	_USB0ADR,#0x14
      004111 75 AF 10         [24] 1599 	mov	_USB0DAT,#0x10
      004114                       1600 00119$:
      004114 E5 AE            [12] 1601 	mov	a,_USB0ADR
      004116 20 E7 FB         [24] 1602 	jb	acc.7,00119$
      004119                       1603 00128$:
      004119 75 AE 94         [24] 1604 	mov	_USB0ADR,#0x94
      00411C                       1605 00125$:
      00411C E5 AE            [12] 1606 	mov	a,_USB0ADR
      00411E 20 E7 FB         [24] 1607 	jb	acc.7,00125$
      004121 E5 AF            [12] 1608 	mov	a,_USB0DAT
      004123 20 E4 F3         [24] 1609 	jb	acc.4,00128$
                           000157  1610 	C$usb_0.c$140$1$104 ==.
                           000157  1611 	XG$USB_AbortOutEp$0$0 ==.
      004126 22               [24] 1612 	ret
                                   1613 ;------------------------------------------------------------
                                   1614 ;Allocation info for local variables in function 'USB_ActivateEp'
                                   1615 ;------------------------------------------------------------
                                   1616 ;packetSize                Allocated to stack - _bp -4
                                   1617 ;isoMode                   Allocated to registers b2 
                                   1618 ;splitMode                 Allocated to registers b1 
                                   1619 ;inDir                     Allocated to registers b0 
                                   1620 ;ep                        Allocated to registers r7 
                                   1621 ;CSRH_mask                 Allocated to registers r6 
                                   1622 ;fifoSize                  Allocated to registers r3 r4 
                                   1623 ;------------------------------------------------------------
                           000158  1624 	G$USB_ActivateEp$0$0 ==.
                           000158  1625 	C$usb_0.c$142$1$104 ==.
                                   1626 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:142: void USB_ActivateEp(uint8_t ep,
                                   1627 ;	-----------------------------------------
                                   1628 ;	 function USB_ActivateEp
                                   1629 ;	-----------------------------------------
      004127                       1630 _USB_ActivateEp:
      004127 C0 1B            [24] 1631 	push	_bp
      004129 85 81 1B         [24] 1632 	mov	_bp,sp
                           00015D  1633 	C$usb_0.c$148$1$104 ==.
                                   1634 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:148: uint8_t CSRH_mask = 0;
                           00015D  1635 	C$usb_0.c$151$1$118 ==.
                                   1636 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:151: USB_SetIndex(ep);
      00412C AF 82            [24] 1637 	mov	r7,dpl
      00412E 7E 00            [12] 1638 	mov	r6,#0x00
      004130 C0 07            [24] 1639 	push	ar7
      004132 C0 06            [24] 1640 	push	ar6
      004134 C0 20            [24] 1641 	push	bits
      004136 12 3F F9         [24] 1642 	lcall	_USB_SetIndex
      004139 D0 20            [24] 1643 	pop	bits
      00413B D0 06            [24] 1644 	pop	ar6
      00413D D0 07            [24] 1645 	pop	ar7
                           000170  1646 	C$usb_0.c$155$1$118 ==.
                                   1647 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:155: fifoSize = (splitMode == true) ? (16 << ep) : (32 << ep);
      00413F A2 01            [12] 1648 	mov	c,b1
      004141 E4               [12] 1649 	clr	a
      004142 33               [12] 1650 	rlc	a
      004143 FD               [12] 1651 	mov	r5,a
      004144 BD 01 03         [24] 1652 	cjne	r5,#0x01,00191$
      004147 ED               [12] 1653 	mov	a,r5
      004148 80 01            [24] 1654 	sjmp	00192$
      00414A                       1655 00191$:
      00414A E4               [12] 1656 	clr	a
      00414B                       1657 00192$:
      00414B FD               [12] 1658 	mov	r5,a
      00414C 60 15            [24] 1659 	jz	00144$
      00414E 8F F0            [24] 1660 	mov	b,r7
      004150 05 F0            [12] 1661 	inc	b
      004152 7B 10            [12] 1662 	mov	r3,#0x10
      004154 7C 00            [12] 1663 	mov	r4,#0x00
      004156 80 06            [24] 1664 	sjmp	00195$
      004158                       1665 00194$:
      004158 EB               [12] 1666 	mov	a,r3
      004159 2B               [12] 1667 	add	a,r3
      00415A FB               [12] 1668 	mov	r3,a
      00415B EC               [12] 1669 	mov	a,r4
      00415C 33               [12] 1670 	rlc	a
      00415D FC               [12] 1671 	mov	r4,a
      00415E                       1672 00195$:
      00415E D5 F0 F7         [24] 1673 	djnz	b,00194$
      004161 80 13            [24] 1674 	sjmp	00145$
      004163                       1675 00144$:
      004163 8F F0            [24] 1676 	mov	b,r7
      004165 05 F0            [12] 1677 	inc	b
      004167 7B 20            [12] 1678 	mov	r3,#0x20
      004169 7C 00            [12] 1679 	mov	r4,#0x00
      00416B 80 06            [24] 1680 	sjmp	00197$
      00416D                       1681 00196$:
      00416D EB               [12] 1682 	mov	a,r3
      00416E 2B               [12] 1683 	add	a,r3
      00416F FB               [12] 1684 	mov	r3,a
      004170 EC               [12] 1685 	mov	a,r4
      004171 33               [12] 1686 	rlc	a
      004172 FC               [12] 1687 	mov	r4,a
      004173                       1688 00197$:
      004173 D5 F0 F7         [24] 1689 	djnz	b,00196$
      004176                       1690 00145$:
                           0001A7  1691 	C$usb_0.c$157$1$118 ==.
                                   1692 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:157: if (packetSize <= fifoSize)
      004176 E5 1B            [12] 1693 	mov	a,_bp
      004178 24 FC            [12] 1694 	add	a,#0xfc
      00417A F8               [12] 1695 	mov	r0,a
      00417B C3               [12] 1696 	clr	c
      00417C EB               [12] 1697 	mov	a,r3
      00417D 96               [12] 1698 	subb	a,@r0
      00417E EC               [12] 1699 	mov	a,r4
      00417F 08               [12] 1700 	inc	r0
      004180 96               [12] 1701 	subb	a,@r0
      004181 40 02            [24] 1702 	jc	00102$
                           0001B4  1703 	C$usb_0.c$159$2$119 ==.
                                   1704 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:159: CSRH_mask |= EINCSRH_DBIEN__ENABLED;
      004183 7E 80            [12] 1705 	mov	r6,#0x80
      004185                       1706 00102$:
                           0001B6  1707 	C$usb_0.c$162$1$118 ==.
                                   1708 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:162: if (isoMode == true)
      004185 A2 02            [12] 1709 	mov	c,b2
      004187 E4               [12] 1710 	clr	a
      004188 33               [12] 1711 	rlc	a
      004189 FF               [12] 1712 	mov	r7,a
      00418A BF 01 03         [24] 1713 	cjne	r7,#0x01,00104$
                           0001BE  1714 	C$usb_0.c$164$2$120 ==.
                                   1715 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:164: CSRH_mask |= EINCSRH_ISO__ENABLED;
      00418D 43 06 40         [24] 1716 	orl	ar6,#0x40
      004190                       1717 00104$:
                           0001C1  1718 	C$usb_0.c$167$1$118 ==.
                                   1719 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:167: if (inDir == true)
      004190 A2 00            [12] 1720 	mov	c,b0
      004192 E4               [12] 1721 	clr	a
      004193 33               [12] 1722 	rlc	a
      004194 FF               [12] 1723 	mov	r7,a
      004195 BF 01 20         [24] 1724 	cjne	r7,#0x01,00122$
                           0001C9  1725 	C$usb_0.c$169$2$121 ==.
                                   1726 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:169: CSRH_mask |= EINCSRH_DIRSEL__IN;
      004198 43 06 20         [24] 1727 	orl	ar6,#0x20
                           0001CC  1728 	C$usb_0.c$171$2$121 ==.
                                   1729 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:171: if (splitMode == true)
      00419B ED               [12] 1730 	mov	a,r5
      00419C 60 03            [24] 1731 	jz	00110$
                           0001CF  1732 	C$usb_0.c$173$3$122 ==.
                                   1733 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:173: CSRH_mask |= EINCSRH_SPLIT__ENABLED;
      00419E 43 06 04         [24] 1734 	orl	ar6,#0x04
                           0001D2  1735 	C$usb_0.c$175$2$121 ==.
                                   1736 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:175: USB_WRITE_BYTE(EINCSRL, EINCSRL_CLRDT__BMASK);
      0041A1                       1737 00110$:
      0041A1 75 AE 11         [24] 1738 	mov	_USB0ADR,#0x11
      0041A4 75 AF 40         [24] 1739 	mov	_USB0DAT,#0x40
      0041A7                       1740 00107$:
      0041A7 E5 AE            [12] 1741 	mov	a,_USB0ADR
      0041A9 20 E7 FB         [24] 1742 	jb	acc.7,00107$
                           0001DD  1743 	C$usb_0.c$176$3$125 ==.
                                   1744 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:176: USB_WRITE_BYTE(EINCSRH, CSRH_mask);
      0041AC 75 AE 12         [24] 1745 	mov	_USB0ADR,#0x12
      0041AF 8E AF            [24] 1746 	mov	_USB0DAT,r6
      0041B1                       1747 00113$:
      0041B1 E5 AE            [12] 1748 	mov	a,_USB0ADR
      0041B3 20 E7 FB         [24] 1749 	jb	acc.7,00113$
                           0001E7  1750 	C$usb_0.c$180$2$127 ==.
                                   1751 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:180: USB_WRITE_BYTE(EOUTCSRL, EOUTCSRL_CLRDT__BMASK);
      0041B6 80 23            [24] 1752 	sjmp	00142$
      0041B8                       1753 00122$:
      0041B8 75 AE 14         [24] 1754 	mov	_USB0ADR,#0x14
      0041BB 75 AF 80         [24] 1755 	mov	_USB0DAT,#0x80
      0041BE                       1756 00119$:
      0041BE E5 AE            [12] 1757 	mov	a,_USB0ADR
      0041C0 20 E7 FB         [24] 1758 	jb	acc.7,00119$
                           0001F4  1759 	C$usb_0.c$181$3$130 ==.
                                   1760 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:181: USB_WRITE_BYTE(EOUTCSRH, CSRH_mask);
      0041C3 75 AE 15         [24] 1761 	mov	_USB0ADR,#0x15
      0041C6 8E AF            [24] 1762 	mov	_USB0DAT,r6
      0041C8                       1763 00125$:
      0041C8 E5 AE            [12] 1764 	mov	a,_USB0ADR
      0041CA 20 E7 FB         [24] 1765 	jb	acc.7,00125$
                           0001FE  1766 	C$usb_0.c$183$2$127 ==.
                                   1767 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:183: if (splitMode == false)
      0041CD 20 01 0B         [24] 1768 	jb	b1,00142$
                           000201  1769 	C$usb_0.c$185$4$133 ==.
                                   1770 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:185: USB_WRITE_BYTE(EINCSRH, 0);
      0041D0 75 AE 12         [24] 1771 	mov	_USB0ADR,#0x12
      0041D3 75 AF 00         [24] 1772 	mov	_USB0DAT,#0x00
      0041D6                       1773 00131$:
      0041D6 E5 AE            [12] 1774 	mov	a,_USB0ADR
      0041D8 20 E7 FB         [24] 1775 	jb	acc.7,00131$
      0041DB                       1776 00142$:
      0041DB D0 1B            [24] 1777 	pop	_bp
                           00020E  1778 	C$usb_0.c$188$1$118 ==.
                           00020E  1779 	XG$USB_ActivateEp$0$0 ==.
      0041DD 22               [24] 1780 	ret
                                   1781 ;------------------------------------------------------------
                                   1782 ;Allocation info for local variables in function 'USB_GetSofNumber'
                                   1783 ;------------------------------------------------------------
                           00020F  1784 	G$USB_GetSofNumber$0$0 ==.
                           00020F  1785 	C$usb_0.c$190$1$118 ==.
                                   1786 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:190: uint16_t USB_GetSofNumber(void)
                                   1787 ;	-----------------------------------------
                                   1788 ;	 function USB_GetSofNumber
                                   1789 ;	-----------------------------------------
      0041DE                       1790 _USB_GetSofNumber:
                           00020F  1791 	C$usb_0.c$192$1$136 ==.
                                   1792 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:192: return USB_GetShortRegister(FRAMEH);
      0041DE 75 82 0D         [24] 1793 	mov	dpl,#0x0d
      0041E1 12 3F CF         [24] 1794 	lcall	_USB_GetShortRegister
                           000215  1795 	C$usb_0.c$193$1$136 ==.
                           000215  1796 	XG$USB_GetSofNumber$0$0 ==.
      0041E4 22               [24] 1797 	ret
                                   1798 ;------------------------------------------------------------
                                   1799 ;Allocation info for local variables in function 'USB_GetIntsEnabled'
                                   1800 ;------------------------------------------------------------
                           000216  1801 	G$USB_GetIntsEnabled$0$0 ==.
                           000216  1802 	C$usb_0.c$195$1$136 ==.
                                   1803 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:195: bool USB_GetIntsEnabled(void)
                                   1804 ;	-----------------------------------------
                                   1805 ;	 function USB_GetIntsEnabled
                                   1806 ;	-----------------------------------------
      0041E5                       1807 _USB_GetIntsEnabled:
                           000216  1808 	C$usb_0.c$197$1$138 ==.
                                   1809 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:197: SFRPAGE = PG2_PAGE;
      0041E5 75 A7 10         [24] 1810 	mov	_SFRPAGE,#0x10
                           000219  1811 	C$usb_0.c$198$1$138 ==.
                                   1812 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:198: return (bool)(EIE2 & EIE2_EUSB0__ENABLED);
      0041E8 E5 CE            [12] 1813 	mov	a,_EIE2
      0041EA 13               [12] 1814 	rrc	a
      0041EB 92 00            [24] 1815 	mov	b0,c
                           00021E  1816 	C$usb_0.c$199$1$138 ==.
                           00021E  1817 	XG$USB_GetIntsEnabled$0$0 ==.
      0041ED 22               [24] 1818 	ret
                                   1819 ;------------------------------------------------------------
                                   1820 ;Allocation info for local variables in function 'USB_IsPrefetchEnabled'
                                   1821 ;------------------------------------------------------------
                           00021F  1822 	G$USB_IsPrefetchEnabled$0$0 ==.
                           00021F  1823 	C$usb_0.c$201$1$138 ==.
                                   1824 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:201: bool USB_IsPrefetchEnabled(void)
                                   1825 ;	-----------------------------------------
                                   1826 ;	 function USB_IsPrefetchEnabled
                                   1827 ;	-----------------------------------------
      0041EE                       1828 _USB_IsPrefetchEnabled:
                           00021F  1829 	C$usb_0.c$203$1$140 ==.
                                   1830 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:203: SFRPAGE = PG2_PAGE;
      0041EE 75 A7 10         [24] 1831 	mov	_SFRPAGE,#0x10
                           000222  1832 	C$usb_0.c$204$1$140 ==.
                                   1833 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:204: return (bool)(PFE0CN & PFE0CN_PFEN__ENABLED);
      0041F1 E5 C1            [12] 1834 	mov	a,_PFE0CN
      0041F3 A2 E5            [12] 1835 	mov	c,acc[5]
      0041F5 92 00            [24] 1836 	mov	b0,c
                           000228  1837 	C$usb_0.c$205$1$140 ==.
                           000228  1838 	XG$USB_IsPrefetchEnabled$0$0 ==.
      0041F7 22               [24] 1839 	ret
                                   1840 ;------------------------------------------------------------
                                   1841 ;Allocation info for local variables in function 'USB_IsRegulatorEnabled'
                                   1842 ;------------------------------------------------------------
                           000229  1843 	G$USB_IsRegulatorEnabled$0$0 ==.
                           000229  1844 	C$usb_0.c$207$1$140 ==.
                                   1845 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:207: bool USB_IsRegulatorEnabled(void)
                                   1846 ;	-----------------------------------------
                                   1847 ;	 function USB_IsRegulatorEnabled
                                   1848 ;	-----------------------------------------
      0041F8                       1849 _USB_IsRegulatorEnabled:
                           000229  1850 	C$usb_0.c$209$1$142 ==.
                                   1851 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:209: SFRPAGE = PG3_PAGE;
      0041F8 75 A7 20         [24] 1852 	mov	_SFRPAGE,#0x20
                           00022C  1853 	C$usb_0.c$210$1$142 ==.
                                   1854 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:210: return !(REG1CN & REG1CN_REG1ENB__DISABLED);
      0041FB E5 C6            [12] 1855 	mov	a,_REG1CN
      0041FD 33               [12] 1856 	rlc	a
      0041FE B3               [12] 1857 	cpl	c
      0041FF 92 00            [24] 1858 	mov	b0,c
                           000232  1859 	C$usb_0.c$211$1$142 ==.
                           000232  1860 	XG$USB_IsRegulatorEnabled$0$0 ==.
      004201 22               [24] 1861 	ret
                                   1862 ;------------------------------------------------------------
                                   1863 ;Allocation info for local variables in function 'USB_SuspendOscillator'
                                   1864 ;------------------------------------------------------------
                                   1865 ;clkSelSave                Allocated to registers r7 
                                   1866 ;------------------------------------------------------------
                           000233  1867 	G$USB_SuspendOscillator$0$0 ==.
                           000233  1868 	C$usb_0.c$213$1$142 ==.
                                   1869 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:213: void USB_SuspendOscillator(void)
                                   1870 ;	-----------------------------------------
                                   1871 ;	 function USB_SuspendOscillator
                                   1872 ;	-----------------------------------------
      004202                       1873 _USB_SuspendOscillator:
                           000233  1874 	C$usb_0.c$215$1$144 ==.
                                   1875 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:215: uint8_t clkSelSave = CLKSEL & 0x7F;
      004202 74 7F            [12] 1876 	mov	a,#0x7f
      004204 55 A9            [12] 1877 	anl	a,_CLKSEL
      004206 FF               [12] 1878 	mov	r7,a
                           000238  1879 	C$usb_0.c$217$1$144 ==.
                                   1880 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:217: CLKSEL = (CLKSEL_CLKDIV__SYSCLK_DIV_8 | CLKSEL_CLKSL__HFOSC0);
      004207 75 A9 30         [24] 1881 	mov	_CLKSEL,#0x30
                           00023B  1882 	C$usb_0.c$218$1$144 ==.
                                   1883 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:218: SFRPAGE = LEGACY_PAGE;
      00420A 75 A7 00         [24] 1884 	mov	_SFRPAGE,#0x00
                           00023E  1885 	C$usb_0.c$219$1$144 ==.
                                   1886 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:219: PCON1 |= PCON1_SUSPEND__SUSPEND;
      00420D 43 9A 40         [24] 1887 	orl	_PCON1,#0x40
                           000241  1888 	C$usb_0.c$220$1$144 ==.
                                   1889 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:220: CLKSEL = clkSelSave;
      004210 8F A9            [24] 1890 	mov	_CLKSEL,r7
                           000243  1891 	C$usb_0.c$225$1$144 ==.
                                   1892 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:225: if ((CLKSEL & 0x7F) != clkSelSave)
      004212 74 7F            [12] 1893 	mov	a,#0x7f
      004214 55 A9            [12] 1894 	anl	a,_CLKSEL
      004216 FE               [12] 1895 	mov	r6,a
      004217 B5 07 02         [24] 1896 	cjne	a,ar7,00108$
      00421A 80 05            [24] 1897 	sjmp	00103$
      00421C                       1898 00108$:
                           00024D  1899 	C$usb_0.c$227$2$145 ==.
                                   1900 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:227: CLKSEL = (CLKSEL_CLKDIV__SYSCLK_DIV_1 | CLKSEL_CLKSL__HFOSC0);
      00421C 75 A9 00         [24] 1901 	mov	_CLKSEL,#0x00
                           000250  1902 	C$usb_0.c$228$2$145 ==.
                                   1903 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:228: CLKSEL = clkSelSave;
      00421F 8F A9            [24] 1904 	mov	_CLKSEL,r7
      004221                       1905 00103$:
                           000252  1906 	C$usb_0.c$230$1$144 ==.
                           000252  1907 	XG$USB_SuspendOscillator$0$0 ==.
      004221 22               [24] 1908 	ret
                                   1909 	.area CSEG    (CODE)
                                   1910 	.area CONST   (CODE)
                                   1911 	.area XINIT   (CODE)
                                   1912 	.area CABS    (ABS,CODE)
