                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module efm8_usbdep
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _handleUsbOut1Int
                                     12 	.globl _handleUsbIn1Int
                                     13 	.globl _USB_EpOutGetCount
                                     14 	.globl _USB_EpnGetOutPacketReady
                                     15 	.globl _USB_EpnOutGetSentStall
                                     16 	.globl _USB_EpnInGetSentStall
                                     17 	.globl _USB_SetIndex
                                     18 	.globl _USBD_XferCompleteCb
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
                                    351 	.globl _USB_ReadFIFO
                                    352 	.globl _USB_WriteFIFO
                                    353 ;--------------------------------------------------------
                                    354 ; special function registers
                                    355 ;--------------------------------------------------------
                                    356 	.area RSEG    (ABS,DATA)
      000000                        357 	.org 0x0000
                           0000E0   358 G$ACC$0$0 == 0x00e0
                           0000E0   359 _ACC	=	0x00e0
                           0000B3   360 G$ADC0AC$0$0 == 0x00b3
                           0000B3   361 _ADC0AC	=	0x00b3
                           0000BC   362 G$ADC0CF$0$0 == 0x00bc
                           0000BC   363 _ADC0CF	=	0x00bc
                           0000E8   364 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   365 _ADC0CN0	=	0x00e8
                           0000B2   366 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   367 _ADC0CN1	=	0x00b2
                           0000C4   368 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   369 _ADC0GTH	=	0x00c4
                           0000C3   370 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   371 _ADC0GTL	=	0x00c3
                           0000BE   372 G$ADC0H$0$0 == 0x00be
                           0000BE   373 _ADC0H	=	0x00be
                           0000BD   374 G$ADC0L$0$0 == 0x00bd
                           0000BD   375 _ADC0L	=	0x00bd
                           0000C6   376 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   377 _ADC0LTH	=	0x00c6
                           0000C5   378 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   379 _ADC0LTL	=	0x00c5
                           0000BB   380 G$ADC0MX$0$0 == 0x00bb
                           0000BB   381 _ADC0MX	=	0x00bb
                           0000DF   382 G$ADC0PWR$0$0 == 0x00df
                           0000DF   383 _ADC0PWR	=	0x00df
                           0000B9   384 G$ADC0TK$0$0 == 0x00b9
                           0000B9   385 _ADC0TK	=	0x00b9
                           0000F0   386 G$B$0$0 == 0x00f0
                           0000F0   387 _B	=	0x00f0
                           00008E   388 G$CKCON0$0$0 == 0x008e
                           00008E   389 _CKCON0	=	0x008e
                           0000A6   390 G$CKCON1$0$0 == 0x00a6
                           0000A6   391 _CKCON1	=	0x00a6
                           0000A9   392 G$CLKSEL$0$0 == 0x00a9
                           0000A9   393 _CLKSEL	=	0x00a9
                           00009B   394 G$CMP0CN0$0$0 == 0x009b
                           00009B   395 _CMP0CN0	=	0x009b
                           000099   396 G$CMP0CN1$0$0 == 0x0099
                           000099   397 _CMP0CN1	=	0x0099
                           00009D   398 G$CMP0MD$0$0 == 0x009d
                           00009D   399 _CMP0MD	=	0x009d
                           00009F   400 G$CMP0MX$0$0 == 0x009f
                           00009F   401 _CMP0MX	=	0x009f
                           0000BF   402 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   403 _CMP1CN0	=	0x00bf
                           0000AC   404 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   405 _CMP1CN1	=	0x00ac
                           0000AB   406 G$CMP1MD$0$0 == 0x00ab
                           0000AB   407 _CMP1MD	=	0x00ab
                           0000AA   408 G$CMP1MX$0$0 == 0x00aa
                           0000AA   409 _CMP1MX	=	0x00aa
                           0000CE   410 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   411 _CRC0CN0	=	0x00ce
                           000086   412 G$CRC0CN1$0$0 == 0x0086
                           000086   413 _CRC0CN1	=	0x0086
                           0000D3   414 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   415 _CRC0CNT	=	0x00d3
                           0000DE   416 G$CRC0DAT$0$0 == 0x00de
                           0000DE   417 _CRC0DAT	=	0x00de
                           0000CF   418 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   419 _CRC0FLIP	=	0x00cf
                           0000DD   420 G$CRC0IN$0$0 == 0x00dd
                           0000DD   421 _CRC0IN	=	0x00dd
                           0000D2   422 G$CRC0ST$0$0 == 0x00d2
                           0000D2   423 _CRC0ST	=	0x00d2
                           0000AD   424 G$DERIVID$0$0 == 0x00ad
                           0000AD   425 _DERIVID	=	0x00ad
                           0000B5   426 G$DEVICEID$0$0 == 0x00b5
                           0000B5   427 _DEVICEID	=	0x00b5
                           000083   428 G$DPH$0$0 == 0x0083
                           000083   429 _DPH	=	0x0083
                           000082   430 G$DPL$0$0 == 0x0082
                           000082   431 _DPL	=	0x0082
                           0000E6   432 G$EIE1$0$0 == 0x00e6
                           0000E6   433 _EIE1	=	0x00e6
                           0000CE   434 G$EIE2$0$0 == 0x00ce
                           0000CE   435 _EIE2	=	0x00ce
                           0000F3   436 G$EIP1$0$0 == 0x00f3
                           0000F3   437 _EIP1	=	0x00f3
                           0000F5   438 G$EIP1H$0$0 == 0x00f5
                           0000F5   439 _EIP1H	=	0x00f5
                           0000F4   440 G$EIP2$0$0 == 0x00f4
                           0000F4   441 _EIP2	=	0x00f4
                           0000F6   442 G$EIP2H$0$0 == 0x00f6
                           0000F6   443 _EIP2H	=	0x00f6
                           0000E7   444 G$EMI0CN$0$0 == 0x00e7
                           0000E7   445 _EMI0CN	=	0x00e7
                           0000B7   446 G$FLKEY$0$0 == 0x00b7
                           0000B7   447 _FLKEY	=	0x00b7
                           0000C7   448 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   449 _HFO0CAL	=	0x00c7
                           0000D6   450 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   451 _HFO1CAL	=	0x00d6
                           0000EF   452 G$HFOCN$0$0 == 0x00ef
                           0000EF   453 _HFOCN	=	0x00ef
                           0000BA   454 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   455 _I2C0CN0	=	0x00ba
                           0000BC   456 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   457 _I2C0DIN	=	0x00bc
                           0000BB   458 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   459 _I2C0DOUT	=	0x00bb
                           0000AD   460 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   461 _I2C0FCN0	=	0x00ad
                           0000AB   462 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   463 _I2C0FCN1	=	0x00ab
                           0000F5   464 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   465 _I2C0FCT	=	0x00f5
                           0000BD   466 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   467 _I2C0SLAD	=	0x00bd
                           0000B9   468 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   469 _I2C0STAT	=	0x00b9
                           0000A8   470 G$IE$0$0 == 0x00a8
                           0000A8   471 _IE	=	0x00a8
                           0000B8   472 G$IP$0$0 == 0x00b8
                           0000B8   473 _IP	=	0x00b8
                           0000F2   474 G$IPH$0$0 == 0x00f2
                           0000F2   475 _IPH	=	0x00f2
                           0000E4   476 G$IT01CF$0$0 == 0x00e4
                           0000E4   477 _IT01CF	=	0x00e4
                           0000B1   478 G$LFO0CN$0$0 == 0x00b1
                           0000B1   479 _LFO0CN	=	0x00b1
                           000080   480 G$P0$0$0 == 0x0080
                           000080   481 _P0	=	0x0080
                           0000FE   482 G$P0MASK$0$0 == 0x00fe
                           0000FE   483 _P0MASK	=	0x00fe
                           0000FD   484 G$P0MAT$0$0 == 0x00fd
                           0000FD   485 _P0MAT	=	0x00fd
                           0000F1   486 G$P0MDIN$0$0 == 0x00f1
                           0000F1   487 _P0MDIN	=	0x00f1
                           0000A4   488 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   489 _P0MDOUT	=	0x00a4
                           0000D4   490 G$P0SKIP$0$0 == 0x00d4
                           0000D4   491 _P0SKIP	=	0x00d4
                           000090   492 G$P1$0$0 == 0x0090
                           000090   493 _P1	=	0x0090
                           0000EE   494 G$P1MASK$0$0 == 0x00ee
                           0000EE   495 _P1MASK	=	0x00ee
                           0000ED   496 G$P1MAT$0$0 == 0x00ed
                           0000ED   497 _P1MAT	=	0x00ed
                           0000F2   498 G$P1MDIN$0$0 == 0x00f2
                           0000F2   499 _P1MDIN	=	0x00f2
                           0000A5   500 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   501 _P1MDOUT	=	0x00a5
                           0000D5   502 G$P1SKIP$0$0 == 0x00d5
                           0000D5   503 _P1SKIP	=	0x00d5
                           0000A0   504 G$P2$0$0 == 0x00a0
                           0000A0   505 _P2	=	0x00a0
                           0000FC   506 G$P2MASK$0$0 == 0x00fc
                           0000FC   507 _P2MASK	=	0x00fc
                           0000FB   508 G$P2MAT$0$0 == 0x00fb
                           0000FB   509 _P2MAT	=	0x00fb
                           0000F3   510 G$P2MDIN$0$0 == 0x00f3
                           0000F3   511 _P2MDIN	=	0x00f3
                           0000A6   512 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   513 _P2MDOUT	=	0x00a6
                           0000CC   514 G$P2SKIP$0$0 == 0x00cc
                           0000CC   515 _P2SKIP	=	0x00cc
                           0000B0   516 G$P3$0$0 == 0x00b0
                           0000B0   517 _P3	=	0x00b0
                           0000F4   518 G$P3MDIN$0$0 == 0x00f4
                           0000F4   519 _P3MDIN	=	0x00f4
                           00009C   520 G$P3MDOUT$0$0 == 0x009c
                           00009C   521 _P3MDOUT	=	0x009c
                           00009E   522 G$PCA0CENT$0$0 == 0x009e
                           00009E   523 _PCA0CENT	=	0x009e
                           00009C   524 G$PCA0CLR$0$0 == 0x009c
                           00009C   525 _PCA0CLR	=	0x009c
                           0000D8   526 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   527 _PCA0CN0	=	0x00d8
                           0000FC   528 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   529 _PCA0CPH0	=	0x00fc
                           0000EA   530 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   531 _PCA0CPH1	=	0x00ea
                           0000EC   532 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   533 _PCA0CPH2	=	0x00ec
                           0000FB   534 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   535 _PCA0CPL0	=	0x00fb
                           0000E9   536 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   537 _PCA0CPL1	=	0x00e9
                           0000EB   538 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   539 _PCA0CPL2	=	0x00eb
                           0000DA   540 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   541 _PCA0CPM0	=	0x00da
                           0000DB   542 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   543 _PCA0CPM1	=	0x00db
                           0000DC   544 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   545 _PCA0CPM2	=	0x00dc
                           0000FA   546 G$PCA0H$0$0 == 0x00fa
                           0000FA   547 _PCA0H	=	0x00fa
                           0000F9   548 G$PCA0L$0$0 == 0x00f9
                           0000F9   549 _PCA0L	=	0x00f9
                           0000D9   550 G$PCA0MD$0$0 == 0x00d9
                           0000D9   551 _PCA0MD	=	0x00d9
                           000096   552 G$PCA0POL$0$0 == 0x0096
                           000096   553 _PCA0POL	=	0x0096
                           0000F7   554 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   555 _PCA0PWM	=	0x00f7
                           000087   556 G$PCON0$0$0 == 0x0087
                           000087   557 _PCON0	=	0x0087
                           00009A   558 G$PCON1$0$0 == 0x009a
                           00009A   559 _PCON1	=	0x009a
                           0000C1   560 G$PFE0CN$0$0 == 0x00c1
                           0000C1   561 _PFE0CN	=	0x00c1
                           0000F6   562 G$PRTDRV$0$0 == 0x00f6
                           0000F6   563 _PRTDRV	=	0x00f6
                           00008F   564 G$PSCTL$0$0 == 0x008f
                           00008F   565 _PSCTL	=	0x008f
                           0000D0   566 G$PSW$0$0 == 0x00d0
                           0000D0   567 _PSW	=	0x00d0
                           0000D1   568 G$REF0CN$0$0 == 0x00d1
                           0000D1   569 _REF0CN	=	0x00d1
                           0000C9   570 G$REG0CN$0$0 == 0x00c9
                           0000C9   571 _REG0CN	=	0x00c9
                           0000C6   572 G$REG1CN$0$0 == 0x00c6
                           0000C6   573 _REG1CN	=	0x00c6
                           0000B6   574 G$REVID$0$0 == 0x00b6
                           0000B6   575 _REVID	=	0x00b6
                           0000EF   576 G$RSTSRC$0$0 == 0x00ef
                           0000EF   577 _RSTSRC	=	0x00ef
                           000094   578 G$SBCON1$0$0 == 0x0094
                           000094   579 _SBCON1	=	0x0094
                           000096   580 G$SBRLH1$0$0 == 0x0096
                           000096   581 _SBRLH1	=	0x0096
                           000095   582 G$SBRLL1$0$0 == 0x0095
                           000095   583 _SBRLL1	=	0x0095
                           000099   584 G$SBUF0$0$0 == 0x0099
                           000099   585 _SBUF0	=	0x0099
                           000092   586 G$SBUF1$0$0 == 0x0092
                           000092   587 _SBUF1	=	0x0092
                           000098   588 G$SCON0$0$0 == 0x0098
                           000098   589 _SCON0	=	0x0098
                           0000C8   590 G$SCON1$0$0 == 0x00c8
                           0000C8   591 _SCON1	=	0x00c8
                           0000A7   592 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   593 _SFRPAGE	=	0x00a7
                           0000CF   594 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   595 _SFRPGCN	=	0x00cf
                           0000D7   596 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   597 _SFRSTACK	=	0x00d7
                           0000D6   598 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   599 _SMB0ADM	=	0x00d6
                           0000D7   600 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   601 _SMB0ADR	=	0x00d7
                           0000C1   602 G$SMB0CF$0$0 == 0x00c1
                           0000C1   603 _SMB0CF	=	0x00c1
                           0000C0   604 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   605 _SMB0CN0	=	0x00c0
                           0000C2   606 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   607 _SMB0DAT	=	0x00c2
                           0000C3   608 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   609 _SMB0FCN0	=	0x00c3
                           0000C4   610 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   611 _SMB0FCN1	=	0x00c4
                           0000EF   612 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   613 _SMB0FCT	=	0x00ef
                           0000C5   614 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   615 _SMB0RXLN	=	0x00c5
                           0000AC   616 G$SMB0TC$0$0 == 0x00ac
                           0000AC   617 _SMB0TC	=	0x00ac
                           000093   618 G$SMOD1$0$0 == 0x0093
                           000093   619 _SMOD1	=	0x0093
                           000081   620 G$SP$0$0 == 0x0081
                           000081   621 _SP	=	0x0081
                           0000A1   622 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   623 _SPI0CFG	=	0x00a1
                           0000A2   624 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   625 _SPI0CKR	=	0x00a2
                           0000F8   626 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   627 _SPI0CN0	=	0x00f8
                           0000A3   628 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   629 _SPI0DAT	=	0x00a3
                           00009A   630 G$SPI0FCN0$0$0 == 0x009a
                           00009A   631 _SPI0FCN0	=	0x009a
                           00009B   632 G$SPI0FCN1$0$0 == 0x009b
                           00009B   633 _SPI0FCN1	=	0x009b
                           0000F7   634 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   635 _SPI0FCT	=	0x00f7
                           000088   636 G$TCON$0$0 == 0x0088
                           000088   637 _TCON	=	0x0088
                           00008C   638 G$TH0$0$0 == 0x008c
                           00008C   639 _TH0	=	0x008c
                           00008D   640 G$TH1$0$0 == 0x008d
                           00008D   641 _TH1	=	0x008d
                           00008A   642 G$TL0$0$0 == 0x008a
                           00008A   643 _TL0	=	0x008a
                           00008B   644 G$TL1$0$0 == 0x008b
                           00008B   645 _TL1	=	0x008b
                           000089   646 G$TMOD$0$0 == 0x0089
                           000089   647 _TMOD	=	0x0089
                           0000C8   648 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   649 _TMR2CN0	=	0x00c8
                           0000FD   650 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   651 _TMR2CN1	=	0x00fd
                           0000CD   652 G$TMR2H$0$0 == 0x00cd
                           0000CD   653 _TMR2H	=	0x00cd
                           0000CC   654 G$TMR2L$0$0 == 0x00cc
                           0000CC   655 _TMR2L	=	0x00cc
                           0000CB   656 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   657 _TMR2RLH	=	0x00cb
                           0000CA   658 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   659 _TMR2RLL	=	0x00ca
                           000091   660 G$TMR3CN0$0$0 == 0x0091
                           000091   661 _TMR3CN0	=	0x0091
                           0000FE   662 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   663 _TMR3CN1	=	0x00fe
                           000095   664 G$TMR3H$0$0 == 0x0095
                           000095   665 _TMR3H	=	0x0095
                           000094   666 G$TMR3L$0$0 == 0x0094
                           000094   667 _TMR3L	=	0x0094
                           000093   668 G$TMR3RLH$0$0 == 0x0093
                           000093   669 _TMR3RLH	=	0x0093
                           000092   670 G$TMR3RLL$0$0 == 0x0092
                           000092   671 _TMR3RLL	=	0x0092
                           000098   672 G$TMR4CN0$0$0 == 0x0098
                           000098   673 _TMR4CN0	=	0x0098
                           0000FF   674 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   675 _TMR4CN1	=	0x00ff
                           0000A5   676 G$TMR4H$0$0 == 0x00a5
                           0000A5   677 _TMR4H	=	0x00a5
                           0000A4   678 G$TMR4L$0$0 == 0x00a4
                           0000A4   679 _TMR4L	=	0x00a4
                           0000A3   680 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   681 _TMR4RLH	=	0x00a3
                           0000A2   682 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   683 _TMR4RLL	=	0x00a2
                           00009D   684 G$UART1FCN0$0$0 == 0x009d
                           00009D   685 _UART1FCN0	=	0x009d
                           0000D8   686 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   687 _UART1FCN1	=	0x00d8
                           0000FA   688 G$UART1FCT$0$0 == 0x00fa
                           0000FA   689 _UART1FCT	=	0x00fa
                           00009E   690 G$UART1LIN$0$0 == 0x009e
                           00009E   691 _UART1LIN	=	0x009e
                           0000AE   692 G$USB0ADR$0$0 == 0x00ae
                           0000AE   693 _USB0ADR	=	0x00ae
                           0000B2   694 G$USB0AEC$0$0 == 0x00b2
                           0000B2   695 _USB0AEC	=	0x00b2
                           0000B6   696 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   697 _USB0CDCF	=	0x00b6
                           0000BE   698 G$USB0CDCN$0$0 == 0x00be
                           0000BE   699 _USB0CDCN	=	0x00be
                           0000BF   700 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   701 _USB0CDSTA	=	0x00bf
                           0000B5   702 G$USB0CF$0$0 == 0x00b5
                           0000B5   703 _USB0CF	=	0x00b5
                           0000AF   704 G$USB0DAT$0$0 == 0x00af
                           0000AF   705 _USB0DAT	=	0x00af
                           0000B3   706 G$USB0XCN$0$0 == 0x00b3
                           0000B3   707 _USB0XCN	=	0x00b3
                           0000FF   708 G$VDM0CN$0$0 == 0x00ff
                           0000FF   709 _VDM0CN	=	0x00ff
                           000097   710 G$WDTCN$0$0 == 0x0097
                           000097   711 _WDTCN	=	0x0097
                           0000E1   712 G$XBR0$0$0 == 0x00e1
                           0000E1   713 _XBR0	=	0x00e1
                           0000E2   714 G$XBR1$0$0 == 0x00e2
                           0000E2   715 _XBR1	=	0x00e2
                           0000E3   716 G$XBR2$0$0 == 0x00e3
                           0000E3   717 _XBR2	=	0x00e3
                           0000C3   718 G$ADC0GT$0$0 == 0x00c3
                           0000C3   719 _ADC0GT	=	0x00c3
                           0000BD   720 G$ADC0$0$0 == 0x00bd
                           0000BD   721 _ADC0	=	0x00bd
                           0000C5   722 G$ADC0LT$0$0 == 0x00c5
                           0000C5   723 _ADC0LT	=	0x00c5
                           000082   724 G$DP$0$0 == 0x0082
                           000082   725 _DP	=	0x0082
                           0000FB   726 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   727 _PCA0CP0	=	0x00fb
                           0000E9   728 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   729 _PCA0CP1	=	0x00e9
                           0000EB   730 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   731 _PCA0CP2	=	0x00eb
                           0000F9   732 G$PCA0$0$0 == 0x00f9
                           0000F9   733 _PCA0	=	0x00f9
                           000095   734 G$SBRL1$0$0 == 0x0095
                           000095   735 _SBRL1	=	0x0095
                           0000CC   736 G$TMR2$0$0 == 0x00cc
                           0000CC   737 _TMR2	=	0x00cc
                           0000CA   738 G$TMR2RL$0$0 == 0x00ca
                           0000CA   739 _TMR2RL	=	0x00ca
                           000094   740 G$TMR3$0$0 == 0x0094
                           000094   741 _TMR3	=	0x0094
                           000092   742 G$TMR3RL$0$0 == 0x0092
                           000092   743 _TMR3RL	=	0x0092
                           0000A4   744 G$TMR4$0$0 == 0x00a4
                           0000A4   745 _TMR4	=	0x00a4
                           0000A2   746 G$TMR4RL$0$0 == 0x00a2
                           0000A2   747 _TMR4RL	=	0x00a2
                           0000AA   748 G$_XPAGE$0$0 == 0x00aa
                           0000AA   749 __XPAGE	=	0x00aa
                                    750 ;--------------------------------------------------------
                                    751 ; special function bits
                                    752 ;--------------------------------------------------------
                                    753 	.area RSEG    (ABS,DATA)
      000000                        754 	.org 0x0000
                           0000E0   755 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   756 _ACC_ACC0	=	0x00e0
                           0000E1   757 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   758 _ACC_ACC1	=	0x00e1
                           0000E2   759 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   760 _ACC_ACC2	=	0x00e2
                           0000E3   761 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   762 _ACC_ACC3	=	0x00e3
                           0000E4   763 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   764 _ACC_ACC4	=	0x00e4
                           0000E5   765 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   766 _ACC_ACC5	=	0x00e5
                           0000E6   767 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   768 _ACC_ACC6	=	0x00e6
                           0000E7   769 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   770 _ACC_ACC7	=	0x00e7
                           0000E8   771 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   772 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   773 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   774 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   775 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   776 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   777 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   778 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   779 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   780 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   781 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   782 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   783 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   784 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   785 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   786 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   787 G$B_B0$0$0 == 0x00f0
                           0000F0   788 _B_B0	=	0x00f0
                           0000F1   789 G$B_B1$0$0 == 0x00f1
                           0000F1   790 _B_B1	=	0x00f1
                           0000F2   791 G$B_B2$0$0 == 0x00f2
                           0000F2   792 _B_B2	=	0x00f2
                           0000F3   793 G$B_B3$0$0 == 0x00f3
                           0000F3   794 _B_B3	=	0x00f3
                           0000F4   795 G$B_B4$0$0 == 0x00f4
                           0000F4   796 _B_B4	=	0x00f4
                           0000F5   797 G$B_B5$0$0 == 0x00f5
                           0000F5   798 _B_B5	=	0x00f5
                           0000F6   799 G$B_B6$0$0 == 0x00f6
                           0000F6   800 _B_B6	=	0x00f6
                           0000F7   801 G$B_B7$0$0 == 0x00f7
                           0000F7   802 _B_B7	=	0x00f7
                           0000A8   803 G$IE_EX0$0$0 == 0x00a8
                           0000A8   804 _IE_EX0	=	0x00a8
                           0000A9   805 G$IE_ET0$0$0 == 0x00a9
                           0000A9   806 _IE_ET0	=	0x00a9
                           0000AA   807 G$IE_EX1$0$0 == 0x00aa
                           0000AA   808 _IE_EX1	=	0x00aa
                           0000AB   809 G$IE_ET1$0$0 == 0x00ab
                           0000AB   810 _IE_ET1	=	0x00ab
                           0000AC   811 G$IE_ES0$0$0 == 0x00ac
                           0000AC   812 _IE_ES0	=	0x00ac
                           0000AD   813 G$IE_ET2$0$0 == 0x00ad
                           0000AD   814 _IE_ET2	=	0x00ad
                           0000AE   815 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   816 _IE_ESPI0	=	0x00ae
                           0000AF   817 G$IE_EA$0$0 == 0x00af
                           0000AF   818 _IE_EA	=	0x00af
                           0000B8   819 G$IP_PX0$0$0 == 0x00b8
                           0000B8   820 _IP_PX0	=	0x00b8
                           0000B9   821 G$IP_PT0$0$0 == 0x00b9
                           0000B9   822 _IP_PT0	=	0x00b9
                           0000BA   823 G$IP_PX1$0$0 == 0x00ba
                           0000BA   824 _IP_PX1	=	0x00ba
                           0000BB   825 G$IP_PT1$0$0 == 0x00bb
                           0000BB   826 _IP_PT1	=	0x00bb
                           0000BC   827 G$IP_PS0$0$0 == 0x00bc
                           0000BC   828 _IP_PS0	=	0x00bc
                           0000BD   829 G$IP_PT2$0$0 == 0x00bd
                           0000BD   830 _IP_PT2	=	0x00bd
                           0000BE   831 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   832 _IP_PSPI0	=	0x00be
                           000080   833 G$P0_B0$0$0 == 0x0080
                           000080   834 _P0_B0	=	0x0080
                           000081   835 G$P0_B1$0$0 == 0x0081
                           000081   836 _P0_B1	=	0x0081
                           000082   837 G$P0_B2$0$0 == 0x0082
                           000082   838 _P0_B2	=	0x0082
                           000083   839 G$P0_B3$0$0 == 0x0083
                           000083   840 _P0_B3	=	0x0083
                           000084   841 G$P0_B4$0$0 == 0x0084
                           000084   842 _P0_B4	=	0x0084
                           000085   843 G$P0_B5$0$0 == 0x0085
                           000085   844 _P0_B5	=	0x0085
                           000086   845 G$P0_B6$0$0 == 0x0086
                           000086   846 _P0_B6	=	0x0086
                           000087   847 G$P0_B7$0$0 == 0x0087
                           000087   848 _P0_B7	=	0x0087
                           000090   849 G$P1_B0$0$0 == 0x0090
                           000090   850 _P1_B0	=	0x0090
                           000091   851 G$P1_B1$0$0 == 0x0091
                           000091   852 _P1_B1	=	0x0091
                           000092   853 G$P1_B2$0$0 == 0x0092
                           000092   854 _P1_B2	=	0x0092
                           000093   855 G$P1_B3$0$0 == 0x0093
                           000093   856 _P1_B3	=	0x0093
                           000094   857 G$P1_B4$0$0 == 0x0094
                           000094   858 _P1_B4	=	0x0094
                           000095   859 G$P1_B5$0$0 == 0x0095
                           000095   860 _P1_B5	=	0x0095
                           000096   861 G$P1_B6$0$0 == 0x0096
                           000096   862 _P1_B6	=	0x0096
                           000097   863 G$P1_B7$0$0 == 0x0097
                           000097   864 _P1_B7	=	0x0097
                           0000A0   865 G$P2_B0$0$0 == 0x00a0
                           0000A0   866 _P2_B0	=	0x00a0
                           0000A1   867 G$P2_B1$0$0 == 0x00a1
                           0000A1   868 _P2_B1	=	0x00a1
                           0000A2   869 G$P2_B2$0$0 == 0x00a2
                           0000A2   870 _P2_B2	=	0x00a2
                           0000A3   871 G$P2_B3$0$0 == 0x00a3
                           0000A3   872 _P2_B3	=	0x00a3
                           0000B0   873 G$P3_B0$0$0 == 0x00b0
                           0000B0   874 _P3_B0	=	0x00b0
                           0000B1   875 G$P3_B1$0$0 == 0x00b1
                           0000B1   876 _P3_B1	=	0x00b1
                           0000D8   877 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   878 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   879 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   880 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   881 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   882 _PCA0CN0_CCF2	=	0x00da
                           0000DE   883 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   884 _PCA0CN0_CR	=	0x00de
                           0000DF   885 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   886 _PCA0CN0_CF	=	0x00df
                           0000D0   887 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   888 _PSW_PARITY	=	0x00d0
                           0000D1   889 G$PSW_F1$0$0 == 0x00d1
                           0000D1   890 _PSW_F1	=	0x00d1
                           0000D2   891 G$PSW_OV$0$0 == 0x00d2
                           0000D2   892 _PSW_OV	=	0x00d2
                           0000D3   893 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   894 _PSW_RS0	=	0x00d3
                           0000D4   895 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   896 _PSW_RS1	=	0x00d4
                           0000D5   897 G$PSW_F0$0$0 == 0x00d5
                           0000D5   898 _PSW_F0	=	0x00d5
                           0000D6   899 G$PSW_AC$0$0 == 0x00d6
                           0000D6   900 _PSW_AC	=	0x00d6
                           0000D7   901 G$PSW_CY$0$0 == 0x00d7
                           0000D7   902 _PSW_CY	=	0x00d7
                           000098   903 G$SCON0_RI$0$0 == 0x0098
                           000098   904 _SCON0_RI	=	0x0098
                           000099   905 G$SCON0_TI$0$0 == 0x0099
                           000099   906 _SCON0_TI	=	0x0099
                           00009A   907 G$SCON0_RB8$0$0 == 0x009a
                           00009A   908 _SCON0_RB8	=	0x009a
                           00009B   909 G$SCON0_TB8$0$0 == 0x009b
                           00009B   910 _SCON0_TB8	=	0x009b
                           00009C   911 G$SCON0_REN$0$0 == 0x009c
                           00009C   912 _SCON0_REN	=	0x009c
                           00009D   913 G$SCON0_MCE$0$0 == 0x009d
                           00009D   914 _SCON0_MCE	=	0x009d
                           00009F   915 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   916 _SCON0_SMODE	=	0x009f
                           0000C8   917 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   918 _SCON1_RI	=	0x00c8
                           0000C9   919 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   920 _SCON1_TI	=	0x00c9
                           0000CA   921 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   922 _SCON1_RBX	=	0x00ca
                           0000CB   923 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   924 _SCON1_TBX	=	0x00cb
                           0000CC   925 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   926 _SCON1_REN	=	0x00cc
                           0000CE   927 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   928 _SCON1_PERR	=	0x00ce
                           0000CF   929 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   930 _SCON1_OVR	=	0x00cf
                           0000C0   931 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   932 _SMB0CN0_SI	=	0x00c0
                           0000C1   933 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   934 _SMB0CN0_ACK	=	0x00c1
                           0000C2   935 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   936 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   937 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   938 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   939 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   940 _SMB0CN0_STO	=	0x00c4
                           0000C5   941 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   942 _SMB0CN0_STA	=	0x00c5
                           0000C6   943 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   944 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   945 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   946 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   947 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   948 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   949 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   950 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   951 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   952 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   953 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   954 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   955 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   956 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   957 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   958 _SPI0CN0_MODF	=	0x00fd
                           0000FE   959 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   960 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   961 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   962 _SPI0CN0_SPIF	=	0x00ff
                           000088   963 G$TCON_IT0$0$0 == 0x0088
                           000088   964 _TCON_IT0	=	0x0088
                           000089   965 G$TCON_IE0$0$0 == 0x0089
                           000089   966 _TCON_IE0	=	0x0089
                           00008A   967 G$TCON_IT1$0$0 == 0x008a
                           00008A   968 _TCON_IT1	=	0x008a
                           00008B   969 G$TCON_IE1$0$0 == 0x008b
                           00008B   970 _TCON_IE1	=	0x008b
                           00008C   971 G$TCON_TR0$0$0 == 0x008c
                           00008C   972 _TCON_TR0	=	0x008c
                           00008D   973 G$TCON_TF0$0$0 == 0x008d
                           00008D   974 _TCON_TF0	=	0x008d
                           00008E   975 G$TCON_TR1$0$0 == 0x008e
                           00008E   976 _TCON_TR1	=	0x008e
                           00008F   977 G$TCON_TF1$0$0 == 0x008f
                           00008F   978 _TCON_TF1	=	0x008f
                           0000C8   979 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   980 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   981 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   982 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   983 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   984 _TMR2CN0_TR2	=	0x00ca
                           0000CB   985 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   986 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   987 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   988 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   989 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   990 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   991 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE   992 _TMR2CN0_TF2L	=	0x00ce
                           0000CF   993 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF   994 _TMR2CN0_TF2H	=	0x00cf
                           000098   995 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098   996 _TMR4CN0_T4XCLK0	=	0x0098
                           000099   997 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099   998 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A   999 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1000 _TMR4CN0_TR4	=	0x009a
                           00009B  1001 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1002 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1003 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1004 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1005 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1006 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1007 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1008 _TMR4CN0_TF4L	=	0x009e
                           00009F  1009 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1010 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1011 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1012 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1013 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1014 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1015 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1016 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1017 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1018 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1019 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1020 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1021 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1022 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1023 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1024 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1025 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1026 _UART1FCN1_TFRQ	=	0x00df
                                   1027 ;--------------------------------------------------------
                                   1028 ; overlayable register banks
                                   1029 ;--------------------------------------------------------
                                   1030 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1031 	.ds 8
                                   1032 ;--------------------------------------------------------
                                   1033 ; overlayable bit register bank
                                   1034 ;--------------------------------------------------------
                                   1035 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1036 bits:
      000020                       1037 	.ds 1
                           008000  1038 	b0 = bits[0]
                           008100  1039 	b1 = bits[1]
                           008200  1040 	b2 = bits[2]
                           008300  1041 	b3 = bits[3]
                           008400  1042 	b4 = bits[4]
                           008500  1043 	b5 = bits[5]
                           008600  1044 	b6 = bits[6]
                           008700  1045 	b7 = bits[7]
                                   1046 ;--------------------------------------------------------
                                   1047 ; internal ram data
                                   1048 ;--------------------------------------------------------
                                   1049 	.area DSEG    (DATA)
                                   1050 ;--------------------------------------------------------
                                   1051 ; overlayable items in internal ram 
                                   1052 ;--------------------------------------------------------
                                   1053 ;--------------------------------------------------------
                                   1054 ; indirectly addressable internal ram data
                                   1055 ;--------------------------------------------------------
                                   1056 	.area ISEG    (DATA)
                                   1057 ;--------------------------------------------------------
                                   1058 ; absolute internal ram data
                                   1059 ;--------------------------------------------------------
                                   1060 	.area IABS    (ABS,DATA)
                                   1061 	.area IABS    (ABS,DATA)
                                   1062 ;--------------------------------------------------------
                                   1063 ; bit data
                                   1064 ;--------------------------------------------------------
                                   1065 	.area BSEG    (BIT)
                                   1066 ;--------------------------------------------------------
                                   1067 ; paged external ram data
                                   1068 ;--------------------------------------------------------
                                   1069 	.area PSEG    (PAG,XDATA)
                                   1070 ;--------------------------------------------------------
                                   1071 ; external ram data
                                   1072 ;--------------------------------------------------------
                                   1073 	.area XSEG    (XDATA)
                                   1074 ;--------------------------------------------------------
                                   1075 ; absolute external ram data
                                   1076 ;--------------------------------------------------------
                                   1077 	.area XABS    (ABS,XDATA)
                                   1078 ;--------------------------------------------------------
                                   1079 ; external initialized ram data
                                   1080 ;--------------------------------------------------------
                                   1081 	.area XISEG   (XDATA)
                                   1082 	.area HOME    (CODE)
                                   1083 	.area GSINIT0 (CODE)
                                   1084 	.area GSINIT1 (CODE)
                                   1085 	.area GSINIT2 (CODE)
                                   1086 	.area GSINIT3 (CODE)
                                   1087 	.area GSINIT4 (CODE)
                                   1088 	.area GSINIT5 (CODE)
                                   1089 	.area GSINIT  (CODE)
                                   1090 	.area GSFINAL (CODE)
                                   1091 	.area CSEG    (CODE)
                                   1092 ;--------------------------------------------------------
                                   1093 ; global & static initialisations
                                   1094 ;--------------------------------------------------------
                                   1095 	.area HOME    (CODE)
                                   1096 	.area GSINIT  (CODE)
                                   1097 	.area GSFINAL (CODE)
                                   1098 	.area GSINIT  (CODE)
                                   1099 ;--------------------------------------------------------
                                   1100 ; Home
                                   1101 ;--------------------------------------------------------
                                   1102 	.area HOME    (CODE)
                                   1103 	.area HOME    (CODE)
                                   1104 ;--------------------------------------------------------
                                   1105 ; code
                                   1106 ;--------------------------------------------------------
                                   1107 	.area CSEG    (CODE)
                                   1108 ;------------------------------------------------------------
                                   1109 ;Allocation info for local variables in function 'handleUsbIn1Int'
                                   1110 ;------------------------------------------------------------
                                   1111 ;xferred                   Allocated to registers r4 
                                   1112 ;callback                  Allocated to registers b0 
                                   1113 ;sloc0                     Allocated to stack - _bp +1
                                   1114 ;------------------------------------------------------------
                           000000  1115 	G$handleUsbIn1Int$0$0 ==.
                           000000  1116 	C$efm8_usbdep.c$125$0$0 ==.
                                   1117 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:125: void handleUsbIn1Int(void)
                                   1118 ;	-----------------------------------------
                                   1119 ;	 function handleUsbIn1Int
                                   1120 ;	-----------------------------------------
      0032C3                       1121 _handleUsbIn1Int:
                           000007  1122 	ar7 = 0x07
                           000006  1123 	ar6 = 0x06
                           000005  1124 	ar5 = 0x05
                           000004  1125 	ar4 = 0x04
                           000003  1126 	ar3 = 0x03
                           000002  1127 	ar2 = 0x02
                           000001  1128 	ar1 = 0x01
                           000000  1129 	ar0 = 0x00
      0032C3 C0 1B            [24] 1130 	push	_bp
      0032C5 85 81 1B         [24] 1131 	mov	_bp,sp
      0032C8 05 81            [12] 1132 	inc	sp
      0032CA 05 81            [12] 1133 	inc	sp
                           000009  1134 	C$efm8_usbdep.c$130$1$86 ==.
                                   1135 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:130: USB_SetIndex(1);
      0032CC 75 82 01         [24] 1136 	mov	dpl,#0x01
      0032CF 12 3F F9         [24] 1137 	lcall	_USB_SetIndex
                           00000F  1138 	C$efm8_usbdep.c$132$1$86 ==.
                                   1139 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:132: if (USB_EpnInGetSentStall())
      0032D2 12 40 8C         [24] 1140 	lcall	_USB_EpnInGetSentStall
      0032D5 50 0E            [24] 1141 	jnc	00115$
                           000014  1142 	C$efm8_usbdep.c$134$3$88 ==.
                                   1143 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:134: USB_EpnInClearSentStall();
      0032D7 75 AE 11         [24] 1144 	mov	_USB0ADR,#0x11
      0032DA 75 AF 00         [24] 1145 	mov	_USB0DAT,#0x00
      0032DD                       1146 00101$:
      0032DD E5 AE            [12] 1147 	mov	a,_USB0ADR
      0032DF 20 E7 FB         [24] 1148 	jb	acc.7,00101$
      0032E2 02 33 D4         [24] 1149 	ljmp	00117$
      0032E5                       1150 00115$:
                           000022  1151 	C$efm8_usbdep.c$136$1$86 ==.
                                   1152 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:136: else if (myUsbDevice.ep1in.state == D_EP_TRANSMITTING)
      0032E5 90 02 03         [24] 1153 	mov	dptr,#(_myUsbDevice + 0x0019)
      0032E8 E0               [24] 1154 	movx	a,@dptr
      0032E9 FF               [12] 1155 	mov	r7,a
      0032EA BF 02 02         [24] 1156 	cjne	r7,#0x02,00149$
      0032ED 80 03            [24] 1157 	sjmp	00150$
      0032EF                       1158 00149$:
      0032EF 02 33 D4         [24] 1159 	ljmp	00117$
      0032F2                       1160 00150$:
                           00002F  1161 	C$efm8_usbdep.c$138$2$90 ==.
                                   1162 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:138: xferred = (myUsbDevice.ep1in.remaining > SLAB_USB_EP1IN_MAX_PACKET_SIZE)
      0032F2 90 02 01         [24] 1163 	mov	dptr,#(_myUsbDevice + 0x0017)
      0032F5 E0               [24] 1164 	movx	a,@dptr
      0032F6 FE               [12] 1165 	mov	r6,a
      0032F7 A3               [24] 1166 	inc	dptr
      0032F8 E0               [24] 1167 	movx	a,@dptr
      0032F9 FF               [12] 1168 	mov	r7,a
      0032FA C3               [12] 1169 	clr	c
      0032FB 74 40            [12] 1170 	mov	a,#0x40
      0032FD 9E               [12] 1171 	subb	a,r6
      0032FE E4               [12] 1172 	clr	a
      0032FF 9F               [12] 1173 	subb	a,r7
      003300 50 06            [24] 1174 	jnc	00119$
                           00003F  1175 	C$efm8_usbdep.c$139$2$90 ==.
                                   1176 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:139: ? SLAB_USB_EP1IN_MAX_PACKET_SIZE : myUsbDevice.ep1in.remaining;
      003302 7C 40            [12] 1177 	mov	r4,#0x40
      003304 7D 00            [12] 1178 	mov	r5,#0x00
      003306 80 04            [24] 1179 	sjmp	00120$
      003308                       1180 00119$:
      003308 8E 04            [24] 1181 	mov	ar4,r6
      00330A 8F 05            [24] 1182 	mov	ar5,r7
      00330C                       1183 00120$:
                           000049  1184 	C$efm8_usbdep.c$140$2$90 ==.
                                   1185 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:140: myUsbDevice.ep1in.remaining -= xferred;
      00330C 8C 03            [24] 1186 	mov	ar3,r4
      00330E 7D 00            [12] 1187 	mov	r5,#0x00
      003310 EE               [12] 1188 	mov	a,r6
      003311 C3               [12] 1189 	clr	c
      003312 9B               [12] 1190 	subb	a,r3
      003313 FE               [12] 1191 	mov	r6,a
      003314 EF               [12] 1192 	mov	a,r7
      003315 9D               [12] 1193 	subb	a,r5
      003316 FF               [12] 1194 	mov	r7,a
      003317 90 02 01         [24] 1195 	mov	dptr,#(_myUsbDevice + 0x0017)
      00331A EE               [12] 1196 	mov	a,r6
      00331B F0               [24] 1197 	movx	@dptr,a
      00331C EF               [12] 1198 	mov	a,r7
      00331D A3               [24] 1199 	inc	dptr
      00331E F0               [24] 1200 	movx	@dptr,a
                           00005C  1201 	C$efm8_usbdep.c$141$2$90 ==.
                                   1202 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:141: myUsbDevice.ep1in.buf += xferred;
      00331F 90 01 FE         [24] 1203 	mov	dptr,#(_myUsbDevice + 0x0014)
      003322 E0               [24] 1204 	movx	a,@dptr
      003323 FA               [12] 1205 	mov	r2,a
      003324 A3               [24] 1206 	inc	dptr
      003325 E0               [24] 1207 	movx	a,@dptr
      003326 FB               [12] 1208 	mov	r3,a
      003327 A3               [24] 1209 	inc	dptr
      003328 E0               [24] 1210 	movx	a,@dptr
      003329 FD               [12] 1211 	mov	r5,a
      00332A EC               [12] 1212 	mov	a,r4
      00332B 2A               [12] 1213 	add	a,r2
      00332C FA               [12] 1214 	mov	r2,a
      00332D E4               [12] 1215 	clr	a
      00332E 3B               [12] 1216 	addc	a,r3
      00332F FB               [12] 1217 	mov	r3,a
      003330 90 01 FE         [24] 1218 	mov	dptr,#(_myUsbDevice + 0x0014)
      003333 EA               [12] 1219 	mov	a,r2
      003334 F0               [24] 1220 	movx	@dptr,a
      003335 EB               [12] 1221 	mov	a,r3
      003336 A3               [24] 1222 	inc	dptr
      003337 F0               [24] 1223 	movx	@dptr,a
      003338 ED               [12] 1224 	mov	a,r5
      003339 A3               [24] 1225 	inc	dptr
      00333A F0               [24] 1226 	movx	@dptr,a
                           000078  1227 	C$efm8_usbdep.c$143$2$90 ==.
                                   1228 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:143: callback = myUsbDevice.ep1in.misc.bits.callback;
      00333B 90 02 04         [24] 1229 	mov	dptr,#(_myUsbDevice + 0x001a)
      00333E E0               [24] 1230 	movx	a,@dptr
      00333F 54 01            [12] 1231 	anl	a,#0x01
      003341 24 FF            [12] 1232 	add	a,#0xff
      003343 92 00            [24] 1233 	mov	b0,c
                           000082  1234 	C$efm8_usbdep.c$146$2$90 ==.
                                   1235 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:146: if (myUsbDevice.ep1in.remaining > 0)
      003345 90 02 01         [24] 1236 	mov	dptr,#(_myUsbDevice + 0x0017)
      003348 E0               [24] 1237 	movx	a,@dptr
      003349 FB               [12] 1238 	mov	r3,a
      00334A A3               [24] 1239 	inc	dptr
      00334B E0               [24] 1240 	movx	a,@dptr
      00334C FD               [12] 1241 	mov	r5,a
      00334D EE               [12] 1242 	mov	a,r6
      00334E 4F               [12] 1243 	orl	a,r7
      00334F 60 4D            [24] 1244 	jz	00108$
                           00008E  1245 	C$efm8_usbdep.c$152$3$91 ==.
                                   1246 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:152: myUsbDevice.ep1in.buf,
      003351 90 01 FE         [24] 1247 	mov	dptr,#(_myUsbDevice + 0x0014)
      003354 E0               [24] 1248 	movx	a,@dptr
      003355 FA               [12] 1249 	mov	r2,a
      003356 A3               [24] 1250 	inc	dptr
      003357 E0               [24] 1251 	movx	a,@dptr
      003358 FE               [12] 1252 	mov	r6,a
      003359 A3               [24] 1253 	inc	dptr
      00335A E0               [24] 1254 	movx	a,@dptr
      00335B FF               [12] 1255 	mov	r7,a
                           000099  1256 	C$efm8_usbdep.c$149$3$91 ==.
                                   1257 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:149: (myUsbDevice.ep1in.remaining > SLAB_USB_EP1IN_MAX_PACKET_SIZE)
      00335C C3               [12] 1258 	clr	c
      00335D 74 40            [12] 1259 	mov	a,#0x40
      00335F 9B               [12] 1260 	subb	a,r3
      003360 E4               [12] 1261 	clr	a
      003361 9D               [12] 1262 	subb	a,r5
      003362 50 0A            [24] 1263 	jnc	00121$
                           0000A1  1264 	C$efm8_usbdep.c$150$3$91 ==.
                                   1265 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:150: ? SLAB_USB_EP1IN_MAX_PACKET_SIZE
      003364 A8 1B            [24] 1266 	mov	r0,_bp
      003366 08               [12] 1267 	inc	r0
      003367 76 40            [12] 1268 	mov	@r0,#0x40
      003369 08               [12] 1269 	inc	r0
      00336A 76 00            [12] 1270 	mov	@r0,#0x00
      00336C 80 08            [24] 1271 	sjmp	00122$
      00336E                       1272 00121$:
                           0000AB  1273 	C$efm8_usbdep.c$151$3$91 ==.
                                   1274 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:151: : myUsbDevice.ep1in.remaining,
      00336E A8 1B            [24] 1275 	mov	r0,_bp
      003370 08               [12] 1276 	inc	r0
      003371 A6 03            [24] 1277 	mov	@r0,ar3
      003373 08               [12] 1278 	inc	r0
      003374 A6 05            [24] 1279 	mov	@r0,ar5
      003376                       1280 00122$:
      003376 A8 1B            [24] 1281 	mov	r0,_bp
      003378 08               [12] 1282 	inc	r0
      003379 86 05            [24] 1283 	mov	ar5,@r0
                           0000B8  1284 	C$efm8_usbdep.c$148$3$91 ==.
                                   1285 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:148: USB_WriteFIFO(1,
      00337B C0 04            [24] 1286 	push	ar4
      00337D C0 20            [24] 1287 	push	bits
      00337F C0 02            [24] 1288 	push	ar2
      003381 C0 06            [24] 1289 	push	ar6
      003383 C0 07            [24] 1290 	push	ar7
      003385 C0 05            [24] 1291 	push	ar5
      003387 D2 F0            [12] 1292 	setb	b[0]
      003389 85 F0 20         [24] 1293 	mov	bits,b
      00338C 75 82 01         [24] 1294 	mov	dpl,#0x01
      00338F 12 35 73         [24] 1295 	lcall	_USB_WriteFIFO
      003392 E5 81            [12] 1296 	mov	a,sp
      003394 24 FC            [12] 1297 	add	a,#0xfc
      003396 F5 81            [12] 1298 	mov	sp,a
      003398 D0 20            [24] 1299 	pop	bits
      00339A D0 04            [24] 1300 	pop	ar4
      00339C 80 0D            [24] 1301 	sjmp	00109$
      00339E                       1302 00108$:
                           0000DB  1303 	C$efm8_usbdep.c$157$3$92 ==.
                                   1304 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:157: myUsbDevice.ep1in.misc.bits.callback = false;
      00339E 90 02 04         [24] 1305 	mov	dptr,#(_myUsbDevice + 0x001a)
      0033A1 E0               [24] 1306 	movx	a,@dptr
      0033A2 54 FE            [12] 1307 	anl	a,#0xfe
      0033A4 F0               [24] 1308 	movx	@dptr,a
                           0000E2  1309 	C$efm8_usbdep.c$158$3$92 ==.
                                   1310 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:158: myUsbDevice.ep1in.state = D_EP_IDLE;
      0033A5 90 02 03         [24] 1311 	mov	dptr,#(_myUsbDevice + 0x0019)
      0033A8 74 01            [12] 1312 	mov	a,#0x01
      0033AA F0               [24] 1313 	movx	@dptr,a
      0033AB                       1314 00109$:
                           0000E8  1315 	C$efm8_usbdep.c$161$2$90 ==.
                                   1316 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:161: if (callback == true)
      0033AB A2 00            [12] 1317 	mov	c,b0
      0033AD E4               [12] 1318 	clr	a
      0033AE 33               [12] 1319 	rlc	a
      0033AF FF               [12] 1320 	mov	r7,a
      0033B0 BF 01 21         [24] 1321 	cjne	r7,#0x01,00117$
                           0000F0  1322 	C$efm8_usbdep.c$163$3$93 ==.
                                   1323 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:163: USBD_XferCompleteCb(EP1IN, USB_STATUS_OK, xferred, myUsbDevice.ep1in.remaining);
      0033B3 90 02 01         [24] 1324 	mov	dptr,#(_myUsbDevice + 0x0017)
      0033B6 E0               [24] 1325 	movx	a,@dptr
      0033B7 FE               [12] 1326 	mov	r6,a
      0033B8 A3               [24] 1327 	inc	dptr
      0033B9 E0               [24] 1328 	movx	a,@dptr
      0033BA FF               [12] 1329 	mov	r7,a
      0033BB 7D 00            [12] 1330 	mov	r5,#0x00
      0033BD C0 06            [24] 1331 	push	ar6
      0033BF C0 07            [24] 1332 	push	ar7
      0033C1 C0 04            [24] 1333 	push	ar4
      0033C3 C0 05            [24] 1334 	push	ar5
      0033C5 E4               [12] 1335 	clr	a
      0033C6 C0 E0            [24] 1336 	push	acc
      0033C8 75 82 01         [24] 1337 	mov	dpl,#0x01
      0033CB 12 3F B6         [24] 1338 	lcall	_USBD_XferCompleteCb
      0033CE E5 81            [12] 1339 	mov	a,sp
      0033D0 24 FB            [12] 1340 	add	a,#0xfb
      0033D2 F5 81            [12] 1341 	mov	sp,a
      0033D4                       1342 00117$:
      0033D4 85 1B 81         [24] 1343 	mov	sp,_bp
      0033D7 D0 1B            [24] 1344 	pop	_bp
                           000116  1345 	C$efm8_usbdep.c$167$1$86 ==.
                           000116  1346 	XG$handleUsbIn1Int$0$0 ==.
      0033D9 22               [24] 1347 	ret
                                   1348 ;------------------------------------------------------------
                                   1349 ;Allocation info for local variables in function 'handleUsbOut1Int'
                                   1350 ;------------------------------------------------------------
                                   1351 ;count                     Allocated to stack - _bp +1
                                   1352 ;status                    Allocated to registers r7 
                                   1353 ;xferComplete              Allocated to registers b0 
                                   1354 ;------------------------------------------------------------
                           000117  1355 	G$handleUsbOut1Int$0$0 ==.
                           000117  1356 	C$efm8_usbdep.c$321$1$86 ==.
                                   1357 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:321: void handleUsbOut1Int(void)
                                   1358 ;	-----------------------------------------
                                   1359 ;	 function handleUsbOut1Int
                                   1360 ;	-----------------------------------------
      0033DA                       1361 _handleUsbOut1Int:
      0033DA C0 1B            [24] 1362 	push	_bp
      0033DC 85 81 1B         [24] 1363 	mov	_bp,sp
      0033DF 05 81            [12] 1364 	inc	sp
                           00011E  1365 	C$efm8_usbdep.c$326$1$86 ==.
                                   1366 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:326: bool xferComplete = false;
      0033E1 C2 00            [12] 1367 	clr	b0
                           000120  1368 	C$efm8_usbdep.c$328$1$95 ==.
                                   1369 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:328: USB_SetIndex(1);
      0033E3 75 82 01         [24] 1370 	mov	dpl,#0x01
      0033E6 C0 20            [24] 1371 	push	bits
      0033E8 12 3F F9         [24] 1372 	lcall	_USB_SetIndex
      0033EB D0 20            [24] 1373 	pop	bits
                           00012A  1374 	C$efm8_usbdep.c$330$1$95 ==.
                                   1375 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:330: if (USB_EpnOutGetSentStall())
      0033ED C0 20            [24] 1376 	push	bits
      0033EF 12 40 CF         [24] 1377 	lcall	_USB_EpnOutGetSentStall
      0033F2 D0 20            [24] 1378 	pop	bits
      0033F4 50 13            [24] 1379 	jnc	00135$
                           000133  1380 	C$efm8_usbdep.c$332$3$97 ==.
                                   1381 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:332: USB_EpnOutClearSentStall();
      0033F6 75 AE 94         [24] 1382 	mov	_USB0ADR,#0x94
      0033F9                       1383 00101$:
      0033F9 E5 AE            [12] 1384 	mov	a,_USB0ADR
      0033FB 20 E7 FB         [24] 1385 	jb	acc.7,00101$
      0033FE 53 AF BF         [24] 1386 	anl	_USB0DAT,#0xbf
      003401                       1387 00104$:
      003401 E5 AE            [12] 1388 	mov	a,_USB0ADR
      003403 20 E7 FB         [24] 1389 	jb	acc.7,00104$
      003406 02 35 30         [24] 1390 	ljmp	00137$
      003409                       1391 00135$:
                           000146  1392 	C$efm8_usbdep.c$334$1$95 ==.
                                   1393 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:334: else if (USB_EpnGetOutPacketReady())
      003409 C0 20            [24] 1394 	push	bits
      00340B 12 40 DE         [24] 1395 	lcall	_USB_EpnGetOutPacketReady
      00340E D0 20            [24] 1396 	pop	bits
      003410 40 03            [24] 1397 	jc	00184$
      003412 02 35 30         [24] 1398 	ljmp	00137$
      003415                       1399 00184$:
                           000152  1400 	C$efm8_usbdep.c$336$2$100 ==.
                                   1401 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:336: count = USB_EpOutGetCount();
      003415 C0 20            [24] 1402 	push	bits
      003417 12 40 EC         [24] 1403 	lcall	_USB_EpOutGetCount
      00341A AE 82            [24] 1404 	mov	r6,dpl
      00341C D0 20            [24] 1405 	pop	bits
      00341E A8 1B            [24] 1406 	mov	r0,_bp
      003420 08               [12] 1407 	inc	r0
      003421 A6 06            [24] 1408 	mov	@r0,ar6
                           000160  1409 	C$efm8_usbdep.c$339$2$100 ==.
                                   1410 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:339: if (myUsbDevice.ep1out.state != D_EP_RECEIVING)
      003423 90 02 0A         [24] 1411 	mov	dptr,#(_myUsbDevice + 0x0020)
      003426 E0               [24] 1412 	movx	a,@dptr
      003427 FF               [12] 1413 	mov	r7,a
      003428 BF 03 02         [24] 1414 	cjne	r7,#0x03,00185$
      00342B 80 0C            [24] 1415 	sjmp	00126$
      00342D                       1416 00185$:
                           00016A  1417 	C$efm8_usbdep.c$341$3$101 ==.
                                   1418 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:341: myUsbDevice.ep1out.misc.bits.outPacketPending = true;
      00342D 90 02 0B         [24] 1419 	mov	dptr,#(_myUsbDevice + 0x0021)
      003430 E0               [24] 1420 	movx	a,@dptr
      003431 44 02            [12] 1421 	orl	a,#0x02
      003433 F0               [24] 1422 	movx	@dptr,a
                           000171  1423 	C$efm8_usbdep.c$342$3$101 ==.
                                   1424 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:342: status = USB_STATUS_EP_ERROR;
      003434 7F F9            [12] 1425 	mov	r7,#0xf9
      003436 02 34 F2         [24] 1426 	ljmp	00127$
      003439                       1427 00126$:
                           000176  1428 	C$efm8_usbdep.c$345$2$100 ==.
                                   1429 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:345: else if (myUsbDevice.ep1out.remaining < count)
      003439 90 02 08         [24] 1430 	mov	dptr,#(_myUsbDevice + 0x001e)
      00343C E0               [24] 1431 	movx	a,@dptr
      00343D FC               [12] 1432 	mov	r4,a
      00343E A3               [24] 1433 	inc	dptr
      00343F E0               [24] 1434 	movx	a,@dptr
      003440 FD               [12] 1435 	mov	r5,a
      003441 A8 1B            [24] 1436 	mov	r0,_bp
      003443 08               [12] 1437 	inc	r0
      003444 86 02            [24] 1438 	mov	ar2,@r0
      003446 7B 00            [12] 1439 	mov	r3,#0x00
      003448 C3               [12] 1440 	clr	c
      003449 EC               [12] 1441 	mov	a,r4
      00344A 9A               [12] 1442 	subb	a,r2
      00344B ED               [12] 1443 	mov	a,r5
      00344C 9B               [12] 1444 	subb	a,r3
      00344D 50 12            [24] 1445 	jnc	00123$
                           00018C  1446 	C$efm8_usbdep.c$347$3$102 ==.
                                   1447 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:347: myUsbDevice.ep1out.state = D_EP_IDLE;
      00344F 90 02 0A         [24] 1448 	mov	dptr,#(_myUsbDevice + 0x0020)
      003452 74 01            [12] 1449 	mov	a,#0x01
      003454 F0               [24] 1450 	movx	@dptr,a
                           000192  1451 	C$efm8_usbdep.c$348$3$102 ==.
                                   1452 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:348: myUsbDevice.ep1out.misc.bits.outPacketPending = true;
      003455 90 02 0B         [24] 1453 	mov	dptr,#(_myUsbDevice + 0x0021)
      003458 E0               [24] 1454 	movx	a,@dptr
      003459 44 02            [12] 1455 	orl	a,#0x02
      00345B F0               [24] 1456 	movx	@dptr,a
                           000199  1457 	C$efm8_usbdep.c$349$3$102 ==.
                                   1458 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:349: status = USB_STATUS_EP_RX_BUFFER_OVERRUN;
      00345C 7F F2            [12] 1459 	mov	r7,#0xf2
      00345E 02 34 F2         [24] 1460 	ljmp	00127$
      003461                       1461 00123$:
                           00019E  1462 	C$efm8_usbdep.c$353$3$103 ==.
                                   1463 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:353: USB_ReadFIFO(1, count, myUsbDevice.ep1out.buf);
      003461 90 02 05         [24] 1464 	mov	dptr,#(_myUsbDevice + 0x001b)
      003464 E0               [24] 1465 	movx	a,@dptr
      003465 FB               [12] 1466 	mov	r3,a
      003466 A3               [24] 1467 	inc	dptr
      003467 E0               [24] 1468 	movx	a,@dptr
      003468 FC               [12] 1469 	mov	r4,a
      003469 A3               [24] 1470 	inc	dptr
      00346A E0               [24] 1471 	movx	a,@dptr
      00346B FD               [12] 1472 	mov	r5,a
      00346C C0 20            [24] 1473 	push	bits
      00346E C0 03            [24] 1474 	push	ar3
      003470 C0 04            [24] 1475 	push	ar4
      003472 C0 05            [24] 1476 	push	ar5
      003474 A8 1B            [24] 1477 	mov	r0,_bp
      003476 08               [12] 1478 	inc	r0
      003477 E6               [12] 1479 	mov	a,@r0
      003478 C0 E0            [24] 1480 	push	acc
      00347A 75 82 01         [24] 1481 	mov	dpl,#0x01
      00347D 12 35 35         [24] 1482 	lcall	_USB_ReadFIFO
      003480 E5 81            [12] 1483 	mov	a,sp
      003482 24 FC            [12] 1484 	add	a,#0xfc
      003484 F5 81            [12] 1485 	mov	sp,a
      003486 D0 20            [24] 1486 	pop	bits
                           0001C5  1487 	C$efm8_usbdep.c$355$3$103 ==.
                                   1488 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:355: myUsbDevice.ep1out.misc.bits.outPacketPending = false;
      003488 90 02 0B         [24] 1489 	mov	dptr,#(_myUsbDevice + 0x0021)
      00348B E0               [24] 1490 	movx	a,@dptr
      00348C 54 FD            [12] 1491 	anl	a,#0xfd
      00348E F0               [24] 1492 	movx	@dptr,a
                           0001CC  1493 	C$efm8_usbdep.c$356$3$103 ==.
                                   1494 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:356: myUsbDevice.ep1out.remaining -= count;
      00348F 90 02 08         [24] 1495 	mov	dptr,#(_myUsbDevice + 0x001e)
      003492 E0               [24] 1496 	movx	a,@dptr
      003493 FC               [12] 1497 	mov	r4,a
      003494 A3               [24] 1498 	inc	dptr
      003495 E0               [24] 1499 	movx	a,@dptr
      003496 FD               [12] 1500 	mov	r5,a
      003497 A8 1B            [24] 1501 	mov	r0,_bp
      003499 08               [12] 1502 	inc	r0
      00349A 86 02            [24] 1503 	mov	ar2,@r0
      00349C 7B 00            [12] 1504 	mov	r3,#0x00
      00349E EC               [12] 1505 	mov	a,r4
      00349F C3               [12] 1506 	clr	c
      0034A0 9A               [12] 1507 	subb	a,r2
      0034A1 FC               [12] 1508 	mov	r4,a
      0034A2 ED               [12] 1509 	mov	a,r5
      0034A3 9B               [12] 1510 	subb	a,r3
      0034A4 FD               [12] 1511 	mov	r5,a
      0034A5 90 02 08         [24] 1512 	mov	dptr,#(_myUsbDevice + 0x001e)
      0034A8 EC               [12] 1513 	mov	a,r4
      0034A9 F0               [24] 1514 	movx	@dptr,a
      0034AA ED               [12] 1515 	mov	a,r5
      0034AB A3               [24] 1516 	inc	dptr
      0034AC F0               [24] 1517 	movx	@dptr,a
                           0001EA  1518 	C$efm8_usbdep.c$357$3$103 ==.
                                   1519 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:357: myUsbDevice.ep1out.buf += count;
      0034AD 90 02 05         [24] 1520 	mov	dptr,#(_myUsbDevice + 0x001b)
      0034B0 E0               [24] 1521 	movx	a,@dptr
      0034B1 FA               [12] 1522 	mov	r2,a
      0034B2 A3               [24] 1523 	inc	dptr
      0034B3 E0               [24] 1524 	movx	a,@dptr
      0034B4 FB               [12] 1525 	mov	r3,a
      0034B5 A3               [24] 1526 	inc	dptr
      0034B6 E0               [24] 1527 	movx	a,@dptr
      0034B7 FE               [12] 1528 	mov	r6,a
      0034B8 A8 1B            [24] 1529 	mov	r0,_bp
      0034BA 08               [12] 1530 	inc	r0
      0034BB E6               [12] 1531 	mov	a,@r0
      0034BC 2A               [12] 1532 	add	a,r2
      0034BD FA               [12] 1533 	mov	r2,a
      0034BE E4               [12] 1534 	clr	a
      0034BF 3B               [12] 1535 	addc	a,r3
      0034C0 FB               [12] 1536 	mov	r3,a
      0034C1 90 02 05         [24] 1537 	mov	dptr,#(_myUsbDevice + 0x001b)
      0034C4 EA               [12] 1538 	mov	a,r2
      0034C5 F0               [24] 1539 	movx	@dptr,a
      0034C6 EB               [12] 1540 	mov	a,r3
      0034C7 A3               [24] 1541 	inc	dptr
      0034C8 F0               [24] 1542 	movx	@dptr,a
      0034C9 EE               [12] 1543 	mov	a,r6
      0034CA A3               [24] 1544 	inc	dptr
      0034CB F0               [24] 1545 	movx	@dptr,a
                           000209  1546 	C$efm8_usbdep.c$359$3$103 ==.
                                   1547 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:359: if ((myUsbDevice.ep1out.remaining == 0) || (count != SLAB_USB_EP1OUT_MAX_PACKET_SIZE))
      0034CC EC               [12] 1548 	mov	a,r4
      0034CD 4D               [12] 1549 	orl	a,r5
      0034CE 60 08            [24] 1550 	jz	00110$
      0034D0 A8 1B            [24] 1551 	mov	r0,_bp
      0034D2 08               [12] 1552 	inc	r0
      0034D3 B6 40 02         [24] 1553 	cjne	@r0,#0x40,00188$
      0034D6 80 08            [24] 1554 	sjmp	00111$
      0034D8                       1555 00188$:
      0034D8                       1556 00110$:
                           000215  1557 	C$efm8_usbdep.c$361$4$104 ==.
                                   1558 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:361: myUsbDevice.ep1out.state = D_EP_IDLE;
      0034D8 90 02 0A         [24] 1559 	mov	dptr,#(_myUsbDevice + 0x0020)
      0034DB 74 01            [12] 1560 	mov	a,#0x01
      0034DD F0               [24] 1561 	movx	@dptr,a
                           00021B  1562 	C$efm8_usbdep.c$362$4$104 ==.
                                   1563 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:362: xferComplete = true;
      0034DE D2 00            [12] 1564 	setb	b0
      0034E0                       1565 00111$:
                           00021D  1566 	C$efm8_usbdep.c$364$3$103 ==.
                                   1567 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:364: status = USB_STATUS_OK;
      0034E0 7F 00            [12] 1568 	mov	r7,#0x00
                           00021F  1569 	C$efm8_usbdep.c$365$4$105 ==.
                                   1570 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:365: USB_EpnClearOutPacketReady();
      0034E2 75 AE 94         [24] 1571 	mov	_USB0ADR,#0x94
      0034E5                       1572 00113$:
      0034E5 E5 AE            [12] 1573 	mov	a,_USB0ADR
      0034E7 20 E7 FB         [24] 1574 	jb	acc.7,00113$
      0034EA 53 AF FE         [24] 1575 	anl	_USB0DAT,#0xfe
      0034ED                       1576 00116$:
      0034ED E5 AE            [12] 1577 	mov	a,_USB0ADR
      0034EF 20 E7 FB         [24] 1578 	jb	acc.7,00116$
      0034F2                       1579 00127$:
                           00022F  1580 	C$efm8_usbdep.c$367$2$100 ==.
                                   1581 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:367: if (myUsbDevice.ep1out.misc.bits.callback == true)
      0034F2 90 02 0B         [24] 1582 	mov	dptr,#(_myUsbDevice + 0x0021)
      0034F5 E0               [24] 1583 	movx	a,@dptr
      0034F6 54 01            [12] 1584 	anl	a,#0x01
      0034F8 FE               [12] 1585 	mov	r6,a
      0034F9 BE 01 34         [24] 1586 	cjne	r6,#0x01,00137$
                           000239  1587 	C$efm8_usbdep.c$369$3$108 ==.
                                   1588 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:369: if (xferComplete == true)
      0034FC A2 00            [12] 1589 	mov	c,b0
      0034FE E4               [12] 1590 	clr	a
      0034FF 33               [12] 1591 	rlc	a
      003500 FE               [12] 1592 	mov	r6,a
      003501 BE 01 07         [24] 1593 	cjne	r6,#0x01,00129$
                           000241  1594 	C$efm8_usbdep.c$371$4$109 ==.
                                   1595 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:371: myUsbDevice.ep1out.misc.bits.callback = false;
      003504 90 02 0B         [24] 1596 	mov	dptr,#(_myUsbDevice + 0x0021)
      003507 E0               [24] 1597 	movx	a,@dptr
      003508 54 FE            [12] 1598 	anl	a,#0xfe
      00350A F0               [24] 1599 	movx	@dptr,a
      00350B                       1600 00129$:
                           000248  1601 	C$efm8_usbdep.c$373$3$108 ==.
                                   1602 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:373: USBD_XferCompleteCb(EP1OUT, status, count, myUsbDevice.ep1out.remaining);
      00350B 90 02 08         [24] 1603 	mov	dptr,#(_myUsbDevice + 0x001e)
      00350E E0               [24] 1604 	movx	a,@dptr
      00350F FD               [12] 1605 	mov	r5,a
      003510 A3               [24] 1606 	inc	dptr
      003511 E0               [24] 1607 	movx	a,@dptr
      003512 FE               [12] 1608 	mov	r6,a
      003513 A8 1B            [24] 1609 	mov	r0,_bp
      003515 08               [12] 1610 	inc	r0
      003516 86 03            [24] 1611 	mov	ar3,@r0
      003518 7C 00            [12] 1612 	mov	r4,#0x00
      00351A C0 05            [24] 1613 	push	ar5
      00351C C0 06            [24] 1614 	push	ar6
      00351E C0 03            [24] 1615 	push	ar3
      003520 C0 04            [24] 1616 	push	ar4
      003522 C0 07            [24] 1617 	push	ar7
      003524 75 82 02         [24] 1618 	mov	dpl,#0x02
      003527 12 3F B6         [24] 1619 	lcall	_USBD_XferCompleteCb
      00352A E5 81            [12] 1620 	mov	a,sp
      00352C 24 FB            [12] 1621 	add	a,#0xfb
      00352E F5 81            [12] 1622 	mov	sp,a
      003530                       1623 00137$:
      003530 15 81            [12] 1624 	dec	sp
      003532 D0 1B            [24] 1625 	pop	_bp
                           000271  1626 	C$efm8_usbdep.c$376$1$95 ==.
                           000271  1627 	XG$handleUsbOut1Int$0$0 ==.
      003534 22               [24] 1628 	ret
                                   1629 ;------------------------------------------------------------
                                   1630 ;Allocation info for local variables in function 'USB_ReadFIFO'
                                   1631 ;------------------------------------------------------------
                                   1632 ;numBytes                  Allocated to stack - _bp -3
                                   1633 ;dat                       Allocated to stack - _bp -6
                                   1634 ;fifoNum                   Allocated to registers r7 
                                   1635 ;------------------------------------------------------------
                           000272  1636 	G$USB_ReadFIFO$0$0 ==.
                           000272  1637 	C$efm8_usbdep.c$560$1$95 ==.
                                   1638 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:560: void USB_ReadFIFO(uint8_t fifoNum, uint8_t numBytes, uint8_t * dat)
                                   1639 ;	-----------------------------------------
                                   1640 ;	 function USB_ReadFIFO
                                   1641 ;	-----------------------------------------
      003535                       1642 _USB_ReadFIFO:
      003535 C0 1B            [24] 1643 	push	_bp
      003537 85 81 1B         [24] 1644 	mov	_bp,sp
      00353A AF 82            [24] 1645 	mov	r7,dpl
                           000279  1646 	C$efm8_usbdep.c$562$1$111 ==.
                                   1647 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:562: if (numBytes > 0)
      00353C E5 1B            [12] 1648 	mov	a,_bp
      00353E 24 FD            [12] 1649 	add	a,#0xfd
      003540 F8               [12] 1650 	mov	r0,a
      003541 E6               [12] 1651 	mov	a,@r0
      003542 60 2C            [24] 1652 	jz	00109$
                           000281  1653 	C$efm8_usbdep.c$564$3$113 ==.
                                   1654 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:564: USB_EnableReadFIFO(fifoNum);
      003544                       1655 00101$:
      003544 E5 AE            [12] 1656 	mov	a,_USB0ADR
      003546 20 E7 FB         [24] 1657 	jb	acc.7,00101$
      003549 74 E0            [12] 1658 	mov	a,#0xe0
      00354B 4F               [12] 1659 	orl	a,r7
      00354C F5 AE            [12] 1660 	mov	_USB0ADR,a
                           00028B  1661 	C$efm8_usbdep.c$607$2$112 ==.
                                   1662 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:607: USB_ReadFIFO_Generic(numBytes, dat, fifoNum);
      00354E C0 07            [24] 1663 	push	ar7
      003550 E5 1B            [12] 1664 	mov	a,_bp
      003552 24 FA            [12] 1665 	add	a,#0xfa
      003554 F8               [12] 1666 	mov	r0,a
      003555 E6               [12] 1667 	mov	a,@r0
      003556 C0 E0            [24] 1668 	push	acc
      003558 08               [12] 1669 	inc	r0
      003559 E6               [12] 1670 	mov	a,@r0
      00355A C0 E0            [24] 1671 	push	acc
      00355C 08               [12] 1672 	inc	r0
      00355D E6               [12] 1673 	mov	a,@r0
      00355E C0 E0            [24] 1674 	push	acc
      003560 E5 1B            [12] 1675 	mov	a,_bp
      003562 24 FD            [12] 1676 	add	a,#0xfd
      003564 F8               [12] 1677 	mov	r0,a
      003565 86 82            [24] 1678 	mov	dpl,@r0
      003567 12 37 42         [24] 1679 	lcall	_USB_ReadFIFO_Generic
      00356A E5 81            [12] 1680 	mov	a,sp
      00356C 24 FC            [12] 1681 	add	a,#0xfc
      00356E F5 81            [12] 1682 	mov	sp,a
      003570                       1683 00109$:
      003570 D0 1B            [24] 1684 	pop	_bp
                           0002AF  1685 	C$efm8_usbdep.c$610$1$111 ==.
                           0002AF  1686 	XG$USB_ReadFIFO$0$0 ==.
      003572 22               [24] 1687 	ret
                                   1688 ;------------------------------------------------------------
                                   1689 ;Allocation info for local variables in function 'USB_WriteFIFO'
                                   1690 ;------------------------------------------------------------
                                   1691 ;numBytes                  Allocated to stack - _bp -3
                                   1692 ;dat                       Allocated to stack - _bp -6
                                   1693 ;txPacket                  Allocated to registers b0 
                                   1694 ;fifoNum                   Allocated to registers r7 
                                   1695 ;------------------------------------------------------------
                           0002B0  1696 	G$USB_WriteFIFO$0$0 ==.
                           0002B0  1697 	C$efm8_usbdep.c$626$1$111 ==.
                                   1698 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:626: void USB_WriteFIFO(uint8_t fifoNum, uint8_t numBytes, uint8_t *dat, bool txPacket)
                                   1699 ;	-----------------------------------------
                                   1700 ;	 function USB_WriteFIFO
                                   1701 ;	-----------------------------------------
      003573                       1702 _USB_WriteFIFO:
      003573 C0 1B            [24] 1703 	push	_bp
      003575 85 81 1B         [24] 1704 	mov	_bp,sp
      003578 AF 82            [24] 1705 	mov	r7,dpl
                           0002B7  1706 	C$efm8_usbdep.c$628$2$117 ==.
                                   1707 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:628: USB_EnableWriteFIFO(fifoNum);
      00357A                       1708 00101$:
      00357A E5 AE            [12] 1709 	mov	a,_USB0ADR
      00357C 20 E7 FB         [24] 1710 	jb	acc.7,00101$
      00357F 74 20            [12] 1711 	mov	a,#0x20
      003581 4F               [12] 1712 	orl	a,r7
      003582 F5 AE            [12] 1713 	mov	_USB0ADR,a
                           0002C1  1714 	C$efm8_usbdep.c$675$1$116 ==.
                                   1715 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:675: USB_WriteFIFO_Generic(numBytes, dat);
      003584 C0 07            [24] 1716 	push	ar7
      003586 C0 20            [24] 1717 	push	bits
      003588 E5 1B            [12] 1718 	mov	a,_bp
      00358A 24 FA            [12] 1719 	add	a,#0xfa
      00358C F8               [12] 1720 	mov	r0,a
      00358D E6               [12] 1721 	mov	a,@r0
      00358E C0 E0            [24] 1722 	push	acc
      003590 08               [12] 1723 	inc	r0
      003591 E6               [12] 1724 	mov	a,@r0
      003592 C0 E0            [24] 1725 	push	acc
      003594 08               [12] 1726 	inc	r0
      003595 E6               [12] 1727 	mov	a,@r0
      003596 C0 E0            [24] 1728 	push	acc
      003598 E5 1B            [12] 1729 	mov	a,_bp
      00359A 24 FD            [12] 1730 	add	a,#0xfd
      00359C F8               [12] 1731 	mov	r0,a
      00359D 86 82            [24] 1732 	mov	dpl,@r0
      00359F 12 37 AA         [24] 1733 	lcall	_USB_WriteFIFO_Generic
      0035A2 15 81            [12] 1734 	dec	sp
      0035A4 15 81            [12] 1735 	dec	sp
      0035A6 15 81            [12] 1736 	dec	sp
      0035A8 D0 20            [24] 1737 	pop	bits
      0035AA D0 07            [24] 1738 	pop	ar7
                           0002E9  1739 	C$efm8_usbdep.c$679$1$116 ==.
                                   1740 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:679: if ((txPacket == true) && (fifoNum > 0))
      0035AC A2 00            [12] 1741 	mov	c,b0
      0035AE E4               [12] 1742 	clr	a
      0035AF 33               [12] 1743 	rlc	a
      0035B0 FE               [12] 1744 	mov	r6,a
      0035B1 BE 01 18         [24] 1745 	cjne	r6,#0x01,00119$
      0035B4 EF               [12] 1746 	mov	a,r7
      0035B5 60 15            [24] 1747 	jz	00119$
                           0002F4  1748 	C$efm8_usbdep.c$681$2$119 ==.
                                   1749 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:681: USB_SetIndex(fifoNum);
      0035B7 8F 82            [24] 1750 	mov	dpl,r7
      0035B9 12 3F F9         [24] 1751 	lcall	_USB_SetIndex
                           0002F9  1752 	C$efm8_usbdep.c$682$3$120 ==.
                                   1753 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:682: USB_EpnSetInPacketReady();
      0035BC 75 AE 91         [24] 1754 	mov	_USB0ADR,#0x91
      0035BF                       1755 00107$:
      0035BF E5 AE            [12] 1756 	mov	a,_USB0ADR
      0035C1 20 E7 FB         [24] 1757 	jb	acc.7,00107$
      0035C4 43 AF 01         [24] 1758 	orl	_USB0DAT,#0x01
      0035C7                       1759 00110$:
      0035C7 E5 AE            [12] 1760 	mov	a,_USB0ADR
      0035C9 20 E7 FB         [24] 1761 	jb	acc.7,00110$
      0035CC                       1762 00119$:
      0035CC D0 1B            [24] 1763 	pop	_bp
                           00030B  1764 	C$efm8_usbdep.c$684$1$116 ==.
                           00030B  1765 	XG$USB_WriteFIFO$0$0 ==.
      0035CE 22               [24] 1766 	ret
                                   1767 ;------------------------------------------------------------
                                   1768 ;Allocation info for local variables in function 'USB_ReadFIFO_Idata'
                                   1769 ;------------------------------------------------------------
                                   1770 ;dat                       Allocated to stack - _bp -3
                                   1771 ;fifoNum                   Allocated to stack - _bp -4
                                   1772 ;numBytes                  Allocated to registers r7 
                                   1773 ;------------------------------------------------------------
                           00030C  1774 	Fefm8_usbdep$USB_ReadFIFO_Idata$0$0 ==.
                           00030C  1775 	C$efm8_usbdep.c$703$1$116 ==.
                                   1776 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:703: static void USB_ReadFIFO_Idata(uint8_t numBytes, SI_VARIABLE_SEGMENT_POINTER(dat, uint8_t, SI_SEG_IDATA), uint8_t fifoNum)
                                   1777 ;	-----------------------------------------
                                   1778 ;	 function USB_ReadFIFO_Idata
                                   1779 ;	-----------------------------------------
      0035CF                       1780 _USB_ReadFIFO_Idata:
      0035CF C0 1B            [24] 1781 	push	_bp
      0035D1 85 81 1B         [24] 1782 	mov	_bp,sp
      0035D4 AF 82            [24] 1783 	mov	r7,dpl
                           000313  1784 	C$efm8_usbdep.c$705$1$124 ==.
                                   1785 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:705: while (--numBytes)
      0035D6 E5 1B            [12] 1786 	mov	a,_bp
      0035D8 24 FD            [12] 1787 	add	a,#0xfd
      0035DA F8               [12] 1788 	mov	r0,a
      0035DB 86 01            [24] 1789 	mov	ar1,@r0
      0035DD                       1790 00107$:
      0035DD EF               [12] 1791 	mov	a,r7
      0035DE 14               [12] 1792 	dec	a
      0035DF FE               [12] 1793 	mov	r6,a
      0035E0 FF               [12] 1794 	mov	r7,a
      0035E1 60 0A            [24] 1795 	jz	00123$
                           000320  1796 	C$efm8_usbdep.c$707$3$126 ==.
                                   1797 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:707: USB_GetFIFOByte(*dat);
      0035E3                       1798 00101$:
      0035E3 E5 AE            [12] 1799 	mov	a,_USB0ADR
      0035E5 20 E7 FB         [24] 1800 	jb	acc.7,00101$
      0035E8 A7 AF            [24] 1801 	mov	@r1,_USB0DAT
      0035EA 09               [12] 1802 	inc	r1
                           000328  1803 	C$efm8_usbdep.c$708$2$125 ==.
                                   1804 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:708: dat++;
                           000328  1805 	C$efm8_usbdep.c$710$1$124 ==.
                                   1806 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:710: USB_GetLastFIFOByte(*dat, fifoNum);
      0035EB 80 F0            [24] 1807 	sjmp	00107$
      0035ED                       1808 00123$:
      0035ED E5 1B            [12] 1809 	mov	a,_bp
      0035EF 24 FD            [12] 1810 	add	a,#0xfd
      0035F1 F8               [12] 1811 	mov	r0,a
      0035F2 A6 01            [24] 1812 	mov	@r0,ar1
      0035F4                       1813 00110$:
      0035F4 E5 AE            [12] 1814 	mov	a,_USB0ADR
      0035F6 20 E7 FB         [24] 1815 	jb	acc.7,00110$
      0035F9 E5 1B            [12] 1816 	mov	a,_bp
      0035FB 24 FC            [12] 1817 	add	a,#0xfc
      0035FD F8               [12] 1818 	mov	r0,a
      0035FE 74 20            [12] 1819 	mov	a,#0x20
      003600 46               [12] 1820 	orl	a,@r0
      003601 F5 AE            [12] 1821 	mov	_USB0ADR,a
      003603 E5 1B            [12] 1822 	mov	a,_bp
      003605 24 FD            [12] 1823 	add	a,#0xfd
      003607 F8               [12] 1824 	mov	r0,a
      003608 86 01            [24] 1825 	mov	ar1,@r0
      00360A A7 AF            [24] 1826 	mov	@r1,_USB0DAT
      00360C D0 1B            [24] 1827 	pop	_bp
                           00034B  1828 	C$efm8_usbdep.c$711$1$124 ==.
                           00034B  1829 	XFefm8_usbdep$USB_ReadFIFO_Idata$0$0 ==.
      00360E 22               [24] 1830 	ret
                                   1831 ;------------------------------------------------------------
                                   1832 ;Allocation info for local variables in function 'USB_WriteFIFO_Idata'
                                   1833 ;------------------------------------------------------------
                                   1834 ;dat                       Allocated to stack - _bp -3
                                   1835 ;numBytes                  Allocated to registers 
                                   1836 ;------------------------------------------------------------
                           00034C  1837 	Fefm8_usbdep$USB_WriteFIFO_Idata$0$0 ==.
                           00034C  1838 	C$efm8_usbdep.c$722$1$124 ==.
                                   1839 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:722: static void USB_WriteFIFO_Idata(uint8_t numBytes, SI_VARIABLE_SEGMENT_POINTER(dat, uint8_t, SI_SEG_IDATA))
                                   1840 ;	-----------------------------------------
                                   1841 ;	 function USB_WriteFIFO_Idata
                                   1842 ;	-----------------------------------------
      00360F                       1843 _USB_WriteFIFO_Idata:
      00360F C0 1B            [24] 1844 	push	_bp
      003611 85 81 1B         [24] 1845 	mov	_bp,sp
      003614 AF 82            [24] 1846 	mov	r7,dpl
                           000353  1847 	C$efm8_usbdep.c$724$1$131 ==.
                                   1848 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:724: while (numBytes--)
      003616 E5 1B            [12] 1849 	mov	a,_bp
      003618 24 FD            [12] 1850 	add	a,#0xfd
      00361A F8               [12] 1851 	mov	r0,a
      00361B 86 01            [24] 1852 	mov	ar1,@r0
      00361D                       1853 00107$:
      00361D 8F 06            [24] 1854 	mov	ar6,r7
      00361F 1F               [12] 1855 	dec	r7
      003620 EE               [12] 1856 	mov	a,r6
      003621 60 0A            [24] 1857 	jz	00110$
                           000360  1858 	C$efm8_usbdep.c$726$3$133 ==.
                                   1859 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:726: USB_SetFIFOByte(*dat);
      003623                       1860 00101$:
      003623 E5 AE            [12] 1861 	mov	a,_USB0ADR
      003625 20 E7 FB         [24] 1862 	jb	acc.7,00101$
      003628 87 AF            [24] 1863 	mov	_USB0DAT,@r1
      00362A 09               [12] 1864 	inc	r1
                           000368  1865 	C$efm8_usbdep.c$727$2$132 ==.
                                   1866 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:727: dat++;
      00362B 80 F0            [24] 1867 	sjmp	00107$
      00362D                       1868 00110$:
      00362D D0 1B            [24] 1869 	pop	_bp
                           00036C  1870 	C$efm8_usbdep.c$729$1$131 ==.
                           00036C  1871 	XFefm8_usbdep$USB_WriteFIFO_Idata$0$0 ==.
      00362F 22               [24] 1872 	ret
                                   1873 ;------------------------------------------------------------
                                   1874 ;Allocation info for local variables in function 'USB_ReadFIFO_Xdata'
                                   1875 ;------------------------------------------------------------
                                   1876 ;dat                       Allocated to stack - _bp -4
                                   1877 ;fifoNum                   Allocated to stack - _bp -5
                                   1878 ;numBytes                  Allocated to registers r7 
                                   1879 ;------------------------------------------------------------
                           00036D  1880 	Fefm8_usbdep$USB_ReadFIFO_Xdata$0$0 ==.
                           00036D  1881 	C$efm8_usbdep.c$740$1$131 ==.
                                   1882 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:740: static void USB_ReadFIFO_Xdata(uint8_t numBytes, SI_VARIABLE_SEGMENT_POINTER(dat, uint8_t, SI_SEG_XDATA), uint8_t fifoNum)
                                   1883 ;	-----------------------------------------
                                   1884 ;	 function USB_ReadFIFO_Xdata
                                   1885 ;	-----------------------------------------
      003630                       1886 _USB_ReadFIFO_Xdata:
      003630 C0 1B            [24] 1887 	push	_bp
      003632 85 81 1B         [24] 1888 	mov	_bp,sp
      003635 AF 82            [24] 1889 	mov	r7,dpl
                           000374  1890 	C$efm8_usbdep.c$742$1$136 ==.
                                   1891 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:742: while (--numBytes)
      003637 E5 1B            [12] 1892 	mov	a,_bp
      003639 24 FC            [12] 1893 	add	a,#0xfc
      00363B F8               [12] 1894 	mov	r0,a
      00363C 86 05            [24] 1895 	mov	ar5,@r0
      00363E 08               [12] 1896 	inc	r0
      00363F 86 06            [24] 1897 	mov	ar6,@r0
      003641                       1898 00107$:
      003641 EF               [12] 1899 	mov	a,r7
      003642 14               [12] 1900 	dec	a
      003643 FC               [12] 1901 	mov	r4,a
      003644 FF               [12] 1902 	mov	r7,a
      003645 60 13            [24] 1903 	jz	00123$
                           000384  1904 	C$efm8_usbdep.c$744$3$138 ==.
                                   1905 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:744: USB_GetFIFOByte(*dat);
      003647                       1906 00101$:
      003647 E5 AE            [12] 1907 	mov	a,_USB0ADR
      003649 20 E7 FB         [24] 1908 	jb	acc.7,00101$
      00364C 8D 82            [24] 1909 	mov	dpl,r5
      00364E 8E 83            [24] 1910 	mov	dph,r6
      003650 E5 AF            [12] 1911 	mov	a,_USB0DAT
      003652 F0               [24] 1912 	movx	@dptr,a
      003653 A3               [24] 1913 	inc	dptr
      003654 AD 82            [24] 1914 	mov	r5,dpl
      003656 AE 83            [24] 1915 	mov	r6,dph
                           000395  1916 	C$efm8_usbdep.c$745$2$137 ==.
                                   1917 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:745: dat++;
                           000395  1918 	C$efm8_usbdep.c$747$1$136 ==.
                                   1919 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:747: USB_GetLastFIFOByte(*dat, fifoNum);
      003658 80 E7            [24] 1920 	sjmp	00107$
      00365A                       1921 00123$:
      00365A E5 1B            [12] 1922 	mov	a,_bp
      00365C 24 FC            [12] 1923 	add	a,#0xfc
      00365E F8               [12] 1924 	mov	r0,a
      00365F A6 05            [24] 1925 	mov	@r0,ar5
      003661 08               [12] 1926 	inc	r0
      003662 A6 06            [24] 1927 	mov	@r0,ar6
      003664                       1928 00110$:
      003664 E5 AE            [12] 1929 	mov	a,_USB0ADR
      003666 20 E7 FB         [24] 1930 	jb	acc.7,00110$
      003669 E5 1B            [12] 1931 	mov	a,_bp
      00366B 24 FB            [12] 1932 	add	a,#0xfb
      00366D F8               [12] 1933 	mov	r0,a
      00366E 74 20            [12] 1934 	mov	a,#0x20
      003670 46               [12] 1935 	orl	a,@r0
      003671 F5 AE            [12] 1936 	mov	_USB0ADR,a
      003673 E5 1B            [12] 1937 	mov	a,_bp
      003675 24 FC            [12] 1938 	add	a,#0xfc
      003677 F8               [12] 1939 	mov	r0,a
      003678 86 82            [24] 1940 	mov	dpl,@r0
      00367A 08               [12] 1941 	inc	r0
      00367B 86 83            [24] 1942 	mov	dph,@r0
      00367D E5 AF            [12] 1943 	mov	a,_USB0DAT
      00367F F0               [24] 1944 	movx	@dptr,a
      003680 D0 1B            [24] 1945 	pop	_bp
                           0003BF  1946 	C$efm8_usbdep.c$748$1$136 ==.
                           0003BF  1947 	XFefm8_usbdep$USB_ReadFIFO_Xdata$0$0 ==.
      003682 22               [24] 1948 	ret
                                   1949 ;------------------------------------------------------------
                                   1950 ;Allocation info for local variables in function 'USB_WriteFIFO_Xdata'
                                   1951 ;------------------------------------------------------------
                                   1952 ;dat                       Allocated to stack - _bp -4
                                   1953 ;numBytes                  Allocated to registers 
                                   1954 ;------------------------------------------------------------
                           0003C0  1955 	Fefm8_usbdep$USB_WriteFIFO_Xdata$0$0 ==.
                           0003C0  1956 	C$efm8_usbdep.c$759$1$136 ==.
                                   1957 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:759: static void USB_WriteFIFO_Xdata(uint8_t numBytes, SI_VARIABLE_SEGMENT_POINTER(dat, uint8_t, SI_SEG_XDATA))
                                   1958 ;	-----------------------------------------
                                   1959 ;	 function USB_WriteFIFO_Xdata
                                   1960 ;	-----------------------------------------
      003683                       1961 _USB_WriteFIFO_Xdata:
      003683 C0 1B            [24] 1962 	push	_bp
      003685 85 81 1B         [24] 1963 	mov	_bp,sp
      003688 AF 82            [24] 1964 	mov	r7,dpl
                           0003C7  1965 	C$efm8_usbdep.c$761$1$143 ==.
                                   1966 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:761: while (numBytes--)
      00368A E5 1B            [12] 1967 	mov	a,_bp
      00368C 24 FC            [12] 1968 	add	a,#0xfc
      00368E F8               [12] 1969 	mov	r0,a
      00368F 86 05            [24] 1970 	mov	ar5,@r0
      003691 08               [12] 1971 	inc	r0
      003692 86 06            [24] 1972 	mov	ar6,@r0
      003694                       1973 00107$:
      003694 8F 04            [24] 1974 	mov	ar4,r7
      003696 1F               [12] 1975 	dec	r7
      003697 EC               [12] 1976 	mov	a,r4
      003698 60 13            [24] 1977 	jz	00110$
                           0003D7  1978 	C$efm8_usbdep.c$763$3$145 ==.
                                   1979 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:763: USB_SetFIFOByte(*dat);
      00369A                       1980 00101$:
      00369A E5 AE            [12] 1981 	mov	a,_USB0ADR
      00369C 20 E7 FB         [24] 1982 	jb	acc.7,00101$
      00369F 8D 82            [24] 1983 	mov	dpl,r5
      0036A1 8E 83            [24] 1984 	mov	dph,r6
      0036A3 E0               [24] 1985 	movx	a,@dptr
      0036A4 F5 AF            [12] 1986 	mov	_USB0DAT,a
      0036A6 A3               [24] 1987 	inc	dptr
      0036A7 AD 82            [24] 1988 	mov	r5,dpl
      0036A9 AE 83            [24] 1989 	mov	r6,dph
                           0003E8  1990 	C$efm8_usbdep.c$764$2$144 ==.
                                   1991 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:764: dat++;
      0036AB 80 E7            [24] 1992 	sjmp	00107$
      0036AD                       1993 00110$:
      0036AD D0 1B            [24] 1994 	pop	_bp
                           0003EC  1995 	C$efm8_usbdep.c$766$1$143 ==.
                           0003EC  1996 	XFefm8_usbdep$USB_WriteFIFO_Xdata$0$0 ==.
      0036AF 22               [24] 1997 	ret
                                   1998 ;------------------------------------------------------------
                                   1999 ;Allocation info for local variables in function 'USB_ReadFIFO_Pdata'
                                   2000 ;------------------------------------------------------------
                                   2001 ;dat                       Allocated to stack - _bp -3
                                   2002 ;fifoNum                   Allocated to stack - _bp -4
                                   2003 ;numBytes                  Allocated to registers r7 
                                   2004 ;------------------------------------------------------------
                           0003ED  2005 	Fefm8_usbdep$USB_ReadFIFO_Pdata$0$0 ==.
                           0003ED  2006 	C$efm8_usbdep.c$778$1$143 ==.
                                   2007 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:778: static void USB_ReadFIFO_Pdata(uint8_t numBytes, SI_VARIABLE_SEGMENT_POINTER(dat, uint8_t, SI_SEG_PDATA), uint8_t fifoNum)
                                   2008 ;	-----------------------------------------
                                   2009 ;	 function USB_ReadFIFO_Pdata
                                   2010 ;	-----------------------------------------
      0036B0                       2011 _USB_ReadFIFO_Pdata:
      0036B0 C0 1B            [24] 2012 	push	_bp
      0036B2 85 81 1B         [24] 2013 	mov	_bp,sp
      0036B5 AF 82            [24] 2014 	mov	r7,dpl
                           0003F4  2015 	C$efm8_usbdep.c$780$1$148 ==.
                                   2016 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:780: while (--numBytes)
      0036B7 E5 1B            [12] 2017 	mov	a,_bp
      0036B9 24 FD            [12] 2018 	add	a,#0xfd
      0036BB F8               [12] 2019 	mov	r0,a
      0036BC 86 01            [24] 2020 	mov	ar1,@r0
      0036BE                       2021 00107$:
      0036BE EF               [12] 2022 	mov	a,r7
      0036BF 14               [12] 2023 	dec	a
      0036C0 FE               [12] 2024 	mov	r6,a
      0036C1 FF               [12] 2025 	mov	r7,a
      0036C2 60 0B            [24] 2026 	jz	00123$
                           000401  2027 	C$efm8_usbdep.c$782$3$150 ==.
                                   2028 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:782: USB_GetFIFOByte(*dat);
      0036C4                       2029 00101$:
      0036C4 E5 AE            [12] 2030 	mov	a,_USB0ADR
      0036C6 20 E7 FB         [24] 2031 	jb	acc.7,00101$
      0036C9 E5 AF            [12] 2032 	mov	a,_USB0DAT
      0036CB F3               [24] 2033 	movx	@r1,a
      0036CC 09               [12] 2034 	inc	r1
                           00040A  2035 	C$efm8_usbdep.c$783$2$149 ==.
                                   2036 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:783: dat++;
                           00040A  2037 	C$efm8_usbdep.c$785$1$148 ==.
                                   2038 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:785: USB_GetLastFIFOByte(*dat, fifoNum);
      0036CD 80 EF            [24] 2039 	sjmp	00107$
      0036CF                       2040 00123$:
      0036CF E5 1B            [12] 2041 	mov	a,_bp
      0036D1 24 FD            [12] 2042 	add	a,#0xfd
      0036D3 F8               [12] 2043 	mov	r0,a
      0036D4 A6 01            [24] 2044 	mov	@r0,ar1
      0036D6                       2045 00110$:
      0036D6 E5 AE            [12] 2046 	mov	a,_USB0ADR
      0036D8 20 E7 FB         [24] 2047 	jb	acc.7,00110$
      0036DB E5 1B            [12] 2048 	mov	a,_bp
      0036DD 24 FC            [12] 2049 	add	a,#0xfc
      0036DF F8               [12] 2050 	mov	r0,a
      0036E0 74 20            [12] 2051 	mov	a,#0x20
      0036E2 46               [12] 2052 	orl	a,@r0
      0036E3 F5 AE            [12] 2053 	mov	_USB0ADR,a
      0036E5 E5 1B            [12] 2054 	mov	a,_bp
      0036E7 24 FD            [12] 2055 	add	a,#0xfd
      0036E9 F8               [12] 2056 	mov	r0,a
      0036EA 86 01            [24] 2057 	mov	ar1,@r0
      0036EC E5 AF            [12] 2058 	mov	a,_USB0DAT
      0036EE F3               [24] 2059 	movx	@r1,a
      0036EF D0 1B            [24] 2060 	pop	_bp
                           00042E  2061 	C$efm8_usbdep.c$786$1$148 ==.
                           00042E  2062 	XFefm8_usbdep$USB_ReadFIFO_Pdata$0$0 ==.
      0036F1 22               [24] 2063 	ret
                                   2064 ;------------------------------------------------------------
                                   2065 ;Allocation info for local variables in function 'USB_WriteFIFO_Pdata'
                                   2066 ;------------------------------------------------------------
                                   2067 ;dat                       Allocated to stack - _bp -3
                                   2068 ;numBytes                  Allocated to registers 
                                   2069 ;------------------------------------------------------------
                           00042F  2070 	Fefm8_usbdep$USB_WriteFIFO_Pdata$0$0 ==.
                           00042F  2071 	C$efm8_usbdep.c$797$1$148 ==.
                                   2072 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:797: static void USB_WriteFIFO_Pdata(uint8_t numBytes, SI_VARIABLE_SEGMENT_POINTER(dat, uint8_t, SI_SEG_PDATA))
                                   2073 ;	-----------------------------------------
                                   2074 ;	 function USB_WriteFIFO_Pdata
                                   2075 ;	-----------------------------------------
      0036F2                       2076 _USB_WriteFIFO_Pdata:
      0036F2 C0 1B            [24] 2077 	push	_bp
      0036F4 85 81 1B         [24] 2078 	mov	_bp,sp
      0036F7 AF 82            [24] 2079 	mov	r7,dpl
                           000436  2080 	C$efm8_usbdep.c$799$1$155 ==.
                                   2081 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:799: while (numBytes--)
      0036F9 E5 1B            [12] 2082 	mov	a,_bp
      0036FB 24 FD            [12] 2083 	add	a,#0xfd
      0036FD F8               [12] 2084 	mov	r0,a
      0036FE 86 01            [24] 2085 	mov	ar1,@r0
      003700                       2086 00107$:
      003700 8F 06            [24] 2087 	mov	ar6,r7
      003702 1F               [12] 2088 	dec	r7
      003703 EE               [12] 2089 	mov	a,r6
      003704 60 0B            [24] 2090 	jz	00110$
                           000443  2091 	C$efm8_usbdep.c$801$3$157 ==.
                                   2092 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:801: USB_SetFIFOByte(*dat);
      003706                       2093 00101$:
      003706 E5 AE            [12] 2094 	mov	a,_USB0ADR
      003708 20 E7 FB         [24] 2095 	jb	acc.7,00101$
      00370B E3               [24] 2096 	movx	a,@r1
      00370C F5 AF            [12] 2097 	mov	_USB0DAT,a
      00370E 09               [12] 2098 	inc	r1
                           00044C  2099 	C$efm8_usbdep.c$802$2$156 ==.
                                   2100 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:802: dat++;
      00370F 80 EF            [24] 2101 	sjmp	00107$
      003711                       2102 00110$:
      003711 D0 1B            [24] 2103 	pop	_bp
                           000450  2104 	C$efm8_usbdep.c$804$1$155 ==.
                           000450  2105 	XFefm8_usbdep$USB_WriteFIFO_Pdata$0$0 ==.
      003713 22               [24] 2106 	ret
                                   2107 ;------------------------------------------------------------
                                   2108 ;Allocation info for local variables in function 'USB_WriteFIFO_Code'
                                   2109 ;------------------------------------------------------------
                                   2110 ;dat                       Allocated to stack - _bp -4
                                   2111 ;numBytes                  Allocated to registers 
                                   2112 ;------------------------------------------------------------
                           000451  2113 	Fefm8_usbdep$USB_WriteFIFO_Code$0$0 ==.
                           000451  2114 	C$efm8_usbdep.c$856$1$155 ==.
                                   2115 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:856: static void USB_WriteFIFO_Code(uint8_t numBytes, SI_VARIABLE_SEGMENT_POINTER(dat, uint8_t, SI_SEG_CODE))
                                   2116 ;	-----------------------------------------
                                   2117 ;	 function USB_WriteFIFO_Code
                                   2118 ;	-----------------------------------------
      003714                       2119 _USB_WriteFIFO_Code:
      003714 C0 1B            [24] 2120 	push	_bp
      003716 85 81 1B         [24] 2121 	mov	_bp,sp
      003719 AF 82            [24] 2122 	mov	r7,dpl
                           000458  2123 	C$efm8_usbdep.c$858$1$160 ==.
                                   2124 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:858: while (numBytes--)
      00371B E5 1B            [12] 2125 	mov	a,_bp
      00371D 24 FC            [12] 2126 	add	a,#0xfc
      00371F F8               [12] 2127 	mov	r0,a
      003720 86 05            [24] 2128 	mov	ar5,@r0
      003722 08               [12] 2129 	inc	r0
      003723 86 06            [24] 2130 	mov	ar6,@r0
      003725                       2131 00107$:
      003725 8F 04            [24] 2132 	mov	ar4,r7
      003727 1F               [12] 2133 	dec	r7
      003728 EC               [12] 2134 	mov	a,r4
      003729 60 14            [24] 2135 	jz	00110$
                           000468  2136 	C$efm8_usbdep.c$860$3$162 ==.
                                   2137 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:860: USB_SetFIFOByte(*dat);
      00372B                       2138 00101$:
      00372B E5 AE            [12] 2139 	mov	a,_USB0ADR
      00372D 20 E7 FB         [24] 2140 	jb	acc.7,00101$
      003730 8D 82            [24] 2141 	mov	dpl,r5
      003732 8E 83            [24] 2142 	mov	dph,r6
      003734 E4               [12] 2143 	clr	a
      003735 93               [24] 2144 	movc	a,@a+dptr
      003736 F5 AF            [12] 2145 	mov	_USB0DAT,a
      003738 A3               [24] 2146 	inc	dptr
      003739 AD 82            [24] 2147 	mov	r5,dpl
      00373B AE 83            [24] 2148 	mov	r6,dph
                           00047A  2149 	C$efm8_usbdep.c$861$2$161 ==.
                                   2150 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:861: dat++;
      00373D 80 E6            [24] 2151 	sjmp	00107$
      00373F                       2152 00110$:
      00373F D0 1B            [24] 2153 	pop	_bp
                           00047E  2154 	C$efm8_usbdep.c$863$1$160 ==.
                           00047E  2155 	XFefm8_usbdep$USB_WriteFIFO_Code$0$0 ==.
      003741 22               [24] 2156 	ret
                                   2157 ;------------------------------------------------------------
                                   2158 ;Allocation info for local variables in function 'USB_ReadFIFO_Generic'
                                   2159 ;------------------------------------------------------------
                                   2160 ;dat                       Allocated to stack - _bp -5
                                   2161 ;fifoNum                   Allocated to stack - _bp -6
                                   2162 ;numBytes                  Allocated to registers r7 
                                   2163 ;------------------------------------------------------------
                           00047F  2164 	Fefm8_usbdep$USB_ReadFIFO_Generic$0$0 ==.
                           00047F  2165 	C$efm8_usbdep.c$914$1$160 ==.
                                   2166 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:914: static void USB_ReadFIFO_Generic(uint8_t numBytes, uint8_t *dat, uint8_t fifoNum)
                                   2167 ;	-----------------------------------------
                                   2168 ;	 function USB_ReadFIFO_Generic
                                   2169 ;	-----------------------------------------
      003742                       2170 _USB_ReadFIFO_Generic:
      003742 C0 1B            [24] 2171 	push	_bp
      003744 85 81 1B         [24] 2172 	mov	_bp,sp
      003747 AF 82            [24] 2173 	mov	r7,dpl
                           000486  2174 	C$efm8_usbdep.c$916$1$165 ==.
                                   2175 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:916: while (--numBytes)
      003749 E5 1B            [12] 2176 	mov	a,_bp
      00374B 24 FB            [12] 2177 	add	a,#0xfb
      00374D F8               [12] 2178 	mov	r0,a
      00374E 86 04            [24] 2179 	mov	ar4,@r0
      003750 08               [12] 2180 	inc	r0
      003751 86 05            [24] 2181 	mov	ar5,@r0
      003753 08               [12] 2182 	inc	r0
      003754 86 06            [24] 2183 	mov	ar6,@r0
      003756                       2184 00107$:
      003756 EF               [12] 2185 	mov	a,r7
      003757 14               [12] 2186 	dec	a
      003758 FB               [12] 2187 	mov	r3,a
      003759 FF               [12] 2188 	mov	r7,a
      00375A 60 17            [24] 2189 	jz	00123$
                           000499  2190 	C$efm8_usbdep.c$918$3$167 ==.
                                   2191 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:918: USB_GetFIFOByte(*dat);
      00375C                       2192 00101$:
      00375C E5 AE            [12] 2193 	mov	a,_USB0ADR
      00375E 20 E7 FB         [24] 2194 	jb	acc.7,00101$
      003761 8C 82            [24] 2195 	mov	dpl,r4
      003763 8D 83            [24] 2196 	mov	dph,r5
      003765 8E F0            [24] 2197 	mov	b,r6
      003767 E5 AF            [12] 2198 	mov	a,_USB0DAT
      003769 12 5A 48         [24] 2199 	lcall	__gptrput
      00376C A3               [24] 2200 	inc	dptr
      00376D AC 82            [24] 2201 	mov	r4,dpl
      00376F AD 83            [24] 2202 	mov	r5,dph
                           0004AE  2203 	C$efm8_usbdep.c$919$2$166 ==.
                                   2204 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:919: dat++;
                           0004AE  2205 	C$efm8_usbdep.c$921$1$165 ==.
                                   2206 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:921: USB_GetLastFIFOByte(*dat, fifoNum);
      003771 80 E3            [24] 2207 	sjmp	00107$
      003773                       2208 00123$:
      003773 E5 1B            [12] 2209 	mov	a,_bp
      003775 24 FB            [12] 2210 	add	a,#0xfb
      003777 F8               [12] 2211 	mov	r0,a
      003778 A6 04            [24] 2212 	mov	@r0,ar4
      00377A 08               [12] 2213 	inc	r0
      00377B A6 05            [24] 2214 	mov	@r0,ar5
      00377D 08               [12] 2215 	inc	r0
      00377E A6 06            [24] 2216 	mov	@r0,ar6
      003780                       2217 00110$:
      003780 E5 AE            [12] 2218 	mov	a,_USB0ADR
      003782 20 E7 FB         [24] 2219 	jb	acc.7,00110$
      003785 E5 1B            [12] 2220 	mov	a,_bp
      003787 24 FA            [12] 2221 	add	a,#0xfa
      003789 F8               [12] 2222 	mov	r0,a
      00378A 74 20            [12] 2223 	mov	a,#0x20
      00378C 46               [12] 2224 	orl	a,@r0
      00378D F5 AE            [12] 2225 	mov	_USB0ADR,a
      00378F E5 1B            [12] 2226 	mov	a,_bp
      003791 24 FB            [12] 2227 	add	a,#0xfb
      003793 F8               [12] 2228 	mov	r0,a
      003794 86 05            [24] 2229 	mov	ar5,@r0
      003796 08               [12] 2230 	inc	r0
      003797 86 06            [24] 2231 	mov	ar6,@r0
      003799 08               [12] 2232 	inc	r0
      00379A 86 07            [24] 2233 	mov	ar7,@r0
      00379C 8D 82            [24] 2234 	mov	dpl,r5
      00379E 8E 83            [24] 2235 	mov	dph,r6
      0037A0 8F F0            [24] 2236 	mov	b,r7
      0037A2 E5 AF            [12] 2237 	mov	a,_USB0DAT
      0037A4 12 5A 48         [24] 2238 	lcall	__gptrput
      0037A7 D0 1B            [24] 2239 	pop	_bp
                           0004E6  2240 	C$efm8_usbdep.c$922$1$165 ==.
                           0004E6  2241 	XFefm8_usbdep$USB_ReadFIFO_Generic$0$0 ==.
      0037A9 22               [24] 2242 	ret
                                   2243 ;------------------------------------------------------------
                                   2244 ;Allocation info for local variables in function 'USB_WriteFIFO_Generic'
                                   2245 ;------------------------------------------------------------
                                   2246 ;dat                       Allocated to stack - _bp -5
                                   2247 ;numBytes                  Allocated to registers 
                                   2248 ;------------------------------------------------------------
                           0004E7  2249 	Fefm8_usbdep$USB_WriteFIFO_Generic$0$0 ==.
                           0004E7  2250 	C$efm8_usbdep.c$933$1$165 ==.
                                   2251 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:933: static void USB_WriteFIFO_Generic(uint8_t numBytes, uint8_t *dat)
                                   2252 ;	-----------------------------------------
                                   2253 ;	 function USB_WriteFIFO_Generic
                                   2254 ;	-----------------------------------------
      0037AA                       2255 _USB_WriteFIFO_Generic:
      0037AA C0 1B            [24] 2256 	push	_bp
      0037AC 85 81 1B         [24] 2257 	mov	_bp,sp
      0037AF AF 82            [24] 2258 	mov	r7,dpl
                           0004EE  2259 	C$efm8_usbdep.c$935$1$172 ==.
                                   2260 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:935: while (numBytes--)
      0037B1 E5 1B            [12] 2261 	mov	a,_bp
      0037B3 24 FB            [12] 2262 	add	a,#0xfb
      0037B5 F8               [12] 2263 	mov	r0,a
      0037B6 86 04            [24] 2264 	mov	ar4,@r0
      0037B8 08               [12] 2265 	inc	r0
      0037B9 86 05            [24] 2266 	mov	ar5,@r0
      0037BB 08               [12] 2267 	inc	r0
      0037BC 86 06            [24] 2268 	mov	ar6,@r0
      0037BE                       2269 00107$:
      0037BE 8F 03            [24] 2270 	mov	ar3,r7
      0037C0 1F               [12] 2271 	dec	r7
      0037C1 EB               [12] 2272 	mov	a,r3
      0037C2 60 17            [24] 2273 	jz	00110$
                           000501  2274 	C$efm8_usbdep.c$937$3$174 ==.
                                   2275 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:937: USB_SetFIFOByte(*dat);
      0037C4                       2276 00101$:
      0037C4 E5 AE            [12] 2277 	mov	a,_USB0ADR
      0037C6 20 E7 FB         [24] 2278 	jb	acc.7,00101$
      0037C9 8C 82            [24] 2279 	mov	dpl,r4
      0037CB 8D 83            [24] 2280 	mov	dph,r5
      0037CD 8E F0            [24] 2281 	mov	b,r6
      0037CF 12 5E 3E         [24] 2282 	lcall	__gptrget
      0037D2 F5 AF            [12] 2283 	mov	_USB0DAT,a
      0037D4 A3               [24] 2284 	inc	dptr
      0037D5 AC 82            [24] 2285 	mov	r4,dpl
      0037D7 AD 83            [24] 2286 	mov	r5,dph
                           000516  2287 	C$efm8_usbdep.c$938$2$173 ==.
                                   2288 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdep.c:938: dat++;
      0037D9 80 E3            [24] 2289 	sjmp	00107$
      0037DB                       2290 00110$:
      0037DB D0 1B            [24] 2291 	pop	_bp
                           00051A  2292 	C$efm8_usbdep.c$940$1$172 ==.
                           00051A  2293 	XFefm8_usbdep$USB_WriteFIFO_Generic$0$0 ==.
      0037DD 22               [24] 2294 	ret
                                   2295 	.area CSEG    (CODE)
                                   2296 	.area CONST   (CODE)
                                   2297 	.area XINIT   (CODE)
                                   2298 	.area CABS    (ABS,CODE)
