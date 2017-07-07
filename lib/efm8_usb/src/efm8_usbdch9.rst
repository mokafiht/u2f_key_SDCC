                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module efm8_usbdch9
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _txZero
                                     12 	.globl _USB_ActivateEp
                                     13 	.globl _USB_SetIndex
                                     14 	.globl _USBD_IsSelfPoweredCb
                                     15 	.globl _USBD_AbortAllTransfers
                                     16 	.globl _USBD_SetUsbState
                                     17 	.globl _UART1FCN1_TFRQ
                                     18 	.globl _UART1FCN1_TXNF
                                     19 	.globl _UART1FCN1_TXHOLD
                                     20 	.globl _UART1FCN1_TIE
                                     21 	.globl _UART1FCN1_RFRQ
                                     22 	.globl _UART1FCN1_RXTO1
                                     23 	.globl _UART1FCN1_RXTO0
                                     24 	.globl _UART1FCN1_RIE
                                     25 	.globl _TMR4CN0_TF4H
                                     26 	.globl _TMR4CN0_TF4L
                                     27 	.globl _TMR4CN0_TF4LEN
                                     28 	.globl _TMR4CN0_TF4CEN
                                     29 	.globl _TMR4CN0_T4SPLIT
                                     30 	.globl _TMR4CN0_TR4
                                     31 	.globl _TMR4CN0_T4XCLK1
                                     32 	.globl _TMR4CN0_T4XCLK0
                                     33 	.globl _TMR2CN0_TF2H
                                     34 	.globl _TMR2CN0_TF2L
                                     35 	.globl _TMR2CN0_TF2LEN
                                     36 	.globl _TMR2CN0_TF2CEN
                                     37 	.globl _TMR2CN0_T2SPLIT
                                     38 	.globl _TMR2CN0_TR2
                                     39 	.globl _TMR2CN0_T2XCLK1
                                     40 	.globl _TMR2CN0_T2XCLK0
                                     41 	.globl _TCON_TF1
                                     42 	.globl _TCON_TR1
                                     43 	.globl _TCON_TF0
                                     44 	.globl _TCON_TR0
                                     45 	.globl _TCON_IE1
                                     46 	.globl _TCON_IT1
                                     47 	.globl _TCON_IE0
                                     48 	.globl _TCON_IT0
                                     49 	.globl _SPI0CN0_SPIF
                                     50 	.globl _SPI0CN0_WCOL
                                     51 	.globl _SPI0CN0_MODF
                                     52 	.globl _SPI0CN0_RXOVRN
                                     53 	.globl _SPI0CN0_NSSMD1
                                     54 	.globl _SPI0CN0_NSSMD0
                                     55 	.globl _SPI0CN0_TXNF
                                     56 	.globl _SPI0CN0_SPIEN
                                     57 	.globl _SMB0CN0_MASTER
                                     58 	.globl _SMB0CN0_TXMODE
                                     59 	.globl _SMB0CN0_STA
                                     60 	.globl _SMB0CN0_STO
                                     61 	.globl _SMB0CN0_ACKRQ
                                     62 	.globl _SMB0CN0_ARBLOST
                                     63 	.globl _SMB0CN0_ACK
                                     64 	.globl _SMB0CN0_SI
                                     65 	.globl _SCON1_OVR
                                     66 	.globl _SCON1_PERR
                                     67 	.globl _SCON1_REN
                                     68 	.globl _SCON1_TBX
                                     69 	.globl _SCON1_RBX
                                     70 	.globl _SCON1_TI
                                     71 	.globl _SCON1_RI
                                     72 	.globl _SCON0_SMODE
                                     73 	.globl _SCON0_MCE
                                     74 	.globl _SCON0_REN
                                     75 	.globl _SCON0_TB8
                                     76 	.globl _SCON0_RB8
                                     77 	.globl _SCON0_TI
                                     78 	.globl _SCON0_RI
                                     79 	.globl _PSW_CY
                                     80 	.globl _PSW_AC
                                     81 	.globl _PSW_F0
                                     82 	.globl _PSW_RS1
                                     83 	.globl _PSW_RS0
                                     84 	.globl _PSW_OV
                                     85 	.globl _PSW_F1
                                     86 	.globl _PSW_PARITY
                                     87 	.globl _PCA0CN0_CF
                                     88 	.globl _PCA0CN0_CR
                                     89 	.globl _PCA0CN0_CCF2
                                     90 	.globl _PCA0CN0_CCF1
                                     91 	.globl _PCA0CN0_CCF0
                                     92 	.globl _P3_B1
                                     93 	.globl _P3_B0
                                     94 	.globl _P2_B3
                                     95 	.globl _P2_B2
                                     96 	.globl _P2_B1
                                     97 	.globl _P2_B0
                                     98 	.globl _P1_B7
                                     99 	.globl _P1_B6
                                    100 	.globl _P1_B5
                                    101 	.globl _P1_B4
                                    102 	.globl _P1_B3
                                    103 	.globl _P1_B2
                                    104 	.globl _P1_B1
                                    105 	.globl _P1_B0
                                    106 	.globl _P0_B7
                                    107 	.globl _P0_B6
                                    108 	.globl _P0_B5
                                    109 	.globl _P0_B4
                                    110 	.globl _P0_B3
                                    111 	.globl _P0_B2
                                    112 	.globl _P0_B1
                                    113 	.globl _P0_B0
                                    114 	.globl _IP_PSPI0
                                    115 	.globl _IP_PT2
                                    116 	.globl _IP_PS0
                                    117 	.globl _IP_PT1
                                    118 	.globl _IP_PX1
                                    119 	.globl _IP_PT0
                                    120 	.globl _IP_PX0
                                    121 	.globl _IE_EA
                                    122 	.globl _IE_ESPI0
                                    123 	.globl _IE_ET2
                                    124 	.globl _IE_ES0
                                    125 	.globl _IE_ET1
                                    126 	.globl _IE_EX1
                                    127 	.globl _IE_ET0
                                    128 	.globl _IE_EX0
                                    129 	.globl _B_B7
                                    130 	.globl _B_B6
                                    131 	.globl _B_B5
                                    132 	.globl _B_B4
                                    133 	.globl _B_B3
                                    134 	.globl _B_B2
                                    135 	.globl _B_B1
                                    136 	.globl _B_B0
                                    137 	.globl _ADC0CN0_ADEN
                                    138 	.globl _ADC0CN0_ADBMEN
                                    139 	.globl _ADC0CN0_ADINT
                                    140 	.globl _ADC0CN0_ADBUSY
                                    141 	.globl _ADC0CN0_ADWINT
                                    142 	.globl _ADC0CN0_ADCM2
                                    143 	.globl _ADC0CN0_ADCM1
                                    144 	.globl _ADC0CN0_ADCM0
                                    145 	.globl _ACC_ACC7
                                    146 	.globl _ACC_ACC6
                                    147 	.globl _ACC_ACC5
                                    148 	.globl _ACC_ACC4
                                    149 	.globl _ACC_ACC3
                                    150 	.globl _ACC_ACC2
                                    151 	.globl _ACC_ACC1
                                    152 	.globl _ACC_ACC0
                                    153 	.globl __XPAGE
                                    154 	.globl _TMR4RL
                                    155 	.globl _TMR4
                                    156 	.globl _TMR3RL
                                    157 	.globl _TMR3
                                    158 	.globl _TMR2RL
                                    159 	.globl _TMR2
                                    160 	.globl _SBRL1
                                    161 	.globl _PCA0
                                    162 	.globl _PCA0CP2
                                    163 	.globl _PCA0CP1
                                    164 	.globl _PCA0CP0
                                    165 	.globl _DP
                                    166 	.globl _ADC0LT
                                    167 	.globl _ADC0
                                    168 	.globl _ADC0GT
                                    169 	.globl _XBR2
                                    170 	.globl _XBR1
                                    171 	.globl _XBR0
                                    172 	.globl _WDTCN
                                    173 	.globl _VDM0CN
                                    174 	.globl _USB0XCN
                                    175 	.globl _USB0DAT
                                    176 	.globl _USB0CF
                                    177 	.globl _USB0CDSTA
                                    178 	.globl _USB0CDCN
                                    179 	.globl _USB0CDCF
                                    180 	.globl _USB0AEC
                                    181 	.globl _USB0ADR
                                    182 	.globl _UART1LIN
                                    183 	.globl _UART1FCT
                                    184 	.globl _UART1FCN1
                                    185 	.globl _UART1FCN0
                                    186 	.globl _TMR4RLL
                                    187 	.globl _TMR4RLH
                                    188 	.globl _TMR4L
                                    189 	.globl _TMR4H
                                    190 	.globl _TMR4CN1
                                    191 	.globl _TMR4CN0
                                    192 	.globl _TMR3RLL
                                    193 	.globl _TMR3RLH
                                    194 	.globl _TMR3L
                                    195 	.globl _TMR3H
                                    196 	.globl _TMR3CN1
                                    197 	.globl _TMR3CN0
                                    198 	.globl _TMR2RLL
                                    199 	.globl _TMR2RLH
                                    200 	.globl _TMR2L
                                    201 	.globl _TMR2H
                                    202 	.globl _TMR2CN1
                                    203 	.globl _TMR2CN0
                                    204 	.globl _TMOD
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TH1
                                    208 	.globl _TH0
                                    209 	.globl _TCON
                                    210 	.globl _SPI0FCT
                                    211 	.globl _SPI0FCN1
                                    212 	.globl _SPI0FCN0
                                    213 	.globl _SPI0DAT
                                    214 	.globl _SPI0CN0
                                    215 	.globl _SPI0CKR
                                    216 	.globl _SPI0CFG
                                    217 	.globl _SP
                                    218 	.globl _SMOD1
                                    219 	.globl _SMB0TC
                                    220 	.globl _SMB0RXLN
                                    221 	.globl _SMB0FCT
                                    222 	.globl _SMB0FCN1
                                    223 	.globl _SMB0FCN0
                                    224 	.globl _SMB0DAT
                                    225 	.globl _SMB0CN0
                                    226 	.globl _SMB0CF
                                    227 	.globl _SMB0ADR
                                    228 	.globl _SMB0ADM
                                    229 	.globl _SFRSTACK
                                    230 	.globl _SFRPGCN
                                    231 	.globl _SFRPAGE
                                    232 	.globl _SCON1
                                    233 	.globl _SCON0
                                    234 	.globl _SBUF1
                                    235 	.globl _SBUF0
                                    236 	.globl _SBRLL1
                                    237 	.globl _SBRLH1
                                    238 	.globl _SBCON1
                                    239 	.globl _RSTSRC
                                    240 	.globl _REVID
                                    241 	.globl _REG1CN
                                    242 	.globl _REG0CN
                                    243 	.globl _REF0CN
                                    244 	.globl _PSW
                                    245 	.globl _PSCTL
                                    246 	.globl _PRTDRV
                                    247 	.globl _PFE0CN
                                    248 	.globl _PCON1
                                    249 	.globl _PCON0
                                    250 	.globl _PCA0PWM
                                    251 	.globl _PCA0POL
                                    252 	.globl _PCA0MD
                                    253 	.globl _PCA0L
                                    254 	.globl _PCA0H
                                    255 	.globl _PCA0CPM2
                                    256 	.globl _PCA0CPM1
                                    257 	.globl _PCA0CPM0
                                    258 	.globl _PCA0CPL2
                                    259 	.globl _PCA0CPL1
                                    260 	.globl _PCA0CPL0
                                    261 	.globl _PCA0CPH2
                                    262 	.globl _PCA0CPH1
                                    263 	.globl _PCA0CPH0
                                    264 	.globl _PCA0CN0
                                    265 	.globl _PCA0CLR
                                    266 	.globl _PCA0CENT
                                    267 	.globl _P3MDOUT
                                    268 	.globl _P3MDIN
                                    269 	.globl _P3
                                    270 	.globl _P2SKIP
                                    271 	.globl _P2MDOUT
                                    272 	.globl _P2MDIN
                                    273 	.globl _P2MAT
                                    274 	.globl _P2MASK
                                    275 	.globl _P2
                                    276 	.globl _P1SKIP
                                    277 	.globl _P1MDOUT
                                    278 	.globl _P1MDIN
                                    279 	.globl _P1MAT
                                    280 	.globl _P1MASK
                                    281 	.globl _P1
                                    282 	.globl _P0SKIP
                                    283 	.globl _P0MDOUT
                                    284 	.globl _P0MDIN
                                    285 	.globl _P0MAT
                                    286 	.globl _P0MASK
                                    287 	.globl _P0
                                    288 	.globl _LFO0CN
                                    289 	.globl _IT01CF
                                    290 	.globl _IPH
                                    291 	.globl _IP
                                    292 	.globl _IE
                                    293 	.globl _I2C0STAT
                                    294 	.globl _I2C0SLAD
                                    295 	.globl _I2C0FCT
                                    296 	.globl _I2C0FCN1
                                    297 	.globl _I2C0FCN0
                                    298 	.globl _I2C0DOUT
                                    299 	.globl _I2C0DIN
                                    300 	.globl _I2C0CN0
                                    301 	.globl _HFOCN
                                    302 	.globl _HFO1CAL
                                    303 	.globl _HFO0CAL
                                    304 	.globl _FLKEY
                                    305 	.globl _EMI0CN
                                    306 	.globl _EIP2H
                                    307 	.globl _EIP2
                                    308 	.globl _EIP1H
                                    309 	.globl _EIP1
                                    310 	.globl _EIE2
                                    311 	.globl _EIE1
                                    312 	.globl _DPL
                                    313 	.globl _DPH
                                    314 	.globl _DEVICEID
                                    315 	.globl _DERIVID
                                    316 	.globl _CRC0ST
                                    317 	.globl _CRC0IN
                                    318 	.globl _CRC0FLIP
                                    319 	.globl _CRC0DAT
                                    320 	.globl _CRC0CNT
                                    321 	.globl _CRC0CN1
                                    322 	.globl _CRC0CN0
                                    323 	.globl _CMP1MX
                                    324 	.globl _CMP1MD
                                    325 	.globl _CMP1CN1
                                    326 	.globl _CMP1CN0
                                    327 	.globl _CMP0MX
                                    328 	.globl _CMP0MD
                                    329 	.globl _CMP0CN1
                                    330 	.globl _CMP0CN0
                                    331 	.globl _CLKSEL
                                    332 	.globl _CKCON1
                                    333 	.globl _CKCON0
                                    334 	.globl _B
                                    335 	.globl _ADC0TK
                                    336 	.globl _ADC0PWR
                                    337 	.globl _ADC0MX
                                    338 	.globl _ADC0LTL
                                    339 	.globl _ADC0LTH
                                    340 	.globl _ADC0L
                                    341 	.globl _ADC0H
                                    342 	.globl _ADC0GTL
                                    343 	.globl _ADC0GTH
                                    344 	.globl _ADC0CN1
                                    345 	.globl _ADC0CN0
                                    346 	.globl _ADC0CF
                                    347 	.globl _ADC0AC
                                    348 	.globl _ACC
                                    349 	.globl _USBDCH9_SetupCmd
                                    350 ;--------------------------------------------------------
                                    351 ; special function registers
                                    352 ;--------------------------------------------------------
                                    353 	.area RSEG    (ABS,DATA)
      000000                        354 	.org 0x0000
                           0000E0   355 G$ACC$0$0 == 0x00e0
                           0000E0   356 _ACC	=	0x00e0
                           0000B3   357 G$ADC0AC$0$0 == 0x00b3
                           0000B3   358 _ADC0AC	=	0x00b3
                           0000BC   359 G$ADC0CF$0$0 == 0x00bc
                           0000BC   360 _ADC0CF	=	0x00bc
                           0000E8   361 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   362 _ADC0CN0	=	0x00e8
                           0000B2   363 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   364 _ADC0CN1	=	0x00b2
                           0000C4   365 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   366 _ADC0GTH	=	0x00c4
                           0000C3   367 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   368 _ADC0GTL	=	0x00c3
                           0000BE   369 G$ADC0H$0$0 == 0x00be
                           0000BE   370 _ADC0H	=	0x00be
                           0000BD   371 G$ADC0L$0$0 == 0x00bd
                           0000BD   372 _ADC0L	=	0x00bd
                           0000C6   373 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   374 _ADC0LTH	=	0x00c6
                           0000C5   375 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   376 _ADC0LTL	=	0x00c5
                           0000BB   377 G$ADC0MX$0$0 == 0x00bb
                           0000BB   378 _ADC0MX	=	0x00bb
                           0000DF   379 G$ADC0PWR$0$0 == 0x00df
                           0000DF   380 _ADC0PWR	=	0x00df
                           0000B9   381 G$ADC0TK$0$0 == 0x00b9
                           0000B9   382 _ADC0TK	=	0x00b9
                           0000F0   383 G$B$0$0 == 0x00f0
                           0000F0   384 _B	=	0x00f0
                           00008E   385 G$CKCON0$0$0 == 0x008e
                           00008E   386 _CKCON0	=	0x008e
                           0000A6   387 G$CKCON1$0$0 == 0x00a6
                           0000A6   388 _CKCON1	=	0x00a6
                           0000A9   389 G$CLKSEL$0$0 == 0x00a9
                           0000A9   390 _CLKSEL	=	0x00a9
                           00009B   391 G$CMP0CN0$0$0 == 0x009b
                           00009B   392 _CMP0CN0	=	0x009b
                           000099   393 G$CMP0CN1$0$0 == 0x0099
                           000099   394 _CMP0CN1	=	0x0099
                           00009D   395 G$CMP0MD$0$0 == 0x009d
                           00009D   396 _CMP0MD	=	0x009d
                           00009F   397 G$CMP0MX$0$0 == 0x009f
                           00009F   398 _CMP0MX	=	0x009f
                           0000BF   399 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   400 _CMP1CN0	=	0x00bf
                           0000AC   401 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   402 _CMP1CN1	=	0x00ac
                           0000AB   403 G$CMP1MD$0$0 == 0x00ab
                           0000AB   404 _CMP1MD	=	0x00ab
                           0000AA   405 G$CMP1MX$0$0 == 0x00aa
                           0000AA   406 _CMP1MX	=	0x00aa
                           0000CE   407 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   408 _CRC0CN0	=	0x00ce
                           000086   409 G$CRC0CN1$0$0 == 0x0086
                           000086   410 _CRC0CN1	=	0x0086
                           0000D3   411 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   412 _CRC0CNT	=	0x00d3
                           0000DE   413 G$CRC0DAT$0$0 == 0x00de
                           0000DE   414 _CRC0DAT	=	0x00de
                           0000CF   415 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   416 _CRC0FLIP	=	0x00cf
                           0000DD   417 G$CRC0IN$0$0 == 0x00dd
                           0000DD   418 _CRC0IN	=	0x00dd
                           0000D2   419 G$CRC0ST$0$0 == 0x00d2
                           0000D2   420 _CRC0ST	=	0x00d2
                           0000AD   421 G$DERIVID$0$0 == 0x00ad
                           0000AD   422 _DERIVID	=	0x00ad
                           0000B5   423 G$DEVICEID$0$0 == 0x00b5
                           0000B5   424 _DEVICEID	=	0x00b5
                           000083   425 G$DPH$0$0 == 0x0083
                           000083   426 _DPH	=	0x0083
                           000082   427 G$DPL$0$0 == 0x0082
                           000082   428 _DPL	=	0x0082
                           0000E6   429 G$EIE1$0$0 == 0x00e6
                           0000E6   430 _EIE1	=	0x00e6
                           0000CE   431 G$EIE2$0$0 == 0x00ce
                           0000CE   432 _EIE2	=	0x00ce
                           0000F3   433 G$EIP1$0$0 == 0x00f3
                           0000F3   434 _EIP1	=	0x00f3
                           0000F5   435 G$EIP1H$0$0 == 0x00f5
                           0000F5   436 _EIP1H	=	0x00f5
                           0000F4   437 G$EIP2$0$0 == 0x00f4
                           0000F4   438 _EIP2	=	0x00f4
                           0000F6   439 G$EIP2H$0$0 == 0x00f6
                           0000F6   440 _EIP2H	=	0x00f6
                           0000E7   441 G$EMI0CN$0$0 == 0x00e7
                           0000E7   442 _EMI0CN	=	0x00e7
                           0000B7   443 G$FLKEY$0$0 == 0x00b7
                           0000B7   444 _FLKEY	=	0x00b7
                           0000C7   445 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   446 _HFO0CAL	=	0x00c7
                           0000D6   447 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   448 _HFO1CAL	=	0x00d6
                           0000EF   449 G$HFOCN$0$0 == 0x00ef
                           0000EF   450 _HFOCN	=	0x00ef
                           0000BA   451 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   452 _I2C0CN0	=	0x00ba
                           0000BC   453 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   454 _I2C0DIN	=	0x00bc
                           0000BB   455 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   456 _I2C0DOUT	=	0x00bb
                           0000AD   457 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   458 _I2C0FCN0	=	0x00ad
                           0000AB   459 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   460 _I2C0FCN1	=	0x00ab
                           0000F5   461 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   462 _I2C0FCT	=	0x00f5
                           0000BD   463 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   464 _I2C0SLAD	=	0x00bd
                           0000B9   465 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   466 _I2C0STAT	=	0x00b9
                           0000A8   467 G$IE$0$0 == 0x00a8
                           0000A8   468 _IE	=	0x00a8
                           0000B8   469 G$IP$0$0 == 0x00b8
                           0000B8   470 _IP	=	0x00b8
                           0000F2   471 G$IPH$0$0 == 0x00f2
                           0000F2   472 _IPH	=	0x00f2
                           0000E4   473 G$IT01CF$0$0 == 0x00e4
                           0000E4   474 _IT01CF	=	0x00e4
                           0000B1   475 G$LFO0CN$0$0 == 0x00b1
                           0000B1   476 _LFO0CN	=	0x00b1
                           000080   477 G$P0$0$0 == 0x0080
                           000080   478 _P0	=	0x0080
                           0000FE   479 G$P0MASK$0$0 == 0x00fe
                           0000FE   480 _P0MASK	=	0x00fe
                           0000FD   481 G$P0MAT$0$0 == 0x00fd
                           0000FD   482 _P0MAT	=	0x00fd
                           0000F1   483 G$P0MDIN$0$0 == 0x00f1
                           0000F1   484 _P0MDIN	=	0x00f1
                           0000A4   485 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   486 _P0MDOUT	=	0x00a4
                           0000D4   487 G$P0SKIP$0$0 == 0x00d4
                           0000D4   488 _P0SKIP	=	0x00d4
                           000090   489 G$P1$0$0 == 0x0090
                           000090   490 _P1	=	0x0090
                           0000EE   491 G$P1MASK$0$0 == 0x00ee
                           0000EE   492 _P1MASK	=	0x00ee
                           0000ED   493 G$P1MAT$0$0 == 0x00ed
                           0000ED   494 _P1MAT	=	0x00ed
                           0000F2   495 G$P1MDIN$0$0 == 0x00f2
                           0000F2   496 _P1MDIN	=	0x00f2
                           0000A5   497 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   498 _P1MDOUT	=	0x00a5
                           0000D5   499 G$P1SKIP$0$0 == 0x00d5
                           0000D5   500 _P1SKIP	=	0x00d5
                           0000A0   501 G$P2$0$0 == 0x00a0
                           0000A0   502 _P2	=	0x00a0
                           0000FC   503 G$P2MASK$0$0 == 0x00fc
                           0000FC   504 _P2MASK	=	0x00fc
                           0000FB   505 G$P2MAT$0$0 == 0x00fb
                           0000FB   506 _P2MAT	=	0x00fb
                           0000F3   507 G$P2MDIN$0$0 == 0x00f3
                           0000F3   508 _P2MDIN	=	0x00f3
                           0000A6   509 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   510 _P2MDOUT	=	0x00a6
                           0000CC   511 G$P2SKIP$0$0 == 0x00cc
                           0000CC   512 _P2SKIP	=	0x00cc
                           0000B0   513 G$P3$0$0 == 0x00b0
                           0000B0   514 _P3	=	0x00b0
                           0000F4   515 G$P3MDIN$0$0 == 0x00f4
                           0000F4   516 _P3MDIN	=	0x00f4
                           00009C   517 G$P3MDOUT$0$0 == 0x009c
                           00009C   518 _P3MDOUT	=	0x009c
                           00009E   519 G$PCA0CENT$0$0 == 0x009e
                           00009E   520 _PCA0CENT	=	0x009e
                           00009C   521 G$PCA0CLR$0$0 == 0x009c
                           00009C   522 _PCA0CLR	=	0x009c
                           0000D8   523 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   524 _PCA0CN0	=	0x00d8
                           0000FC   525 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   526 _PCA0CPH0	=	0x00fc
                           0000EA   527 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   528 _PCA0CPH1	=	0x00ea
                           0000EC   529 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   530 _PCA0CPH2	=	0x00ec
                           0000FB   531 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   532 _PCA0CPL0	=	0x00fb
                           0000E9   533 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   534 _PCA0CPL1	=	0x00e9
                           0000EB   535 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   536 _PCA0CPL2	=	0x00eb
                           0000DA   537 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   538 _PCA0CPM0	=	0x00da
                           0000DB   539 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   540 _PCA0CPM1	=	0x00db
                           0000DC   541 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   542 _PCA0CPM2	=	0x00dc
                           0000FA   543 G$PCA0H$0$0 == 0x00fa
                           0000FA   544 _PCA0H	=	0x00fa
                           0000F9   545 G$PCA0L$0$0 == 0x00f9
                           0000F9   546 _PCA0L	=	0x00f9
                           0000D9   547 G$PCA0MD$0$0 == 0x00d9
                           0000D9   548 _PCA0MD	=	0x00d9
                           000096   549 G$PCA0POL$0$0 == 0x0096
                           000096   550 _PCA0POL	=	0x0096
                           0000F7   551 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   552 _PCA0PWM	=	0x00f7
                           000087   553 G$PCON0$0$0 == 0x0087
                           000087   554 _PCON0	=	0x0087
                           00009A   555 G$PCON1$0$0 == 0x009a
                           00009A   556 _PCON1	=	0x009a
                           0000C1   557 G$PFE0CN$0$0 == 0x00c1
                           0000C1   558 _PFE0CN	=	0x00c1
                           0000F6   559 G$PRTDRV$0$0 == 0x00f6
                           0000F6   560 _PRTDRV	=	0x00f6
                           00008F   561 G$PSCTL$0$0 == 0x008f
                           00008F   562 _PSCTL	=	0x008f
                           0000D0   563 G$PSW$0$0 == 0x00d0
                           0000D0   564 _PSW	=	0x00d0
                           0000D1   565 G$REF0CN$0$0 == 0x00d1
                           0000D1   566 _REF0CN	=	0x00d1
                           0000C9   567 G$REG0CN$0$0 == 0x00c9
                           0000C9   568 _REG0CN	=	0x00c9
                           0000C6   569 G$REG1CN$0$0 == 0x00c6
                           0000C6   570 _REG1CN	=	0x00c6
                           0000B6   571 G$REVID$0$0 == 0x00b6
                           0000B6   572 _REVID	=	0x00b6
                           0000EF   573 G$RSTSRC$0$0 == 0x00ef
                           0000EF   574 _RSTSRC	=	0x00ef
                           000094   575 G$SBCON1$0$0 == 0x0094
                           000094   576 _SBCON1	=	0x0094
                           000096   577 G$SBRLH1$0$0 == 0x0096
                           000096   578 _SBRLH1	=	0x0096
                           000095   579 G$SBRLL1$0$0 == 0x0095
                           000095   580 _SBRLL1	=	0x0095
                           000099   581 G$SBUF0$0$0 == 0x0099
                           000099   582 _SBUF0	=	0x0099
                           000092   583 G$SBUF1$0$0 == 0x0092
                           000092   584 _SBUF1	=	0x0092
                           000098   585 G$SCON0$0$0 == 0x0098
                           000098   586 _SCON0	=	0x0098
                           0000C8   587 G$SCON1$0$0 == 0x00c8
                           0000C8   588 _SCON1	=	0x00c8
                           0000A7   589 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   590 _SFRPAGE	=	0x00a7
                           0000CF   591 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   592 _SFRPGCN	=	0x00cf
                           0000D7   593 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   594 _SFRSTACK	=	0x00d7
                           0000D6   595 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   596 _SMB0ADM	=	0x00d6
                           0000D7   597 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   598 _SMB0ADR	=	0x00d7
                           0000C1   599 G$SMB0CF$0$0 == 0x00c1
                           0000C1   600 _SMB0CF	=	0x00c1
                           0000C0   601 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   602 _SMB0CN0	=	0x00c0
                           0000C2   603 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   604 _SMB0DAT	=	0x00c2
                           0000C3   605 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   606 _SMB0FCN0	=	0x00c3
                           0000C4   607 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   608 _SMB0FCN1	=	0x00c4
                           0000EF   609 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   610 _SMB0FCT	=	0x00ef
                           0000C5   611 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   612 _SMB0RXLN	=	0x00c5
                           0000AC   613 G$SMB0TC$0$0 == 0x00ac
                           0000AC   614 _SMB0TC	=	0x00ac
                           000093   615 G$SMOD1$0$0 == 0x0093
                           000093   616 _SMOD1	=	0x0093
                           000081   617 G$SP$0$0 == 0x0081
                           000081   618 _SP	=	0x0081
                           0000A1   619 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   620 _SPI0CFG	=	0x00a1
                           0000A2   621 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   622 _SPI0CKR	=	0x00a2
                           0000F8   623 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   624 _SPI0CN0	=	0x00f8
                           0000A3   625 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   626 _SPI0DAT	=	0x00a3
                           00009A   627 G$SPI0FCN0$0$0 == 0x009a
                           00009A   628 _SPI0FCN0	=	0x009a
                           00009B   629 G$SPI0FCN1$0$0 == 0x009b
                           00009B   630 _SPI0FCN1	=	0x009b
                           0000F7   631 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   632 _SPI0FCT	=	0x00f7
                           000088   633 G$TCON$0$0 == 0x0088
                           000088   634 _TCON	=	0x0088
                           00008C   635 G$TH0$0$0 == 0x008c
                           00008C   636 _TH0	=	0x008c
                           00008D   637 G$TH1$0$0 == 0x008d
                           00008D   638 _TH1	=	0x008d
                           00008A   639 G$TL0$0$0 == 0x008a
                           00008A   640 _TL0	=	0x008a
                           00008B   641 G$TL1$0$0 == 0x008b
                           00008B   642 _TL1	=	0x008b
                           000089   643 G$TMOD$0$0 == 0x0089
                           000089   644 _TMOD	=	0x0089
                           0000C8   645 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   646 _TMR2CN0	=	0x00c8
                           0000FD   647 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   648 _TMR2CN1	=	0x00fd
                           0000CD   649 G$TMR2H$0$0 == 0x00cd
                           0000CD   650 _TMR2H	=	0x00cd
                           0000CC   651 G$TMR2L$0$0 == 0x00cc
                           0000CC   652 _TMR2L	=	0x00cc
                           0000CB   653 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   654 _TMR2RLH	=	0x00cb
                           0000CA   655 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   656 _TMR2RLL	=	0x00ca
                           000091   657 G$TMR3CN0$0$0 == 0x0091
                           000091   658 _TMR3CN0	=	0x0091
                           0000FE   659 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   660 _TMR3CN1	=	0x00fe
                           000095   661 G$TMR3H$0$0 == 0x0095
                           000095   662 _TMR3H	=	0x0095
                           000094   663 G$TMR3L$0$0 == 0x0094
                           000094   664 _TMR3L	=	0x0094
                           000093   665 G$TMR3RLH$0$0 == 0x0093
                           000093   666 _TMR3RLH	=	0x0093
                           000092   667 G$TMR3RLL$0$0 == 0x0092
                           000092   668 _TMR3RLL	=	0x0092
                           000098   669 G$TMR4CN0$0$0 == 0x0098
                           000098   670 _TMR4CN0	=	0x0098
                           0000FF   671 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   672 _TMR4CN1	=	0x00ff
                           0000A5   673 G$TMR4H$0$0 == 0x00a5
                           0000A5   674 _TMR4H	=	0x00a5
                           0000A4   675 G$TMR4L$0$0 == 0x00a4
                           0000A4   676 _TMR4L	=	0x00a4
                           0000A3   677 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   678 _TMR4RLH	=	0x00a3
                           0000A2   679 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   680 _TMR4RLL	=	0x00a2
                           00009D   681 G$UART1FCN0$0$0 == 0x009d
                           00009D   682 _UART1FCN0	=	0x009d
                           0000D8   683 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   684 _UART1FCN1	=	0x00d8
                           0000FA   685 G$UART1FCT$0$0 == 0x00fa
                           0000FA   686 _UART1FCT	=	0x00fa
                           00009E   687 G$UART1LIN$0$0 == 0x009e
                           00009E   688 _UART1LIN	=	0x009e
                           0000AE   689 G$USB0ADR$0$0 == 0x00ae
                           0000AE   690 _USB0ADR	=	0x00ae
                           0000B2   691 G$USB0AEC$0$0 == 0x00b2
                           0000B2   692 _USB0AEC	=	0x00b2
                           0000B6   693 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   694 _USB0CDCF	=	0x00b6
                           0000BE   695 G$USB0CDCN$0$0 == 0x00be
                           0000BE   696 _USB0CDCN	=	0x00be
                           0000BF   697 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   698 _USB0CDSTA	=	0x00bf
                           0000B5   699 G$USB0CF$0$0 == 0x00b5
                           0000B5   700 _USB0CF	=	0x00b5
                           0000AF   701 G$USB0DAT$0$0 == 0x00af
                           0000AF   702 _USB0DAT	=	0x00af
                           0000B3   703 G$USB0XCN$0$0 == 0x00b3
                           0000B3   704 _USB0XCN	=	0x00b3
                           0000FF   705 G$VDM0CN$0$0 == 0x00ff
                           0000FF   706 _VDM0CN	=	0x00ff
                           000097   707 G$WDTCN$0$0 == 0x0097
                           000097   708 _WDTCN	=	0x0097
                           0000E1   709 G$XBR0$0$0 == 0x00e1
                           0000E1   710 _XBR0	=	0x00e1
                           0000E2   711 G$XBR1$0$0 == 0x00e2
                           0000E2   712 _XBR1	=	0x00e2
                           0000E3   713 G$XBR2$0$0 == 0x00e3
                           0000E3   714 _XBR2	=	0x00e3
                           0000C3   715 G$ADC0GT$0$0 == 0x00c3
                           0000C3   716 _ADC0GT	=	0x00c3
                           0000BD   717 G$ADC0$0$0 == 0x00bd
                           0000BD   718 _ADC0	=	0x00bd
                           0000C5   719 G$ADC0LT$0$0 == 0x00c5
                           0000C5   720 _ADC0LT	=	0x00c5
                           000082   721 G$DP$0$0 == 0x0082
                           000082   722 _DP	=	0x0082
                           0000FB   723 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   724 _PCA0CP0	=	0x00fb
                           0000E9   725 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   726 _PCA0CP1	=	0x00e9
                           0000EB   727 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   728 _PCA0CP2	=	0x00eb
                           0000F9   729 G$PCA0$0$0 == 0x00f9
                           0000F9   730 _PCA0	=	0x00f9
                           000095   731 G$SBRL1$0$0 == 0x0095
                           000095   732 _SBRL1	=	0x0095
                           0000CC   733 G$TMR2$0$0 == 0x00cc
                           0000CC   734 _TMR2	=	0x00cc
                           0000CA   735 G$TMR2RL$0$0 == 0x00ca
                           0000CA   736 _TMR2RL	=	0x00ca
                           000094   737 G$TMR3$0$0 == 0x0094
                           000094   738 _TMR3	=	0x0094
                           000092   739 G$TMR3RL$0$0 == 0x0092
                           000092   740 _TMR3RL	=	0x0092
                           0000A4   741 G$TMR4$0$0 == 0x00a4
                           0000A4   742 _TMR4	=	0x00a4
                           0000A2   743 G$TMR4RL$0$0 == 0x00a2
                           0000A2   744 _TMR4RL	=	0x00a2
                           0000AA   745 G$_XPAGE$0$0 == 0x00aa
                           0000AA   746 __XPAGE	=	0x00aa
                                    747 ;--------------------------------------------------------
                                    748 ; special function bits
                                    749 ;--------------------------------------------------------
                                    750 	.area RSEG    (ABS,DATA)
      000000                        751 	.org 0x0000
                           0000E0   752 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   753 _ACC_ACC0	=	0x00e0
                           0000E1   754 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   755 _ACC_ACC1	=	0x00e1
                           0000E2   756 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   757 _ACC_ACC2	=	0x00e2
                           0000E3   758 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   759 _ACC_ACC3	=	0x00e3
                           0000E4   760 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   761 _ACC_ACC4	=	0x00e4
                           0000E5   762 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   763 _ACC_ACC5	=	0x00e5
                           0000E6   764 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   765 _ACC_ACC6	=	0x00e6
                           0000E7   766 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   767 _ACC_ACC7	=	0x00e7
                           0000E8   768 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   769 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   770 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   771 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   772 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   773 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   774 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   775 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   776 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   777 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   778 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   779 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   780 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   781 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   782 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   783 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   784 G$B_B0$0$0 == 0x00f0
                           0000F0   785 _B_B0	=	0x00f0
                           0000F1   786 G$B_B1$0$0 == 0x00f1
                           0000F1   787 _B_B1	=	0x00f1
                           0000F2   788 G$B_B2$0$0 == 0x00f2
                           0000F2   789 _B_B2	=	0x00f2
                           0000F3   790 G$B_B3$0$0 == 0x00f3
                           0000F3   791 _B_B3	=	0x00f3
                           0000F4   792 G$B_B4$0$0 == 0x00f4
                           0000F4   793 _B_B4	=	0x00f4
                           0000F5   794 G$B_B5$0$0 == 0x00f5
                           0000F5   795 _B_B5	=	0x00f5
                           0000F6   796 G$B_B6$0$0 == 0x00f6
                           0000F6   797 _B_B6	=	0x00f6
                           0000F7   798 G$B_B7$0$0 == 0x00f7
                           0000F7   799 _B_B7	=	0x00f7
                           0000A8   800 G$IE_EX0$0$0 == 0x00a8
                           0000A8   801 _IE_EX0	=	0x00a8
                           0000A9   802 G$IE_ET0$0$0 == 0x00a9
                           0000A9   803 _IE_ET0	=	0x00a9
                           0000AA   804 G$IE_EX1$0$0 == 0x00aa
                           0000AA   805 _IE_EX1	=	0x00aa
                           0000AB   806 G$IE_ET1$0$0 == 0x00ab
                           0000AB   807 _IE_ET1	=	0x00ab
                           0000AC   808 G$IE_ES0$0$0 == 0x00ac
                           0000AC   809 _IE_ES0	=	0x00ac
                           0000AD   810 G$IE_ET2$0$0 == 0x00ad
                           0000AD   811 _IE_ET2	=	0x00ad
                           0000AE   812 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   813 _IE_ESPI0	=	0x00ae
                           0000AF   814 G$IE_EA$0$0 == 0x00af
                           0000AF   815 _IE_EA	=	0x00af
                           0000B8   816 G$IP_PX0$0$0 == 0x00b8
                           0000B8   817 _IP_PX0	=	0x00b8
                           0000B9   818 G$IP_PT0$0$0 == 0x00b9
                           0000B9   819 _IP_PT0	=	0x00b9
                           0000BA   820 G$IP_PX1$0$0 == 0x00ba
                           0000BA   821 _IP_PX1	=	0x00ba
                           0000BB   822 G$IP_PT1$0$0 == 0x00bb
                           0000BB   823 _IP_PT1	=	0x00bb
                           0000BC   824 G$IP_PS0$0$0 == 0x00bc
                           0000BC   825 _IP_PS0	=	0x00bc
                           0000BD   826 G$IP_PT2$0$0 == 0x00bd
                           0000BD   827 _IP_PT2	=	0x00bd
                           0000BE   828 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   829 _IP_PSPI0	=	0x00be
                           000080   830 G$P0_B0$0$0 == 0x0080
                           000080   831 _P0_B0	=	0x0080
                           000081   832 G$P0_B1$0$0 == 0x0081
                           000081   833 _P0_B1	=	0x0081
                           000082   834 G$P0_B2$0$0 == 0x0082
                           000082   835 _P0_B2	=	0x0082
                           000083   836 G$P0_B3$0$0 == 0x0083
                           000083   837 _P0_B3	=	0x0083
                           000084   838 G$P0_B4$0$0 == 0x0084
                           000084   839 _P0_B4	=	0x0084
                           000085   840 G$P0_B5$0$0 == 0x0085
                           000085   841 _P0_B5	=	0x0085
                           000086   842 G$P0_B6$0$0 == 0x0086
                           000086   843 _P0_B6	=	0x0086
                           000087   844 G$P0_B7$0$0 == 0x0087
                           000087   845 _P0_B7	=	0x0087
                           000090   846 G$P1_B0$0$0 == 0x0090
                           000090   847 _P1_B0	=	0x0090
                           000091   848 G$P1_B1$0$0 == 0x0091
                           000091   849 _P1_B1	=	0x0091
                           000092   850 G$P1_B2$0$0 == 0x0092
                           000092   851 _P1_B2	=	0x0092
                           000093   852 G$P1_B3$0$0 == 0x0093
                           000093   853 _P1_B3	=	0x0093
                           000094   854 G$P1_B4$0$0 == 0x0094
                           000094   855 _P1_B4	=	0x0094
                           000095   856 G$P1_B5$0$0 == 0x0095
                           000095   857 _P1_B5	=	0x0095
                           000096   858 G$P1_B6$0$0 == 0x0096
                           000096   859 _P1_B6	=	0x0096
                           000097   860 G$P1_B7$0$0 == 0x0097
                           000097   861 _P1_B7	=	0x0097
                           0000A0   862 G$P2_B0$0$0 == 0x00a0
                           0000A0   863 _P2_B0	=	0x00a0
                           0000A1   864 G$P2_B1$0$0 == 0x00a1
                           0000A1   865 _P2_B1	=	0x00a1
                           0000A2   866 G$P2_B2$0$0 == 0x00a2
                           0000A2   867 _P2_B2	=	0x00a2
                           0000A3   868 G$P2_B3$0$0 == 0x00a3
                           0000A3   869 _P2_B3	=	0x00a3
                           0000B0   870 G$P3_B0$0$0 == 0x00b0
                           0000B0   871 _P3_B0	=	0x00b0
                           0000B1   872 G$P3_B1$0$0 == 0x00b1
                           0000B1   873 _P3_B1	=	0x00b1
                           0000D8   874 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   875 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   876 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   877 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   878 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   879 _PCA0CN0_CCF2	=	0x00da
                           0000DE   880 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   881 _PCA0CN0_CR	=	0x00de
                           0000DF   882 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   883 _PCA0CN0_CF	=	0x00df
                           0000D0   884 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   885 _PSW_PARITY	=	0x00d0
                           0000D1   886 G$PSW_F1$0$0 == 0x00d1
                           0000D1   887 _PSW_F1	=	0x00d1
                           0000D2   888 G$PSW_OV$0$0 == 0x00d2
                           0000D2   889 _PSW_OV	=	0x00d2
                           0000D3   890 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   891 _PSW_RS0	=	0x00d3
                           0000D4   892 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   893 _PSW_RS1	=	0x00d4
                           0000D5   894 G$PSW_F0$0$0 == 0x00d5
                           0000D5   895 _PSW_F0	=	0x00d5
                           0000D6   896 G$PSW_AC$0$0 == 0x00d6
                           0000D6   897 _PSW_AC	=	0x00d6
                           0000D7   898 G$PSW_CY$0$0 == 0x00d7
                           0000D7   899 _PSW_CY	=	0x00d7
                           000098   900 G$SCON0_RI$0$0 == 0x0098
                           000098   901 _SCON0_RI	=	0x0098
                           000099   902 G$SCON0_TI$0$0 == 0x0099
                           000099   903 _SCON0_TI	=	0x0099
                           00009A   904 G$SCON0_RB8$0$0 == 0x009a
                           00009A   905 _SCON0_RB8	=	0x009a
                           00009B   906 G$SCON0_TB8$0$0 == 0x009b
                           00009B   907 _SCON0_TB8	=	0x009b
                           00009C   908 G$SCON0_REN$0$0 == 0x009c
                           00009C   909 _SCON0_REN	=	0x009c
                           00009D   910 G$SCON0_MCE$0$0 == 0x009d
                           00009D   911 _SCON0_MCE	=	0x009d
                           00009F   912 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   913 _SCON0_SMODE	=	0x009f
                           0000C8   914 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   915 _SCON1_RI	=	0x00c8
                           0000C9   916 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   917 _SCON1_TI	=	0x00c9
                           0000CA   918 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   919 _SCON1_RBX	=	0x00ca
                           0000CB   920 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   921 _SCON1_TBX	=	0x00cb
                           0000CC   922 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   923 _SCON1_REN	=	0x00cc
                           0000CE   924 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   925 _SCON1_PERR	=	0x00ce
                           0000CF   926 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   927 _SCON1_OVR	=	0x00cf
                           0000C0   928 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   929 _SMB0CN0_SI	=	0x00c0
                           0000C1   930 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   931 _SMB0CN0_ACK	=	0x00c1
                           0000C2   932 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   933 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   934 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   935 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   936 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   937 _SMB0CN0_STO	=	0x00c4
                           0000C5   938 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   939 _SMB0CN0_STA	=	0x00c5
                           0000C6   940 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   941 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   942 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   943 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   944 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   945 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   946 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   947 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   948 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   949 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   950 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   951 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   952 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   953 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   954 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   955 _SPI0CN0_MODF	=	0x00fd
                           0000FE   956 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   957 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   958 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   959 _SPI0CN0_SPIF	=	0x00ff
                           000088   960 G$TCON_IT0$0$0 == 0x0088
                           000088   961 _TCON_IT0	=	0x0088
                           000089   962 G$TCON_IE0$0$0 == 0x0089
                           000089   963 _TCON_IE0	=	0x0089
                           00008A   964 G$TCON_IT1$0$0 == 0x008a
                           00008A   965 _TCON_IT1	=	0x008a
                           00008B   966 G$TCON_IE1$0$0 == 0x008b
                           00008B   967 _TCON_IE1	=	0x008b
                           00008C   968 G$TCON_TR0$0$0 == 0x008c
                           00008C   969 _TCON_TR0	=	0x008c
                           00008D   970 G$TCON_TF0$0$0 == 0x008d
                           00008D   971 _TCON_TF0	=	0x008d
                           00008E   972 G$TCON_TR1$0$0 == 0x008e
                           00008E   973 _TCON_TR1	=	0x008e
                           00008F   974 G$TCON_TF1$0$0 == 0x008f
                           00008F   975 _TCON_TF1	=	0x008f
                           0000C8   976 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   977 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   978 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   979 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   980 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   981 _TMR2CN0_TR2	=	0x00ca
                           0000CB   982 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   983 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   984 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   985 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   986 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   987 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   988 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE   989 _TMR2CN0_TF2L	=	0x00ce
                           0000CF   990 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF   991 _TMR2CN0_TF2H	=	0x00cf
                           000098   992 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098   993 _TMR4CN0_T4XCLK0	=	0x0098
                           000099   994 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099   995 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A   996 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A   997 _TMR4CN0_TR4	=	0x009a
                           00009B   998 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B   999 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1000 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1001 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1002 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1003 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1004 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1005 _TMR4CN0_TF4L	=	0x009e
                           00009F  1006 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1007 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1008 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1009 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1010 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1011 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1012 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1013 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1014 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1015 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1016 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1017 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1018 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1019 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1020 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1021 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1022 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1023 _UART1FCN1_TFRQ	=	0x00df
                                   1024 ;--------------------------------------------------------
                                   1025 ; overlayable register banks
                                   1026 ;--------------------------------------------------------
                                   1027 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1028 	.ds 8
                                   1029 ;--------------------------------------------------------
                                   1030 ; overlayable bit register bank
                                   1031 ;--------------------------------------------------------
                                   1032 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1033 bits:
      000020                       1034 	.ds 1
                           008000  1035 	b0 = bits[0]
                           008100  1036 	b1 = bits[1]
                           008200  1037 	b2 = bits[2]
                           008300  1038 	b3 = bits[3]
                           008400  1039 	b4 = bits[4]
                           008500  1040 	b5 = bits[5]
                           008600  1041 	b6 = bits[6]
                           008700  1042 	b7 = bits[7]
                                   1043 ;--------------------------------------------------------
                                   1044 ; internal ram data
                                   1045 ;--------------------------------------------------------
                                   1046 	.area DSEG    (DATA)
                                   1047 ;--------------------------------------------------------
                                   1048 ; overlayable items in internal ram 
                                   1049 ;--------------------------------------------------------
                                   1050 ;--------------------------------------------------------
                                   1051 ; indirectly addressable internal ram data
                                   1052 ;--------------------------------------------------------
                                   1053 	.area ISEG    (DATA)
                                   1054 ;--------------------------------------------------------
                                   1055 ; absolute internal ram data
                                   1056 ;--------------------------------------------------------
                                   1057 	.area IABS    (ABS,DATA)
                                   1058 	.area IABS    (ABS,DATA)
                                   1059 ;--------------------------------------------------------
                                   1060 ; bit data
                                   1061 ;--------------------------------------------------------
                                   1062 	.area BSEG    (BIT)
                                   1063 ;--------------------------------------------------------
                                   1064 ; paged external ram data
                                   1065 ;--------------------------------------------------------
                                   1066 	.area PSEG    (PAG,XDATA)
                                   1067 ;--------------------------------------------------------
                                   1068 ; external ram data
                                   1069 ;--------------------------------------------------------
                                   1070 	.area XSEG    (XDATA)
                           000000  1071 Fefm8_usbdch9$pStatus$0$0==.
      000215                       1072 _pStatus:
      000215                       1073 	.ds 2
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
                                   1109 ;Allocation info for local variables in function 'USBDCH9_SetupCmd'
                                   1110 ;------------------------------------------------------------
                                   1111 ;status                    Allocated to registers r7 
                                   1112 ;------------------------------------------------------------
                           000000  1113 	G$USBDCH9_SetupCmd$0$0 ==.
                           000000  1114 	C$efm8_usbdch9.c$48$0$0 ==.
                                   1115 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:48: USB_Status_TypeDef USBDCH9_SetupCmd(void)
                                   1116 ;	-----------------------------------------
                                   1117 ;	 function USBDCH9_SetupCmd
                                   1118 ;	-----------------------------------------
      002AD6                       1119 _USBDCH9_SetupCmd:
                           000007  1120 	ar7 = 0x07
                           000006  1121 	ar6 = 0x06
                           000005  1122 	ar5 = 0x05
                           000004  1123 	ar4 = 0x04
                           000003  1124 	ar3 = 0x03
                           000002  1125 	ar2 = 0x02
                           000001  1126 	ar1 = 0x01
                           000000  1127 	ar0 = 0x00
                           000000  1128 	C$efm8_usbdch9.c$52$1$89 ==.
                                   1129 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:52: switch (myUsbDevice.setup.bRequest)
      002AD6 90 01 EF         [24] 1130 	mov	dptr,#(_myUsbDevice + 0x0005)
      002AD9 E0               [24] 1131 	movx	a,@dptr
      002ADA FF               [12] 1132 	mov  r7,a
      002ADB 24 F4            [12] 1133 	add	a,#0xff - 0x0b
      002ADD 50 03            [24] 1134 	jnc	00119$
      002ADF 02 2B 57         [24] 1135 	ljmp	00110$
      002AE2                       1136 00119$:
      002AE2 EF               [12] 1137 	mov	a,r7
      002AE3 24 0A            [12] 1138 	add	a,#(00120$-3-.)
      002AE5 83               [24] 1139 	movc	a,@a+pc
      002AE6 F5 82            [12] 1140 	mov	dpl,a
      002AE8 EF               [12] 1141 	mov	a,r7
      002AE9 24 10            [12] 1142 	add	a,#(00121$-3-.)
      002AEB 83               [24] 1143 	movc	a,@a+pc
      002AEC F5 83            [12] 1144 	mov	dph,a
      002AEE E4               [12] 1145 	clr	a
      002AEF 73               [24] 1146 	jmp	@a+dptr
      002AF0                       1147 00120$:
      002AF0 08                    1148 	.db	00101$
      002AF1 0F                    1149 	.db	00102$
      002AF2 57                    1150 	.db	00110$
      002AF3 18                    1151 	.db	00103$
      002AF4 57                    1152 	.db	00110$
      002AF5 21                    1153 	.db	00104$
      002AF6 2A                    1154 	.db	00105$
      002AF7 57                    1155 	.db	00110$
      002AF8 33                    1156 	.db	00106$
      002AF9 3C                    1157 	.db	00107$
      002AFA 45                    1158 	.db	00108$
      002AFB 4E                    1159 	.db	00109$
      002AFC                       1160 00121$:
      002AFC 2B                    1161 	.db	00101$>>8
      002AFD 2B                    1162 	.db	00102$>>8
      002AFE 2B                    1163 	.db	00110$>>8
      002AFF 2B                    1164 	.db	00103$>>8
      002B00 2B                    1165 	.db	00110$>>8
      002B01 2B                    1166 	.db	00104$>>8
      002B02 2B                    1167 	.db	00105$>>8
      002B03 2B                    1168 	.db	00110$>>8
      002B04 2B                    1169 	.db	00106$>>8
      002B05 2B                    1170 	.db	00107$>>8
      002B06 2B                    1171 	.db	00108$>>8
      002B07 2B                    1172 	.db	00109$>>8
                           000032  1173 	C$efm8_usbdch9.c$54$2$90 ==.
                                   1174 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:54: case GET_STATUS:
      002B08                       1175 00101$:
                           000032  1176 	C$efm8_usbdch9.c$55$2$90 ==.
                                   1177 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:55: status = GetStatus();
      002B08 12 2E A4         [24] 1178 	lcall	_GetStatus
      002B0B AF 82            [24] 1179 	mov	r7,dpl
                           000037  1180 	C$efm8_usbdch9.c$56$2$90 ==.
                                   1181 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:56: break;
                           000037  1182 	C$efm8_usbdch9.c$58$2$90 ==.
                                   1183 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:58: case CLEAR_FEATURE:
      002B0D 80 4A            [24] 1184 	sjmp	00111$
      002B0F                       1185 00102$:
                           000039  1186 	C$efm8_usbdch9.c$59$2$90 ==.
                                   1187 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:59: status = ClearFeature();
      002B0F 12 2B 66         [24] 1188 	lcall	_ClearFeature
      002B12 AE 82            [24] 1189 	mov	r6,dpl
      002B14 8E 07            [24] 1190 	mov	ar7,r6
                           000040  1191 	C$efm8_usbdch9.c$60$2$90 ==.
                                   1192 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:60: break;
                           000040  1193 	C$efm8_usbdch9.c$62$2$90 ==.
                                   1194 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:62: case SET_FEATURE:
      002B16 80 41            [24] 1195 	sjmp	00111$
      002B18                       1196 00103$:
                           000042  1197 	C$efm8_usbdch9.c$63$2$90 ==.
                                   1198 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:63: status = SetFeature();
      002B18 12 31 44         [24] 1199 	lcall	_SetFeature
      002B1B AE 82            [24] 1200 	mov	r6,dpl
      002B1D 8E 07            [24] 1201 	mov	ar7,r6
                           000049  1202 	C$efm8_usbdch9.c$64$2$90 ==.
                                   1203 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:64: break;
                           000049  1204 	C$efm8_usbdch9.c$66$2$90 ==.
                                   1205 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:66: case SET_ADDRESS:
      002B1F 80 38            [24] 1206 	sjmp	00111$
      002B21                       1207 00104$:
                           00004B  1208 	C$efm8_usbdch9.c$67$2$90 ==.
                                   1209 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:67: status = SetAddress();
      002B21 12 2F BB         [24] 1210 	lcall	_SetAddress
      002B24 AE 82            [24] 1211 	mov	r6,dpl
      002B26 8E 07            [24] 1212 	mov	ar7,r6
                           000052  1213 	C$efm8_usbdch9.c$68$2$90 ==.
                                   1214 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:68: break;
                           000052  1215 	C$efm8_usbdch9.c$70$2$90 ==.
                                   1216 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:70: case GET_DESCRIPTOR:
      002B28 80 2F            [24] 1217 	sjmp	00111$
      002B2A                       1218 00105$:
                           000054  1219 	C$efm8_usbdch9.c$71$2$90 ==.
                                   1220 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:71: status = GetDescriptor();
      002B2A 12 2C BC         [24] 1221 	lcall	_GetDescriptor
      002B2D AE 82            [24] 1222 	mov	r6,dpl
      002B2F 8E 07            [24] 1223 	mov	ar7,r6
                           00005B  1224 	C$efm8_usbdch9.c$72$2$90 ==.
                                   1225 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:72: break;
                           00005B  1226 	C$efm8_usbdch9.c$74$2$90 ==.
                                   1227 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:74: case GET_CONFIGURATION:
      002B31 80 26            [24] 1228 	sjmp	00111$
      002B33                       1229 00106$:
                           00005D  1230 	C$efm8_usbdch9.c$75$2$90 ==.
                                   1231 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:75: status = GetConfiguration();
      002B33 12 2C 44         [24] 1232 	lcall	_GetConfiguration
      002B36 AE 82            [24] 1233 	mov	r6,dpl
      002B38 8E 07            [24] 1234 	mov	ar7,r6
                           000064  1235 	C$efm8_usbdch9.c$76$2$90 ==.
                                   1236 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:76: break;
                           000064  1237 	C$efm8_usbdch9.c$78$2$90 ==.
                                   1238 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:78: case SET_CONFIGURATION:
      002B3A 80 1D            [24] 1239 	sjmp	00111$
      002B3C                       1240 00107$:
                           000066  1241 	C$efm8_usbdch9.c$79$2$90 ==.
                                   1242 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:79: status = SetConfiguration();
      002B3C 12 30 2B         [24] 1243 	lcall	_SetConfiguration
      002B3F AE 82            [24] 1244 	mov	r6,dpl
      002B41 8E 07            [24] 1245 	mov	ar7,r6
                           00006D  1246 	C$efm8_usbdch9.c$80$2$90 ==.
                                   1247 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:80: break;
                           00006D  1248 	C$efm8_usbdch9.c$82$2$90 ==.
                                   1249 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:82: case GET_INTERFACE:
      002B43 80 14            [24] 1250 	sjmp	00111$
      002B45                       1251 00108$:
                           00006F  1252 	C$efm8_usbdch9.c$83$2$90 ==.
                                   1253 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:83: status = GetInterface();
      002B45 12 2E 4F         [24] 1254 	lcall	_GetInterface
      002B48 AE 82            [24] 1255 	mov	r6,dpl
      002B4A 8E 07            [24] 1256 	mov	ar7,r6
                           000076  1257 	C$efm8_usbdch9.c$84$2$90 ==.
                                   1258 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:84: break;
                           000076  1259 	C$efm8_usbdch9.c$86$2$90 ==.
                                   1260 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:86: case SET_INTERFACE:
      002B4C 80 0B            [24] 1261 	sjmp	00111$
      002B4E                       1262 00109$:
                           000078  1263 	C$efm8_usbdch9.c$87$2$90 ==.
                                   1264 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:87: status = SetInterface();
      002B4E 12 31 FF         [24] 1265 	lcall	_SetInterface
      002B51 AE 82            [24] 1266 	mov	r6,dpl
      002B53 8E 07            [24] 1267 	mov	ar7,r6
                           00007F  1268 	C$efm8_usbdch9.c$88$2$90 ==.
                                   1269 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:88: break;
                           00007F  1270 	C$efm8_usbdch9.c$90$2$90 ==.
                                   1271 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:90: default:
      002B55 80 02            [24] 1272 	sjmp	00111$
      002B57                       1273 00110$:
                           000081  1274 	C$efm8_usbdch9.c$91$2$90 ==.
                                   1275 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:91: status = USB_STATUS_REQ_ERR;
      002B57 7F FF            [12] 1276 	mov	r7,#0xff
                           000083  1277 	C$efm8_usbdch9.c$93$1$89 ==.
                                   1278 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:93: }
      002B59                       1279 00111$:
                           000083  1280 	C$efm8_usbdch9.c$96$1$89 ==.
                                   1281 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:96: USB_SetIndex(0);
      002B59 75 82 00         [24] 1282 	mov	dpl,#0x00
      002B5C C0 07            [24] 1283 	push	ar7
      002B5E 12 3F F9         [24] 1284 	lcall	_USB_SetIndex
      002B61 D0 07            [24] 1285 	pop	ar7
                           00008D  1286 	C$efm8_usbdch9.c$104$1$89 ==.
                                   1287 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:104: return status;
      002B63 8F 82            [24] 1288 	mov	dpl,r7
                           00008F  1289 	C$efm8_usbdch9.c$105$1$89 ==.
                           00008F  1290 	XG$USBDCH9_SetupCmd$0$0 ==.
      002B65 22               [24] 1291 	ret
                                   1292 ;------------------------------------------------------------
                                   1293 ;Allocation info for local variables in function 'ClearFeature'
                                   1294 ;------------------------------------------------------------
                                   1295 ;retVal                    Allocated to registers r7 
                                   1296 ;------------------------------------------------------------
                           000090  1297 	Fefm8_usbdch9$ClearFeature$0$0 ==.
                           000090  1298 	C$efm8_usbdch9.c$114$1$89 ==.
                                   1299 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:114: static USB_Status_TypeDef ClearFeature(void)
                                   1300 ;	-----------------------------------------
                                   1301 ;	 function ClearFeature
                                   1302 ;	-----------------------------------------
      002B66                       1303 _ClearFeature:
                           000090  1304 	C$efm8_usbdch9.c$116$1$89 ==.
                                   1305 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:116: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      002B66 7F FF            [12] 1306 	mov	r7,#0xff
                           000092  1307 	C$efm8_usbdch9.c$118$1$93 ==.
                                   1308 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:118: if (myUsbDevice.setup.wLength == 0)
      002B68 90 01 F4         [24] 1309 	mov	dptr,#(_myUsbDevice + 0x000a)
      002B6B E0               [24] 1310 	movx	a,@dptr
      002B6C FD               [12] 1311 	mov	r5,a
      002B6D A3               [24] 1312 	inc	dptr
      002B6E E0               [24] 1313 	movx	a,@dptr
      002B6F FE               [12] 1314 	mov	r6,a
      002B70 4D               [12] 1315 	orl	a,r5
      002B71 60 03            [24] 1316 	jz	00205$
      002B73 02 2C 41         [24] 1317 	ljmp	00145$
      002B76                       1318 00205$:
                           0000A0  1319 	C$efm8_usbdch9.c$120$2$94 ==.
                                   1320 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:120: switch (myUsbDevice.setup.bmRequestType.Recipient)
      002B76 90 01 EE         [24] 1321 	mov	dptr,#(_myUsbDevice + 0x0004)
      002B79 E0               [24] 1322 	movx	a,@dptr
      002B7A 54 1F            [12] 1323 	anl	a,#0x1f
      002B7C FE               [12] 1324 	mov	r6,a
      002B7D BE 02 02         [24] 1325 	cjne	r6,#0x02,00206$
      002B80 80 03            [24] 1326 	sjmp	00207$
      002B82                       1327 00206$:
      002B82 02 2C 41         [24] 1328 	ljmp	00145$
      002B85                       1329 00207$:
                           0000AF  1330 	C$efm8_usbdch9.c$135$3$95 ==.
                                   1331 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:135: if (myUsbDevice.setup.wValue == USB_FEATURE_ENDPOINT_HALT)
      002B85 90 01 F0         [24] 1332 	mov	dptr,#(_myUsbDevice + 0x0006)
      002B88 E0               [24] 1333 	movx	a,@dptr
      002B89 FD               [12] 1334 	mov	r5,a
      002B8A A3               [24] 1335 	inc	dptr
      002B8B E0               [24] 1336 	movx	a,@dptr
      002B8C FE               [12] 1337 	mov	r6,a
      002B8D 4D               [12] 1338 	orl	a,r5
      002B8E 60 03            [24] 1339 	jz	00208$
      002B90 02 2C 41         [24] 1340 	ljmp	00145$
      002B93                       1341 00208$:
                           0000BD  1342 	C$efm8_usbdch9.c$139$4$96 ==.
                                   1343 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:139: if (((myUsbDevice.setup.wIndex & ~USB_EP_DIR_IN) == 0)
      002B93 90 01 F2         [24] 1344 	mov	dptr,#(_myUsbDevice + 0x0008)
      002B96 E0               [24] 1345 	movx	a,@dptr
      002B97 FD               [12] 1346 	mov	r5,a
      002B98 A3               [24] 1347 	inc	dptr
      002B99 E0               [24] 1348 	movx	a,@dptr
      002B9A FE               [12] 1349 	mov	r6,a
      002B9B ED               [12] 1350 	mov	a,r5
      002B9C 54 7F            [12] 1351 	anl	a,#0x7f
      002B9E 70 12            [24] 1352 	jnz	00138$
      002BA0 EE               [12] 1353 	mov	a,r6
      002BA1 70 0F            [24] 1354 	jnz	00138$
                           0000CD  1355 	C$efm8_usbdch9.c$140$4$96 ==.
                                   1356 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:140: && (myUsbDevice.state >= USBD_STATE_ADDRESSED))
      002BA3 90 01 EC         [24] 1357 	mov	dptr,#(_myUsbDevice + 0x0002)
      002BA6 E0               [24] 1358 	movx	a,@dptr
      002BA7 FC               [12] 1359 	mov	r4,a
      002BA8 BC 04 00         [24] 1360 	cjne	r4,#0x04,00211$
      002BAB                       1361 00211$:
      002BAB 40 05            [24] 1362 	jc	00138$
                           0000D7  1363 	C$efm8_usbdch9.c$142$5$97 ==.
                                   1364 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:142: retVal = USB_STATUS_OK;
      002BAD 7F 00            [12] 1365 	mov	r7,#0x00
      002BAF 02 2C 41         [24] 1366 	ljmp	00145$
      002BB2                       1367 00138$:
                           0000DC  1368 	C$efm8_usbdch9.c$144$4$96 ==.
                                   1369 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:144: else if (((myUsbDevice.setup.wIndex & ~USB_SETUP_DIR_D2H) < SLAB_USB_NUM_EPS_USED)
      002BB2 74 7F            [12] 1370 	mov	a,#0x7f
      002BB4 5D               [12] 1371 	anl	a,r5
      002BB5 FB               [12] 1372 	mov	r3,a
      002BB6 8E 04            [24] 1373 	mov	ar4,r6
      002BB8 C3               [12] 1374 	clr	c
      002BB9 EB               [12] 1375 	mov	a,r3
      002BBA 94 03            [12] 1376 	subb	a,#0x03
      002BBC EC               [12] 1377 	mov	a,r4
      002BBD 94 00            [12] 1378 	subb	a,#0x00
      002BBF 40 03            [24] 1379 	jc	00213$
      002BC1 02 2C 41         [24] 1380 	ljmp	00145$
      002BC4                       1381 00213$:
                           0000EE  1382 	C$efm8_usbdch9.c$145$4$96 ==.
                                   1383 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:145: && (myUsbDevice.state == USBD_STATE_CONFIGURED))
      002BC4 90 01 EC         [24] 1384 	mov	dptr,#(_myUsbDevice + 0x0002)
      002BC7 E0               [24] 1385 	movx	a,@dptr
      002BC8 FC               [12] 1386 	mov	r4,a
      002BC9 BC 06 75         [24] 1387 	cjne	r4,#0x06,00145$
                           0000F6  1388 	C$efm8_usbdch9.c$147$5$98 ==.
                                   1389 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:147: retVal = USB_STATUS_OK;
      002BCC 7F 00            [12] 1390 	mov	r7,#0x00
                           0000F8  1391 	C$efm8_usbdch9.c$148$5$98 ==.
                                   1392 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:148: USB_SetIndex((myUsbDevice.setup.wIndex & 0xFF) & ~USB_SETUP_DIR_D2H);
      002BCE 53 05 7F         [24] 1393 	anl	ar5,#0x7f
      002BD1 8D 82            [24] 1394 	mov	dpl,r5
      002BD3 C0 07            [24] 1395 	push	ar7
      002BD5 12 3F F9         [24] 1396 	lcall	_USB_SetIndex
      002BD8 D0 07            [24] 1397 	pop	ar7
                           000104  1398 	C$efm8_usbdch9.c$151$5$98 ==.
                                   1399 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:151: if ((myUsbDevice.setup.wIndex & 0xFF) & USB_EP_DIR_IN)
      002BDA 90 01 F2         [24] 1400 	mov	dptr,#(_myUsbDevice + 0x0008)
      002BDD E0               [24] 1401 	movx	a,@dptr
      002BDE FD               [12] 1402 	mov	r5,a
      002BDF A3               [24] 1403 	inc	dptr
      002BE0 E0               [24] 1404 	movx	a,@dptr
      002BE1 FE               [12] 1405 	mov	r6,a
      002BE2 ED               [12] 1406 	mov	a,r5
      002BE3 30 E7 0B         [24] 1407 	jnb	acc.7,00109$
                           000110  1408 	C$efm8_usbdch9.c$153$7$100 ==.
                                   1409 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:153: USB_EpnInEndStallAndClearDataToggle();
      002BE6 75 AE 11         [24] 1410 	mov	_USB0ADR,#0x11
      002BE9 75 AF 40         [24] 1411 	mov	_USB0DAT,#0x40
      002BEC                       1412 00102$:
      002BEC E5 AE            [12] 1413 	mov	a,_USB0ADR
      002BEE 20 E7 FB         [24] 1414 	jb	acc.7,00102$
      002BF1                       1415 00109$:
                           00011B  1416 	C$efm8_usbdch9.c$157$5$98 ==.
                                   1417 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:157: if (((myUsbDevice.setup.wIndex & 0xFF) & USB_EP_DIR_IN) == 0)
      002BF1 ED               [12] 1418 	mov	a,r5
      002BF2 20 E7 18         [24] 1419 	jb	acc.7,00126$
                           00011F  1420 	C$efm8_usbdch9.c$159$8$104 ==.
                                   1421 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:159: USB_EpnOutEndStallAndClearDataToggle();
      002BF5 75 AE 94         [24] 1422 	mov	_USB0ADR,#0x94
      002BF8                       1423 00110$:
      002BF8 E5 AE            [12] 1424 	mov	a,_USB0ADR
      002BFA 20 E7 FB         [24] 1425 	jb	acc.7,00110$
      002BFD 53 AF DF         [24] 1426 	anl	_USB0DAT,#0xdf
      002C00                       1427 00116$:
      002C00 E5 AE            [12] 1428 	mov	a,_USB0ADR
      002C02 20 E7 FB         [24] 1429 	jb	acc.7,00116$
      002C05 43 AF 80         [24] 1430 	orl	_USB0DAT,#0x80
      002C08                       1431 00119$:
      002C08 E5 AE            [12] 1432 	mov	a,_USB0ADR
      002C0A 20 E7 FB         [24] 1433 	jb	acc.7,00119$
      002C0D                       1434 00126$:
                           000137  1435 	C$efm8_usbdch9.c$163$5$98 ==.
                                   1436 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:163: switch (myUsbDevice.setup.wIndex & 0xFF)
      002C0D 7E 00            [12] 1437 	mov	r6,#0x00
      002C0F BD 01 05         [24] 1438 	cjne	r5,#0x01,00222$
      002C12 BE 00 02         [24] 1439 	cjne	r6,#0x00,00222$
      002C15 80 08            [24] 1440 	sjmp	00127$
      002C17                       1441 00222$:
                           000141  1442 	C$efm8_usbdch9.c$166$6$108 ==.
                                   1443 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:166: case (USB_EP_DIR_OUT | 1):
      002C17 BD 81 27         [24] 1444 	cjne	r5,#0x81,00145$
      002C1A BE 00 24         [24] 1445 	cjne	r6,#0x00,00145$
      002C1D 80 12            [24] 1446 	sjmp	00130$
      002C1F                       1447 00127$:
                           000149  1448 	C$efm8_usbdch9.c$167$6$108 ==.
                                   1449 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:167: if (myUsbDevice.ep1out.state != D_EP_RECEIVING)
      002C1F 90 02 0A         [24] 1450 	mov	dptr,#(_myUsbDevice + 0x0020)
      002C22 E0               [24] 1451 	movx	a,@dptr
      002C23 FE               [12] 1452 	mov	r6,a
      002C24 BE 03 02         [24] 1453 	cjne	r6,#0x03,00224$
      002C27 80 18            [24] 1454 	sjmp	00145$
      002C29                       1455 00224$:
                           000153  1456 	C$efm8_usbdch9.c$169$7$109 ==.
                                   1457 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:169: myUsbDevice.ep1out.state = D_EP_IDLE;
      002C29 90 02 0A         [24] 1458 	mov	dptr,#(_myUsbDevice + 0x0020)
      002C2C 74 01            [12] 1459 	mov	a,#0x01
      002C2E F0               [24] 1460 	movx	@dptr,a
                           000159  1461 	C$efm8_usbdch9.c$171$6$108 ==.
                                   1462 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:171: break;
                           000159  1463 	C$efm8_usbdch9.c$190$6$108 ==.
                                   1464 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:190: case (USB_EP_DIR_IN | 1):
      002C2F 80 10            [24] 1465 	sjmp	00145$
      002C31                       1466 00130$:
                           00015B  1467 	C$efm8_usbdch9.c$191$6$108 ==.
                                   1468 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:191: if (myUsbDevice.ep1in.state != D_EP_TRANSMITTING)
      002C31 90 02 03         [24] 1469 	mov	dptr,#(_myUsbDevice + 0x0019)
      002C34 E0               [24] 1470 	movx	a,@dptr
      002C35 FE               [12] 1471 	mov	r6,a
      002C36 BE 02 02         [24] 1472 	cjne	r6,#0x02,00225$
      002C39 80 06            [24] 1473 	sjmp	00145$
      002C3B                       1474 00225$:
                           000165  1475 	C$efm8_usbdch9.c$193$7$110 ==.
                                   1476 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:193: myUsbDevice.ep1in.state = D_EP_IDLE;
      002C3B 90 02 03         [24] 1477 	mov	dptr,#(_myUsbDevice + 0x0019)
      002C3E 74 01            [12] 1478 	mov	a,#0x01
      002C40 F0               [24] 1479 	movx	@dptr,a
                           00016B  1480 	C$efm8_usbdch9.c$216$1$93 ==.
                                   1481 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:216: }
      002C41                       1482 00145$:
                           00016B  1483 	C$efm8_usbdch9.c$218$1$93 ==.
                                   1484 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:218: return retVal;
      002C41 8F 82            [24] 1485 	mov	dpl,r7
                           00016D  1486 	C$efm8_usbdch9.c$219$1$93 ==.
                           00016D  1487 	XFefm8_usbdch9$ClearFeature$0$0 ==.
      002C43 22               [24] 1488 	ret
                                   1489 ;------------------------------------------------------------
                                   1490 ;Allocation info for local variables in function 'GetConfiguration'
                                   1491 ;------------------------------------------------------------
                                   1492 ;retVal                    Allocated to registers r7 
                                   1493 ;------------------------------------------------------------
                           00016E  1494 	Fefm8_usbdch9$GetConfiguration$0$0 ==.
                           00016E  1495 	C$efm8_usbdch9.c$229$1$93 ==.
                                   1496 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:229: static USB_Status_TypeDef GetConfiguration(void)
                                   1497 ;	-----------------------------------------
                                   1498 ;	 function GetConfiguration
                                   1499 ;	-----------------------------------------
      002C44                       1500 _GetConfiguration:
                           00016E  1501 	C$efm8_usbdch9.c$231$1$93 ==.
                                   1502 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:231: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      002C44 7F FF            [12] 1503 	mov	r7,#0xff
                           000170  1504 	C$efm8_usbdch9.c$233$1$112 ==.
                                   1505 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:233: if ((myUsbDevice.setup.wIndex == 0)
      002C46 90 01 F2         [24] 1506 	mov	dptr,#(_myUsbDevice + 0x0008)
      002C49 E0               [24] 1507 	movx	a,@dptr
      002C4A FD               [12] 1508 	mov	r5,a
      002C4B A3               [24] 1509 	inc	dptr
      002C4C E0               [24] 1510 	movx	a,@dptr
      002C4D FE               [12] 1511 	mov	r6,a
      002C4E 4D               [12] 1512 	orl	a,r5
      002C4F 60 03            [24] 1513 	jz	00135$
      002C51 02 2C B9         [24] 1514 	ljmp	00107$
      002C54                       1515 00135$:
                           00017E  1516 	C$efm8_usbdch9.c$234$1$112 ==.
                                   1517 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:234: && (myUsbDevice.setup.wValue == 0)
      002C54 90 01 F0         [24] 1518 	mov	dptr,#(_myUsbDevice + 0x0006)
      002C57 E0               [24] 1519 	movx	a,@dptr
      002C58 FD               [12] 1520 	mov	r5,a
      002C59 A3               [24] 1521 	inc	dptr
      002C5A E0               [24] 1522 	movx	a,@dptr
      002C5B FE               [12] 1523 	mov	r6,a
      002C5C 4D               [12] 1524 	orl	a,r5
      002C5D 70 5A            [24] 1525 	jnz	00107$
                           000189  1526 	C$efm8_usbdch9.c$235$1$112 ==.
                                   1527 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:235: && (myUsbDevice.setup.wLength == 1)
      002C5F 90 01 F4         [24] 1528 	mov	dptr,#(_myUsbDevice + 0x000a)
      002C62 E0               [24] 1529 	movx	a,@dptr
      002C63 FD               [12] 1530 	mov	r5,a
      002C64 A3               [24] 1531 	inc	dptr
      002C65 E0               [24] 1532 	movx	a,@dptr
      002C66 FE               [12] 1533 	mov	r6,a
      002C67 BD 01 4F         [24] 1534 	cjne	r5,#0x01,00107$
      002C6A BE 00 4C         [24] 1535 	cjne	r6,#0x00,00107$
                           000197  1536 	C$efm8_usbdch9.c$236$1$112 ==.
                                   1537 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:236: && (myUsbDevice.setup.bmRequestType.Direction == USB_SETUP_DIR_IN)
      002C6D 90 01 EE         [24] 1538 	mov	dptr,#(_myUsbDevice + 0x0004)
      002C70 E0               [24] 1539 	movx	a,@dptr
      002C71 23               [12] 1540 	rl	a
      002C72 54 01            [12] 1541 	anl	a,#0x01
      002C74 FE               [12] 1542 	mov	r6,a
      002C75 BE 01 41         [24] 1543 	cjne	r6,#0x01,00107$
                           0001A2  1544 	C$efm8_usbdch9.c$237$1$112 ==.
                                   1545 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:237: && (myUsbDevice.setup.bmRequestType.Recipient == USB_SETUP_RECIPIENT_DEVICE))
      002C78 90 01 EE         [24] 1546 	mov	dptr,#(_myUsbDevice + 0x0004)
      002C7B E0               [24] 1547 	movx	a,@dptr
      002C7C 54 1F            [12] 1548 	anl	a,#0x1f
      002C7E 70 39            [24] 1549 	jnz	00107$
                           0001AA  1550 	C$efm8_usbdch9.c$239$2$113 ==.
                                   1551 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:239: if (myUsbDevice.state == USBD_STATE_ADDRESSED)
      002C80 90 01 EC         [24] 1552 	mov	dptr,#(_myUsbDevice + 0x0002)
      002C83 E0               [24] 1553 	movx	a,@dptr
      002C84 FE               [12] 1554 	mov	r6,a
      002C85 BE 04 18         [24] 1555 	cjne	r6,#0x04,00104$
                           0001B2  1556 	C$efm8_usbdch9.c$241$3$114 ==.
                                   1557 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:241: EP0_Write(txZero, 1);
      002C88 74 01            [12] 1558 	mov	a,#0x01
      002C8A C0 E0            [24] 1559 	push	acc
      002C8C E4               [12] 1560 	clr	a
      002C8D C0 E0            [24] 1561 	push	acc
      002C8F 90 5E BB         [24] 1562 	mov	dptr,#_txZero
      002C92 75 F0 80         [24] 1563 	mov	b,#0x80
      002C95 12 32 89         [24] 1564 	lcall	_EP0_Write
      002C98 15 81            [12] 1565 	dec	sp
      002C9A 15 81            [12] 1566 	dec	sp
                           0001C6  1567 	C$efm8_usbdch9.c$242$3$114 ==.
                                   1568 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:242: retVal = USB_STATUS_OK;
      002C9C 7F 00            [12] 1569 	mov	r7,#0x00
      002C9E 80 19            [24] 1570 	sjmp	00107$
      002CA0                       1571 00104$:
                           0001CA  1572 	C$efm8_usbdch9.c$244$2$113 ==.
                                   1573 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:244: else if (myUsbDevice.state == USBD_STATE_CONFIGURED)
      002CA0 BE 06 16         [24] 1574 	cjne	r6,#0x06,00107$
                           0001CD  1575 	C$efm8_usbdch9.c$246$3$115 ==.
                                   1576 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:246: EP0_Write(&myUsbDevice.configurationValue, 1);
      002CA3 74 01            [12] 1577 	mov	a,#0x01
      002CA5 C0 E0            [24] 1578 	push	acc
      002CA7 E4               [12] 1579 	clr	a
      002CA8 C0 E0            [24] 1580 	push	acc
      002CAA 90 01 EA         [24] 1581 	mov	dptr,#_myUsbDevice
      002CAD 75 F0 00         [24] 1582 	mov	b,#0x00
      002CB0 12 32 89         [24] 1583 	lcall	_EP0_Write
      002CB3 15 81            [12] 1584 	dec	sp
      002CB5 15 81            [12] 1585 	dec	sp
                           0001E1  1586 	C$efm8_usbdch9.c$247$3$115 ==.
                                   1587 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:247: retVal = USB_STATUS_OK;
      002CB7 7F 00            [12] 1588 	mov	r7,#0x00
      002CB9                       1589 00107$:
                           0001E3  1590 	C$efm8_usbdch9.c$250$1$112 ==.
                                   1591 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:250: return retVal;
      002CB9 8F 82            [24] 1592 	mov	dpl,r7
                           0001E5  1593 	C$efm8_usbdch9.c$251$1$112 ==.
                           0001E5  1594 	XFefm8_usbdch9$GetConfiguration$0$0 ==.
      002CBB 22               [24] 1595 	ret
                                   1596 ;------------------------------------------------------------
                                   1597 ;Allocation info for local variables in function 'GetDescriptor'
                                   1598 ;------------------------------------------------------------
                                   1599 ;index                     Allocated to registers r2 
                                   1600 ;length                    Allocated to registers r6 r7 
                                   1601 ;dat                       Allocated to stack - _bp +1
                                   1602 ;retVal                    Allocated to stack - _bp +4
                                   1603 ;sloc0                     Allocated to stack - _bp +8
                                   1604 ;sloc1                     Allocated to stack - _bp +10
                                   1605 ;------------------------------------------------------------
                           0001E6  1606 	Fefm8_usbdch9$GetDescriptor$0$0 ==.
                           0001E6  1607 	C$efm8_usbdch9.c$261$1$112 ==.
                                   1608 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:261: static USB_Status_TypeDef GetDescriptor(void)
                                   1609 ;	-----------------------------------------
                                   1610 ;	 function GetDescriptor
                                   1611 ;	-----------------------------------------
      002CBC                       1612 _GetDescriptor:
      002CBC C0 1B            [24] 1613 	push	_bp
      002CBE E5 81            [12] 1614 	mov	a,sp
      002CC0 F5 1B            [12] 1615 	mov	_bp,a
      002CC2 24 04            [12] 1616 	add	a,#0x04
      002CC4 F5 81            [12] 1617 	mov	sp,a
                           0001F0  1618 	C$efm8_usbdch9.c$269$1$112 ==.
                                   1619 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:269: uint16_t length = 0;
                           0001F0  1620 	C$efm8_usbdch9.c$271$1$112 ==.
                                   1621 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:271: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      002CC6 E4               [12] 1622 	clr	a
      002CC7 FE               [12] 1623 	mov	r6,a
      002CC8 FF               [12] 1624 	mov	r7,a
      002CC9 E5 1B            [12] 1625 	mov	a,_bp
      002CCB 24 04            [12] 1626 	add	a,#0x04
      002CCD F8               [12] 1627 	mov	r0,a
      002CCE 76 FF            [12] 1628 	mov	@r0,#0xff
                           0001FA  1629 	C$efm8_usbdch9.c$273$1$117 ==.
                                   1630 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:273: if (*((uint8_t *)&myUsbDevice.setup.bmRequestType) ==
      002CD0 90 01 EE         [24] 1631 	mov	dptr,#(_myUsbDevice + 0x0004)
      002CD3 E0               [24] 1632 	movx	a,@dptr
      002CD4 FC               [12] 1633 	mov	r4,a
      002CD5 BC 80 02         [24] 1634 	cjne	r4,#0x80,00158$
      002CD8 80 03            [24] 1635 	sjmp	00159$
      002CDA                       1636 00158$:
      002CDA 02 2E 42         [24] 1637 	ljmp	00122$
      002CDD                       1638 00159$:
                           000207  1639 	C$efm8_usbdch9.c$276$1$117 ==.
                                   1640 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:276: index = myUsbDevice.setup.wValue & 0xFF;
      002CDD 90 01 F0         [24] 1641 	mov	dptr,#(_myUsbDevice + 0x0006)
      002CE0 E0               [24] 1642 	movx	a,@dptr
      002CE1 FB               [12] 1643 	mov	r3,a
      002CE2 A3               [24] 1644 	inc	dptr
      002CE3 E0               [24] 1645 	movx	a,@dptr
      002CE4 FC               [12] 1646 	mov	r4,a
      002CE5 8B 02            [24] 1647 	mov	ar2,r3
                           000211  1648 	C$efm8_usbdch9.c$278$2$118 ==.
                                   1649 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:278: switch (myUsbDevice.setup.wValue >> 8)
      002CE7 8C 05            [24] 1650 	mov	ar5,r4
      002CE9 7C 00            [12] 1651 	mov	r4,#0x00
      002CEB BD 01 05         [24] 1652 	cjne	r5,#0x01,00160$
      002CEE BC 00 02         [24] 1653 	cjne	r4,#0x00,00160$
      002CF1 80 13            [24] 1654 	sjmp	00101$
      002CF3                       1655 00160$:
      002CF3 BD 02 05         [24] 1656 	cjne	r5,#0x02,00161$
      002CF6 BC 00 02         [24] 1657 	cjne	r4,#0x00,00161$
      002CF9 80 37            [24] 1658 	sjmp	00104$
      002CFB                       1659 00161$:
      002CFB BD 03 05         [24] 1660 	cjne	r5,#0x03,00162$
      002CFE BC 00 02         [24] 1661 	cjne	r4,#0x00,00162$
      002D01 80 64            [24] 1662 	sjmp	00107$
      002D03                       1663 00162$:
      002D03 02 2E 0E         [24] 1664 	ljmp	00116$
                           000230  1665 	C$efm8_usbdch9.c$280$3$119 ==.
                                   1666 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:280: case USB_DEVICE_DESCRIPTOR:
      002D06                       1667 00101$:
                           000230  1668 	C$efm8_usbdch9.c$281$3$119 ==.
                                   1669 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:281: if (index != 0)
      002D06 EA               [12] 1670 	mov	a,r2
      002D07 60 03            [24] 1671 	jz	00163$
      002D09 02 2E 0E         [24] 1672 	ljmp	00116$
      002D0C                       1673 00163$:
                           000236  1674 	C$efm8_usbdch9.c$285$3$119 ==.
                                   1675 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:285: dat = (uint8_t *)myUsbDevice.deviceDescriptor;
      002D0C 90 02 0C         [24] 1676 	mov	dptr,#(_myUsbDevice + 0x0022)
      002D0F E0               [24] 1677 	movx	a,@dptr
      002D10 FF               [12] 1678 	mov	r7,a
      002D11 A3               [24] 1679 	inc	dptr
      002D12 E0               [24] 1680 	movx	a,@dptr
      002D13 FE               [12] 1681 	mov	r6,a
      002D14 A3               [24] 1682 	inc	dptr
      002D15 E0               [24] 1683 	movx	a,@dptr
      002D16 FD               [12] 1684 	mov	r5,a
      002D17 A8 1B            [24] 1685 	mov	r0,_bp
      002D19 08               [12] 1686 	inc	r0
      002D1A A6 07            [24] 1687 	mov	@r0,ar7
      002D1C 08               [12] 1688 	inc	r0
      002D1D A6 06            [24] 1689 	mov	@r0,ar6
      002D1F 08               [12] 1690 	inc	r0
      002D20 A6 05            [24] 1691 	mov	@r0,ar5
                           00024C  1692 	C$efm8_usbdch9.c$286$3$119 ==.
                                   1693 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:286: length = myUsbDevice.deviceDescriptor->bLength;
      002D22 8F 82            [24] 1694 	mov	dpl,r7
      002D24 8E 83            [24] 1695 	mov	dph,r6
      002D26 8D F0            [24] 1696 	mov	b,r5
      002D28 12 5E 3E         [24] 1697 	lcall	__gptrget
      002D2B FA               [12] 1698 	mov	r2,a
      002D2C FE               [12] 1699 	mov	r6,a
      002D2D 7F 00            [12] 1700 	mov	r7,#0x00
                           000259  1701 	C$efm8_usbdch9.c$287$3$119 ==.
                                   1702 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:287: break;
      002D2F 02 2E 0E         [24] 1703 	ljmp	00116$
                           00025C  1704 	C$efm8_usbdch9.c$289$3$119 ==.
                                   1705 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:289: case USB_CONFIG_DESCRIPTOR:
      002D32                       1706 00104$:
                           00025C  1707 	C$efm8_usbdch9.c$290$3$119 ==.
                                   1708 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:290: if (index != 0)
      002D32 EA               [12] 1709 	mov	a,r2
      002D33 60 03            [24] 1710 	jz	00164$
      002D35 02 2E 0E         [24] 1711 	ljmp	00116$
      002D38                       1712 00164$:
                           000262  1713 	C$efm8_usbdch9.c$294$3$119 ==.
                                   1714 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:294: dat = (uint8_t *)myUsbDevice.configDescriptor;
      002D38 90 02 0F         [24] 1715 	mov	dptr,#(_myUsbDevice + 0x0025)
      002D3B E0               [24] 1716 	movx	a,@dptr
      002D3C FF               [12] 1717 	mov	r7,a
      002D3D A3               [24] 1718 	inc	dptr
      002D3E E0               [24] 1719 	movx	a,@dptr
      002D3F FE               [12] 1720 	mov	r6,a
      002D40 A3               [24] 1721 	inc	dptr
      002D41 E0               [24] 1722 	movx	a,@dptr
      002D42 FD               [12] 1723 	mov	r5,a
      002D43 A8 1B            [24] 1724 	mov	r0,_bp
      002D45 08               [12] 1725 	inc	r0
      002D46 A6 07            [24] 1726 	mov	@r0,ar7
      002D48 08               [12] 1727 	inc	r0
      002D49 A6 06            [24] 1728 	mov	@r0,ar6
      002D4B 08               [12] 1729 	inc	r0
      002D4C A6 05            [24] 1730 	mov	@r0,ar5
                           000278  1731 	C$efm8_usbdch9.c$295$3$119 ==.
                                   1732 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:295: length = le16toh(myUsbDevice.configDescriptor->wTotalLength);
      002D4E 74 02            [12] 1733 	mov	a,#0x02
      002D50 2F               [12] 1734 	add	a,r7
      002D51 FA               [12] 1735 	mov	r2,a
      002D52 E4               [12] 1736 	clr	a
      002D53 3E               [12] 1737 	addc	a,r6
      002D54 FC               [12] 1738 	mov	r4,a
      002D55 8A 82            [24] 1739 	mov	dpl,r2
      002D57 8C 83            [24] 1740 	mov	dph,r4
      002D59 8D F0            [24] 1741 	mov	b,r5
      002D5B 12 5E 3E         [24] 1742 	lcall	__gptrget
      002D5E FE               [12] 1743 	mov	r6,a
      002D5F A3               [24] 1744 	inc	dptr
      002D60 12 5E 3E         [24] 1745 	lcall	__gptrget
      002D63 FF               [12] 1746 	mov	r7,a
                           00028E  1747 	C$efm8_usbdch9.c$296$3$119 ==.
                                   1748 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:296: break;
      002D64 02 2E 0E         [24] 1749 	ljmp	00116$
                           000291  1750 	C$efm8_usbdch9.c$298$3$119 ==.
                                   1751 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:298: case USB_STRING_DESCRIPTOR:
      002D67                       1752 00107$:
                           000291  1753 	C$efm8_usbdch9.c$301$3$119 ==.
                                   1754 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:301: dat = (uint8_t *)myUsbDevice.stringDescriptors[index];
      002D67 90 02 12         [24] 1755 	mov	dptr,#(_myUsbDevice + 0x0028)
      002D6A E0               [24] 1756 	movx	a,@dptr
      002D6B FB               [12] 1757 	mov	r3,a
      002D6C A3               [24] 1758 	inc	dptr
      002D6D E0               [24] 1759 	movx	a,@dptr
      002D6E FC               [12] 1760 	mov	r4,a
      002D6F A3               [24] 1761 	inc	dptr
      002D70 E0               [24] 1762 	movx	a,@dptr
      002D71 FD               [12] 1763 	mov	r5,a
      002D72 EA               [12] 1764 	mov	a,r2
      002D73 75 F0 03         [24] 1765 	mov	b,#0x03
      002D76 A4               [48] 1766 	mul	ab
      002D77 2B               [12] 1767 	add	a,r3
      002D78 FB               [12] 1768 	mov	r3,a
      002D79 EC               [12] 1769 	mov	a,r4
      002D7A 35 F0            [12] 1770 	addc	a,b
      002D7C FC               [12] 1771 	mov	r4,a
      002D7D 8B 82            [24] 1772 	mov	dpl,r3
      002D7F 8C 83            [24] 1773 	mov	dph,r4
      002D81 8D F0            [24] 1774 	mov	b,r5
      002D83 12 5E 3E         [24] 1775 	lcall	__gptrget
      002D86 FB               [12] 1776 	mov	r3,a
      002D87 A3               [24] 1777 	inc	dptr
      002D88 12 5E 3E         [24] 1778 	lcall	__gptrget
      002D8B FC               [12] 1779 	mov	r4,a
      002D8C A3               [24] 1780 	inc	dptr
      002D8D 12 5E 3E         [24] 1781 	lcall	__gptrget
      002D90 FD               [12] 1782 	mov	r5,a
      002D91 A8 1B            [24] 1783 	mov	r0,_bp
      002D93 08               [12] 1784 	inc	r0
      002D94 A6 03            [24] 1785 	mov	@r0,ar3
      002D96 08               [12] 1786 	inc	r0
      002D97 A6 04            [24] 1787 	mov	@r0,ar4
      002D99 08               [12] 1788 	inc	r0
      002D9A A6 05            [24] 1789 	mov	@r0,ar5
                           0002C6  1790 	C$efm8_usbdch9.c$305$3$119 ==.
                                   1791 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:305: if (index == 0)
      002D9C EA               [12] 1792 	mov	a,r2
                           0002C7  1793 	C$efm8_usbdch9.c$307$4$122 ==.
                                   1794 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:307: length = 4;
      002D9D 70 0C            [24] 1795 	jnz	00114$
      002D9F 7E 04            [12] 1796 	mov	r6,#0x04
      002DA1 FF               [12] 1797 	mov	r7,a
                           0002CC  1798 	C$efm8_usbdch9.c$308$4$122 ==.
                                   1799 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:308: myUsbDevice.ep0String.encoding.type = USB_STRING_DESCRIPTOR_UTF16LE;
      002DA2 90 01 F6         [24] 1800 	mov	dptr,#(_myUsbDevice + 0x000c)
      002DA5 E0               [24] 1801 	movx	a,@dptr
      002DA6 54 80            [12] 1802 	anl	a,#0x80
      002DA8 F0               [24] 1803 	movx	@dptr,a
      002DA9 80 63            [24] 1804 	sjmp	00116$
      002DAB                       1805 00114$:
                           0002D5  1806 	C$efm8_usbdch9.c$312$3$119 ==.
                                   1807 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:312: else if ((myUsbDevice.setup.wIndex == 0) || (myUsbDevice.setup.wIndex == SLAB_USB_LANGUAGE))
      002DAB 90 01 F2         [24] 1808 	mov	dptr,#(_myUsbDevice + 0x0008)
      002DAE E0               [24] 1809 	movx	a,@dptr
      002DAF FC               [12] 1810 	mov	r4,a
      002DB0 A3               [24] 1811 	inc	dptr
      002DB1 E0               [24] 1812 	movx	a,@dptr
      002DB2 FD               [12] 1813 	mov	r5,a
      002DB3 4C               [12] 1814 	orl	a,r4
      002DB4 60 06            [24] 1815 	jz	00110$
      002DB6 BC 09 55         [24] 1816 	cjne	r4,#0x09,00116$
      002DB9 BD 04 52         [24] 1817 	cjne	r5,#0x04,00116$
      002DBC                       1818 00110$:
                           0002E6  1819 	C$efm8_usbdch9.c$315$4$123 ==.
                                   1820 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:315: if (index < myUsbDevice.numberOfStrings)
      002DBC 90 01 EB         [24] 1821 	mov	dptr,#(_myUsbDevice + 0x0001)
      002DBF E0               [24] 1822 	movx	a,@dptr
      002DC0 FD               [12] 1823 	mov	r5,a
      002DC1 C3               [12] 1824 	clr	c
      002DC2 EA               [12] 1825 	mov	a,r2
      002DC3 9D               [12] 1826 	subb	a,r5
      002DC4 50 48            [24] 1827 	jnc	00116$
                           0002F0  1828 	C$efm8_usbdch9.c$317$5$124 ==.
                                   1829 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:317: length = *(dat + USB_STRING_DESCRIPTOR_LENGTH);
      002DC6 A8 1B            [24] 1830 	mov	r0,_bp
      002DC8 08               [12] 1831 	inc	r0
      002DC9 74 01            [12] 1832 	mov	a,#0x01
      002DCB 26               [12] 1833 	add	a,@r0
      002DCC FB               [12] 1834 	mov	r3,a
      002DCD E4               [12] 1835 	clr	a
      002DCE 08               [12] 1836 	inc	r0
      002DCF 36               [12] 1837 	addc	a,@r0
      002DD0 FC               [12] 1838 	mov	r4,a
      002DD1 08               [12] 1839 	inc	r0
      002DD2 86 05            [24] 1840 	mov	ar5,@r0
      002DD4 8B 82            [24] 1841 	mov	dpl,r3
      002DD6 8C 83            [24] 1842 	mov	dph,r4
      002DD8 8D F0            [24] 1843 	mov	b,r5
      002DDA 12 5E 3E         [24] 1844 	lcall	__gptrget
      002DDD FE               [12] 1845 	mov	r6,a
      002DDE 7F 00            [12] 1846 	mov	r7,#0x00
                           00030A  1847 	C$efm8_usbdch9.c$318$5$124 ==.
                                   1848 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:318: myUsbDevice.ep0String.encoding.type = *(dat + USB_STRING_DESCRIPTOR_ENCODING);
      002DE0 A8 1B            [24] 1849 	mov	r0,_bp
      002DE2 08               [12] 1850 	inc	r0
      002DE3 86 82            [24] 1851 	mov	dpl,@r0
      002DE5 08               [12] 1852 	inc	r0
      002DE6 86 83            [24] 1853 	mov	dph,@r0
      002DE8 08               [12] 1854 	inc	r0
      002DE9 86 F0            [24] 1855 	mov	b,@r0
      002DEB 12 5E 3E         [24] 1856 	lcall	__gptrget
      002DEE FA               [12] 1857 	mov	r2,a
      002DEF 90 01 F6         [24] 1858 	mov	dptr,#(_myUsbDevice + 0x000c)
      002DF2 54 7F            [12] 1859 	anl	a,#0x7f
      002DF4 F5 F0            [12] 1860 	mov	b,a
      002DF6 E0               [24] 1861 	movx	a,@dptr
      002DF7 54 80            [12] 1862 	anl	a,#0x80
      002DF9 45 F0            [12] 1863 	orl	a,b
      002DFB F0               [24] 1864 	movx	@dptr,a
                           000326  1865 	C$efm8_usbdch9.c$319$5$124 ==.
                                   1866 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:319: dat += USB_STRING_DESCRIPTOR_LENGTH;
      002DFC A8 1B            [24] 1867 	mov	r0,_bp
      002DFE 08               [12] 1868 	inc	r0
      002DFF A6 03            [24] 1869 	mov	@r0,ar3
      002E01 08               [12] 1870 	inc	r0
      002E02 A6 04            [24] 1871 	mov	@r0,ar4
      002E04 08               [12] 1872 	inc	r0
      002E05 A6 05            [24] 1873 	mov	@r0,ar5
                           000331  1874 	C$efm8_usbdch9.c$320$5$124 ==.
                                   1875 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:320: myUsbDevice.ep0String.encoding.init = true;
      002E07 90 01 F6         [24] 1876 	mov	dptr,#(_myUsbDevice + 0x000c)
      002E0A E0               [24] 1877 	movx	a,@dptr
      002E0B 44 80            [12] 1878 	orl	a,#0x80
      002E0D F0               [24] 1879 	movx	@dptr,a
                           000338  1880 	C$efm8_usbdch9.c$364$2$118 ==.
                                   1881 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:364: }
      002E0E                       1882 00116$:
                           000338  1883 	C$efm8_usbdch9.c$368$2$118 ==.
                                   1884 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:368: if (length)
      002E0E EE               [12] 1885 	mov	a,r6
      002E0F 4F               [12] 1886 	orl	a,r7
      002E10 60 30            [24] 1887 	jz	00122$
                           00033C  1888 	C$efm8_usbdch9.c$370$3$125 ==.
                                   1889 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:370: if (length > myUsbDevice.setup.wLength)
      002E12 90 01 F4         [24] 1890 	mov	dptr,#(_myUsbDevice + 0x000a)
      002E15 E0               [24] 1891 	movx	a,@dptr
      002E16 FC               [12] 1892 	mov	r4,a
      002E17 A3               [24] 1893 	inc	dptr
      002E18 E0               [24] 1894 	movx	a,@dptr
      002E19 FD               [12] 1895 	mov	r5,a
      002E1A C3               [12] 1896 	clr	c
      002E1B EC               [12] 1897 	mov	a,r4
      002E1C 9E               [12] 1898 	subb	a,r6
      002E1D ED               [12] 1899 	mov	a,r5
      002E1E 9F               [12] 1900 	subb	a,r7
      002E1F 50 04            [24] 1901 	jnc	00118$
                           00034B  1902 	C$efm8_usbdch9.c$372$4$126 ==.
                                   1903 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:372: length = myUsbDevice.setup.wLength;
      002E21 8C 06            [24] 1904 	mov	ar6,r4
      002E23 8D 07            [24] 1905 	mov	ar7,r5
      002E25                       1906 00118$:
                           00034F  1907 	C$efm8_usbdch9.c$375$3$125 ==.
                                   1908 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:375: EP0_Write(dat, length);
      002E25 C0 06            [24] 1909 	push	ar6
      002E27 C0 07            [24] 1910 	push	ar7
      002E29 A8 1B            [24] 1911 	mov	r0,_bp
      002E2B 08               [12] 1912 	inc	r0
      002E2C 86 82            [24] 1913 	mov	dpl,@r0
      002E2E 08               [12] 1914 	inc	r0
      002E2F 86 83            [24] 1915 	mov	dph,@r0
      002E31 08               [12] 1916 	inc	r0
      002E32 86 F0            [24] 1917 	mov	b,@r0
      002E34 12 32 89         [24] 1918 	lcall	_EP0_Write
      002E37 15 81            [12] 1919 	dec	sp
      002E39 15 81            [12] 1920 	dec	sp
                           000365  1921 	C$efm8_usbdch9.c$377$3$125 ==.
                                   1922 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:377: retVal = USB_STATUS_OK;
      002E3B E5 1B            [12] 1923 	mov	a,_bp
      002E3D 24 04            [12] 1924 	add	a,#0x04
      002E3F F8               [12] 1925 	mov	r0,a
      002E40 76 00            [12] 1926 	mov	@r0,#0x00
      002E42                       1927 00122$:
                           00036C  1928 	C$efm8_usbdch9.c$381$1$117 ==.
                                   1929 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:381: return retVal;
      002E42 E5 1B            [12] 1930 	mov	a,_bp
      002E44 24 04            [12] 1931 	add	a,#0x04
      002E46 F8               [12] 1932 	mov	r0,a
      002E47 86 82            [24] 1933 	mov	dpl,@r0
      002E49 85 1B 81         [24] 1934 	mov	sp,_bp
      002E4C D0 1B            [24] 1935 	pop	_bp
                           000378  1936 	C$efm8_usbdch9.c$382$1$117 ==.
                           000378  1937 	XFefm8_usbdch9$GetDescriptor$0$0 ==.
      002E4E 22               [24] 1938 	ret
                                   1939 ;------------------------------------------------------------
                                   1940 ;Allocation info for local variables in function 'GetInterface'
                                   1941 ;------------------------------------------------------------
                                   1942 ;interface                 Allocated to registers r6 r7 
                                   1943 ;retVal                    Allocated to registers r5 
                                   1944 ;------------------------------------------------------------
                           000379  1945 	Fefm8_usbdch9$GetInterface$0$0 ==.
                           000379  1946 	C$efm8_usbdch9.c$391$1$117 ==.
                                   1947 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:391: static USB_Status_TypeDef GetInterface(void)
                                   1948 ;	-----------------------------------------
                                   1949 ;	 function GetInterface
                                   1950 ;	-----------------------------------------
      002E4F                       1951 _GetInterface:
                           000379  1952 	C$efm8_usbdch9.c$393$1$128 ==.
                                   1953 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:393: uint16_t interface = myUsbDevice.setup.wIndex;
      002E4F 90 01 F2         [24] 1954 	mov	dptr,#(_myUsbDevice + 0x0008)
      002E52 E0               [24] 1955 	movx	a,@dptr
      002E53 FE               [12] 1956 	mov	r6,a
      002E54 A3               [24] 1957 	inc	dptr
      002E55 E0               [24] 1958 	movx	a,@dptr
      002E56 FF               [12] 1959 	mov	r7,a
                           000381  1960 	C$efm8_usbdch9.c$394$1$128 ==.
                                   1961 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:394: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      002E57 7D FF            [12] 1962 	mov	r5,#0xff
                           000383  1963 	C$efm8_usbdch9.c$396$1$128 ==.
                                   1964 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:396: if ((interface < SLAB_USB_NUM_INTERFACES)
      002E59 C3               [12] 1965 	clr	c
      002E5A EE               [12] 1966 	mov	a,r6
      002E5B 94 01            [12] 1967 	subb	a,#0x01
      002E5D EF               [12] 1968 	mov	a,r7
      002E5E 94 00            [12] 1969 	subb	a,#0x00
      002E60 50 3F            [24] 1970 	jnc	00104$
                           00038C  1971 	C$efm8_usbdch9.c$397$1$128 ==.
                                   1972 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:397: && (myUsbDevice.setup.wLength == 1)
      002E62 90 01 F4         [24] 1973 	mov	dptr,#(_myUsbDevice + 0x000a)
      002E65 E0               [24] 1974 	movx	a,@dptr
      002E66 FE               [12] 1975 	mov	r6,a
      002E67 A3               [24] 1976 	inc	dptr
      002E68 E0               [24] 1977 	movx	a,@dptr
      002E69 FF               [12] 1978 	mov	r7,a
      002E6A BE 01 34         [24] 1979 	cjne	r6,#0x01,00104$
      002E6D BF 00 31         [24] 1980 	cjne	r7,#0x00,00104$
                           00039A  1981 	C$efm8_usbdch9.c$398$1$128 ==.
                                   1982 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:398: && (myUsbDevice.setup.wValue == 0)
      002E70 90 01 F0         [24] 1983 	mov	dptr,#(_myUsbDevice + 0x0006)
      002E73 E0               [24] 1984 	movx	a,@dptr
      002E74 FE               [12] 1985 	mov	r6,a
      002E75 A3               [24] 1986 	inc	dptr
      002E76 E0               [24] 1987 	movx	a,@dptr
      002E77 FF               [12] 1988 	mov	r7,a
      002E78 4E               [12] 1989 	orl	a,r6
      002E79 70 26            [24] 1990 	jnz	00104$
                           0003A5  1991 	C$efm8_usbdch9.c$399$1$128 ==.
                                   1992 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:399: && (*((uint8_t *)&myUsbDevice.setup.bmRequestType) ==
      002E7B 90 01 EE         [24] 1993 	mov	dptr,#(_myUsbDevice + 0x0004)
      002E7E E0               [24] 1994 	movx	a,@dptr
      002E7F FF               [12] 1995 	mov	r7,a
      002E80 BF 81 1E         [24] 1996 	cjne	r7,#0x81,00104$
                           0003AD  1997 	C$efm8_usbdch9.c$402$2$129 ==.
                                   1998 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:402: if (myUsbDevice.state == USBD_STATE_CONFIGURED)
      002E83 90 01 EC         [24] 1999 	mov	dptr,#(_myUsbDevice + 0x0002)
      002E86 E0               [24] 2000 	movx	a,@dptr
      002E87 FF               [12] 2001 	mov	r7,a
      002E88 BF 06 16         [24] 2002 	cjne	r7,#0x06,00104$
                           0003B5  2003 	C$efm8_usbdch9.c$409$3$130 ==.
                                   2004 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:409: EP0_Write(txZero, 1);
      002E8B 74 01            [12] 2005 	mov	a,#0x01
      002E8D C0 E0            [24] 2006 	push	acc
      002E8F E4               [12] 2007 	clr	a
      002E90 C0 E0            [24] 2008 	push	acc
      002E92 90 5E BB         [24] 2009 	mov	dptr,#_txZero
      002E95 75 F0 80         [24] 2010 	mov	b,#0x80
      002E98 12 32 89         [24] 2011 	lcall	_EP0_Write
      002E9B 15 81            [12] 2012 	dec	sp
      002E9D 15 81            [12] 2013 	dec	sp
                           0003C9  2014 	C$efm8_usbdch9.c$411$3$130 ==.
                                   2015 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:411: retVal = USB_STATUS_OK;
      002E9F 7D 00            [12] 2016 	mov	r5,#0x00
      002EA1                       2017 00104$:
                           0003CB  2018 	C$efm8_usbdch9.c$414$1$128 ==.
                                   2019 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:414: return retVal;
      002EA1 8D 82            [24] 2020 	mov	dpl,r5
                           0003CD  2021 	C$efm8_usbdch9.c$415$1$128 ==.
                           0003CD  2022 	XFefm8_usbdch9$GetInterface$0$0 ==.
      002EA3 22               [24] 2023 	ret
                                   2024 ;------------------------------------------------------------
                                   2025 ;Allocation info for local variables in function 'GetStatus'
                                   2026 ;------------------------------------------------------------
                                   2027 ;retVal                    Allocated to registers r7 
                                   2028 ;------------------------------------------------------------
                           0003CE  2029 	Fefm8_usbdch9$GetStatus$0$0 ==.
                           0003CE  2030 	C$efm8_usbdch9.c$424$1$128 ==.
                                   2031 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:424: static USB_Status_TypeDef GetStatus(void)
                                   2032 ;	-----------------------------------------
                                   2033 ;	 function GetStatus
                                   2034 ;	-----------------------------------------
      002EA4                       2035 _GetStatus:
                           0003CE  2036 	C$efm8_usbdch9.c$426$1$128 ==.
                                   2037 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:426: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      002EA4 7F FF            [12] 2038 	mov	r7,#0xff
                           0003D0  2039 	C$efm8_usbdch9.c$428$1$132 ==.
                                   2040 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:428: if ((myUsbDevice.setup.wLength == 2)
      002EA6 90 01 F4         [24] 2041 	mov	dptr,#(_myUsbDevice + 0x000a)
      002EA9 E0               [24] 2042 	movx	a,@dptr
      002EAA FD               [12] 2043 	mov	r5,a
      002EAB A3               [24] 2044 	inc	dptr
      002EAC E0               [24] 2045 	movx	a,@dptr
      002EAD FE               [12] 2046 	mov	r6,a
      002EAE BD 02 05         [24] 2047 	cjne	r5,#0x02,00187$
      002EB1 BE 00 02         [24] 2048 	cjne	r6,#0x00,00187$
      002EB4 80 03            [24] 2049 	sjmp	00188$
      002EB6                       2050 00187$:
      002EB6 02 2F B8         [24] 2051 	ljmp	00127$
      002EB9                       2052 00188$:
                           0003E3  2053 	C$efm8_usbdch9.c$429$1$132 ==.
                                   2054 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:429: && (myUsbDevice.setup.wValue == 0)
      002EB9 90 01 F0         [24] 2055 	mov	dptr,#(_myUsbDevice + 0x0006)
      002EBC E0               [24] 2056 	movx	a,@dptr
      002EBD FD               [12] 2057 	mov	r5,a
      002EBE A3               [24] 2058 	inc	dptr
      002EBF E0               [24] 2059 	movx	a,@dptr
      002EC0 FE               [12] 2060 	mov	r6,a
      002EC1 4D               [12] 2061 	orl	a,r5
      002EC2 60 03            [24] 2062 	jz	00189$
      002EC4 02 2F B8         [24] 2063 	ljmp	00127$
      002EC7                       2064 00189$:
                           0003F1  2065 	C$efm8_usbdch9.c$430$1$132 ==.
                                   2066 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:430: && (myUsbDevice.setup.bmRequestType.Direction == USB_SETUP_DIR_IN)
      002EC7 90 01 EE         [24] 2067 	mov	dptr,#(_myUsbDevice + 0x0004)
      002ECA E0               [24] 2068 	movx	a,@dptr
      002ECB 23               [12] 2069 	rl	a
      002ECC 54 01            [12] 2070 	anl	a,#0x01
      002ECE FE               [12] 2071 	mov	r6,a
      002ECF BE 01 02         [24] 2072 	cjne	r6,#0x01,00190$
      002ED2 80 03            [24] 2073 	sjmp	00191$
      002ED4                       2074 00190$:
      002ED4 02 2F B8         [24] 2075 	ljmp	00127$
      002ED7                       2076 00191$:
                           000401  2077 	C$efm8_usbdch9.c$431$1$132 ==.
                                   2078 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:431: && (myUsbDevice.state >= USBD_STATE_ADDRESSED))
      002ED7 90 01 EC         [24] 2079 	mov	dptr,#(_myUsbDevice + 0x0002)
      002EDA E0               [24] 2080 	movx	a,@dptr
      002EDB FE               [12] 2081 	mov	r6,a
      002EDC BE 04 00         [24] 2082 	cjne	r6,#0x04,00192$
      002EDF                       2083 00192$:
      002EDF 50 03            [24] 2084 	jnc	00193$
      002EE1 02 2F B8         [24] 2085 	ljmp	00127$
      002EE4                       2086 00193$:
                           00040E  2087 	C$efm8_usbdch9.c$433$2$133 ==.
                                   2088 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:433: pStatus = htole16(0);         // Default return value is 0x0000
      002EE4 90 02 15         [24] 2089 	mov	dptr,#_pStatus
      002EE7 E4               [12] 2090 	clr	a
      002EE8 F0               [24] 2091 	movx	@dptr,a
      002EE9 A3               [24] 2092 	inc	dptr
      002EEA F0               [24] 2093 	movx	@dptr,a
                           000415  2094 	C$efm8_usbdch9.c$435$2$133 ==.
                                   2095 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:435: switch (myUsbDevice.setup.bmRequestType.Recipient)
      002EEB 90 01 EE         [24] 2096 	mov	dptr,#(_myUsbDevice + 0x0004)
      002EEE E0               [24] 2097 	movx	a,@dptr
      002EEF 54 1F            [12] 2098 	anl	a,#0x1f
      002EF1 FE               [12] 2099 	mov	r6,a
      002EF2 60 0D            [24] 2100 	jz	00101$
      002EF4 BE 01 02         [24] 2101 	cjne	r6,#0x01,00195$
      002EF7 80 31            [24] 2102 	sjmp	00106$
      002EF9                       2103 00195$:
      002EF9 BE 02 02         [24] 2104 	cjne	r6,#0x02,00196$
      002EFC 80 41            [24] 2105 	sjmp	00109$
      002EFE                       2106 00196$:
      002EFE 02 2F 9D         [24] 2107 	ljmp	00123$
                           00042B  2108 	C$efm8_usbdch9.c$437$3$134 ==.
                                   2109 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:437: case USB_SETUP_RECIPIENT_DEVICE:
      002F01                       2110 00101$:
                           00042B  2111 	C$efm8_usbdch9.c$438$3$134 ==.
                                   2112 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:438: if (myUsbDevice.setup.wIndex == 0)
      002F01 90 01 F2         [24] 2113 	mov	dptr,#(_myUsbDevice + 0x0008)
      002F04 E0               [24] 2114 	movx	a,@dptr
      002F05 FD               [12] 2115 	mov	r5,a
      002F06 A3               [24] 2116 	inc	dptr
      002F07 E0               [24] 2117 	movx	a,@dptr
      002F08 FE               [12] 2118 	mov	r6,a
      002F09 4D               [12] 2119 	orl	a,r5
      002F0A 60 03            [24] 2120 	jz	00197$
      002F0C 02 2F 9D         [24] 2121 	ljmp	00123$
      002F0F                       2122 00197$:
                           000439  2123 	C$efm8_usbdch9.c$450$4$135 ==.
                                   2124 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:450: if (USBD_IsSelfPoweredCb())
      002F0F 12 3D D9         [24] 2125 	lcall	_USBD_IsSelfPoweredCb
      002F12 50 12            [24] 2126 	jnc	00103$
                           00043E  2127 	C$efm8_usbdch9.c$452$5$136 ==.
                                   2128 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:452: pStatus |= htole16(DEVICE_IS_SELFPOWERED);
      002F14 90 02 15         [24] 2129 	mov	dptr,#_pStatus
      002F17 E0               [24] 2130 	movx	a,@dptr
      002F18 FD               [12] 2131 	mov	r5,a
      002F19 A3               [24] 2132 	inc	dptr
      002F1A E0               [24] 2133 	movx	a,@dptr
      002F1B FE               [12] 2134 	mov	r6,a
      002F1C 90 02 15         [24] 2135 	mov	dptr,#_pStatus
      002F1F 74 01            [12] 2136 	mov	a,#0x01
      002F21 4D               [12] 2137 	orl	a,r5
      002F22 F0               [24] 2138 	movx	@dptr,a
      002F23 EE               [12] 2139 	mov	a,r6
      002F24 A3               [24] 2140 	inc	dptr
      002F25 F0               [24] 2141 	movx	@dptr,a
      002F26                       2142 00103$:
                           000450  2143 	C$efm8_usbdch9.c$458$4$135 ==.
                                   2144 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:458: retVal = USB_STATUS_OK;
      002F26 7F 00            [12] 2145 	mov	r7,#0x00
                           000452  2146 	C$efm8_usbdch9.c$460$3$134 ==.
                                   2147 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:460: break;
                           000452  2148 	C$efm8_usbdch9.c$462$3$134 ==.
                                   2149 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:462: case USB_SETUP_RECIPIENT_INTERFACE:
      002F28 80 73            [24] 2150 	sjmp	00123$
      002F2A                       2151 00106$:
                           000454  2152 	C$efm8_usbdch9.c$463$3$134 ==.
                                   2153 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:463: if (myUsbDevice.setup.wIndex < SLAB_USB_NUM_INTERFACES)
      002F2A 90 01 F2         [24] 2154 	mov	dptr,#(_myUsbDevice + 0x0008)
      002F2D E0               [24] 2155 	movx	a,@dptr
      002F2E FD               [12] 2156 	mov	r5,a
      002F2F A3               [24] 2157 	inc	dptr
      002F30 E0               [24] 2158 	movx	a,@dptr
      002F31 FE               [12] 2159 	mov	r6,a
      002F32 C3               [12] 2160 	clr	c
      002F33 ED               [12] 2161 	mov	a,r5
      002F34 94 01            [12] 2162 	subb	a,#0x01
      002F36 EE               [12] 2163 	mov	a,r6
      002F37 94 00            [12] 2164 	subb	a,#0x00
      002F39 50 62            [24] 2165 	jnc	00123$
                           000465  2166 	C$efm8_usbdch9.c$465$4$137 ==.
                                   2167 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:465: retVal = USB_STATUS_OK;
      002F3B 7F 00            [12] 2168 	mov	r7,#0x00
                           000467  2169 	C$efm8_usbdch9.c$467$3$134 ==.
                                   2170 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:467: break;
                           000467  2171 	C$efm8_usbdch9.c$470$3$134 ==.
                                   2172 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:470: case USB_SETUP_RECIPIENT_ENDPOINT:
      002F3D 80 5E            [24] 2173 	sjmp	00123$
      002F3F                       2174 00109$:
                           000469  2175 	C$efm8_usbdch9.c$473$3$134 ==.
                                   2176 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:473: if (((myUsbDevice.setup.wIndex & ~USB_EP_DIR_IN) == 0)
      002F3F 90 01 F2         [24] 2177 	mov	dptr,#(_myUsbDevice + 0x0008)
      002F42 E0               [24] 2178 	movx	a,@dptr
      002F43 FD               [12] 2179 	mov	r5,a
      002F44 A3               [24] 2180 	inc	dptr
      002F45 E0               [24] 2181 	movx	a,@dptr
      002F46 FE               [12] 2182 	mov	r6,a
      002F47 ED               [12] 2183 	mov	a,r5
      002F48 54 7F            [12] 2184 	anl	a,#0x7f
      002F4A 70 0F            [24] 2185 	jnz	00120$
      002F4C EE               [12] 2186 	mov	a,r6
      002F4D 70 0C            [24] 2187 	jnz	00120$
                           000479  2188 	C$efm8_usbdch9.c$474$3$134 ==.
                                   2189 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:474: && (myUsbDevice.state == USBD_STATE_ADDRESSED))
      002F4F 90 01 EC         [24] 2190 	mov	dptr,#(_myUsbDevice + 0x0002)
      002F52 E0               [24] 2191 	movx	a,@dptr
      002F53 FC               [12] 2192 	mov	r4,a
      002F54 BC 04 04         [24] 2193 	cjne	r4,#0x04,00120$
                           000481  2194 	C$efm8_usbdch9.c$476$4$138 ==.
                                   2195 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:476: retVal = USB_STATUS_OK;
      002F57 7F 00            [12] 2196 	mov	r7,#0x00
      002F59 80 42            [24] 2197 	sjmp	00123$
      002F5B                       2198 00120$:
                           000485  2199 	C$efm8_usbdch9.c$478$3$134 ==.
                                   2200 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:478: else if (myUsbDevice.state == USBD_STATE_CONFIGURED)
      002F5B 90 01 EC         [24] 2201 	mov	dptr,#(_myUsbDevice + 0x0002)
      002F5E E0               [24] 2202 	movx	a,@dptr
      002F5F FC               [12] 2203 	mov	r4,a
      002F60 BC 06 3A         [24] 2204 	cjne	r4,#0x06,00123$
                           00048D  2205 	C$efm8_usbdch9.c$480$4$139 ==.
                                   2206 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:480: switch (myUsbDevice.setup.wIndex & 0xFF)
      002F63 7E 00            [12] 2207 	mov	r6,#0x00
      002F65 BD 01 05         [24] 2208 	cjne	r5,#0x01,00206$
      002F68 BE 00 02         [24] 2209 	cjne	r6,#0x00,00206$
      002F6B 80 08            [24] 2210 	sjmp	00110$
      002F6D                       2211 00206$:
                           000497  2212 	C$efm8_usbdch9.c$483$5$140 ==.
                                   2213 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:483: case (USB_EP_DIR_OUT | 1):
      002F6D BD 81 2D         [24] 2214 	cjne	r5,#0x81,00123$
      002F70 BE 00 2A         [24] 2215 	cjne	r6,#0x00,00123$
      002F73 80 15            [24] 2216 	sjmp	00113$
      002F75                       2217 00110$:
                           00049F  2218 	C$efm8_usbdch9.c$484$5$140 ==.
                                   2219 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:484: if (myUsbDevice.ep1out.state == D_EP_HALT)
      002F75 90 02 0A         [24] 2220 	mov	dptr,#(_myUsbDevice + 0x0020)
      002F78 E0               [24] 2221 	movx	a,@dptr
      002F79 FE               [12] 2222 	mov	r6,a
      002F7A BE 06 09         [24] 2223 	cjne	r6,#0x06,00112$
                           0004A7  2224 	C$efm8_usbdch9.c$486$6$141 ==.
                                   2225 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:486: pStatus = htole16(1);
      002F7D 90 02 15         [24] 2226 	mov	dptr,#_pStatus
      002F80 74 01            [12] 2227 	mov	a,#0x01
      002F82 F0               [24] 2228 	movx	@dptr,a
      002F83 E4               [12] 2229 	clr	a
      002F84 A3               [24] 2230 	inc	dptr
      002F85 F0               [24] 2231 	movx	@dptr,a
      002F86                       2232 00112$:
                           0004B0  2233 	C$efm8_usbdch9.c$488$5$140 ==.
                                   2234 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:488: retVal = USB_STATUS_OK;
      002F86 7F 00            [12] 2235 	mov	r7,#0x00
                           0004B2  2236 	C$efm8_usbdch9.c$489$5$140 ==.
                                   2237 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:489: break;
                           0004B2  2238 	C$efm8_usbdch9.c$510$5$140 ==.
                                   2239 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:510: case (USB_EP_DIR_IN | 1):
      002F88 80 13            [24] 2240 	sjmp	00123$
      002F8A                       2241 00113$:
                           0004B4  2242 	C$efm8_usbdch9.c$511$5$140 ==.
                                   2243 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:511: if (myUsbDevice.ep1in.state == D_EP_HALT)
      002F8A 90 02 03         [24] 2244 	mov	dptr,#(_myUsbDevice + 0x0019)
      002F8D E0               [24] 2245 	movx	a,@dptr
      002F8E FE               [12] 2246 	mov	r6,a
      002F8F BE 06 09         [24] 2247 	cjne	r6,#0x06,00115$
                           0004BC  2248 	C$efm8_usbdch9.c$513$6$142 ==.
                                   2249 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:513: pStatus = htole16(1);
      002F92 90 02 15         [24] 2250 	mov	dptr,#_pStatus
      002F95 74 01            [12] 2251 	mov	a,#0x01
      002F97 F0               [24] 2252 	movx	@dptr,a
      002F98 E4               [12] 2253 	clr	a
      002F99 A3               [24] 2254 	inc	dptr
      002F9A F0               [24] 2255 	movx	@dptr,a
      002F9B                       2256 00115$:
                           0004C5  2257 	C$efm8_usbdch9.c$515$5$140 ==.
                                   2258 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:515: retVal = USB_STATUS_OK;
      002F9B 7F 00            [12] 2259 	mov	r7,#0x00
                           0004C7  2260 	C$efm8_usbdch9.c$539$2$133 ==.
                                   2261 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:539: }
      002F9D                       2262 00123$:
                           0004C7  2263 	C$efm8_usbdch9.c$542$2$133 ==.
                                   2264 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:542: if (retVal == USB_STATUS_OK)
      002F9D EF               [12] 2265 	mov	a,r7
      002F9E 70 18            [24] 2266 	jnz	00127$
                           0004CA  2267 	C$efm8_usbdch9.c$544$3$143 ==.
                                   2268 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:544: EP0_Write((uint8_t *)&pStatus, 2);
      002FA0 C0 07            [24] 2269 	push	ar7
      002FA2 74 02            [12] 2270 	mov	a,#0x02
      002FA4 C0 E0            [24] 2271 	push	acc
      002FA6 E4               [12] 2272 	clr	a
      002FA7 C0 E0            [24] 2273 	push	acc
      002FA9 90 02 15         [24] 2274 	mov	dptr,#_pStatus
      002FAC 75 F0 00         [24] 2275 	mov	b,#0x00
      002FAF 12 32 89         [24] 2276 	lcall	_EP0_Write
      002FB2 15 81            [12] 2277 	dec	sp
      002FB4 15 81            [12] 2278 	dec	sp
      002FB6 D0 07            [24] 2279 	pop	ar7
      002FB8                       2280 00127$:
                           0004E2  2281 	C$efm8_usbdch9.c$548$1$132 ==.
                                   2282 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:548: return retVal;
      002FB8 8F 82            [24] 2283 	mov	dpl,r7
                           0004E4  2284 	C$efm8_usbdch9.c$549$1$132 ==.
                           0004E4  2285 	XFefm8_usbdch9$GetStatus$0$0 ==.
      002FBA 22               [24] 2286 	ret
                                   2287 ;------------------------------------------------------------
                                   2288 ;Allocation info for local variables in function 'SetAddress'
                                   2289 ;------------------------------------------------------------
                                   2290 ;retVal                    Allocated to registers r7 
                                   2291 ;------------------------------------------------------------
                           0004E5  2292 	Fefm8_usbdch9$SetAddress$0$0 ==.
                           0004E5  2293 	C$efm8_usbdch9.c$557$1$132 ==.
                                   2294 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:557: static USB_Status_TypeDef SetAddress(void)
                                   2295 ;	-----------------------------------------
                                   2296 ;	 function SetAddress
                                   2297 ;	-----------------------------------------
      002FBB                       2298 _SetAddress:
                           0004E5  2299 	C$efm8_usbdch9.c$559$1$132 ==.
                                   2300 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:559: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      002FBB 7F FF            [12] 2301 	mov	r7,#0xff
                           0004E7  2302 	C$efm8_usbdch9.c$561$1$145 ==.
                                   2303 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:561: if ((myUsbDevice.setup.wValue < 128)
      002FBD 90 01 F0         [24] 2304 	mov	dptr,#(_myUsbDevice + 0x0006)
      002FC0 E0               [24] 2305 	movx	a,@dptr
      002FC1 FD               [12] 2306 	mov	r5,a
      002FC2 A3               [24] 2307 	inc	dptr
      002FC3 E0               [24] 2308 	movx	a,@dptr
      002FC4 FE               [12] 2309 	mov	r6,a
      002FC5 C3               [12] 2310 	clr	c
      002FC6 ED               [12] 2311 	mov	a,r5
      002FC7 94 80            [12] 2312 	subb	a,#0x80
      002FC9 EE               [12] 2313 	mov	a,r6
      002FCA 94 00            [12] 2314 	subb	a,#0x00
      002FCC 50 5A            [24] 2315 	jnc	00119$
                           0004F8  2316 	C$efm8_usbdch9.c$562$1$145 ==.
                                   2317 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:562: && (myUsbDevice.setup.wLength == 0)
      002FCE 90 01 F4         [24] 2318 	mov	dptr,#(_myUsbDevice + 0x000a)
      002FD1 E0               [24] 2319 	movx	a,@dptr
      002FD2 FB               [12] 2320 	mov	r3,a
      002FD3 A3               [24] 2321 	inc	dptr
      002FD4 E0               [24] 2322 	movx	a,@dptr
      002FD5 FC               [12] 2323 	mov	r4,a
      002FD6 4B               [12] 2324 	orl	a,r3
      002FD7 70 4F            [24] 2325 	jnz	00119$
                           000503  2326 	C$efm8_usbdch9.c$563$1$145 ==.
                                   2327 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:563: && (myUsbDevice.setup.bmRequestType.Recipient == USB_SETUP_RECIPIENT_DEVICE)
      002FD9 90 01 EE         [24] 2328 	mov	dptr,#(_myUsbDevice + 0x0004)
      002FDC E0               [24] 2329 	movx	a,@dptr
      002FDD 54 1F            [12] 2330 	anl	a,#0x1f
      002FDF 70 47            [24] 2331 	jnz	00119$
                           00050B  2332 	C$efm8_usbdch9.c$564$1$145 ==.
                                   2333 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:564: && (myUsbDevice.setup.wIndex == 0))
      002FE1 90 01 F2         [24] 2334 	mov	dptr,#(_myUsbDevice + 0x0008)
      002FE4 E0               [24] 2335 	movx	a,@dptr
      002FE5 FB               [12] 2336 	mov	r3,a
      002FE6 A3               [24] 2337 	inc	dptr
      002FE7 E0               [24] 2338 	movx	a,@dptr
      002FE8 FC               [12] 2339 	mov	r4,a
      002FE9 4B               [12] 2340 	orl	a,r3
      002FEA 70 3C            [24] 2341 	jnz	00119$
                           000516  2342 	C$efm8_usbdch9.c$568$2$146 ==.
                                   2343 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:568: if (myUsbDevice.state == USBD_STATE_DEFAULT)
      002FEC 90 01 EC         [24] 2344 	mov	dptr,#(_myUsbDevice + 0x0002)
      002FEF E0               [24] 2345 	movx	a,@dptr
      002FF0 FC               [12] 2346 	mov	r4,a
      002FF1 BC 03 0E         [24] 2347 	cjne	r4,#0x03,00108$
                           00051E  2348 	C$efm8_usbdch9.c$570$3$147 ==.
                                   2349 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:570: if (myUsbDevice.setup.wValue != 0)
      002FF4 ED               [12] 2350 	mov	a,r5
      002FF5 4E               [12] 2351 	orl	a,r6
      002FF6 60 06            [24] 2352 	jz	00102$
                           000522  2353 	C$efm8_usbdch9.c$572$4$148 ==.
                                   2354 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:572: USBD_SetUsbState(USBD_STATE_ADDRESSED);
      002FF8 75 82 04         [24] 2355 	mov	dpl,#0x04
      002FFB 12 2A 9D         [24] 2356 	lcall	_USBD_SetUsbState
      002FFE                       2357 00102$:
                           000528  2358 	C$efm8_usbdch9.c$574$3$147 ==.
                                   2359 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:574: retVal = USB_STATUS_OK;
      002FFE 7F 00            [12] 2360 	mov	r7,#0x00
      003000 80 0F            [24] 2361 	sjmp	00109$
      003002                       2362 00108$:
                           00052C  2363 	C$efm8_usbdch9.c$578$2$146 ==.
                                   2364 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:578: else if (myUsbDevice.state == USBD_STATE_ADDRESSED)
      003002 BC 04 0C         [24] 2365 	cjne	r4,#0x04,00109$
                           00052F  2366 	C$efm8_usbdch9.c$580$3$149 ==.
                                   2367 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:580: if (myUsbDevice.setup.wValue == 0)
      003005 ED               [12] 2368 	mov	a,r5
      003006 4E               [12] 2369 	orl	a,r6
      003007 70 06            [24] 2370 	jnz	00104$
                           000533  2371 	C$efm8_usbdch9.c$582$4$150 ==.
                                   2372 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:582: USBD_SetUsbState(USBD_STATE_DEFAULT);
      003009 75 82 03         [24] 2373 	mov	dpl,#0x03
      00300C 12 2A 9D         [24] 2374 	lcall	_USBD_SetUsbState
      00300F                       2375 00104$:
                           000539  2376 	C$efm8_usbdch9.c$584$3$149 ==.
                                   2377 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:584: retVal = USB_STATUS_OK;
      00300F 7F 00            [12] 2378 	mov	r7,#0x00
      003011                       2379 00109$:
                           00053B  2380 	C$efm8_usbdch9.c$588$2$146 ==.
                                   2381 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:588: if (retVal == USB_STATUS_OK)
      003011 EF               [12] 2382 	mov	a,r7
                           00053C  2383 	C$efm8_usbdch9.c$590$4$152 ==.
                                   2384 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:590: USB_SetAddress(myUsbDevice.setup.wValue);
      003012 70 14            [24] 2385 	jnz	00119$
      003014 F5 AE            [12] 2386 	mov	_USB0ADR,a
      003016 90 01 F0         [24] 2387 	mov	dptr,#(_myUsbDevice + 0x0006)
      003019 E0               [24] 2388 	movx	a,@dptr
      00301A FD               [12] 2389 	mov	r5,a
      00301B A3               [24] 2390 	inc	dptr
      00301C E0               [24] 2391 	movx	a,@dptr
      00301D FE               [12] 2392 	mov	r6,a
      00301E 43 05 80         [24] 2393 	orl	ar5,#0x80
      003021 8D AF            [24] 2394 	mov	_USB0DAT,r5
      003023                       2395 00110$:
      003023 E5 AE            [12] 2396 	mov	a,_USB0ADR
      003025 20 E7 FB         [24] 2397 	jb	acc.7,00110$
      003028                       2398 00119$:
                           000552  2399 	C$efm8_usbdch9.c$594$1$145 ==.
                                   2400 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:594: return retVal;
      003028 8F 82            [24] 2401 	mov	dpl,r7
                           000554  2402 	C$efm8_usbdch9.c$595$1$145 ==.
                           000554  2403 	XFefm8_usbdch9$SetAddress$0$0 ==.
      00302A 22               [24] 2404 	ret
                                   2405 ;------------------------------------------------------------
                                   2406 ;Allocation info for local variables in function 'SetConfiguration'
                                   2407 ;------------------------------------------------------------
                                   2408 ;retVal                    Allocated to registers r7 
                                   2409 ;sloc0                     Allocated to stack - _bp +2
                                   2410 ;sloc1                     Allocated to stack - _bp +4
                                   2411 ;------------------------------------------------------------
                           000555  2412 	Fefm8_usbdch9$SetConfiguration$0$0 ==.
                           000555  2413 	C$efm8_usbdch9.c$603$1$145 ==.
                                   2414 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:603: static USB_Status_TypeDef SetConfiguration(void)
                                   2415 ;	-----------------------------------------
                                   2416 ;	 function SetConfiguration
                                   2417 ;	-----------------------------------------
      00302B                       2418 _SetConfiguration:
                           000555  2419 	C$efm8_usbdch9.c$605$1$145 ==.
                                   2420 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:605: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      00302B 7F FF            [12] 2421 	mov	r7,#0xff
                           000557  2422 	C$efm8_usbdch9.c$607$1$155 ==.
                                   2423 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:607: if (((myUsbDevice.setup.wValue >> 8) == 0)
      00302D 90 01 F0         [24] 2424 	mov	dptr,#(_myUsbDevice + 0x0006)
      003030 E0               [24] 2425 	movx	a,@dptr
      003031 FD               [12] 2426 	mov	r5,a
      003032 A3               [24] 2427 	inc	dptr
      003033 E0               [24] 2428 	movx	a,@dptr
      003034 FE               [12] 2429 	mov	r6,a
      003035 FB               [12] 2430 	mov	r3,a
      003036 7C 00            [12] 2431 	mov	r4,#0x00
      003038 EB               [12] 2432 	mov	a,r3
      003039 4C               [12] 2433 	orl	a,r4
      00303A 60 03            [24] 2434 	jz	00154$
      00303C 02 31 41         [24] 2435 	ljmp	00118$
      00303F                       2436 00154$:
                           000569  2437 	C$efm8_usbdch9.c$608$1$155 ==.
                                   2438 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:608: && (myUsbDevice.setup.bmRequestType.Recipient == USB_SETUP_RECIPIENT_DEVICE)
      00303F 90 01 EE         [24] 2439 	mov	dptr,#(_myUsbDevice + 0x0004)
      003042 E0               [24] 2440 	movx	a,@dptr
      003043 54 1F            [12] 2441 	anl	a,#0x1f
      003045 60 03            [24] 2442 	jz	00155$
      003047 02 31 41         [24] 2443 	ljmp	00118$
      00304A                       2444 00155$:
                           000574  2445 	C$efm8_usbdch9.c$609$1$155 ==.
                                   2446 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:609: && (myUsbDevice.setup.wLength == 0)
      00304A 90 01 F4         [24] 2447 	mov	dptr,#(_myUsbDevice + 0x000a)
      00304D E0               [24] 2448 	movx	a,@dptr
      00304E FB               [12] 2449 	mov	r3,a
      00304F A3               [24] 2450 	inc	dptr
      003050 E0               [24] 2451 	movx	a,@dptr
      003051 FC               [12] 2452 	mov	r4,a
      003052 4B               [12] 2453 	orl	a,r3
      003053 60 03            [24] 2454 	jz	00156$
      003055 02 31 41         [24] 2455 	ljmp	00118$
      003058                       2456 00156$:
                           000582  2457 	C$efm8_usbdch9.c$610$1$155 ==.
                                   2458 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:610: && (myUsbDevice.setup.wIndex == 0))
      003058 90 01 F2         [24] 2459 	mov	dptr,#(_myUsbDevice + 0x0008)
      00305B E0               [24] 2460 	movx	a,@dptr
      00305C FB               [12] 2461 	mov	r3,a
      00305D A3               [24] 2462 	inc	dptr
      00305E E0               [24] 2463 	movx	a,@dptr
      00305F FC               [12] 2464 	mov	r4,a
      003060 4B               [12] 2465 	orl	a,r3
      003061 60 03            [24] 2466 	jz	00157$
      003063 02 31 41         [24] 2467 	ljmp	00118$
      003066                       2468 00157$:
                           000590  2469 	C$efm8_usbdch9.c$614$2$156 ==.
                                   2470 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:614: if (myUsbDevice.state == USBD_STATE_ADDRESSED)
      003066 90 01 EC         [24] 2471 	mov	dptr,#(_myUsbDevice + 0x0002)
      003069 E0               [24] 2472 	movx	a,@dptr
      00306A FC               [12] 2473 	mov	r4,a
      00306B BC 04 02         [24] 2474 	cjne	r4,#0x04,00158$
      00306E 80 03            [24] 2475 	sjmp	00159$
      003070                       2476 00158$:
      003070 02 30 EF         [24] 2477 	ljmp	00115$
      003073                       2478 00159$:
                           00059D  2479 	C$efm8_usbdch9.c$616$3$157 ==.
                                   2480 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:616: if ((myUsbDevice.setup.wValue == 0)
      003073 ED               [12] 2481 	mov	a,r5
      003074 4E               [12] 2482 	orl	a,r6
      003075 60 31            [24] 2483 	jz	00103$
                           0005A1  2484 	C$efm8_usbdch9.c$617$1$155 ==.
                                   2485 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:617: || (myUsbDevice.setup.wValue == myUsbDevice.configDescriptor->bConfigurationValue))
      003077 C0 07            [24] 2486 	push	ar7
      003079 90 02 0F         [24] 2487 	mov	dptr,#(_myUsbDevice + 0x0025)
      00307C E0               [24] 2488 	movx	a,@dptr
      00307D FA               [12] 2489 	mov	r2,a
      00307E A3               [24] 2490 	inc	dptr
      00307F E0               [24] 2491 	movx	a,@dptr
      003080 FB               [12] 2492 	mov	r3,a
      003081 A3               [24] 2493 	inc	dptr
      003082 E0               [24] 2494 	movx	a,@dptr
      003083 FF               [12] 2495 	mov	r7,a
      003084 74 05            [12] 2496 	mov	a,#0x05
      003086 2A               [12] 2497 	add	a,r2
      003087 FA               [12] 2498 	mov	r2,a
      003088 E4               [12] 2499 	clr	a
      003089 3B               [12] 2500 	addc	a,r3
      00308A FB               [12] 2501 	mov	r3,a
      00308B 8A 82            [24] 2502 	mov	dpl,r2
      00308D 8B 83            [24] 2503 	mov	dph,r3
      00308F 8F F0            [24] 2504 	mov	b,r7
      003091 12 5E 3E         [24] 2505 	lcall	__gptrget
      003094 FA               [12] 2506 	mov	r2,a
      003095 7F 00            [12] 2507 	mov	r7,#0x00
      003097 ED               [12] 2508 	mov	a,r5
      003098 B5 02 06         [24] 2509 	cjne	a,ar2,00161$
      00309B EE               [12] 2510 	mov	a,r6
      00309C B5 07 02         [24] 2511 	cjne	a,ar7,00161$
      00309F 80 05            [24] 2512 	sjmp	00162$
      0030A1                       2513 00161$:
      0030A1 D0 07            [24] 2514 	pop	ar7
      0030A3 02 31 41         [24] 2515 	ljmp	00118$
      0030A6                       2516 00162$:
      0030A6 D0 07            [24] 2517 	pop	ar7
      0030A8                       2518 00103$:
                           0005D2  2519 	C$efm8_usbdch9.c$619$4$158 ==.
                                   2520 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:619: myUsbDevice.configurationValue = myUsbDevice.setup.wValue;
      0030A8 8D 03            [24] 2521 	mov	ar3,r5
      0030AA 90 01 EA         [24] 2522 	mov	dptr,#_myUsbDevice
      0030AD EB               [12] 2523 	mov	a,r3
      0030AE F0               [24] 2524 	movx	@dptr,a
                           0005D9  2525 	C$efm8_usbdch9.c$620$4$158 ==.
                                   2526 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:620: if (myUsbDevice.setup.wValue == myUsbDevice.configDescriptor->bConfigurationValue)
      0030AF 90 01 F0         [24] 2527 	mov	dptr,#(_myUsbDevice + 0x0006)
      0030B2 E0               [24] 2528 	movx	a,@dptr
      0030B3 FF               [12] 2529 	mov	r7,a
      0030B4 A3               [24] 2530 	inc	dptr
      0030B5 E0               [24] 2531 	movx	a,@dptr
      0030B6 FE               [12] 2532 	mov	r6,a
      0030B7 90 02 0F         [24] 2533 	mov	dptr,#(_myUsbDevice + 0x0025)
      0030BA E0               [24] 2534 	movx	a,@dptr
      0030BB FD               [12] 2535 	mov	r5,a
      0030BC A3               [24] 2536 	inc	dptr
      0030BD E0               [24] 2537 	movx	a,@dptr
      0030BE FC               [12] 2538 	mov	r4,a
      0030BF A3               [24] 2539 	inc	dptr
      0030C0 E0               [24] 2540 	movx	a,@dptr
      0030C1 FB               [12] 2541 	mov	r3,a
      0030C2 74 05            [12] 2542 	mov	a,#0x05
      0030C4 2D               [12] 2543 	add	a,r5
      0030C5 FD               [12] 2544 	mov	r5,a
      0030C6 E4               [12] 2545 	clr	a
      0030C7 3C               [12] 2546 	addc	a,r4
      0030C8 FC               [12] 2547 	mov	r4,a
      0030C9 8D 82            [24] 2548 	mov	dpl,r5
      0030CB 8C 83            [24] 2549 	mov	dph,r4
      0030CD 8B F0            [24] 2550 	mov	b,r3
      0030CF 12 5E 3E         [24] 2551 	lcall	__gptrget
      0030D2 FB               [12] 2552 	mov	r3,a
      0030D3 7A 00            [12] 2553 	mov	r2,#0x00
      0030D5 EF               [12] 2554 	mov	a,r7
      0030D6 B5 03 12         [24] 2555 	cjne	a,ar3,00102$
      0030D9 EE               [12] 2556 	mov	a,r6
      0030DA B5 02 0E         [24] 2557 	cjne	a,ar2,00102$
                           000607  2558 	C$efm8_usbdch9.c$622$5$159 ==.
                                   2559 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:622: USBD_ActivateAllEps(true);
      0030DD D2 F0            [12] 2560 	setb	b[0]
      0030DF 85 F0 20         [24] 2561 	mov	bits,b
      0030E2 12 32 42         [24] 2562 	lcall	_USBD_ActivateAllEps
                           00060F  2563 	C$efm8_usbdch9.c$623$5$159 ==.
                                   2564 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:623: USBD_SetUsbState(USBD_STATE_CONFIGURED);
      0030E5 75 82 06         [24] 2565 	mov	dpl,#0x06
      0030E8 12 2A 9D         [24] 2566 	lcall	_USBD_SetUsbState
      0030EB                       2567 00102$:
                           000615  2568 	C$efm8_usbdch9.c$625$4$158 ==.
                                   2569 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:625: retVal = USB_STATUS_OK;
      0030EB 7F 00            [12] 2570 	mov	r7,#0x00
      0030ED 80 52            [24] 2571 	sjmp	00118$
      0030EF                       2572 00115$:
                           000619  2573 	C$efm8_usbdch9.c$630$2$156 ==.
                                   2574 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:630: else if (myUsbDevice.state == USBD_STATE_CONFIGURED)
      0030EF BC 06 4F         [24] 2575 	cjne	r4,#0x06,00118$
                           00061C  2576 	C$efm8_usbdch9.c$632$3$160 ==.
                                   2577 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:632: if ((myUsbDevice.setup.wValue == 0)
      0030F2 ED               [12] 2578 	mov	a,r5
      0030F3 4E               [12] 2579 	orl	a,r6
      0030F4 60 26            [24] 2580 	jz	00109$
                           000620  2581 	C$efm8_usbdch9.c$633$3$160 ==.
                                   2582 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:633: || (myUsbDevice.setup.wValue == myUsbDevice.configDescriptor->bConfigurationValue))
      0030F6 90 02 0F         [24] 2583 	mov	dptr,#(_myUsbDevice + 0x0025)
      0030F9 E0               [24] 2584 	movx	a,@dptr
      0030FA FA               [12] 2585 	mov	r2,a
      0030FB A3               [24] 2586 	inc	dptr
      0030FC E0               [24] 2587 	movx	a,@dptr
      0030FD FB               [12] 2588 	mov	r3,a
      0030FE A3               [24] 2589 	inc	dptr
      0030FF E0               [24] 2590 	movx	a,@dptr
      003100 FC               [12] 2591 	mov	r4,a
      003101 74 05            [12] 2592 	mov	a,#0x05
      003103 2A               [12] 2593 	add	a,r2
      003104 FA               [12] 2594 	mov	r2,a
      003105 E4               [12] 2595 	clr	a
      003106 3B               [12] 2596 	addc	a,r3
      003107 FB               [12] 2597 	mov	r3,a
      003108 8A 82            [24] 2598 	mov	dpl,r2
      00310A 8B 83            [24] 2599 	mov	dph,r3
      00310C 8C F0            [24] 2600 	mov	b,r4
      00310E 12 5E 3E         [24] 2601 	lcall	__gptrget
      003111 FA               [12] 2602 	mov	r2,a
      003112 7C 00            [12] 2603 	mov	r4,#0x00
      003114 ED               [12] 2604 	mov	a,r5
      003115 B5 02 29         [24] 2605 	cjne	a,ar2,00118$
      003118 EE               [12] 2606 	mov	a,r6
      003119 B5 04 25         [24] 2607 	cjne	a,ar4,00118$
      00311C                       2608 00109$:
                           000646  2609 	C$efm8_usbdch9.c$635$4$161 ==.
                                   2610 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:635: myUsbDevice.configurationValue = myUsbDevice.setup.wValue;
      00311C 90 01 EA         [24] 2611 	mov	dptr,#_myUsbDevice
      00311F ED               [12] 2612 	mov	a,r5
      003120 F0               [24] 2613 	movx	@dptr,a
                           00064B  2614 	C$efm8_usbdch9.c$636$4$161 ==.
                                   2615 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:636: if (myUsbDevice.setup.wValue == 0)
      003121 90 01 F0         [24] 2616 	mov	dptr,#(_myUsbDevice + 0x0006)
      003124 E0               [24] 2617 	movx	a,@dptr
      003125 FD               [12] 2618 	mov	r5,a
      003126 A3               [24] 2619 	inc	dptr
      003127 E0               [24] 2620 	movx	a,@dptr
      003128 FE               [12] 2621 	mov	r6,a
      003129 4D               [12] 2622 	orl	a,r5
      00312A 70 0B            [24] 2623 	jnz	00107$
                           000656  2624 	C$efm8_usbdch9.c$638$5$162 ==.
                                   2625 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:638: USBD_SetUsbState(USBD_STATE_ADDRESSED);
      00312C 75 82 04         [24] 2626 	mov	dpl,#0x04
      00312F 12 2A 9D         [24] 2627 	lcall	_USBD_SetUsbState
                           00065C  2628 	C$efm8_usbdch9.c$639$5$162 ==.
                                   2629 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:639: USBD_AbortAllTransfers();
      003132 12 24 6D         [24] 2630 	lcall	_USBD_AbortAllTransfers
      003135 80 08            [24] 2631 	sjmp	00108$
      003137                       2632 00107$:
                           000661  2633 	C$efm8_usbdch9.c$644$5$163 ==.
                                   2634 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:644: USBD_ActivateAllEps(false);
      003137 C2 F0            [12] 2635 	clr	b[0]
      003139 85 F0 20         [24] 2636 	mov	bits,b
      00313C 12 32 42         [24] 2637 	lcall	_USBD_ActivateAllEps
      00313F                       2638 00108$:
                           000669  2639 	C$efm8_usbdch9.c$646$4$161 ==.
                                   2640 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:646: retVal = USB_STATUS_OK;
      00313F 7F 00            [12] 2641 	mov	r7,#0x00
      003141                       2642 00118$:
                           00066B  2643 	C$efm8_usbdch9.c$651$1$155 ==.
                                   2644 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:651: return retVal;
      003141 8F 82            [24] 2645 	mov	dpl,r7
                           00066D  2646 	C$efm8_usbdch9.c$652$1$155 ==.
                           00066D  2647 	XFefm8_usbdch9$SetConfiguration$0$0 ==.
      003143 22               [24] 2648 	ret
                                   2649 ;------------------------------------------------------------
                                   2650 ;Allocation info for local variables in function 'SetFeature'
                                   2651 ;------------------------------------------------------------
                                   2652 ;retVal                    Allocated to registers r7 
                                   2653 ;------------------------------------------------------------
                           00066E  2654 	Fefm8_usbdch9$SetFeature$0$0 ==.
                           00066E  2655 	C$efm8_usbdch9.c$660$1$155 ==.
                                   2656 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:660: static USB_Status_TypeDef SetFeature(void)
                                   2657 ;	-----------------------------------------
                                   2658 ;	 function SetFeature
                                   2659 ;	-----------------------------------------
      003144                       2660 _SetFeature:
                           00066E  2661 	C$efm8_usbdch9.c$662$1$155 ==.
                                   2662 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:662: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      003144 7F FF            [12] 2663 	mov	r7,#0xff
                           000670  2664 	C$efm8_usbdch9.c$664$1$165 ==.
                                   2665 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:664: if (myUsbDevice.setup.wLength == 0)
      003146 90 01 F4         [24] 2666 	mov	dptr,#(_myUsbDevice + 0x000a)
      003149 E0               [24] 2667 	movx	a,@dptr
      00314A FD               [12] 2668 	mov	r5,a
      00314B A3               [24] 2669 	inc	dptr
      00314C E0               [24] 2670 	movx	a,@dptr
      00314D FE               [12] 2671 	mov	r6,a
      00314E 4D               [12] 2672 	orl	a,r5
      00314F 60 03            [24] 2673 	jz	00182$
      003151 02 31 FC         [24] 2674 	ljmp	00134$
      003154                       2675 00182$:
                           00067E  2676 	C$efm8_usbdch9.c$666$2$166 ==.
                                   2677 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:666: switch (myUsbDevice.setup.bmRequestType.Recipient)
      003154 90 01 EE         [24] 2678 	mov	dptr,#(_myUsbDevice + 0x0004)
      003157 E0               [24] 2679 	movx	a,@dptr
      003158 54 1F            [12] 2680 	anl	a,#0x1f
      00315A FE               [12] 2681 	mov	r6,a
      00315B BE 02 02         [24] 2682 	cjne	r6,#0x02,00183$
      00315E 80 03            [24] 2683 	sjmp	00184$
      003160                       2684 00183$:
      003160 02 31 FC         [24] 2685 	ljmp	00134$
      003163                       2686 00184$:
                           00068D  2687 	C$efm8_usbdch9.c$682$3$167 ==.
                                   2688 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:682: if (((myUsbDevice.setup.wIndex & ~USB_EP_DIR_IN) == 0)
      003163 90 01 F2         [24] 2689 	mov	dptr,#(_myUsbDevice + 0x0008)
      003166 E0               [24] 2690 	movx	a,@dptr
      003167 FD               [12] 2691 	mov	r5,a
      003168 A3               [24] 2692 	inc	dptr
      003169 E0               [24] 2693 	movx	a,@dptr
      00316A FE               [12] 2694 	mov	r6,a
      00316B ED               [12] 2695 	mov	a,r5
      00316C 54 7F            [12] 2696 	anl	a,#0x7f
      00316E 70 11            [24] 2697 	jnz	00129$
      003170 EE               [12] 2698 	mov	a,r6
      003171 70 0E            [24] 2699 	jnz	00129$
                           00069D  2700 	C$efm8_usbdch9.c$683$3$167 ==.
                                   2701 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:683: && (myUsbDevice.state >= USBD_STATE_ADDRESSED))
      003173 90 01 EC         [24] 2702 	mov	dptr,#(_myUsbDevice + 0x0002)
      003176 E0               [24] 2703 	movx	a,@dptr
      003177 FC               [12] 2704 	mov	r4,a
      003178 BC 04 00         [24] 2705 	cjne	r4,#0x04,00187$
      00317B                       2706 00187$:
      00317B 40 04            [24] 2707 	jc	00129$
                           0006A7  2708 	C$efm8_usbdch9.c$685$4$168 ==.
                                   2709 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:685: retVal = USB_STATUS_OK;
      00317D 7F 00            [12] 2710 	mov	r7,#0x00
      00317F 80 7B            [24] 2711 	sjmp	00134$
      003181                       2712 00129$:
                           0006AB  2713 	C$efm8_usbdch9.c$687$3$167 ==.
                                   2714 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:687: else if ((((myUsbDevice.setup.wIndex) & ~USB_SETUP_DIR_D2H) < SLAB_USB_NUM_EPS_USED)
      003181 74 7F            [12] 2715 	mov	a,#0x7f
      003183 5D               [12] 2716 	anl	a,r5
      003184 FB               [12] 2717 	mov	r3,a
      003185 8E 04            [24] 2718 	mov	ar4,r6
      003187 C3               [12] 2719 	clr	c
      003188 EB               [12] 2720 	mov	a,r3
      003189 94 03            [12] 2721 	subb	a,#0x03
      00318B EC               [12] 2722 	mov	a,r4
      00318C 94 00            [12] 2723 	subb	a,#0x00
      00318E 50 6C            [24] 2724 	jnc	00134$
                           0006BA  2725 	C$efm8_usbdch9.c$688$3$167 ==.
                                   2726 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:688: && (myUsbDevice.setup.wValue == USB_FEATURE_ENDPOINT_HALT)
      003190 90 01 F0         [24] 2727 	mov	dptr,#(_myUsbDevice + 0x0006)
      003193 E0               [24] 2728 	movx	a,@dptr
      003194 FB               [12] 2729 	mov	r3,a
      003195 A3               [24] 2730 	inc	dptr
      003196 E0               [24] 2731 	movx	a,@dptr
      003197 FC               [12] 2732 	mov	r4,a
      003198 4B               [12] 2733 	orl	a,r3
      003199 70 61            [24] 2734 	jnz	00134$
                           0006C5  2735 	C$efm8_usbdch9.c$689$3$167 ==.
                                   2736 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:689: && (myUsbDevice.state == USBD_STATE_CONFIGURED))
      00319B 90 01 EC         [24] 2737 	mov	dptr,#(_myUsbDevice + 0x0002)
      00319E E0               [24] 2738 	movx	a,@dptr
      00319F FC               [12] 2739 	mov	r4,a
      0031A0 BC 06 59         [24] 2740 	cjne	r4,#0x06,00134$
                           0006CD  2741 	C$efm8_usbdch9.c$691$4$169 ==.
                                   2742 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:691: retVal = USB_STATUS_OK;
      0031A3 7F 00            [12] 2743 	mov	r7,#0x00
                           0006CF  2744 	C$efm8_usbdch9.c$692$4$169 ==.
                                   2745 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:692: USB_SetIndex((myUsbDevice.setup.wIndex & 0xFF) & ~USB_SETUP_DIR_D2H);
      0031A5 53 05 7F         [24] 2746 	anl	ar5,#0x7f
      0031A8 8D 82            [24] 2747 	mov	dpl,r5
      0031AA C0 07            [24] 2748 	push	ar7
      0031AC 12 3F F9         [24] 2749 	lcall	_USB_SetIndex
      0031AF D0 07            [24] 2750 	pop	ar7
                           0006DB  2751 	C$efm8_usbdch9.c$696$4$169 ==.
                                   2752 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:696: if ((myUsbDevice.setup.wIndex & 0xFF) & USB_EP_DIR_IN)
      0031B1 90 01 F2         [24] 2753 	mov	dptr,#(_myUsbDevice + 0x0008)
      0031B4 E0               [24] 2754 	movx	a,@dptr
      0031B5 FD               [12] 2755 	mov	r5,a
      0031B6 A3               [24] 2756 	inc	dptr
      0031B7 E0               [24] 2757 	movx	a,@dptr
      0031B8 FE               [12] 2758 	mov	r6,a
      0031B9 ED               [12] 2759 	mov	a,r5
      0031BA 30 E7 0B         [24] 2760 	jnb	acc.7,00109$
                           0006E7  2761 	C$efm8_usbdch9.c$698$6$171 ==.
                                   2762 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:698: USB_EpnInStall();
      0031BD 75 AE 11         [24] 2763 	mov	_USB0ADR,#0x11
      0031C0 75 AF 10         [24] 2764 	mov	_USB0DAT,#0x10
      0031C3                       2765 00102$:
      0031C3 E5 AE            [12] 2766 	mov	a,_USB0ADR
      0031C5 20 E7 FB         [24] 2767 	jb	acc.7,00102$
      0031C8                       2768 00109$:
                           0006F2  2769 	C$efm8_usbdch9.c$702$4$169 ==.
                                   2770 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:702: if (((myUsbDevice.setup.wIndex & 0xFF) & USB_EP_DIR_IN) == 0)
      0031C8 ED               [12] 2771 	mov	a,r5
      0031C9 20 E7 10         [24] 2772 	jb	acc.7,00120$
                           0006F6  2773 	C$efm8_usbdch9.c$704$6$174 ==.
                                   2774 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:704: USB_EpnOutStall();
      0031CC 75 AE 94         [24] 2775 	mov	_USB0ADR,#0x94
      0031CF                       2776 00110$:
      0031CF E5 AE            [12] 2777 	mov	a,_USB0ADR
      0031D1 20 E7 FB         [24] 2778 	jb	acc.7,00110$
      0031D4 43 AF 20         [24] 2779 	orl	_USB0DAT,#0x20
      0031D7                       2780 00113$:
      0031D7 E5 AE            [12] 2781 	mov	a,_USB0ADR
      0031D9 20 E7 FB         [24] 2782 	jb	acc.7,00113$
      0031DC                       2783 00120$:
                           000706  2784 	C$efm8_usbdch9.c$709$4$169 ==.
                                   2785 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:709: switch (myUsbDevice.setup.wIndex & 0xFF)
      0031DC 7E 00            [12] 2786 	mov	r6,#0x00
      0031DE BD 01 05         [24] 2787 	cjne	r5,#0x01,00198$
      0031E1 BE 00 02         [24] 2788 	cjne	r6,#0x00,00198$
      0031E4 80 08            [24] 2789 	sjmp	00121$
      0031E6                       2790 00198$:
                           000710  2791 	C$efm8_usbdch9.c$712$5$177 ==.
                                   2792 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:712: case (USB_EP_DIR_OUT | 1):
      0031E6 BD 81 13         [24] 2793 	cjne	r5,#0x81,00134$
      0031E9 BE 00 10         [24] 2794 	cjne	r6,#0x00,00134$
      0031EC 80 08            [24] 2795 	sjmp	00122$
      0031EE                       2796 00121$:
                           000718  2797 	C$efm8_usbdch9.c$713$5$177 ==.
                                   2798 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:713: myUsbDevice.ep1out.state = D_EP_HALT;
      0031EE 90 02 0A         [24] 2799 	mov	dptr,#(_myUsbDevice + 0x0020)
      0031F1 74 06            [12] 2800 	mov	a,#0x06
      0031F3 F0               [24] 2801 	movx	@dptr,a
                           00071E  2802 	C$efm8_usbdch9.c$714$5$177 ==.
                                   2803 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:714: break;
                           00071E  2804 	C$efm8_usbdch9.c$727$5$177 ==.
                                   2805 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:727: case (USB_EP_DIR_IN | 1):
      0031F4 80 06            [24] 2806 	sjmp	00134$
      0031F6                       2807 00122$:
                           000720  2808 	C$efm8_usbdch9.c$728$5$177 ==.
                                   2809 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:728: myUsbDevice.ep1in.state = D_EP_HALT;
      0031F6 90 02 03         [24] 2810 	mov	dptr,#(_myUsbDevice + 0x0019)
      0031F9 74 06            [12] 2811 	mov	a,#0x06
      0031FB F0               [24] 2812 	movx	@dptr,a
                           000726  2813 	C$efm8_usbdch9.c$743$1$165 ==.
                                   2814 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:743: }
      0031FC                       2815 00134$:
                           000726  2816 	C$efm8_usbdch9.c$746$1$165 ==.
                                   2817 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:746: return retVal;
      0031FC 8F 82            [24] 2818 	mov	dpl,r7
                           000728  2819 	C$efm8_usbdch9.c$747$1$165 ==.
                           000728  2820 	XFefm8_usbdch9$SetFeature$0$0 ==.
      0031FE 22               [24] 2821 	ret
                                   2822 ;------------------------------------------------------------
                                   2823 ;Allocation info for local variables in function 'SetInterface'
                                   2824 ;------------------------------------------------------------
                                   2825 ;retVal                    Allocated to registers r7 
                                   2826 ;interface                 Allocated to registers r5 
                                   2827 ;altSetting                Allocated to registers r4 
                                   2828 ;------------------------------------------------------------
                           000729  2829 	Fefm8_usbdch9$SetInterface$0$0 ==.
                           000729  2830 	C$efm8_usbdch9.c$755$1$165 ==.
                                   2831 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:755: static USB_Status_TypeDef SetInterface(void)
                                   2832 ;	-----------------------------------------
                                   2833 ;	 function SetInterface
                                   2834 ;	-----------------------------------------
      0031FF                       2835 _SetInterface:
                           000729  2836 	C$efm8_usbdch9.c$757$1$165 ==.
                                   2837 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:757: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
      0031FF 7F FF            [12] 2838 	mov	r7,#0xff
                           00072B  2839 	C$efm8_usbdch9.c$758$1$179 ==.
                                   2840 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:758: uint8_t interface = (uint8_t)myUsbDevice.setup.wIndex;
      003201 90 01 F2         [24] 2841 	mov	dptr,#(_myUsbDevice + 0x0008)
      003204 E0               [24] 2842 	movx	a,@dptr
      003205 FD               [12] 2843 	mov	r5,a
      003206 A3               [24] 2844 	inc	dptr
      003207 E0               [24] 2845 	movx	a,@dptr
                           000732  2846 	C$efm8_usbdch9.c$759$1$179 ==.
                                   2847 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:759: uint8_t altSetting = (uint8_t)myUsbDevice.setup.wValue;
      003208 90 01 F0         [24] 2848 	mov	dptr,#(_myUsbDevice + 0x0006)
      00320B E0               [24] 2849 	movx	a,@dptr
      00320C FC               [12] 2850 	mov	r4,a
      00320D A3               [24] 2851 	inc	dptr
      00320E E0               [24] 2852 	movx	a,@dptr
      00320F FE               [12] 2853 	mov	r6,a
                           00073A  2854 	C$efm8_usbdch9.c$761$1$179 ==.
                                   2855 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:761: if ((interface < SLAB_USB_NUM_INTERFACES)
      003210 BD 01 00         [24] 2856 	cjne	r5,#0x01,00124$
      003213                       2857 00124$:
      003213 50 2A            [24] 2858 	jnc	00102$
                           00073F  2859 	C$efm8_usbdch9.c$762$1$179 ==.
                                   2860 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:762: && (myUsbDevice.state == USBD_STATE_CONFIGURED)
      003215 90 01 EC         [24] 2861 	mov	dptr,#(_myUsbDevice + 0x0002)
      003218 E0               [24] 2862 	movx	a,@dptr
      003219 FE               [12] 2863 	mov	r6,a
      00321A BE 06 22         [24] 2864 	cjne	r6,#0x06,00102$
                           000747  2865 	C$efm8_usbdch9.c$763$1$179 ==.
                                   2866 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:763: && (myUsbDevice.setup.wLength == 0)
      00321D 90 01 F4         [24] 2867 	mov	dptr,#(_myUsbDevice + 0x000a)
      003220 E0               [24] 2868 	movx	a,@dptr
      003221 FD               [12] 2869 	mov	r5,a
      003222 A3               [24] 2870 	inc	dptr
      003223 E0               [24] 2871 	movx	a,@dptr
      003224 FE               [12] 2872 	mov	r6,a
      003225 4D               [12] 2873 	orl	a,r5
      003226 70 17            [24] 2874 	jnz	00102$
                           000752  2875 	C$efm8_usbdch9.c$765$1$179 ==.
                                   2876 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:765: && (altSetting == 0)
      003228 EC               [12] 2877 	mov	a,r4
      003229 70 14            [24] 2878 	jnz	00102$
                           000755  2879 	C$efm8_usbdch9.c$767$1$179 ==.
                                   2880 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:767: && (myUsbDevice.setup.bmRequestType.Recipient == USB_SETUP_RECIPIENT_INTERFACE))
      00322B 90 01 EE         [24] 2881 	mov	dptr,#(_myUsbDevice + 0x0004)
      00322E E0               [24] 2882 	movx	a,@dptr
      00322F 54 1F            [12] 2883 	anl	a,#0x1f
      003231 FE               [12] 2884 	mov	r6,a
      003232 BE 01 0A         [24] 2885 	cjne	r6,#0x01,00102$
                           00075F  2886 	C$efm8_usbdch9.c$778$2$180 ==.
                                   2887 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:778: USBD_ActivateAllEps(false);
      003235 C2 F0            [12] 2888 	clr	b[0]
      003237 85 F0 20         [24] 2889 	mov	bits,b
      00323A 12 32 42         [24] 2890 	lcall	_USBD_ActivateAllEps
                           000767  2891 	C$efm8_usbdch9.c$780$2$180 ==.
                                   2892 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:780: retVal = USB_STATUS_OK;
      00323D 7F 00            [12] 2893 	mov	r7,#0x00
      00323F                       2894 00102$:
                           000769  2895 	C$efm8_usbdch9.c$784$1$179 ==.
                                   2896 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:784: return retVal;
      00323F 8F 82            [24] 2897 	mov	dpl,r7
                           00076B  2898 	C$efm8_usbdch9.c$785$1$179 ==.
                           00076B  2899 	XFefm8_usbdch9$SetInterface$0$0 ==.
      003241 22               [24] 2900 	ret
                                   2901 ;------------------------------------------------------------
                                   2902 ;Allocation info for local variables in function 'USBD_ActivateAllEps'
                                   2903 ;------------------------------------------------------------
                                   2904 ;forceIdle                 Allocated to registers b0 
                                   2905 ;------------------------------------------------------------
                           00076C  2906 	Fefm8_usbdch9$USBD_ActivateAllEps$0$0 ==.
                           00076C  2907 	C$efm8_usbdch9.c$796$1$179 ==.
                                   2908 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:796: static void USBD_ActivateAllEps(bool forceIdle)
                                   2909 ;	-----------------------------------------
                                   2910 ;	 function USBD_ActivateAllEps
                                   2911 ;	-----------------------------------------
      003242                       2912 _USBD_ActivateAllEps:
                           00076C  2913 	C$efm8_usbdch9.c$798$1$182 ==.
                                   2914 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:798: if (forceIdle == true)
      003242 A2 00            [12] 2915 	mov	c,b0
      003244 E4               [12] 2916 	clr	a
      003245 33               [12] 2917 	rlc	a
      003246 FF               [12] 2918 	mov	r7,a
      003247 BF 01 0A         [24] 2919 	cjne	r7,#0x01,00102$
                           000774  2920 	C$efm8_usbdch9.c$801$2$183 ==.
                                   2921 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:801: myUsbDevice.ep1in.state = D_EP_IDLE;
      00324A 90 02 03         [24] 2922 	mov	dptr,#(_myUsbDevice + 0x0019)
      00324D 74 01            [12] 2923 	mov	a,#0x01
      00324F F0               [24] 2924 	movx	@dptr,a
                           00077A  2925 	C$efm8_usbdch9.c$810$2$183 ==.
                                   2926 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:810: myUsbDevice.ep1out.state = D_EP_IDLE;
      003250 90 02 0A         [24] 2927 	mov	dptr,#(_myUsbDevice + 0x0020)
      003253 F0               [24] 2928 	movx	@dptr,a
      003254                       2929 00102$:
                           00077E  2930 	C$efm8_usbdch9.c$821$1$182 ==.
                                   2931 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:821: USB_ActivateEp(1,                                                   // ep
      003254 74 40            [12] 2932 	mov	a,#0x40
      003256 C0 E0            [24] 2933 	push	acc
      003258 E4               [12] 2934 	clr	a
      003259 C0 E0            [24] 2935 	push	acc
      00325B D2 F0            [12] 2936 	setb	b[0]
      00325D D2 F1            [12] 2937 	setb	b[1]
      00325F C2 F2            [12] 2938 	clr	b[2]
      003261 85 F0 20         [24] 2939 	mov	bits,b
      003264 75 82 01         [24] 2940 	mov	dpl,#0x01
      003267 12 41 27         [24] 2941 	lcall	_USB_ActivateEp
      00326A 15 81            [12] 2942 	dec	sp
      00326C 15 81            [12] 2943 	dec	sp
                           000798  2944 	C$efm8_usbdch9.c$842$1$182 ==.
                                   2945 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:842: USB_ActivateEp(1,                                                   // ep
      00326E 74 40            [12] 2946 	mov	a,#0x40
      003270 C0 E0            [24] 2947 	push	acc
      003272 E4               [12] 2948 	clr	a
      003273 C0 E0            [24] 2949 	push	acc
      003275 C2 F0            [12] 2950 	clr	b[0]
      003277 D2 F1            [12] 2951 	setb	b[1]
      003279 C2 F2            [12] 2952 	clr	b[2]
      00327B 85 F0 20         [24] 2953 	mov	bits,b
      00327E 75 82 01         [24] 2954 	mov	dpl,#0x01
      003281 12 41 27         [24] 2955 	lcall	_USB_ActivateEp
      003284 15 81            [12] 2956 	dec	sp
      003286 15 81            [12] 2957 	dec	sp
                           0007B2  2958 	C$efm8_usbdch9.c$862$1$182 ==.
                           0007B2  2959 	XFefm8_usbdch9$USBD_ActivateAllEps$0$0 ==.
      003288 22               [24] 2960 	ret
                                   2961 ;------------------------------------------------------------
                                   2962 ;Allocation info for local variables in function 'EP0_Write'
                                   2963 ;------------------------------------------------------------
                                   2964 ;numBytes                  Allocated to stack - _bp -4
                                   2965 ;dat                       Allocated to registers r5 r6 r7 
                                   2966 ;------------------------------------------------------------
                           0007B3  2967 	Fefm8_usbdch9$EP0_Write$0$0 ==.
                           0007B3  2968 	C$efm8_usbdch9.c$871$1$182 ==.
                                   2969 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:871: static void EP0_Write(uint8_t *dat, uint16_t numBytes)
                                   2970 ;	-----------------------------------------
                                   2971 ;	 function EP0_Write
                                   2972 ;	-----------------------------------------
      003289                       2973 _EP0_Write:
      003289 C0 1B            [24] 2974 	push	_bp
      00328B 85 81 1B         [24] 2975 	mov	_bp,sp
      00328E AD 82            [24] 2976 	mov	r5,dpl
      003290 AE 83            [24] 2977 	mov	r6,dph
      003292 AF F0            [24] 2978 	mov	r7,b
                           0007BE  2979 	C$efm8_usbdch9.c$873$1$185 ==.
                                   2980 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:873: if (myUsbDevice.ep0.state == D_EP_IDLE)
      003294 90 01 FC         [24] 2981 	mov	dptr,#(_myUsbDevice + 0x0012)
      003297 E0               [24] 2982 	movx	a,@dptr
      003298 FC               [12] 2983 	mov	r4,a
      003299 BC 01 24         [24] 2984 	cjne	r4,#0x01,00103$
                           0007C6  2985 	C$efm8_usbdch9.c$875$2$186 ==.
                                   2986 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:875: myUsbDevice.ep0.buf = (uint8_t *)dat;
      00329C 90 01 F7         [24] 2987 	mov	dptr,#(_myUsbDevice + 0x000d)
      00329F ED               [12] 2988 	mov	a,r5
      0032A0 F0               [24] 2989 	movx	@dptr,a
      0032A1 EE               [12] 2990 	mov	a,r6
      0032A2 A3               [24] 2991 	inc	dptr
      0032A3 F0               [24] 2992 	movx	@dptr,a
      0032A4 EF               [12] 2993 	mov	a,r7
      0032A5 A3               [24] 2994 	inc	dptr
      0032A6 F0               [24] 2995 	movx	@dptr,a
                           0007D1  2996 	C$efm8_usbdch9.c$876$2$186 ==.
                                   2997 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:876: myUsbDevice.ep0.remaining = numBytes;
      0032A7 90 01 FA         [24] 2998 	mov	dptr,#(_myUsbDevice + 0x0010)
      0032AA E5 1B            [12] 2999 	mov	a,_bp
      0032AC 24 FC            [12] 3000 	add	a,#0xfc
      0032AE F8               [12] 3001 	mov	r0,a
      0032AF E6               [12] 3002 	mov	a,@r0
      0032B0 F0               [24] 3003 	movx	@dptr,a
      0032B1 08               [12] 3004 	inc	r0
      0032B2 E6               [12] 3005 	mov	a,@r0
      0032B3 A3               [24] 3006 	inc	dptr
      0032B4 F0               [24] 3007 	movx	@dptr,a
                           0007DF  3008 	C$efm8_usbdch9.c$877$2$186 ==.
                                   3009 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:877: myUsbDevice.ep0.state = D_EP_TRANSMITTING;
      0032B5 90 01 FC         [24] 3010 	mov	dptr,#(_myUsbDevice + 0x0012)
      0032B8 74 02            [12] 3011 	mov	a,#0x02
      0032BA F0               [24] 3012 	movx	@dptr,a
                           0007E5  3013 	C$efm8_usbdch9.c$878$2$186 ==.
                                   3014 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:878: myUsbDevice.ep0.misc.c = 0;
      0032BB 90 01 FD         [24] 3015 	mov	dptr,#(_myUsbDevice + 0x0013)
      0032BE E4               [12] 3016 	clr	a
      0032BF F0               [24] 3017 	movx	@dptr,a
      0032C0                       3018 00103$:
      0032C0 D0 1B            [24] 3019 	pop	_bp
                           0007EC  3020 	C$efm8_usbdch9.c$880$1$185 ==.
                           0007EC  3021 	XFefm8_usbdch9$EP0_Write$0$0 ==.
      0032C2 22               [24] 3022 	ret
                                   3023 	.area CSEG    (CODE)
                                   3024 	.area CONST   (CODE)
                           000000  3025 G$txZero$0$0 == .
      005EBB                       3026 _txZero:
      005EBB                       3027 	.ds 2
                                   3028 	.area XINIT   (CODE)
                                   3029 	.area CABS    (ABS,CODE)
