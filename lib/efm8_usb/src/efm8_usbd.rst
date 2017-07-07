                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module efm8_usbd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _forceModuleLoad_usbint
                                     12 	.globl _USB_AbortOutEp
                                     13 	.globl _USB_AbortInEp
                                     14 	.globl _USB_IsSuspended
                                     15 	.globl _USB_SetIndex
                                     16 	.globl _USB_SuspendOscillator
                                     17 	.globl _USB_IsPrefetchEnabled
                                     18 	.globl _USB_IsRegulatorEnabled
                                     19 	.globl _USB_GetIntsEnabled
                                     20 	.globl _USB_WriteFIFO
                                     21 	.globl _USBD_DeviceStateChangeCb
                                     22 	.globl _UART1FCN1_TFRQ
                                     23 	.globl _UART1FCN1_TXNF
                                     24 	.globl _UART1FCN1_TXHOLD
                                     25 	.globl _UART1FCN1_TIE
                                     26 	.globl _UART1FCN1_RFRQ
                                     27 	.globl _UART1FCN1_RXTO1
                                     28 	.globl _UART1FCN1_RXTO0
                                     29 	.globl _UART1FCN1_RIE
                                     30 	.globl _TMR4CN0_TF4H
                                     31 	.globl _TMR4CN0_TF4L
                                     32 	.globl _TMR4CN0_TF4LEN
                                     33 	.globl _TMR4CN0_TF4CEN
                                     34 	.globl _TMR4CN0_T4SPLIT
                                     35 	.globl _TMR4CN0_TR4
                                     36 	.globl _TMR4CN0_T4XCLK1
                                     37 	.globl _TMR4CN0_T4XCLK0
                                     38 	.globl _TMR2CN0_TF2H
                                     39 	.globl _TMR2CN0_TF2L
                                     40 	.globl _TMR2CN0_TF2LEN
                                     41 	.globl _TMR2CN0_TF2CEN
                                     42 	.globl _TMR2CN0_T2SPLIT
                                     43 	.globl _TMR2CN0_TR2
                                     44 	.globl _TMR2CN0_T2XCLK1
                                     45 	.globl _TMR2CN0_T2XCLK0
                                     46 	.globl _TCON_TF1
                                     47 	.globl _TCON_TR1
                                     48 	.globl _TCON_TF0
                                     49 	.globl _TCON_TR0
                                     50 	.globl _TCON_IE1
                                     51 	.globl _TCON_IT1
                                     52 	.globl _TCON_IE0
                                     53 	.globl _TCON_IT0
                                     54 	.globl _SPI0CN0_SPIF
                                     55 	.globl _SPI0CN0_WCOL
                                     56 	.globl _SPI0CN0_MODF
                                     57 	.globl _SPI0CN0_RXOVRN
                                     58 	.globl _SPI0CN0_NSSMD1
                                     59 	.globl _SPI0CN0_NSSMD0
                                     60 	.globl _SPI0CN0_TXNF
                                     61 	.globl _SPI0CN0_SPIEN
                                     62 	.globl _SMB0CN0_MASTER
                                     63 	.globl _SMB0CN0_TXMODE
                                     64 	.globl _SMB0CN0_STA
                                     65 	.globl _SMB0CN0_STO
                                     66 	.globl _SMB0CN0_ACKRQ
                                     67 	.globl _SMB0CN0_ARBLOST
                                     68 	.globl _SMB0CN0_ACK
                                     69 	.globl _SMB0CN0_SI
                                     70 	.globl _SCON1_OVR
                                     71 	.globl _SCON1_PERR
                                     72 	.globl _SCON1_REN
                                     73 	.globl _SCON1_TBX
                                     74 	.globl _SCON1_RBX
                                     75 	.globl _SCON1_TI
                                     76 	.globl _SCON1_RI
                                     77 	.globl _SCON0_SMODE
                                     78 	.globl _SCON0_MCE
                                     79 	.globl _SCON0_REN
                                     80 	.globl _SCON0_TB8
                                     81 	.globl _SCON0_RB8
                                     82 	.globl _SCON0_TI
                                     83 	.globl _SCON0_RI
                                     84 	.globl _PSW_CY
                                     85 	.globl _PSW_AC
                                     86 	.globl _PSW_F0
                                     87 	.globl _PSW_RS1
                                     88 	.globl _PSW_RS0
                                     89 	.globl _PSW_OV
                                     90 	.globl _PSW_F1
                                     91 	.globl _PSW_PARITY
                                     92 	.globl _PCA0CN0_CF
                                     93 	.globl _PCA0CN0_CR
                                     94 	.globl _PCA0CN0_CCF2
                                     95 	.globl _PCA0CN0_CCF1
                                     96 	.globl _PCA0CN0_CCF0
                                     97 	.globl _P3_B1
                                     98 	.globl _P3_B0
                                     99 	.globl _P2_B3
                                    100 	.globl _P2_B2
                                    101 	.globl _P2_B1
                                    102 	.globl _P2_B0
                                    103 	.globl _P1_B7
                                    104 	.globl _P1_B6
                                    105 	.globl _P1_B5
                                    106 	.globl _P1_B4
                                    107 	.globl _P1_B3
                                    108 	.globl _P1_B2
                                    109 	.globl _P1_B1
                                    110 	.globl _P1_B0
                                    111 	.globl _P0_B7
                                    112 	.globl _P0_B6
                                    113 	.globl _P0_B5
                                    114 	.globl _P0_B4
                                    115 	.globl _P0_B3
                                    116 	.globl _P0_B2
                                    117 	.globl _P0_B1
                                    118 	.globl _P0_B0
                                    119 	.globl _IP_PSPI0
                                    120 	.globl _IP_PT2
                                    121 	.globl _IP_PS0
                                    122 	.globl _IP_PT1
                                    123 	.globl _IP_PX1
                                    124 	.globl _IP_PT0
                                    125 	.globl _IP_PX0
                                    126 	.globl _IE_EA
                                    127 	.globl _IE_ESPI0
                                    128 	.globl _IE_ET2
                                    129 	.globl _IE_ES0
                                    130 	.globl _IE_ET1
                                    131 	.globl _IE_EX1
                                    132 	.globl _IE_ET0
                                    133 	.globl _IE_EX0
                                    134 	.globl _B_B7
                                    135 	.globl _B_B6
                                    136 	.globl _B_B5
                                    137 	.globl _B_B4
                                    138 	.globl _B_B3
                                    139 	.globl _B_B2
                                    140 	.globl _B_B1
                                    141 	.globl _B_B0
                                    142 	.globl _ADC0CN0_ADEN
                                    143 	.globl _ADC0CN0_ADBMEN
                                    144 	.globl _ADC0CN0_ADINT
                                    145 	.globl _ADC0CN0_ADBUSY
                                    146 	.globl _ADC0CN0_ADWINT
                                    147 	.globl _ADC0CN0_ADCM2
                                    148 	.globl _ADC0CN0_ADCM1
                                    149 	.globl _ADC0CN0_ADCM0
                                    150 	.globl _ACC_ACC7
                                    151 	.globl _ACC_ACC6
                                    152 	.globl _ACC_ACC5
                                    153 	.globl _ACC_ACC4
                                    154 	.globl _ACC_ACC3
                                    155 	.globl _ACC_ACC2
                                    156 	.globl _ACC_ACC1
                                    157 	.globl _ACC_ACC0
                                    158 	.globl __XPAGE
                                    159 	.globl _TMR4RL
                                    160 	.globl _TMR4
                                    161 	.globl _TMR3RL
                                    162 	.globl _TMR3
                                    163 	.globl _TMR2RL
                                    164 	.globl _TMR2
                                    165 	.globl _SBRL1
                                    166 	.globl _PCA0
                                    167 	.globl _PCA0CP2
                                    168 	.globl _PCA0CP1
                                    169 	.globl _PCA0CP0
                                    170 	.globl _DP
                                    171 	.globl _ADC0LT
                                    172 	.globl _ADC0
                                    173 	.globl _ADC0GT
                                    174 	.globl _XBR2
                                    175 	.globl _XBR1
                                    176 	.globl _XBR0
                                    177 	.globl _WDTCN
                                    178 	.globl _VDM0CN
                                    179 	.globl _USB0XCN
                                    180 	.globl _USB0DAT
                                    181 	.globl _USB0CF
                                    182 	.globl _USB0CDSTA
                                    183 	.globl _USB0CDCN
                                    184 	.globl _USB0CDCF
                                    185 	.globl _USB0AEC
                                    186 	.globl _USB0ADR
                                    187 	.globl _UART1LIN
                                    188 	.globl _UART1FCT
                                    189 	.globl _UART1FCN1
                                    190 	.globl _UART1FCN0
                                    191 	.globl _TMR4RLL
                                    192 	.globl _TMR4RLH
                                    193 	.globl _TMR4L
                                    194 	.globl _TMR4H
                                    195 	.globl _TMR4CN1
                                    196 	.globl _TMR4CN0
                                    197 	.globl _TMR3RLL
                                    198 	.globl _TMR3RLH
                                    199 	.globl _TMR3L
                                    200 	.globl _TMR3H
                                    201 	.globl _TMR3CN1
                                    202 	.globl _TMR3CN0
                                    203 	.globl _TMR2RLL
                                    204 	.globl _TMR2RLH
                                    205 	.globl _TMR2L
                                    206 	.globl _TMR2H
                                    207 	.globl _TMR2CN1
                                    208 	.globl _TMR2CN0
                                    209 	.globl _TMOD
                                    210 	.globl _TL1
                                    211 	.globl _TL0
                                    212 	.globl _TH1
                                    213 	.globl _TH0
                                    214 	.globl _TCON
                                    215 	.globl _SPI0FCT
                                    216 	.globl _SPI0FCN1
                                    217 	.globl _SPI0FCN0
                                    218 	.globl _SPI0DAT
                                    219 	.globl _SPI0CN0
                                    220 	.globl _SPI0CKR
                                    221 	.globl _SPI0CFG
                                    222 	.globl _SP
                                    223 	.globl _SMOD1
                                    224 	.globl _SMB0TC
                                    225 	.globl _SMB0RXLN
                                    226 	.globl _SMB0FCT
                                    227 	.globl _SMB0FCN1
                                    228 	.globl _SMB0FCN0
                                    229 	.globl _SMB0DAT
                                    230 	.globl _SMB0CN0
                                    231 	.globl _SMB0CF
                                    232 	.globl _SMB0ADR
                                    233 	.globl _SMB0ADM
                                    234 	.globl _SFRSTACK
                                    235 	.globl _SFRPGCN
                                    236 	.globl _SFRPAGE
                                    237 	.globl _SCON1
                                    238 	.globl _SCON0
                                    239 	.globl _SBUF1
                                    240 	.globl _SBUF0
                                    241 	.globl _SBRLL1
                                    242 	.globl _SBRLH1
                                    243 	.globl _SBCON1
                                    244 	.globl _RSTSRC
                                    245 	.globl _REVID
                                    246 	.globl _REG1CN
                                    247 	.globl _REG0CN
                                    248 	.globl _REF0CN
                                    249 	.globl _PSW
                                    250 	.globl _PSCTL
                                    251 	.globl _PRTDRV
                                    252 	.globl _PFE0CN
                                    253 	.globl _PCON1
                                    254 	.globl _PCON0
                                    255 	.globl _PCA0PWM
                                    256 	.globl _PCA0POL
                                    257 	.globl _PCA0MD
                                    258 	.globl _PCA0L
                                    259 	.globl _PCA0H
                                    260 	.globl _PCA0CPM2
                                    261 	.globl _PCA0CPM1
                                    262 	.globl _PCA0CPM0
                                    263 	.globl _PCA0CPL2
                                    264 	.globl _PCA0CPL1
                                    265 	.globl _PCA0CPL0
                                    266 	.globl _PCA0CPH2
                                    267 	.globl _PCA0CPH1
                                    268 	.globl _PCA0CPH0
                                    269 	.globl _PCA0CN0
                                    270 	.globl _PCA0CLR
                                    271 	.globl _PCA0CENT
                                    272 	.globl _P3MDOUT
                                    273 	.globl _P3MDIN
                                    274 	.globl _P3
                                    275 	.globl _P2SKIP
                                    276 	.globl _P2MDOUT
                                    277 	.globl _P2MDIN
                                    278 	.globl _P2MAT
                                    279 	.globl _P2MASK
                                    280 	.globl _P2
                                    281 	.globl _P1SKIP
                                    282 	.globl _P1MDOUT
                                    283 	.globl _P1MDIN
                                    284 	.globl _P1MAT
                                    285 	.globl _P1MASK
                                    286 	.globl _P1
                                    287 	.globl _P0SKIP
                                    288 	.globl _P0MDOUT
                                    289 	.globl _P0MDIN
                                    290 	.globl _P0MAT
                                    291 	.globl _P0MASK
                                    292 	.globl _P0
                                    293 	.globl _LFO0CN
                                    294 	.globl _IT01CF
                                    295 	.globl _IPH
                                    296 	.globl _IP
                                    297 	.globl _IE
                                    298 	.globl _I2C0STAT
                                    299 	.globl _I2C0SLAD
                                    300 	.globl _I2C0FCT
                                    301 	.globl _I2C0FCN1
                                    302 	.globl _I2C0FCN0
                                    303 	.globl _I2C0DOUT
                                    304 	.globl _I2C0DIN
                                    305 	.globl _I2C0CN0
                                    306 	.globl _HFOCN
                                    307 	.globl _HFO1CAL
                                    308 	.globl _HFO0CAL
                                    309 	.globl _FLKEY
                                    310 	.globl _EMI0CN
                                    311 	.globl _EIP2H
                                    312 	.globl _EIP2
                                    313 	.globl _EIP1H
                                    314 	.globl _EIP1
                                    315 	.globl _EIE2
                                    316 	.globl _EIE1
                                    317 	.globl _DPL
                                    318 	.globl _DPH
                                    319 	.globl _DEVICEID
                                    320 	.globl _DERIVID
                                    321 	.globl _CRC0ST
                                    322 	.globl _CRC0IN
                                    323 	.globl _CRC0FLIP
                                    324 	.globl _CRC0DAT
                                    325 	.globl _CRC0CNT
                                    326 	.globl _CRC0CN1
                                    327 	.globl _CRC0CN0
                                    328 	.globl _CMP1MX
                                    329 	.globl _CMP1MD
                                    330 	.globl _CMP1CN1
                                    331 	.globl _CMP1CN0
                                    332 	.globl _CMP0MX
                                    333 	.globl _CMP0MD
                                    334 	.globl _CMP0CN1
                                    335 	.globl _CMP0CN0
                                    336 	.globl _CLKSEL
                                    337 	.globl _CKCON1
                                    338 	.globl _CKCON0
                                    339 	.globl _B
                                    340 	.globl _ADC0TK
                                    341 	.globl _ADC0PWR
                                    342 	.globl _ADC0MX
                                    343 	.globl _ADC0LTL
                                    344 	.globl _ADC0LTH
                                    345 	.globl _ADC0L
                                    346 	.globl _ADC0H
                                    347 	.globl _ADC0GTL
                                    348 	.globl _ADC0GTH
                                    349 	.globl _ADC0CN1
                                    350 	.globl _ADC0CN0
                                    351 	.globl _ADC0CF
                                    352 	.globl _ADC0AC
                                    353 	.globl _ACC
                                    354 	.globl _myUsbDevice
                                    355 	.globl _USBD_AbortAllTransfers
                                    356 	.globl _USBD_AbortTransfer
                                    357 	.globl _USBD_Connect
                                    358 	.globl _USBD_Disconnect
                                    359 	.globl _USBD_EpIsBusy
                                    360 	.globl _USBD_GetUsbState
                                    361 	.globl _USBD_Init
                                    362 	.globl _USBD_Read
                                    363 	.globl _USBD_StallEp
                                    364 	.globl _USBD_Stop
                                    365 	.globl _USBD_Suspend
                                    366 	.globl _USBD_UnStallEp
                                    367 	.globl _USBD_Write
                                    368 	.globl _USBD_SetUsbState
                                    369 ;--------------------------------------------------------
                                    370 ; special function registers
                                    371 ;--------------------------------------------------------
                                    372 	.area RSEG    (ABS,DATA)
      000000                        373 	.org 0x0000
                           0000E0   374 G$ACC$0$0 == 0x00e0
                           0000E0   375 _ACC	=	0x00e0
                           0000B3   376 G$ADC0AC$0$0 == 0x00b3
                           0000B3   377 _ADC0AC	=	0x00b3
                           0000BC   378 G$ADC0CF$0$0 == 0x00bc
                           0000BC   379 _ADC0CF	=	0x00bc
                           0000E8   380 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   381 _ADC0CN0	=	0x00e8
                           0000B2   382 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   383 _ADC0CN1	=	0x00b2
                           0000C4   384 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   385 _ADC0GTH	=	0x00c4
                           0000C3   386 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   387 _ADC0GTL	=	0x00c3
                           0000BE   388 G$ADC0H$0$0 == 0x00be
                           0000BE   389 _ADC0H	=	0x00be
                           0000BD   390 G$ADC0L$0$0 == 0x00bd
                           0000BD   391 _ADC0L	=	0x00bd
                           0000C6   392 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   393 _ADC0LTH	=	0x00c6
                           0000C5   394 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   395 _ADC0LTL	=	0x00c5
                           0000BB   396 G$ADC0MX$0$0 == 0x00bb
                           0000BB   397 _ADC0MX	=	0x00bb
                           0000DF   398 G$ADC0PWR$0$0 == 0x00df
                           0000DF   399 _ADC0PWR	=	0x00df
                           0000B9   400 G$ADC0TK$0$0 == 0x00b9
                           0000B9   401 _ADC0TK	=	0x00b9
                           0000F0   402 G$B$0$0 == 0x00f0
                           0000F0   403 _B	=	0x00f0
                           00008E   404 G$CKCON0$0$0 == 0x008e
                           00008E   405 _CKCON0	=	0x008e
                           0000A6   406 G$CKCON1$0$0 == 0x00a6
                           0000A6   407 _CKCON1	=	0x00a6
                           0000A9   408 G$CLKSEL$0$0 == 0x00a9
                           0000A9   409 _CLKSEL	=	0x00a9
                           00009B   410 G$CMP0CN0$0$0 == 0x009b
                           00009B   411 _CMP0CN0	=	0x009b
                           000099   412 G$CMP0CN1$0$0 == 0x0099
                           000099   413 _CMP0CN1	=	0x0099
                           00009D   414 G$CMP0MD$0$0 == 0x009d
                           00009D   415 _CMP0MD	=	0x009d
                           00009F   416 G$CMP0MX$0$0 == 0x009f
                           00009F   417 _CMP0MX	=	0x009f
                           0000BF   418 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   419 _CMP1CN0	=	0x00bf
                           0000AC   420 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   421 _CMP1CN1	=	0x00ac
                           0000AB   422 G$CMP1MD$0$0 == 0x00ab
                           0000AB   423 _CMP1MD	=	0x00ab
                           0000AA   424 G$CMP1MX$0$0 == 0x00aa
                           0000AA   425 _CMP1MX	=	0x00aa
                           0000CE   426 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   427 _CRC0CN0	=	0x00ce
                           000086   428 G$CRC0CN1$0$0 == 0x0086
                           000086   429 _CRC0CN1	=	0x0086
                           0000D3   430 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   431 _CRC0CNT	=	0x00d3
                           0000DE   432 G$CRC0DAT$0$0 == 0x00de
                           0000DE   433 _CRC0DAT	=	0x00de
                           0000CF   434 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   435 _CRC0FLIP	=	0x00cf
                           0000DD   436 G$CRC0IN$0$0 == 0x00dd
                           0000DD   437 _CRC0IN	=	0x00dd
                           0000D2   438 G$CRC0ST$0$0 == 0x00d2
                           0000D2   439 _CRC0ST	=	0x00d2
                           0000AD   440 G$DERIVID$0$0 == 0x00ad
                           0000AD   441 _DERIVID	=	0x00ad
                           0000B5   442 G$DEVICEID$0$0 == 0x00b5
                           0000B5   443 _DEVICEID	=	0x00b5
                           000083   444 G$DPH$0$0 == 0x0083
                           000083   445 _DPH	=	0x0083
                           000082   446 G$DPL$0$0 == 0x0082
                           000082   447 _DPL	=	0x0082
                           0000E6   448 G$EIE1$0$0 == 0x00e6
                           0000E6   449 _EIE1	=	0x00e6
                           0000CE   450 G$EIE2$0$0 == 0x00ce
                           0000CE   451 _EIE2	=	0x00ce
                           0000F3   452 G$EIP1$0$0 == 0x00f3
                           0000F3   453 _EIP1	=	0x00f3
                           0000F5   454 G$EIP1H$0$0 == 0x00f5
                           0000F5   455 _EIP1H	=	0x00f5
                           0000F4   456 G$EIP2$0$0 == 0x00f4
                           0000F4   457 _EIP2	=	0x00f4
                           0000F6   458 G$EIP2H$0$0 == 0x00f6
                           0000F6   459 _EIP2H	=	0x00f6
                           0000E7   460 G$EMI0CN$0$0 == 0x00e7
                           0000E7   461 _EMI0CN	=	0x00e7
                           0000B7   462 G$FLKEY$0$0 == 0x00b7
                           0000B7   463 _FLKEY	=	0x00b7
                           0000C7   464 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   465 _HFO0CAL	=	0x00c7
                           0000D6   466 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   467 _HFO1CAL	=	0x00d6
                           0000EF   468 G$HFOCN$0$0 == 0x00ef
                           0000EF   469 _HFOCN	=	0x00ef
                           0000BA   470 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   471 _I2C0CN0	=	0x00ba
                           0000BC   472 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   473 _I2C0DIN	=	0x00bc
                           0000BB   474 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   475 _I2C0DOUT	=	0x00bb
                           0000AD   476 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   477 _I2C0FCN0	=	0x00ad
                           0000AB   478 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   479 _I2C0FCN1	=	0x00ab
                           0000F5   480 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   481 _I2C0FCT	=	0x00f5
                           0000BD   482 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   483 _I2C0SLAD	=	0x00bd
                           0000B9   484 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   485 _I2C0STAT	=	0x00b9
                           0000A8   486 G$IE$0$0 == 0x00a8
                           0000A8   487 _IE	=	0x00a8
                           0000B8   488 G$IP$0$0 == 0x00b8
                           0000B8   489 _IP	=	0x00b8
                           0000F2   490 G$IPH$0$0 == 0x00f2
                           0000F2   491 _IPH	=	0x00f2
                           0000E4   492 G$IT01CF$0$0 == 0x00e4
                           0000E4   493 _IT01CF	=	0x00e4
                           0000B1   494 G$LFO0CN$0$0 == 0x00b1
                           0000B1   495 _LFO0CN	=	0x00b1
                           000080   496 G$P0$0$0 == 0x0080
                           000080   497 _P0	=	0x0080
                           0000FE   498 G$P0MASK$0$0 == 0x00fe
                           0000FE   499 _P0MASK	=	0x00fe
                           0000FD   500 G$P0MAT$0$0 == 0x00fd
                           0000FD   501 _P0MAT	=	0x00fd
                           0000F1   502 G$P0MDIN$0$0 == 0x00f1
                           0000F1   503 _P0MDIN	=	0x00f1
                           0000A4   504 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   505 _P0MDOUT	=	0x00a4
                           0000D4   506 G$P0SKIP$0$0 == 0x00d4
                           0000D4   507 _P0SKIP	=	0x00d4
                           000090   508 G$P1$0$0 == 0x0090
                           000090   509 _P1	=	0x0090
                           0000EE   510 G$P1MASK$0$0 == 0x00ee
                           0000EE   511 _P1MASK	=	0x00ee
                           0000ED   512 G$P1MAT$0$0 == 0x00ed
                           0000ED   513 _P1MAT	=	0x00ed
                           0000F2   514 G$P1MDIN$0$0 == 0x00f2
                           0000F2   515 _P1MDIN	=	0x00f2
                           0000A5   516 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   517 _P1MDOUT	=	0x00a5
                           0000D5   518 G$P1SKIP$0$0 == 0x00d5
                           0000D5   519 _P1SKIP	=	0x00d5
                           0000A0   520 G$P2$0$0 == 0x00a0
                           0000A0   521 _P2	=	0x00a0
                           0000FC   522 G$P2MASK$0$0 == 0x00fc
                           0000FC   523 _P2MASK	=	0x00fc
                           0000FB   524 G$P2MAT$0$0 == 0x00fb
                           0000FB   525 _P2MAT	=	0x00fb
                           0000F3   526 G$P2MDIN$0$0 == 0x00f3
                           0000F3   527 _P2MDIN	=	0x00f3
                           0000A6   528 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   529 _P2MDOUT	=	0x00a6
                           0000CC   530 G$P2SKIP$0$0 == 0x00cc
                           0000CC   531 _P2SKIP	=	0x00cc
                           0000B0   532 G$P3$0$0 == 0x00b0
                           0000B0   533 _P3	=	0x00b0
                           0000F4   534 G$P3MDIN$0$0 == 0x00f4
                           0000F4   535 _P3MDIN	=	0x00f4
                           00009C   536 G$P3MDOUT$0$0 == 0x009c
                           00009C   537 _P3MDOUT	=	0x009c
                           00009E   538 G$PCA0CENT$0$0 == 0x009e
                           00009E   539 _PCA0CENT	=	0x009e
                           00009C   540 G$PCA0CLR$0$0 == 0x009c
                           00009C   541 _PCA0CLR	=	0x009c
                           0000D8   542 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   543 _PCA0CN0	=	0x00d8
                           0000FC   544 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   545 _PCA0CPH0	=	0x00fc
                           0000EA   546 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   547 _PCA0CPH1	=	0x00ea
                           0000EC   548 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   549 _PCA0CPH2	=	0x00ec
                           0000FB   550 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   551 _PCA0CPL0	=	0x00fb
                           0000E9   552 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   553 _PCA0CPL1	=	0x00e9
                           0000EB   554 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   555 _PCA0CPL2	=	0x00eb
                           0000DA   556 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   557 _PCA0CPM0	=	0x00da
                           0000DB   558 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   559 _PCA0CPM1	=	0x00db
                           0000DC   560 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   561 _PCA0CPM2	=	0x00dc
                           0000FA   562 G$PCA0H$0$0 == 0x00fa
                           0000FA   563 _PCA0H	=	0x00fa
                           0000F9   564 G$PCA0L$0$0 == 0x00f9
                           0000F9   565 _PCA0L	=	0x00f9
                           0000D9   566 G$PCA0MD$0$0 == 0x00d9
                           0000D9   567 _PCA0MD	=	0x00d9
                           000096   568 G$PCA0POL$0$0 == 0x0096
                           000096   569 _PCA0POL	=	0x0096
                           0000F7   570 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   571 _PCA0PWM	=	0x00f7
                           000087   572 G$PCON0$0$0 == 0x0087
                           000087   573 _PCON0	=	0x0087
                           00009A   574 G$PCON1$0$0 == 0x009a
                           00009A   575 _PCON1	=	0x009a
                           0000C1   576 G$PFE0CN$0$0 == 0x00c1
                           0000C1   577 _PFE0CN	=	0x00c1
                           0000F6   578 G$PRTDRV$0$0 == 0x00f6
                           0000F6   579 _PRTDRV	=	0x00f6
                           00008F   580 G$PSCTL$0$0 == 0x008f
                           00008F   581 _PSCTL	=	0x008f
                           0000D0   582 G$PSW$0$0 == 0x00d0
                           0000D0   583 _PSW	=	0x00d0
                           0000D1   584 G$REF0CN$0$0 == 0x00d1
                           0000D1   585 _REF0CN	=	0x00d1
                           0000C9   586 G$REG0CN$0$0 == 0x00c9
                           0000C9   587 _REG0CN	=	0x00c9
                           0000C6   588 G$REG1CN$0$0 == 0x00c6
                           0000C6   589 _REG1CN	=	0x00c6
                           0000B6   590 G$REVID$0$0 == 0x00b6
                           0000B6   591 _REVID	=	0x00b6
                           0000EF   592 G$RSTSRC$0$0 == 0x00ef
                           0000EF   593 _RSTSRC	=	0x00ef
                           000094   594 G$SBCON1$0$0 == 0x0094
                           000094   595 _SBCON1	=	0x0094
                           000096   596 G$SBRLH1$0$0 == 0x0096
                           000096   597 _SBRLH1	=	0x0096
                           000095   598 G$SBRLL1$0$0 == 0x0095
                           000095   599 _SBRLL1	=	0x0095
                           000099   600 G$SBUF0$0$0 == 0x0099
                           000099   601 _SBUF0	=	0x0099
                           000092   602 G$SBUF1$0$0 == 0x0092
                           000092   603 _SBUF1	=	0x0092
                           000098   604 G$SCON0$0$0 == 0x0098
                           000098   605 _SCON0	=	0x0098
                           0000C8   606 G$SCON1$0$0 == 0x00c8
                           0000C8   607 _SCON1	=	0x00c8
                           0000A7   608 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   609 _SFRPAGE	=	0x00a7
                           0000CF   610 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   611 _SFRPGCN	=	0x00cf
                           0000D7   612 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   613 _SFRSTACK	=	0x00d7
                           0000D6   614 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   615 _SMB0ADM	=	0x00d6
                           0000D7   616 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   617 _SMB0ADR	=	0x00d7
                           0000C1   618 G$SMB0CF$0$0 == 0x00c1
                           0000C1   619 _SMB0CF	=	0x00c1
                           0000C0   620 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   621 _SMB0CN0	=	0x00c0
                           0000C2   622 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   623 _SMB0DAT	=	0x00c2
                           0000C3   624 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   625 _SMB0FCN0	=	0x00c3
                           0000C4   626 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   627 _SMB0FCN1	=	0x00c4
                           0000EF   628 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   629 _SMB0FCT	=	0x00ef
                           0000C5   630 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   631 _SMB0RXLN	=	0x00c5
                           0000AC   632 G$SMB0TC$0$0 == 0x00ac
                           0000AC   633 _SMB0TC	=	0x00ac
                           000093   634 G$SMOD1$0$0 == 0x0093
                           000093   635 _SMOD1	=	0x0093
                           000081   636 G$SP$0$0 == 0x0081
                           000081   637 _SP	=	0x0081
                           0000A1   638 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   639 _SPI0CFG	=	0x00a1
                           0000A2   640 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   641 _SPI0CKR	=	0x00a2
                           0000F8   642 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   643 _SPI0CN0	=	0x00f8
                           0000A3   644 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   645 _SPI0DAT	=	0x00a3
                           00009A   646 G$SPI0FCN0$0$0 == 0x009a
                           00009A   647 _SPI0FCN0	=	0x009a
                           00009B   648 G$SPI0FCN1$0$0 == 0x009b
                           00009B   649 _SPI0FCN1	=	0x009b
                           0000F7   650 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   651 _SPI0FCT	=	0x00f7
                           000088   652 G$TCON$0$0 == 0x0088
                           000088   653 _TCON	=	0x0088
                           00008C   654 G$TH0$0$0 == 0x008c
                           00008C   655 _TH0	=	0x008c
                           00008D   656 G$TH1$0$0 == 0x008d
                           00008D   657 _TH1	=	0x008d
                           00008A   658 G$TL0$0$0 == 0x008a
                           00008A   659 _TL0	=	0x008a
                           00008B   660 G$TL1$0$0 == 0x008b
                           00008B   661 _TL1	=	0x008b
                           000089   662 G$TMOD$0$0 == 0x0089
                           000089   663 _TMOD	=	0x0089
                           0000C8   664 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   665 _TMR2CN0	=	0x00c8
                           0000FD   666 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   667 _TMR2CN1	=	0x00fd
                           0000CD   668 G$TMR2H$0$0 == 0x00cd
                           0000CD   669 _TMR2H	=	0x00cd
                           0000CC   670 G$TMR2L$0$0 == 0x00cc
                           0000CC   671 _TMR2L	=	0x00cc
                           0000CB   672 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   673 _TMR2RLH	=	0x00cb
                           0000CA   674 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   675 _TMR2RLL	=	0x00ca
                           000091   676 G$TMR3CN0$0$0 == 0x0091
                           000091   677 _TMR3CN0	=	0x0091
                           0000FE   678 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   679 _TMR3CN1	=	0x00fe
                           000095   680 G$TMR3H$0$0 == 0x0095
                           000095   681 _TMR3H	=	0x0095
                           000094   682 G$TMR3L$0$0 == 0x0094
                           000094   683 _TMR3L	=	0x0094
                           000093   684 G$TMR3RLH$0$0 == 0x0093
                           000093   685 _TMR3RLH	=	0x0093
                           000092   686 G$TMR3RLL$0$0 == 0x0092
                           000092   687 _TMR3RLL	=	0x0092
                           000098   688 G$TMR4CN0$0$0 == 0x0098
                           000098   689 _TMR4CN0	=	0x0098
                           0000FF   690 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   691 _TMR4CN1	=	0x00ff
                           0000A5   692 G$TMR4H$0$0 == 0x00a5
                           0000A5   693 _TMR4H	=	0x00a5
                           0000A4   694 G$TMR4L$0$0 == 0x00a4
                           0000A4   695 _TMR4L	=	0x00a4
                           0000A3   696 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   697 _TMR4RLH	=	0x00a3
                           0000A2   698 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   699 _TMR4RLL	=	0x00a2
                           00009D   700 G$UART1FCN0$0$0 == 0x009d
                           00009D   701 _UART1FCN0	=	0x009d
                           0000D8   702 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   703 _UART1FCN1	=	0x00d8
                           0000FA   704 G$UART1FCT$0$0 == 0x00fa
                           0000FA   705 _UART1FCT	=	0x00fa
                           00009E   706 G$UART1LIN$0$0 == 0x009e
                           00009E   707 _UART1LIN	=	0x009e
                           0000AE   708 G$USB0ADR$0$0 == 0x00ae
                           0000AE   709 _USB0ADR	=	0x00ae
                           0000B2   710 G$USB0AEC$0$0 == 0x00b2
                           0000B2   711 _USB0AEC	=	0x00b2
                           0000B6   712 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   713 _USB0CDCF	=	0x00b6
                           0000BE   714 G$USB0CDCN$0$0 == 0x00be
                           0000BE   715 _USB0CDCN	=	0x00be
                           0000BF   716 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   717 _USB0CDSTA	=	0x00bf
                           0000B5   718 G$USB0CF$0$0 == 0x00b5
                           0000B5   719 _USB0CF	=	0x00b5
                           0000AF   720 G$USB0DAT$0$0 == 0x00af
                           0000AF   721 _USB0DAT	=	0x00af
                           0000B3   722 G$USB0XCN$0$0 == 0x00b3
                           0000B3   723 _USB0XCN	=	0x00b3
                           0000FF   724 G$VDM0CN$0$0 == 0x00ff
                           0000FF   725 _VDM0CN	=	0x00ff
                           000097   726 G$WDTCN$0$0 == 0x0097
                           000097   727 _WDTCN	=	0x0097
                           0000E1   728 G$XBR0$0$0 == 0x00e1
                           0000E1   729 _XBR0	=	0x00e1
                           0000E2   730 G$XBR1$0$0 == 0x00e2
                           0000E2   731 _XBR1	=	0x00e2
                           0000E3   732 G$XBR2$0$0 == 0x00e3
                           0000E3   733 _XBR2	=	0x00e3
                           0000C3   734 G$ADC0GT$0$0 == 0x00c3
                           0000C3   735 _ADC0GT	=	0x00c3
                           0000BD   736 G$ADC0$0$0 == 0x00bd
                           0000BD   737 _ADC0	=	0x00bd
                           0000C5   738 G$ADC0LT$0$0 == 0x00c5
                           0000C5   739 _ADC0LT	=	0x00c5
                           000082   740 G$DP$0$0 == 0x0082
                           000082   741 _DP	=	0x0082
                           0000FB   742 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   743 _PCA0CP0	=	0x00fb
                           0000E9   744 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   745 _PCA0CP1	=	0x00e9
                           0000EB   746 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   747 _PCA0CP2	=	0x00eb
                           0000F9   748 G$PCA0$0$0 == 0x00f9
                           0000F9   749 _PCA0	=	0x00f9
                           000095   750 G$SBRL1$0$0 == 0x0095
                           000095   751 _SBRL1	=	0x0095
                           0000CC   752 G$TMR2$0$0 == 0x00cc
                           0000CC   753 _TMR2	=	0x00cc
                           0000CA   754 G$TMR2RL$0$0 == 0x00ca
                           0000CA   755 _TMR2RL	=	0x00ca
                           000094   756 G$TMR3$0$0 == 0x0094
                           000094   757 _TMR3	=	0x0094
                           000092   758 G$TMR3RL$0$0 == 0x0092
                           000092   759 _TMR3RL	=	0x0092
                           0000A4   760 G$TMR4$0$0 == 0x00a4
                           0000A4   761 _TMR4	=	0x00a4
                           0000A2   762 G$TMR4RL$0$0 == 0x00a2
                           0000A2   763 _TMR4RL	=	0x00a2
                           0000AA   764 G$_XPAGE$0$0 == 0x00aa
                           0000AA   765 __XPAGE	=	0x00aa
                                    766 ;--------------------------------------------------------
                                    767 ; special function bits
                                    768 ;--------------------------------------------------------
                                    769 	.area RSEG    (ABS,DATA)
      000000                        770 	.org 0x0000
                           0000E0   771 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   772 _ACC_ACC0	=	0x00e0
                           0000E1   773 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   774 _ACC_ACC1	=	0x00e1
                           0000E2   775 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   776 _ACC_ACC2	=	0x00e2
                           0000E3   777 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   778 _ACC_ACC3	=	0x00e3
                           0000E4   779 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   780 _ACC_ACC4	=	0x00e4
                           0000E5   781 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   782 _ACC_ACC5	=	0x00e5
                           0000E6   783 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   784 _ACC_ACC6	=	0x00e6
                           0000E7   785 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   786 _ACC_ACC7	=	0x00e7
                           0000E8   787 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   788 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   789 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   790 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   791 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   792 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   793 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   794 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   795 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   796 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   797 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   798 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   799 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   800 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   801 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   802 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   803 G$B_B0$0$0 == 0x00f0
                           0000F0   804 _B_B0	=	0x00f0
                           0000F1   805 G$B_B1$0$0 == 0x00f1
                           0000F1   806 _B_B1	=	0x00f1
                           0000F2   807 G$B_B2$0$0 == 0x00f2
                           0000F2   808 _B_B2	=	0x00f2
                           0000F3   809 G$B_B3$0$0 == 0x00f3
                           0000F3   810 _B_B3	=	0x00f3
                           0000F4   811 G$B_B4$0$0 == 0x00f4
                           0000F4   812 _B_B4	=	0x00f4
                           0000F5   813 G$B_B5$0$0 == 0x00f5
                           0000F5   814 _B_B5	=	0x00f5
                           0000F6   815 G$B_B6$0$0 == 0x00f6
                           0000F6   816 _B_B6	=	0x00f6
                           0000F7   817 G$B_B7$0$0 == 0x00f7
                           0000F7   818 _B_B7	=	0x00f7
                           0000A8   819 G$IE_EX0$0$0 == 0x00a8
                           0000A8   820 _IE_EX0	=	0x00a8
                           0000A9   821 G$IE_ET0$0$0 == 0x00a9
                           0000A9   822 _IE_ET0	=	0x00a9
                           0000AA   823 G$IE_EX1$0$0 == 0x00aa
                           0000AA   824 _IE_EX1	=	0x00aa
                           0000AB   825 G$IE_ET1$0$0 == 0x00ab
                           0000AB   826 _IE_ET1	=	0x00ab
                           0000AC   827 G$IE_ES0$0$0 == 0x00ac
                           0000AC   828 _IE_ES0	=	0x00ac
                           0000AD   829 G$IE_ET2$0$0 == 0x00ad
                           0000AD   830 _IE_ET2	=	0x00ad
                           0000AE   831 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   832 _IE_ESPI0	=	0x00ae
                           0000AF   833 G$IE_EA$0$0 == 0x00af
                           0000AF   834 _IE_EA	=	0x00af
                           0000B8   835 G$IP_PX0$0$0 == 0x00b8
                           0000B8   836 _IP_PX0	=	0x00b8
                           0000B9   837 G$IP_PT0$0$0 == 0x00b9
                           0000B9   838 _IP_PT0	=	0x00b9
                           0000BA   839 G$IP_PX1$0$0 == 0x00ba
                           0000BA   840 _IP_PX1	=	0x00ba
                           0000BB   841 G$IP_PT1$0$0 == 0x00bb
                           0000BB   842 _IP_PT1	=	0x00bb
                           0000BC   843 G$IP_PS0$0$0 == 0x00bc
                           0000BC   844 _IP_PS0	=	0x00bc
                           0000BD   845 G$IP_PT2$0$0 == 0x00bd
                           0000BD   846 _IP_PT2	=	0x00bd
                           0000BE   847 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   848 _IP_PSPI0	=	0x00be
                           000080   849 G$P0_B0$0$0 == 0x0080
                           000080   850 _P0_B0	=	0x0080
                           000081   851 G$P0_B1$0$0 == 0x0081
                           000081   852 _P0_B1	=	0x0081
                           000082   853 G$P0_B2$0$0 == 0x0082
                           000082   854 _P0_B2	=	0x0082
                           000083   855 G$P0_B3$0$0 == 0x0083
                           000083   856 _P0_B3	=	0x0083
                           000084   857 G$P0_B4$0$0 == 0x0084
                           000084   858 _P0_B4	=	0x0084
                           000085   859 G$P0_B5$0$0 == 0x0085
                           000085   860 _P0_B5	=	0x0085
                           000086   861 G$P0_B6$0$0 == 0x0086
                           000086   862 _P0_B6	=	0x0086
                           000087   863 G$P0_B7$0$0 == 0x0087
                           000087   864 _P0_B7	=	0x0087
                           000090   865 G$P1_B0$0$0 == 0x0090
                           000090   866 _P1_B0	=	0x0090
                           000091   867 G$P1_B1$0$0 == 0x0091
                           000091   868 _P1_B1	=	0x0091
                           000092   869 G$P1_B2$0$0 == 0x0092
                           000092   870 _P1_B2	=	0x0092
                           000093   871 G$P1_B3$0$0 == 0x0093
                           000093   872 _P1_B3	=	0x0093
                           000094   873 G$P1_B4$0$0 == 0x0094
                           000094   874 _P1_B4	=	0x0094
                           000095   875 G$P1_B5$0$0 == 0x0095
                           000095   876 _P1_B5	=	0x0095
                           000096   877 G$P1_B6$0$0 == 0x0096
                           000096   878 _P1_B6	=	0x0096
                           000097   879 G$P1_B7$0$0 == 0x0097
                           000097   880 _P1_B7	=	0x0097
                           0000A0   881 G$P2_B0$0$0 == 0x00a0
                           0000A0   882 _P2_B0	=	0x00a0
                           0000A1   883 G$P2_B1$0$0 == 0x00a1
                           0000A1   884 _P2_B1	=	0x00a1
                           0000A2   885 G$P2_B2$0$0 == 0x00a2
                           0000A2   886 _P2_B2	=	0x00a2
                           0000A3   887 G$P2_B3$0$0 == 0x00a3
                           0000A3   888 _P2_B3	=	0x00a3
                           0000B0   889 G$P3_B0$0$0 == 0x00b0
                           0000B0   890 _P3_B0	=	0x00b0
                           0000B1   891 G$P3_B1$0$0 == 0x00b1
                           0000B1   892 _P3_B1	=	0x00b1
                           0000D8   893 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   894 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   895 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   896 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   897 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   898 _PCA0CN0_CCF2	=	0x00da
                           0000DE   899 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   900 _PCA0CN0_CR	=	0x00de
                           0000DF   901 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   902 _PCA0CN0_CF	=	0x00df
                           0000D0   903 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   904 _PSW_PARITY	=	0x00d0
                           0000D1   905 G$PSW_F1$0$0 == 0x00d1
                           0000D1   906 _PSW_F1	=	0x00d1
                           0000D2   907 G$PSW_OV$0$0 == 0x00d2
                           0000D2   908 _PSW_OV	=	0x00d2
                           0000D3   909 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   910 _PSW_RS0	=	0x00d3
                           0000D4   911 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   912 _PSW_RS1	=	0x00d4
                           0000D5   913 G$PSW_F0$0$0 == 0x00d5
                           0000D5   914 _PSW_F0	=	0x00d5
                           0000D6   915 G$PSW_AC$0$0 == 0x00d6
                           0000D6   916 _PSW_AC	=	0x00d6
                           0000D7   917 G$PSW_CY$0$0 == 0x00d7
                           0000D7   918 _PSW_CY	=	0x00d7
                           000098   919 G$SCON0_RI$0$0 == 0x0098
                           000098   920 _SCON0_RI	=	0x0098
                           000099   921 G$SCON0_TI$0$0 == 0x0099
                           000099   922 _SCON0_TI	=	0x0099
                           00009A   923 G$SCON0_RB8$0$0 == 0x009a
                           00009A   924 _SCON0_RB8	=	0x009a
                           00009B   925 G$SCON0_TB8$0$0 == 0x009b
                           00009B   926 _SCON0_TB8	=	0x009b
                           00009C   927 G$SCON0_REN$0$0 == 0x009c
                           00009C   928 _SCON0_REN	=	0x009c
                           00009D   929 G$SCON0_MCE$0$0 == 0x009d
                           00009D   930 _SCON0_MCE	=	0x009d
                           00009F   931 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   932 _SCON0_SMODE	=	0x009f
                           0000C8   933 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   934 _SCON1_RI	=	0x00c8
                           0000C9   935 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   936 _SCON1_TI	=	0x00c9
                           0000CA   937 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   938 _SCON1_RBX	=	0x00ca
                           0000CB   939 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   940 _SCON1_TBX	=	0x00cb
                           0000CC   941 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   942 _SCON1_REN	=	0x00cc
                           0000CE   943 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   944 _SCON1_PERR	=	0x00ce
                           0000CF   945 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   946 _SCON1_OVR	=	0x00cf
                           0000C0   947 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   948 _SMB0CN0_SI	=	0x00c0
                           0000C1   949 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   950 _SMB0CN0_ACK	=	0x00c1
                           0000C2   951 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   952 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   953 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   954 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   955 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   956 _SMB0CN0_STO	=	0x00c4
                           0000C5   957 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   958 _SMB0CN0_STA	=	0x00c5
                           0000C6   959 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   960 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   961 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   962 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   963 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   964 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   965 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   966 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   967 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   968 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   969 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   970 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   971 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   972 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   973 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   974 _SPI0CN0_MODF	=	0x00fd
                           0000FE   975 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   976 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   977 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   978 _SPI0CN0_SPIF	=	0x00ff
                           000088   979 G$TCON_IT0$0$0 == 0x0088
                           000088   980 _TCON_IT0	=	0x0088
                           000089   981 G$TCON_IE0$0$0 == 0x0089
                           000089   982 _TCON_IE0	=	0x0089
                           00008A   983 G$TCON_IT1$0$0 == 0x008a
                           00008A   984 _TCON_IT1	=	0x008a
                           00008B   985 G$TCON_IE1$0$0 == 0x008b
                           00008B   986 _TCON_IE1	=	0x008b
                           00008C   987 G$TCON_TR0$0$0 == 0x008c
                           00008C   988 _TCON_TR0	=	0x008c
                           00008D   989 G$TCON_TF0$0$0 == 0x008d
                           00008D   990 _TCON_TF0	=	0x008d
                           00008E   991 G$TCON_TR1$0$0 == 0x008e
                           00008E   992 _TCON_TR1	=	0x008e
                           00008F   993 G$TCON_TF1$0$0 == 0x008f
                           00008F   994 _TCON_TF1	=	0x008f
                           0000C8   995 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   996 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   997 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   998 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   999 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA  1000 _TMR2CN0_TR2	=	0x00ca
                           0000CB  1001 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB  1002 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC  1003 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC  1004 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD  1005 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD  1006 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE  1007 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE  1008 _TMR2CN0_TF2L	=	0x00ce
                           0000CF  1009 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF  1010 _TMR2CN0_TF2H	=	0x00cf
                           000098  1011 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1012 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1013 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1014 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1015 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1016 _TMR4CN0_TR4	=	0x009a
                           00009B  1017 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1018 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1019 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1020 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1021 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1022 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1023 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1024 _TMR4CN0_TF4L	=	0x009e
                           00009F  1025 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1026 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1027 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1028 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1029 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1030 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1031 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1032 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1033 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1034 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1035 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1036 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1037 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1038 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1039 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1040 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1041 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1042 _UART1FCN1_TFRQ	=	0x00df
                                   1043 ;--------------------------------------------------------
                                   1044 ; overlayable register banks
                                   1045 ;--------------------------------------------------------
                                   1046 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1047 	.ds 8
                                   1048 ;--------------------------------------------------------
                                   1049 ; overlayable bit register bank
                                   1050 ;--------------------------------------------------------
                                   1051 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1052 bits:
      000020                       1053 	.ds 1
                           008000  1054 	b0 = bits[0]
                           008100  1055 	b1 = bits[1]
                           008200  1056 	b2 = bits[2]
                           008300  1057 	b3 = bits[3]
                           008400  1058 	b4 = bits[4]
                           008500  1059 	b5 = bits[5]
                           008600  1060 	b6 = bits[6]
                           008700  1061 	b7 = bits[7]
                                   1062 ;--------------------------------------------------------
                                   1063 ; internal ram data
                                   1064 ;--------------------------------------------------------
                                   1065 	.area DSEG    (DATA)
                                   1066 ;--------------------------------------------------------
                                   1067 ; overlayable items in internal ram 
                                   1068 ;--------------------------------------------------------
                                   1069 ;--------------------------------------------------------
                                   1070 ; indirectly addressable internal ram data
                                   1071 ;--------------------------------------------------------
                                   1072 	.area ISEG    (DATA)
                                   1073 ;--------------------------------------------------------
                                   1074 ; absolute internal ram data
                                   1075 ;--------------------------------------------------------
                                   1076 	.area IABS    (ABS,DATA)
                                   1077 	.area IABS    (ABS,DATA)
                                   1078 ;--------------------------------------------------------
                                   1079 ; bit data
                                   1080 ;--------------------------------------------------------
                                   1081 	.area BSEG    (BIT)
                                   1082 ;--------------------------------------------------------
                                   1083 ; paged external ram data
                                   1084 ;--------------------------------------------------------
                                   1085 	.area PSEG    (PAG,XDATA)
                                   1086 ;--------------------------------------------------------
                                   1087 ; external ram data
                                   1088 ;--------------------------------------------------------
                                   1089 	.area XSEG    (XDATA)
                           000000  1090 G$myUsbDevice$0$0==.
      0001EA                       1091 _myUsbDevice::
      0001EA                       1092 	.ds 43
                                   1093 ;--------------------------------------------------------
                                   1094 ; absolute external ram data
                                   1095 ;--------------------------------------------------------
                                   1096 	.area XABS    (ABS,XDATA)
                                   1097 ;--------------------------------------------------------
                                   1098 ; external initialized ram data
                                   1099 ;--------------------------------------------------------
                                   1100 	.area XISEG   (XDATA)
                                   1101 	.area HOME    (CODE)
                                   1102 	.area GSINIT0 (CODE)
                                   1103 	.area GSINIT1 (CODE)
                                   1104 	.area GSINIT2 (CODE)
                                   1105 	.area GSINIT3 (CODE)
                                   1106 	.area GSINIT4 (CODE)
                                   1107 	.area GSINIT5 (CODE)
                                   1108 	.area GSINIT  (CODE)
                                   1109 	.area GSFINAL (CODE)
                                   1110 	.area CSEG    (CODE)
                                   1111 ;--------------------------------------------------------
                                   1112 ; global & static initialisations
                                   1113 ;--------------------------------------------------------
                                   1114 	.area HOME    (CODE)
                                   1115 	.area GSINIT  (CODE)
                                   1116 	.area GSFINAL (CODE)
                                   1117 	.area GSINIT  (CODE)
                                   1118 ;--------------------------------------------------------
                                   1119 ; Home
                                   1120 ;--------------------------------------------------------
                                   1121 	.area HOME    (CODE)
                                   1122 	.area HOME    (CODE)
                                   1123 ;--------------------------------------------------------
                                   1124 ; code
                                   1125 ;--------------------------------------------------------
                                   1126 	.area CSEG    (CODE)
                                   1127 ;------------------------------------------------------------
                                   1128 ;Allocation info for local variables in function 'USBD_AbortAllTransfers'
                                   1129 ;------------------------------------------------------------
                                   1130 ;i                         Allocated to registers r6 
                                   1131 ;usbIntsEnabled            Allocated to registers b0 
                                   1132 ;SfrPageSave               Allocated to registers r7 
                                   1133 ;------------------------------------------------------------
                           000000  1134 	G$USBD_AbortAllTransfers$0$0 ==.
                           000000  1135 	C$efm8_usbd.c$48$0$0 ==.
                                   1136 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:48: void USBD_AbortAllTransfers(void)
                                   1137 ;	-----------------------------------------
                                   1138 ;	 function USBD_AbortAllTransfers
                                   1139 ;	-----------------------------------------
      00246D                       1140 _USBD_AbortAllTransfers:
                           000007  1141 	ar7 = 0x07
                           000006  1142 	ar6 = 0x06
                           000005  1143 	ar5 = 0x05
                           000004  1144 	ar4 = 0x04
                           000003  1145 	ar3 = 0x03
                           000002  1146 	ar2 = 0x02
                           000001  1147 	ar1 = 0x01
                           000000  1148 	ar0 = 0x00
                           000000  1149 	C$efm8_usbd.c$53$1$0 ==.
                                   1150 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:53: USB_SaveSfrPage();
      00246D AF A7            [24] 1151 	mov	r7,_SFRPAGE
                           000002  1152 	C$efm8_usbd.c$54$2$79 ==.
                                   1153 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:54: DISABLE_USB_INTS;
      00246F C0 07            [24] 1154 	push	ar7
      002471 12 41 E5         [24] 1155 	lcall	_USB_GetIntsEnabled
      002474 D0 07            [24] 1156 	pop	ar7
      002476 92 00            [24] 1157 	mov	b0,c
      002478 75 A7 10         [24] 1158 	mov	_SFRPAGE,#0x10
      00247B 53 CE FE         [24] 1159 	anl	_EIE2,#0xfe
                           000011  1160 	C$efm8_usbd.c$57$1$78 ==.
                                   1161 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:57: for (i = 1; i < SLAB_USB_NUM_EPS_USED; i++)
      00247E 7E 01            [12] 1162 	mov	r6,#0x01
      002480                       1163 00110$:
                           000013  1164 	C$efm8_usbd.c$59$2$81 ==.
                                   1165 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:59: USBD_AbortTransfer(i);
      002480 8E 82            [24] 1166 	mov	dpl,r6
      002482 C0 07            [24] 1167 	push	ar7
      002484 C0 06            [24] 1168 	push	ar6
      002486 C0 20            [24] 1169 	push	bits
      002488 12 24 A3         [24] 1170 	lcall	_USBD_AbortTransfer
      00248B D0 20            [24] 1171 	pop	bits
      00248D D0 06            [24] 1172 	pop	ar6
      00248F D0 07            [24] 1173 	pop	ar7
                           000024  1174 	C$efm8_usbd.c$57$1$78 ==.
                                   1175 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:57: for (i = 1; i < SLAB_USB_NUM_EPS_USED; i++)
      002491 0E               [12] 1176 	inc	r6
      002492 BE 03 00         [24] 1177 	cjne	r6,#0x03,00124$
      002495                       1178 00124$:
      002495 40 E9            [24] 1179 	jc	00110$
                           00002A  1180 	C$efm8_usbd.c$62$2$82 ==.
                                   1181 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:62: ENABLE_USB_INTS;
      002497 30 00 06         [24] 1182 	jnb	b0,00109$
      00249A 75 A7 10         [24] 1183 	mov	_SFRPAGE,#0x10
      00249D 43 CE 01         [24] 1184 	orl	_EIE2,#0x01
      0024A0                       1185 00109$:
                           000033  1186 	C$efm8_usbd.c$63$1$78 ==.
                                   1187 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:63: USB_RestoreSfrPage();
      0024A0 8F A7            [24] 1188 	mov	_SFRPAGE,r7
                           000035  1189 	C$efm8_usbd.c$64$1$78 ==.
                           000035  1190 	XG$USBD_AbortAllTransfers$0$0 ==.
      0024A2 22               [24] 1191 	ret
                                   1192 ;------------------------------------------------------------
                                   1193 ;Allocation info for local variables in function 'USBD_AbortTransfer'
                                   1194 ;------------------------------------------------------------
                                   1195 ;epAddr                    Allocated to registers r7 
                                   1196 ;ep                        Allocated to registers r3 r4 
                                   1197 ;retVal                    Allocated to registers r6 
                                   1198 ;usbIntsEnabled            Allocated to stack - _bp +1
                                   1199 ;SfrPageSave               Allocated to stack - _bp +2
                                   1200 ;------------------------------------------------------------
                           000036  1201 	G$USBD_AbortTransfer$0$0 ==.
                           000036  1202 	C$efm8_usbd.c$66$1$78 ==.
                                   1203 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:66: int8_t USBD_AbortTransfer(uint8_t epAddr)
                                   1204 ;	-----------------------------------------
                                   1205 ;	 function USBD_AbortTransfer
                                   1206 ;	-----------------------------------------
      0024A3                       1207 _USBD_AbortTransfer:
      0024A3 C0 1B            [24] 1208 	push	_bp
      0024A5 85 81 1B         [24] 1209 	mov	_bp,sp
      0024A8 05 81            [12] 1210 	inc	sp
      0024AA 05 81            [12] 1211 	inc	sp
      0024AC AF 82            [24] 1212 	mov	r7,dpl
                           000041  1213 	C$efm8_usbd.c$69$1$78 ==.
                                   1214 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:69: uint8_t retVal = USB_STATUS_OK;
      0024AE 7E 00            [12] 1215 	mov	r6,#0x00
                           000043  1216 	C$efm8_usbd.c$72$1$78 ==.
                                   1217 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:72: USB_SaveSfrPage();
      0024B0 A8 1B            [24] 1218 	mov	r0,_bp
      0024B2 08               [12] 1219 	inc	r0
      0024B3 08               [12] 1220 	inc	r0
      0024B4 A6 A7            [24] 1221 	mov	@r0,_SFRPAGE
                           000049  1222 	C$efm8_usbd.c$75$1$86 ==.
                                   1223 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:75: if ((epAddr == EP0) || (epAddr >= SLAB_USB_NUM_EPS_USED))
      0024B6 EF               [12] 1224 	mov	a,r7
      0024B7 60 05            [24] 1225 	jz	00109$
      0024B9 BF 03 00         [24] 1226 	cjne	r7,#0x03,00136$
      0024BC                       1227 00136$:
      0024BC 40 05            [24] 1228 	jc	00110$
      0024BE                       1229 00109$:
                           000051  1230 	C$efm8_usbd.c$78$2$87 ==.
                                   1231 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:78: retVal = USB_STATUS_ILLEGAL;
      0024BE 7E FC            [12] 1232 	mov	r6,#0xfc
      0024C0 02 25 56         [24] 1233 	ljmp	00111$
      0024C3                       1234 00110$:
                           000056  1235 	C$efm8_usbd.c$82$1$86 ==.
                                   1236 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:82: DISABLE_USB_INTS;
      0024C3 C0 06            [24] 1237 	push	ar6
      0024C5 C0 07            [24] 1238 	push	ar7
      0024C7 C0 06            [24] 1239 	push	ar6
      0024C9 12 41 E5         [24] 1240 	lcall	_USB_GetIntsEnabled
      0024CC D0 06            [24] 1241 	pop	ar6
      0024CE D0 07            [24] 1242 	pop	ar7
      0024D0 92 00            [24] 1243 	mov	b0,c
      0024D2 75 A7 10         [24] 1244 	mov	_SFRPAGE,#0x10
      0024D5 53 CE FE         [24] 1245 	anl	_EIE2,#0xfe
                           00006B  1246 	C$efm8_usbd.c$83$2$88 ==.
                                   1247 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:83: ep = GetEp(epAddr);
      0024D8 EF               [12] 1248 	mov	a,r7
      0024D9 75 F0 07         [24] 1249 	mov	b,#0x07
      0024DC A4               [48] 1250 	mul	ab
      0024DD AC F0            [24] 1251 	mov	r4,b
      0024DF 24 F7            [12] 1252 	add	a,#(_myUsbDevice + 0x000d)
      0024E1 FB               [12] 1253 	mov	r3,a
      0024E2 EC               [12] 1254 	mov	a,r4
      0024E3 34 01            [12] 1255 	addc	a,#((_myUsbDevice + 0x000d) >> 8)
      0024E5 FC               [12] 1256 	mov	r4,a
                           000079  1257 	C$efm8_usbd.c$87$2$88 ==.
                                   1258 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:87: if (ep->state != D_EP_IDLE)
      0024E6 74 05            [12] 1259 	mov	a,#0x05
      0024E8 2B               [12] 1260 	add	a,r3
      0024E9 FA               [12] 1261 	mov	r2,a
      0024EA E4               [12] 1262 	clr	a
      0024EB 3C               [12] 1263 	addc	a,r4
      0024EC FD               [12] 1264 	mov	r5,a
      0024ED 8A 82            [24] 1265 	mov	dpl,r2
      0024EF 8D 83            [24] 1266 	mov	dph,r5
      0024F1 E0               [24] 1267 	movx	a,@dptr
      0024F2 FE               [12] 1268 	mov	r6,a
      0024F3 BE 01 04         [24] 1269 	cjne	r6,#0x01,00138$
      0024F6 D0 06            [24] 1270 	pop	ar6
      0024F8 80 5C            [24] 1271 	sjmp	00111$
      0024FA                       1272 00138$:
      0024FA D0 06            [24] 1273 	pop	ar6
                           00008F  1274 	C$efm8_usbd.c$89$3$91 ==.
                                   1275 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:89: switch (epAddr)
      0024FC BF 01 02         [24] 1276 	cjne	r7,#0x01,00139$
      0024FF 80 05            [24] 1277 	sjmp	00104$
      002501                       1278 00139$:
                           000094  1279 	C$efm8_usbd.c$92$4$92 ==.
                                   1280 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:92: case EP1IN:
      002501 BF 02 40         [24] 1281 	cjne	r7,#0x02,00106$
      002504 80 20            [24] 1282 	sjmp	00105$
      002506                       1283 00104$:
                           000099  1284 	C$efm8_usbd.c$93$4$92 ==.
                                   1285 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:93: USB_AbortInEp(1);
      002506 75 82 01         [24] 1286 	mov	dpl,#0x01
      002509 C0 06            [24] 1287 	push	ar6
      00250B C0 05            [24] 1288 	push	ar5
      00250D C0 04            [24] 1289 	push	ar4
      00250F C0 03            [24] 1290 	push	ar3
      002511 C0 02            [24] 1291 	push	ar2
      002513 C0 20            [24] 1292 	push	bits
      002515 12 40 9B         [24] 1293 	lcall	_USB_AbortInEp
      002518 D0 20            [24] 1294 	pop	bits
      00251A D0 02            [24] 1295 	pop	ar2
      00251C D0 03            [24] 1296 	pop	ar3
      00251E D0 04            [24] 1297 	pop	ar4
      002520 D0 05            [24] 1298 	pop	ar5
      002522 D0 06            [24] 1299 	pop	ar6
                           0000B7  1300 	C$efm8_usbd.c$94$4$92 ==.
                                   1301 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:94: break;
                           0000B7  1302 	C$efm8_usbd.c$107$4$92 ==.
                                   1303 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:107: case EP1OUT:
      002524 80 1E            [24] 1304 	sjmp	00106$
      002526                       1305 00105$:
                           0000B9  1306 	C$efm8_usbd.c$108$4$92 ==.
                                   1307 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:108: USB_AbortOutEp(1);
      002526 75 82 01         [24] 1308 	mov	dpl,#0x01
      002529 C0 06            [24] 1309 	push	ar6
      00252B C0 05            [24] 1310 	push	ar5
      00252D C0 04            [24] 1311 	push	ar4
      00252F C0 03            [24] 1312 	push	ar3
      002531 C0 02            [24] 1313 	push	ar2
      002533 C0 20            [24] 1314 	push	bits
      002535 12 40 F3         [24] 1315 	lcall	_USB_AbortOutEp
      002538 D0 20            [24] 1316 	pop	bits
      00253A D0 02            [24] 1317 	pop	ar2
      00253C D0 03            [24] 1318 	pop	ar3
      00253E D0 04            [24] 1319 	pop	ar4
      002540 D0 05            [24] 1320 	pop	ar5
      002542 D0 06            [24] 1321 	pop	ar6
                           0000D7  1322 	C$efm8_usbd.c$121$3$91 ==.
                                   1323 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:121: }
      002544                       1324 00106$:
                           0000D7  1325 	C$efm8_usbd.c$124$3$91 ==.
                                   1326 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:124: ep->state = D_EP_IDLE;
      002544 8A 82            [24] 1327 	mov	dpl,r2
      002546 8D 83            [24] 1328 	mov	dph,r5
      002548 74 01            [12] 1329 	mov	a,#0x01
      00254A F0               [24] 1330 	movx	@dptr,a
                           0000DE  1331 	C$efm8_usbd.c$125$3$91 ==.
                                   1332 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:125: ep->misc.c = 0;
      00254B 74 06            [12] 1333 	mov	a,#0x06
      00254D 2B               [12] 1334 	add	a,r3
      00254E F5 82            [12] 1335 	mov	dpl,a
      002550 E4               [12] 1336 	clr	a
      002551 3C               [12] 1337 	addc	a,r4
      002552 F5 83            [12] 1338 	mov	dph,a
      002554 E4               [12] 1339 	clr	a
      002555 F0               [24] 1340 	movx	@dptr,a
      002556                       1341 00111$:
                           0000E9  1342 	C$efm8_usbd.c$129$2$93 ==.
                                   1343 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:129: ENABLE_USB_INTS;
      002556 30 00 06         [24] 1344 	jnb	b0,00117$
      002559 75 A7 10         [24] 1345 	mov	_SFRPAGE,#0x10
      00255C 43 CE 01         [24] 1346 	orl	_EIE2,#0x01
      00255F                       1347 00117$:
                           0000F2  1348 	C$efm8_usbd.c$130$1$86 ==.
                                   1349 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:130: USB_RestoreSfrPage();
      00255F A8 1B            [24] 1350 	mov	r0,_bp
      002561 08               [12] 1351 	inc	r0
      002562 08               [12] 1352 	inc	r0
      002563 86 A7            [24] 1353 	mov	_SFRPAGE,@r0
                           0000F8  1354 	C$efm8_usbd.c$132$1$86 ==.
                                   1355 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:132: return retVal;
      002565 8E 82            [24] 1356 	mov	dpl,r6
      002567 85 1B 81         [24] 1357 	mov	sp,_bp
      00256A D0 1B            [24] 1358 	pop	_bp
                           0000FF  1359 	C$efm8_usbd.c$133$1$86 ==.
                           0000FF  1360 	XG$USBD_AbortTransfer$0$0 ==.
      00256C 22               [24] 1361 	ret
                                   1362 ;------------------------------------------------------------
                                   1363 ;Allocation info for local variables in function 'USBD_Connect'
                                   1364 ;------------------------------------------------------------
                                   1365 ;SfrPageSave               Allocated to registers r7 
                                   1366 ;------------------------------------------------------------
                           000100  1367 	G$USBD_Connect$0$0 ==.
                           000100  1368 	C$efm8_usbd.c$135$1$86 ==.
                                   1369 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:135: void USBD_Connect(void)
                                   1370 ;	-----------------------------------------
                                   1371 ;	 function USBD_Connect
                                   1372 ;	-----------------------------------------
      00256D                       1373 _USBD_Connect:
                           000100  1374 	C$efm8_usbd.c$137$1$86 ==.
                                   1375 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:137: USB_SaveSfrPage();
      00256D AF A7            [24] 1376 	mov	r7,_SFRPAGE
                           000102  1377 	C$efm8_usbd.c$138$1$97 ==.
                                   1378 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:138: myUsbDevice.ep0.state = D_EP_IDLE;
      00256F 90 01 FC         [24] 1379 	mov	dptr,#(_myUsbDevice + 0x0012)
      002572 74 01            [12] 1380 	mov	a,#0x01
      002574 F0               [24] 1381 	movx	@dptr,a
                           000108  1382 	C$efm8_usbd.c$139$2$98 ==.
                                   1383 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:139: USB_EnablePullUpResistor();
      002575 75 A7 20         [24] 1384 	mov	_SFRPAGE,#0x20
      002578 43 B3 80         [24] 1385 	orl	_USB0XCN,#0x80
                           00010E  1386 	C$efm8_usbd.c$140$2$99 ==.
                                   1387 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:140: USB_EnableTransceiver();
      00257B 75 A7 20         [24] 1388 	mov	_SFRPAGE,#0x20
      00257E 43 B3 40         [24] 1389 	orl	_USB0XCN,#0x40
                           000114  1390 	C$efm8_usbd.c$141$1$97 ==.
                                   1391 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:141: USB_RestoreSfrPage();
      002581 8F A7            [24] 1392 	mov	_SFRPAGE,r7
                           000116  1393 	C$efm8_usbd.c$142$1$97 ==.
                           000116  1394 	XG$USBD_Connect$0$0 ==.
      002583 22               [24] 1395 	ret
                                   1396 ;------------------------------------------------------------
                                   1397 ;Allocation info for local variables in function 'USBD_Disconnect'
                                   1398 ;------------------------------------------------------------
                                   1399 ;SfrPageSave               Allocated to registers r7 
                                   1400 ;------------------------------------------------------------
                           000117  1401 	G$USBD_Disconnect$0$0 ==.
                           000117  1402 	C$efm8_usbd.c$144$1$97 ==.
                                   1403 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:144: void USBD_Disconnect(void)
                                   1404 ;	-----------------------------------------
                                   1405 ;	 function USBD_Disconnect
                                   1406 ;	-----------------------------------------
      002584                       1407 _USBD_Disconnect:
                           000117  1408 	C$efm8_usbd.c$146$1$97 ==.
                                   1409 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:146: USB_SaveSfrPage();
      002584 AF A7            [24] 1410 	mov	r7,_SFRPAGE
                           000119  1411 	C$efm8_usbd.c$147$2$102 ==.
                                   1412 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:147: USB_DisablePullUpResistor();
      002586 75 A7 20         [24] 1413 	mov	_SFRPAGE,#0x20
      002589 53 B3 7F         [24] 1414 	anl	_USB0XCN,#0x7f
                           00011F  1415 	C$efm8_usbd.c$148$1$101 ==.
                                   1416 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:148: USB_RestoreSfrPage();
      00258C 8F A7            [24] 1417 	mov	_SFRPAGE,r7
                           000121  1418 	C$efm8_usbd.c$149$1$101 ==.
                           000121  1419 	XG$USBD_Disconnect$0$0 ==.
      00258E 22               [24] 1420 	ret
                                   1421 ;------------------------------------------------------------
                                   1422 ;Allocation info for local variables in function 'USBD_EpIsBusy'
                                   1423 ;------------------------------------------------------------
                                   1424 ;epAddr                    Allocated to registers r7 
                                   1425 ;ep                        Allocated to registers 
                                   1426 ;------------------------------------------------------------
                           000122  1427 	G$USBD_EpIsBusy$0$0 ==.
                           000122  1428 	C$efm8_usbd.c$151$1$101 ==.
                                   1429 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:151: bool USBD_EpIsBusy(uint8_t epAddr)
                                   1430 ;	-----------------------------------------
                                   1431 ;	 function USBD_EpIsBusy
                                   1432 ;	-----------------------------------------
      00258F                       1433 _USBD_EpIsBusy:
      00258F AF 82            [24] 1434 	mov	r7,dpl
                           000124  1435 	C$efm8_usbd.c$156$1$104 ==.
                                   1436 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:156: if (epAddr >= SLAB_USB_NUM_EPS_USED)
      002591 BF 03 00         [24] 1437 	cjne	r7,#0x03,00113$
      002594                       1438 00113$:
      002594 40 03            [24] 1439 	jc	00102$
                           000129  1440 	C$efm8_usbd.c$159$2$105 ==.
                                   1441 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:159: return true;
      002596 D3               [12] 1442 	setb	c
      002597 80 20            [24] 1443 	sjmp	00105$
      002599                       1444 00102$:
                           00012C  1445 	C$efm8_usbd.c$162$1$104 ==.
                                   1446 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:162: ep = GetEp(epAddr);
      002599 EF               [12] 1447 	mov	a,r7
      00259A 75 F0 07         [24] 1448 	mov	b,#0x07
      00259D A4               [48] 1449 	mul	ab
      00259E AE F0            [24] 1450 	mov	r6,b
      0025A0 24 F7            [12] 1451 	add	a,#(_myUsbDevice + 0x000d)
      0025A2 FF               [12] 1452 	mov	r7,a
      0025A3 EE               [12] 1453 	mov	a,r6
      0025A4 34 01            [12] 1454 	addc	a,#((_myUsbDevice + 0x000d) >> 8)
      0025A6 FE               [12] 1455 	mov	r6,a
                           00013A  1456 	C$efm8_usbd.c$164$1$104 ==.
                                   1457 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:164: if (ep->state == D_EP_IDLE)
      0025A7 8F 82            [24] 1458 	mov	dpl,r7
      0025A9 8E 83            [24] 1459 	mov	dph,r6
      0025AB A3               [24] 1460 	inc	dptr
      0025AC A3               [24] 1461 	inc	dptr
      0025AD A3               [24] 1462 	inc	dptr
      0025AE A3               [24] 1463 	inc	dptr
      0025AF A3               [24] 1464 	inc	dptr
      0025B0 E0               [24] 1465 	movx	a,@dptr
      0025B1 FF               [12] 1466 	mov	r7,a
      0025B2 BF 01 03         [24] 1467 	cjne	r7,#0x01,00104$
                           000148  1468 	C$efm8_usbd.c$166$2$106 ==.
                                   1469 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:166: return false;
      0025B5 C3               [12] 1470 	clr	c
      0025B6 80 01            [24] 1471 	sjmp	00105$
      0025B8                       1472 00104$:
                           00014B  1473 	C$efm8_usbd.c$169$1$104 ==.
                                   1474 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:169: return true;
      0025B8 D3               [12] 1475 	setb	c
      0025B9                       1476 00105$:
                           00014C  1477 	C$efm8_usbd.c$170$1$104 ==.
                           00014C  1478 	XG$USBD_EpIsBusy$0$0 ==.
      0025B9 22               [24] 1479 	ret
                                   1480 ;------------------------------------------------------------
                                   1481 ;Allocation info for local variables in function 'USBD_GetUsbState'
                                   1482 ;------------------------------------------------------------
                           00014D  1483 	G$USBD_GetUsbState$0$0 ==.
                           00014D  1484 	C$efm8_usbd.c$172$1$104 ==.
                                   1485 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:172: USBD_State_TypeDef USBD_GetUsbState(void)
                                   1486 ;	-----------------------------------------
                                   1487 ;	 function USBD_GetUsbState
                                   1488 ;	-----------------------------------------
      0025BA                       1489 _USBD_GetUsbState:
                           00014D  1490 	C$efm8_usbd.c$174$1$108 ==.
                                   1491 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:174: return myUsbDevice.state;
      0025BA 90 01 EC         [24] 1492 	mov	dptr,#(_myUsbDevice + 0x0002)
      0025BD E0               [24] 1493 	movx	a,@dptr
                           000151  1494 	C$efm8_usbd.c$175$1$108 ==.
                           000151  1495 	XG$USBD_GetUsbState$0$0 ==.
      0025BE F5 82            [12] 1496 	mov	dpl,a
      0025C0 22               [24] 1497 	ret
                                   1498 ;------------------------------------------------------------
                                   1499 ;Allocation info for local variables in function 'USBD_Init'
                                   1500 ;------------------------------------------------------------
                                   1501 ;p                         Allocated to registers r5 r6 r7 
                                   1502 ;i                         Allocated to registers r3 
                                   1503 ;SfrPageSave               Allocated to registers r4 
                                   1504 ;------------------------------------------------------------
                           000154  1505 	G$USBD_Init$0$0 ==.
                           000154  1506 	C$efm8_usbd.c$177$1$108 ==.
                                   1507 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:177: int8_t USBD_Init(const USBD_Init_TypeDef *p)
                                   1508 ;	-----------------------------------------
                                   1509 ;	 function USBD_Init
                                   1510 ;	-----------------------------------------
      0025C1                       1511 _USBD_Init:
      0025C1 AD 82            [24] 1512 	mov	r5,dpl
      0025C3 AE 83            [24] 1513 	mov	r6,dph
      0025C5 AF F0            [24] 1514 	mov	r7,b
                           00015A  1515 	C$efm8_usbd.c$181$1$108 ==.
                                   1516 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:181: USB_SaveSfrPage();
      0025C7 AC A7            [24] 1517 	mov	r4,_SFRPAGE
                           00015C  1518 	C$efm8_usbd.c$182$2$111 ==.
                                   1519 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:182: USB_DisableInts();
      0025C9 75 A7 10         [24] 1520 	mov	_SFRPAGE,#0x10
      0025CC 53 CE FE         [24] 1521 	anl	_EIE2,#0xfe
                           000162  1522 	C$efm8_usbd.c$187$1$110 ==.
                                   1523 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:187: forceModuleLoad_usbint();
      0025CF C0 07            [24] 1524 	push	ar7
      0025D1 C0 06            [24] 1525 	push	ar6
      0025D3 C0 05            [24] 1526 	push	ar5
      0025D5 C0 04            [24] 1527 	push	ar4
      0025D7 12 3D CF         [24] 1528 	lcall	_forceModuleLoad_usbint
      0025DA D0 04            [24] 1529 	pop	ar4
      0025DC D0 05            [24] 1530 	pop	ar5
      0025DE D0 06            [24] 1531 	pop	ar6
      0025E0 D0 07            [24] 1532 	pop	ar7
                           000175  1533 	C$efm8_usbd.c$191$2$112 ==.
                                   1534 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:191: for (i = 0; i < sizeof(myUsbDevice); i++)
      0025E2 7B 00            [12] 1535 	mov	r3,#0x00
      0025E4                       1536 00135$:
                           000177  1537 	C$efm8_usbd.c$193$2$112 ==.
                                   1538 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:193: *((uint8_t MEM_MODEL_SEG *)&myUsbDevice + i) = 0;
      0025E4 EB               [12] 1539 	mov	a,r3
      0025E5 24 EA            [12] 1540 	add	a,#_myUsbDevice
      0025E7 F5 82            [12] 1541 	mov	dpl,a
      0025E9 E4               [12] 1542 	clr	a
      0025EA 34 01            [12] 1543 	addc	a,#(_myUsbDevice >> 8)
      0025EC F5 83            [12] 1544 	mov	dph,a
      0025EE E4               [12] 1545 	clr	a
      0025EF F0               [24] 1546 	movx	@dptr,a
                           000183  1547 	C$efm8_usbd.c$191$1$110 ==.
                                   1548 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:191: for (i = 0; i < sizeof(myUsbDevice); i++)
      0025F0 0B               [12] 1549 	inc	r3
      0025F1 BB 2B 00         [24] 1550 	cjne	r3,#0x2b,00164$
      0025F4                       1551 00164$:
      0025F4 40 EE            [24] 1552 	jc	00135$
                           000189  1553 	C$efm8_usbd.c$197$1$110 ==.
                                   1554 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:197: myUsbDevice.deviceDescriptor = p->deviceDescriptor;
      0025F6 C0 04            [24] 1555 	push	ar4
      0025F8 8D 82            [24] 1556 	mov	dpl,r5
      0025FA 8E 83            [24] 1557 	mov	dph,r6
      0025FC 8F F0            [24] 1558 	mov	b,r7
      0025FE 12 5E 3E         [24] 1559 	lcall	__gptrget
      002601 FA               [12] 1560 	mov	r2,a
      002602 A3               [24] 1561 	inc	dptr
      002603 12 5E 3E         [24] 1562 	lcall	__gptrget
      002606 FB               [12] 1563 	mov	r3,a
      002607 A3               [24] 1564 	inc	dptr
      002608 12 5E 3E         [24] 1565 	lcall	__gptrget
      00260B FC               [12] 1566 	mov	r4,a
      00260C 90 02 0C         [24] 1567 	mov	dptr,#(_myUsbDevice + 0x0022)
      00260F EA               [12] 1568 	mov	a,r2
      002610 F0               [24] 1569 	movx	@dptr,a
      002611 EB               [12] 1570 	mov	a,r3
      002612 A3               [24] 1571 	inc	dptr
      002613 F0               [24] 1572 	movx	@dptr,a
      002614 EC               [12] 1573 	mov	a,r4
      002615 A3               [24] 1574 	inc	dptr
      002616 F0               [24] 1575 	movx	@dptr,a
                           0001AA  1576 	C$efm8_usbd.c$198$1$110 ==.
                                   1577 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:198: myUsbDevice.configDescriptor = (USB_ConfigurationDescriptor_TypeDef *)p->configDescriptor;
      002617 74 03            [12] 1578 	mov	a,#0x03
      002619 2D               [12] 1579 	add	a,r5
      00261A FA               [12] 1580 	mov	r2,a
      00261B E4               [12] 1581 	clr	a
      00261C 3E               [12] 1582 	addc	a,r6
      00261D FB               [12] 1583 	mov	r3,a
      00261E 8F 04            [24] 1584 	mov	ar4,r7
      002620 8A 82            [24] 1585 	mov	dpl,r2
      002622 8B 83            [24] 1586 	mov	dph,r3
      002624 8C F0            [24] 1587 	mov	b,r4
      002626 12 5E 3E         [24] 1588 	lcall	__gptrget
      002629 FA               [12] 1589 	mov	r2,a
      00262A A3               [24] 1590 	inc	dptr
      00262B 12 5E 3E         [24] 1591 	lcall	__gptrget
      00262E FB               [12] 1592 	mov	r3,a
      00262F A3               [24] 1593 	inc	dptr
      002630 12 5E 3E         [24] 1594 	lcall	__gptrget
      002633 FC               [12] 1595 	mov	r4,a
      002634 90 02 0F         [24] 1596 	mov	dptr,#(_myUsbDevice + 0x0025)
      002637 EA               [12] 1597 	mov	a,r2
      002638 F0               [24] 1598 	movx	@dptr,a
      002639 EB               [12] 1599 	mov	a,r3
      00263A A3               [24] 1600 	inc	dptr
      00263B F0               [24] 1601 	movx	@dptr,a
      00263C EC               [12] 1602 	mov	a,r4
      00263D A3               [24] 1603 	inc	dptr
      00263E F0               [24] 1604 	movx	@dptr,a
                           0001D2  1605 	C$efm8_usbd.c$199$1$110 ==.
                                   1606 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:199: myUsbDevice.stringDescriptors = p->stringDescriptors;
      00263F 74 06            [12] 1607 	mov	a,#0x06
      002641 2D               [12] 1608 	add	a,r5
      002642 FA               [12] 1609 	mov	r2,a
      002643 E4               [12] 1610 	clr	a
      002644 3E               [12] 1611 	addc	a,r6
      002645 FB               [12] 1612 	mov	r3,a
      002646 8F 04            [24] 1613 	mov	ar4,r7
      002648 8A 82            [24] 1614 	mov	dpl,r2
      00264A 8B 83            [24] 1615 	mov	dph,r3
      00264C 8C F0            [24] 1616 	mov	b,r4
      00264E 12 5E 3E         [24] 1617 	lcall	__gptrget
      002651 FA               [12] 1618 	mov	r2,a
      002652 A3               [24] 1619 	inc	dptr
      002653 12 5E 3E         [24] 1620 	lcall	__gptrget
      002656 FB               [12] 1621 	mov	r3,a
      002657 A3               [24] 1622 	inc	dptr
      002658 12 5E 3E         [24] 1623 	lcall	__gptrget
      00265B FC               [12] 1624 	mov	r4,a
      00265C 90 02 12         [24] 1625 	mov	dptr,#(_myUsbDevice + 0x0028)
      00265F EA               [12] 1626 	mov	a,r2
      002660 F0               [24] 1627 	movx	@dptr,a
      002661 EB               [12] 1628 	mov	a,r3
      002662 A3               [24] 1629 	inc	dptr
      002663 F0               [24] 1630 	movx	@dptr,a
      002664 EC               [12] 1631 	mov	a,r4
      002665 A3               [24] 1632 	inc	dptr
      002666 F0               [24] 1633 	movx	@dptr,a
                           0001FA  1634 	C$efm8_usbd.c$200$1$110 ==.
                                   1635 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:200: myUsbDevice.numberOfStrings = p->numberOfStrings;
      002667 74 09            [12] 1636 	mov	a,#0x09
      002669 2D               [12] 1637 	add	a,r5
      00266A FD               [12] 1638 	mov	r5,a
      00266B E4               [12] 1639 	clr	a
      00266C 3E               [12] 1640 	addc	a,r6
      00266D FE               [12] 1641 	mov	r6,a
      00266E 8D 82            [24] 1642 	mov	dpl,r5
      002670 8E 83            [24] 1643 	mov	dph,r6
      002672 8F F0            [24] 1644 	mov	b,r7
      002674 12 5E 3E         [24] 1645 	lcall	__gptrget
      002677 FD               [12] 1646 	mov	r5,a
      002678 90 01 EB         [24] 1647 	mov	dptr,#(_myUsbDevice + 0x0001)
      00267B F0               [24] 1648 	movx	@dptr,a
                           00020F  1649 	C$efm8_usbd.c$204$2$113 ==.
                                   1650 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:204: USB_SetClockIntOsc();
      00267C 75 A7 20         [24] 1651 	mov	_SFRPAGE,#0x20
      00267F 53 B5 F8         [24] 1652 	anl	_USB0CF,#0xf8
                           000215  1653 	C$efm8_usbd.c$205$2$114 ==.
                                   1654 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:205: USB_SelectFullSpeed();
      002682 75 A7 20         [24] 1655 	mov	_SFRPAGE,#0x20
      002685 43 B3 20         [24] 1656 	orl	_USB0XCN,#0x20
                           00021B  1657 	C$efm8_usbd.c$213$2$115 ==.
                                   1658 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:213: USB_VbusDetectDisable();
      002688 75 A7 20         [24] 1659 	mov	_SFRPAGE,#0x20
      00268B 53 B5 7F         [24] 1660 	anl	_USB0CF,#0x7f
                           000221  1661 	C$efm8_usbd.c$218$2$116 ==.
                                   1662 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:218: USB_ForceReset();
      00268E 75 AE 01         [24] 1663 	mov	_USB0ADR,#0x01
      002691 75 AF 08         [24] 1664 	mov	_USB0DAT,#0x08
                           000227  1665 	C$efm8_usbd.c$245$1$110 ==.
                                   1666 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:245: return USB_STATUS_OK;
      002694 D0 04            [24] 1667 	pop	ar4
                           000229  1668 	C$efm8_usbd.c$218$2$116 ==.
                                   1669 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:218: USB_ForceReset();
      002696                       1670 00114$:
      002696 E5 AE            [12] 1671 	mov	a,_USB0ADR
      002698 20 E7 FB         [24] 1672 	jb	acc.7,00114$
                           00022E  1673 	C$efm8_usbd.c$219$2$118 ==.
                                   1674 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:219: USB_EnableDeviceInts();
      00269B 75 AE 0B         [24] 1675 	mov	_USB0ADR,#0x0b
      00269E 75 AF 0F         [24] 1676 	mov	_USB0DAT,#0x0f
      0026A1                       1677 00120$:
      0026A1 E5 AE            [12] 1678 	mov	a,_USB0ADR
      0026A3 20 E7 FB         [24] 1679 	jb	acc.7,00120$
                           000239  1680 	C$efm8_usbd.c$220$1$110 ==.
                                   1681 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:220: USBD_Connect();
      0026A6 C0 04            [24] 1682 	push	ar4
      0026A8 12 25 6D         [24] 1683 	lcall	_USBD_Connect
      0026AB D0 04            [24] 1684 	pop	ar4
                           000240  1685 	C$efm8_usbd.c$225$1$110 ==.
                                   1686 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:225: myUsbDevice.state = USBD_STATE_DEFAULT;
      0026AD 90 01 EC         [24] 1687 	mov	dptr,#(_myUsbDevice + 0x0002)
      0026B0 74 03            [12] 1688 	mov	a,#0x03
      0026B2 F0               [24] 1689 	movx	@dptr,a
                           000246  1690 	C$efm8_usbd.c$239$2$120 ==.
                                   1691 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:239: USB_EnableInts();
      0026B3 75 A7 10         [24] 1692 	mov	_SFRPAGE,#0x10
      0026B6 43 CE 01         [24] 1693 	orl	_EIE2,#0x01
                           00024C  1694 	C$efm8_usbd.c$242$1$110 ==.
                                   1695 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:242: USB_RestoreSfrPage();
      0026B9 8C A7            [24] 1696 	mov	_SFRPAGE,r4
                           00024E  1697 	C$efm8_usbd.c$243$2$121 ==.
                                   1698 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:243: USB_DisableInhibit();
      0026BB 75 AE 01         [24] 1699 	mov	_USB0ADR,#0x01
      0026BE 75 AF 01         [24] 1700 	mov	_USB0DAT,#0x01
      0026C1                       1701 00129$:
      0026C1 E5 AE            [12] 1702 	mov	a,_USB0ADR
      0026C3 20 E7 FB         [24] 1703 	jb	acc.7,00129$
                           000259  1704 	C$efm8_usbd.c$245$1$110 ==.
                                   1705 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:245: return USB_STATUS_OK;
      0026C6 75 82 00         [24] 1706 	mov	dpl,#0x00
                           00025C  1707 	C$efm8_usbd.c$246$1$110 ==.
                           00025C  1708 	XG$USBD_Init$0$0 ==.
      0026C9 22               [24] 1709 	ret
                                   1710 ;------------------------------------------------------------
                                   1711 ;Allocation info for local variables in function 'USBD_Read'
                                   1712 ;------------------------------------------------------------
                                   1713 ;dat                       Allocated to stack - _bp -5
                                   1714 ;byteCount                 Allocated to stack - _bp -7
                                   1715 ;callback                  Allocated to registers b0 
                                   1716 ;epAddr                    Allocated to registers r7 
                                   1717 ;usbIntsEnabled            Allocated to registers b1 
                                   1718 ;ep                        Allocated to registers r7 r5 
                                   1719 ;SfrPageSave               Allocated to registers r6 
                                   1720 ;------------------------------------------------------------
                           00025D  1721 	G$USBD_Read$0$0 ==.
                           00025D  1722 	C$efm8_usbd.c$248$1$110 ==.
                                   1723 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:248: int8_t USBD_Read(uint8_t epAddr,
                                   1724 ;	-----------------------------------------
                                   1725 ;	 function USBD_Read
                                   1726 ;	-----------------------------------------
      0026CA                       1727 _USBD_Read:
      0026CA C0 1B            [24] 1728 	push	_bp
      0026CC 85 81 1B         [24] 1729 	mov	_bp,sp
      0026CF AF 82            [24] 1730 	mov	r7,dpl
                           000264  1731 	C$efm8_usbd.c$256$1$110 ==.
                                   1732 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:256: USB_SaveSfrPage();
      0026D1 AE A7            [24] 1733 	mov	r6,_SFRPAGE
                           000266  1734 	C$efm8_usbd.c$259$1$124 ==.
                                   1735 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:259: switch (epAddr)
      0026D3 BF 00 02         [24] 1736 	cjne	r7,#0x00,00145$
      0026D6 80 10            [24] 1737 	sjmp	00105$
      0026D8                       1738 00145$:
      0026D8 BF 01 02         [24] 1739 	cjne	r7,#0x01,00146$
      0026DB 80 05            [24] 1740 	sjmp	00104$
      0026DD                       1741 00146$:
      0026DD BF 02 02         [24] 1742 	cjne	r7,#0x02,00147$
      0026E0 80 06            [24] 1743 	sjmp	00105$
      0026E2                       1744 00147$:
                           000275  1745 	C$efm8_usbd.c$281$2$125 ==.
                                   1746 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:281: default:
      0026E2                       1747 00104$:
                           000275  1748 	C$efm8_usbd.c$283$2$125 ==.
                                   1749 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:283: return USB_STATUS_ILLEGAL;
      0026E2 75 82 FC         [24] 1750 	mov	dpl,#0xfc
      0026E5 02 27 A7         [24] 1751 	ljmp	00122$
                           00027B  1752 	C$efm8_usbd.c$284$1$124 ==.
                                   1753 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:284: }
      0026E8                       1754 00105$:
                           00027B  1755 	C$efm8_usbd.c$287$1$124 ==.
                                   1756 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:287: if ((epAddr != EP0) && (myUsbDevice.state != USBD_STATE_CONFIGURED))
      0026E8 EF               [12] 1757 	mov	a,r7
      0026E9 60 10            [24] 1758 	jz	00107$
      0026EB 90 01 EC         [24] 1759 	mov	dptr,#(_myUsbDevice + 0x0002)
      0026EE E0               [24] 1760 	movx	a,@dptr
      0026EF FD               [12] 1761 	mov	r5,a
      0026F0 BD 06 02         [24] 1762 	cjne	r5,#0x06,00149$
      0026F3 80 06            [24] 1763 	sjmp	00107$
      0026F5                       1764 00149$:
                           000288  1765 	C$efm8_usbd.c$289$2$126 ==.
                                   1766 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:289: return USB_STATUS_DEVICE_UNCONFIGURED;
      0026F5 75 82 F7         [24] 1767 	mov	dpl,#0xf7
      0026F8 02 27 A7         [24] 1768 	ljmp	00122$
      0026FB                       1769 00107$:
                           00028E  1770 	C$efm8_usbd.c$292$1$124 ==.
                                   1771 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:292: ep = GetEp(epAddr);
      0026FB EF               [12] 1772 	mov	a,r7
      0026FC 75 F0 07         [24] 1773 	mov	b,#0x07
      0026FF A4               [48] 1774 	mul	ab
      002700 AD F0            [24] 1775 	mov	r5,b
      002702 24 F7            [12] 1776 	add	a,#(_myUsbDevice + 0x000d)
      002704 FF               [12] 1777 	mov	r7,a
      002705 ED               [12] 1778 	mov	a,r5
      002706 34 01            [12] 1779 	addc	a,#((_myUsbDevice + 0x000d) >> 8)
      002708 FD               [12] 1780 	mov	r5,a
                           00029C  1781 	C$efm8_usbd.c$296$1$124 ==.
                                   1782 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:296: if (ep->state != D_EP_IDLE)
      002709 74 05            [12] 1783 	mov	a,#0x05
      00270B 2F               [12] 1784 	add	a,r7
      00270C FB               [12] 1785 	mov	r3,a
      00270D E4               [12] 1786 	clr	a
      00270E 3D               [12] 1787 	addc	a,r5
      00270F FC               [12] 1788 	mov	r4,a
      002710 8B 82            [24] 1789 	mov	dpl,r3
      002712 8C 83            [24] 1790 	mov	dph,r4
      002714 E0               [24] 1791 	movx	a,@dptr
      002715 FA               [12] 1792 	mov	r2,a
      002716 BA 01 02         [24] 1793 	cjne	r2,#0x01,00150$
      002719 80 0F            [24] 1794 	sjmp	00113$
      00271B                       1795 00150$:
                           0002AE  1796 	C$efm8_usbd.c$298$2$127 ==.
                                   1797 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:298: if (ep->state == D_EP_STALL)
      00271B BA 05 06         [24] 1798 	cjne	r2,#0x05,00110$
                           0002B1  1799 	C$efm8_usbd.c$300$3$128 ==.
                                   1800 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:300: return USB_STATUS_EP_STALLED;
      00271E 75 82 FB         [24] 1801 	mov	dpl,#0xfb
      002721 02 27 A7         [24] 1802 	ljmp	00122$
      002724                       1803 00110$:
                           0002B7  1804 	C$efm8_usbd.c$304$3$129 ==.
                                   1805 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:304: return USB_STATUS_EP_BUSY;
      002724 75 82 FE         [24] 1806 	mov	dpl,#0xfe
      002727 02 27 A7         [24] 1807 	ljmp	00122$
      00272A                       1808 00113$:
                           0002BD  1809 	C$efm8_usbd.c$308$2$130 ==.
                                   1810 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:308: DISABLE_USB_INTS;
      00272A C0 07            [24] 1811 	push	ar7
      00272C C0 06            [24] 1812 	push	ar6
      00272E C0 05            [24] 1813 	push	ar5
      002730 C0 04            [24] 1814 	push	ar4
      002732 C0 03            [24] 1815 	push	ar3
      002734 C0 20            [24] 1816 	push	bits
      002736 12 41 E5         [24] 1817 	lcall	_USB_GetIntsEnabled
      002739 D0 20            [24] 1818 	pop	bits
      00273B D0 03            [24] 1819 	pop	ar3
      00273D D0 04            [24] 1820 	pop	ar4
      00273F D0 05            [24] 1821 	pop	ar5
      002741 D0 06            [24] 1822 	pop	ar6
      002743 D0 07            [24] 1823 	pop	ar7
      002745 92 01            [24] 1824 	mov	b1,c
      002747 75 A7 10         [24] 1825 	mov	_SFRPAGE,#0x10
      00274A 53 CE FE         [24] 1826 	anl	_EIE2,#0xfe
                           0002E0  1827 	C$efm8_usbd.c$310$1$124 ==.
                                   1828 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:310: ep->buf = dat;
      00274D 8F 82            [24] 1829 	mov	dpl,r7
      00274F 8D 83            [24] 1830 	mov	dph,r5
      002751 E5 1B            [12] 1831 	mov	a,_bp
      002753 24 FB            [12] 1832 	add	a,#0xfb
      002755 F8               [12] 1833 	mov	r0,a
      002756 E6               [12] 1834 	mov	a,@r0
      002757 F0               [24] 1835 	movx	@dptr,a
      002758 08               [12] 1836 	inc	r0
      002759 E6               [12] 1837 	mov	a,@r0
      00275A A3               [24] 1838 	inc	dptr
      00275B F0               [24] 1839 	movx	@dptr,a
      00275C 08               [12] 1840 	inc	r0
      00275D E6               [12] 1841 	mov	a,@r0
      00275E A3               [24] 1842 	inc	dptr
      00275F F0               [24] 1843 	movx	@dptr,a
                           0002F3  1844 	C$efm8_usbd.c$311$1$124 ==.
                                   1845 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:311: ep->remaining = byteCount;
      002760 8F 82            [24] 1846 	mov	dpl,r7
      002762 8D 83            [24] 1847 	mov	dph,r5
      002764 A3               [24] 1848 	inc	dptr
      002765 A3               [24] 1849 	inc	dptr
      002766 A3               [24] 1850 	inc	dptr
      002767 E5 1B            [12] 1851 	mov	a,_bp
      002769 24 F9            [12] 1852 	add	a,#0xf9
      00276B F8               [12] 1853 	mov	r0,a
      00276C E6               [12] 1854 	mov	a,@r0
      00276D F0               [24] 1855 	movx	@dptr,a
      00276E 08               [12] 1856 	inc	r0
      00276F E6               [12] 1857 	mov	a,@r0
      002770 A3               [24] 1858 	inc	dptr
      002771 F0               [24] 1859 	movx	@dptr,a
                           000305  1860 	C$efm8_usbd.c$312$1$124 ==.
                                   1861 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:312: ep->state = D_EP_RECEIVING;
      002772 8B 82            [24] 1862 	mov	dpl,r3
      002774 8C 83            [24] 1863 	mov	dph,r4
      002776 74 03            [12] 1864 	mov	a,#0x03
      002778 F0               [24] 1865 	movx	@dptr,a
                           00030C  1866 	C$efm8_usbd.c$313$1$124 ==.
                                   1867 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:313: ep->misc.bits.callback = callback;
      002779 23               [12] 1868 	rl	a
      00277A 2F               [12] 1869 	add	a,r7
      00277B FF               [12] 1870 	mov	r7,a
      00277C E4               [12] 1871 	clr	a
      00277D 3D               [12] 1872 	addc	a,r5
      00277E FD               [12] 1873 	mov	r5,a
      00277F 8F 03            [24] 1874 	mov	ar3,r7
      002781 8D 04            [24] 1875 	mov	ar4,r5
      002783 A2 00            [12] 1876 	mov	c,b0
      002785 E4               [12] 1877 	clr	a
      002786 33               [12] 1878 	rlc	a
      002787 FA               [12] 1879 	mov	r2,a
      002788 8B 82            [24] 1880 	mov	dpl,r3
      00278A 8C 83            [24] 1881 	mov	dph,r4
      00278C 13               [12] 1882 	rrc	a
      00278D E0               [24] 1883 	movx	a,@dptr
      00278E 92 E0            [24] 1884 	mov	acc.0,c
      002790 F0               [24] 1885 	movx	@dptr,a
                           000324  1886 	C$efm8_usbd.c$314$1$124 ==.
                                   1887 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:314: ep->misc.bits.waitForRead = false;
      002791 8F 82            [24] 1888 	mov	dpl,r7
      002793 8D 83            [24] 1889 	mov	dph,r5
      002795 E0               [24] 1890 	movx	a,@dptr
      002796 54 F7            [12] 1891 	anl	a,#0xf7
      002798 F0               [24] 1892 	movx	@dptr,a
                           00032C  1893 	C$efm8_usbd.c$324$2$132 ==.
                                   1894 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:324: ENABLE_USB_INTS;
      002799 30 01 06         [24] 1895 	jnb	b1,00121$
      00279C 75 A7 10         [24] 1896 	mov	_SFRPAGE,#0x10
      00279F 43 CE 01         [24] 1897 	orl	_EIE2,#0x01
      0027A2                       1898 00121$:
                           000335  1899 	C$efm8_usbd.c$325$1$124 ==.
                                   1900 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:325: USB_RestoreSfrPage();
      0027A2 8E A7            [24] 1901 	mov	_SFRPAGE,r6
                           000337  1902 	C$efm8_usbd.c$327$1$124 ==.
                                   1903 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:327: return USB_STATUS_OK;
      0027A4 75 82 00         [24] 1904 	mov	dpl,#0x00
      0027A7                       1905 00122$:
      0027A7 D0 1B            [24] 1906 	pop	_bp
                           00033C  1907 	C$efm8_usbd.c$328$1$124 ==.
                           00033C  1908 	XG$USBD_Read$0$0 ==.
      0027A9 22               [24] 1909 	ret
                                   1910 ;------------------------------------------------------------
                                   1911 ;Allocation info for local variables in function 'USBD_StallEp'
                                   1912 ;------------------------------------------------------------
                                   1913 ;epAddr                    Allocated to registers r7 
                                   1914 ;usbIntsEnabled            Allocated to registers b0 
                                   1915 ;SfrPageSave               Allocated to registers r6 
                                   1916 ;------------------------------------------------------------
                           00033D  1917 	G$USBD_StallEp$0$0 ==.
                           00033D  1918 	C$efm8_usbd.c$357$1$124 ==.
                                   1919 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:357: int8_t USBD_StallEp(uint8_t epAddr)
                                   1920 ;	-----------------------------------------
                                   1921 ;	 function USBD_StallEp
                                   1922 ;	-----------------------------------------
      0027AA                       1923 _USBD_StallEp:
      0027AA AF 82            [24] 1924 	mov	r7,dpl
                           00033F  1925 	C$efm8_usbd.c$361$1$124 ==.
                                   1926 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:361: USB_SaveSfrPage();
      0027AC AE A7            [24] 1927 	mov	r6,_SFRPAGE
                           000341  1928 	C$efm8_usbd.c$364$1$136 ==.
                                   1929 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:364: if ((epAddr == EP0) || (epAddr >= SLAB_USB_NUM_EPS_USED))
      0027AE EF               [12] 1930 	mov	a,r7
      0027AF 60 05            [24] 1931 	jz	00101$
      0027B1 BF 03 00         [24] 1932 	cjne	r7,#0x03,00160$
      0027B4                       1933 00160$:
      0027B4 40 05            [24] 1934 	jc	00102$
      0027B6                       1935 00101$:
                           000349  1936 	C$efm8_usbd.c$367$2$137 ==.
                                   1937 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:367: return USB_STATUS_ILLEGAL;
      0027B6 75 82 FC         [24] 1938 	mov	dpl,#0xfc
      0027B9 80 70            [24] 1939 	sjmp	00130$
      0027BB                       1940 00102$:
                           00034E  1941 	C$efm8_usbd.c$370$2$138 ==.
                                   1942 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:370: DISABLE_USB_INTS;
      0027BB C0 07            [24] 1943 	push	ar7
      0027BD C0 06            [24] 1944 	push	ar6
      0027BF 12 41 E5         [24] 1945 	lcall	_USB_GetIntsEnabled
      0027C2 D0 06            [24] 1946 	pop	ar6
      0027C4 D0 07            [24] 1947 	pop	ar7
      0027C6 92 00            [24] 1948 	mov	b0,c
      0027C8 75 A7 10         [24] 1949 	mov	_SFRPAGE,#0x10
      0027CB 53 CE FE         [24] 1950 	anl	_EIE2,#0xfe
                           000361  1951 	C$efm8_usbd.c$374$1$136 ==.
                                   1952 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:374: switch (epAddr)
      0027CE BF 01 02         [24] 1953 	cjne	r7,#0x01,00162$
      0027D1 80 05            [24] 1954 	sjmp	00107$
      0027D3                       1955 00162$:
                           000366  1956 	C$efm8_usbd.c$377$2$140 ==.
                                   1957 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:377: case (EP1IN):
      0027D3 BF 02 47         [24] 1958 	cjne	r7,#0x02,00124$
      0027D6 80 21            [24] 1959 	sjmp	00114$
      0027D8                       1960 00107$:
                           00036B  1961 	C$efm8_usbd.c$378$2$140 ==.
                                   1962 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:378: myUsbDevice.ep1in.state = D_EP_HALT;
      0027D8 90 02 03         [24] 1963 	mov	dptr,#(_myUsbDevice + 0x0019)
      0027DB 74 06            [12] 1964 	mov	a,#0x06
      0027DD F0               [24] 1965 	movx	@dptr,a
                           000371  1966 	C$efm8_usbd.c$379$2$140 ==.
                                   1967 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:379: USB_SetIndex(1);
      0027DE 75 82 01         [24] 1968 	mov	dpl,#0x01
      0027E1 C0 06            [24] 1969 	push	ar6
      0027E3 C0 20            [24] 1970 	push	bits
      0027E5 12 3F F9         [24] 1971 	lcall	_USB_SetIndex
      0027E8 D0 20            [24] 1972 	pop	bits
      0027EA D0 06            [24] 1973 	pop	ar6
                           00037F  1974 	C$efm8_usbd.c$380$3$141 ==.
                                   1975 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:380: USB_EpnInStall();
      0027EC 75 AE 11         [24] 1976 	mov	_USB0ADR,#0x11
      0027EF 75 AF 10         [24] 1977 	mov	_USB0DAT,#0x10
      0027F2                       1978 00108$:
      0027F2 E5 AE            [12] 1979 	mov	a,_USB0ADR
      0027F4 20 E7 FB         [24] 1980 	jb	acc.7,00108$
                           00038A  1981 	C$efm8_usbd.c$381$2$140 ==.
                                   1982 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:381: break;
                           00038A  1983 	C$efm8_usbd.c$398$2$140 ==.
                                   1984 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:398: case (EP1OUT):
      0027F7 80 24            [24] 1985 	sjmp	00124$
      0027F9                       1986 00114$:
                           00038C  1987 	C$efm8_usbd.c$399$2$140 ==.
                                   1988 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:399: myUsbDevice.ep1out.state = D_EP_HALT;
      0027F9 90 02 0A         [24] 1989 	mov	dptr,#(_myUsbDevice + 0x0020)
      0027FC 74 06            [12] 1990 	mov	a,#0x06
      0027FE F0               [24] 1991 	movx	@dptr,a
                           000392  1992 	C$efm8_usbd.c$400$2$140 ==.
                                   1993 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:400: USB_SetIndex(1);
      0027FF 75 82 01         [24] 1994 	mov	dpl,#0x01
      002802 C0 06            [24] 1995 	push	ar6
      002804 C0 20            [24] 1996 	push	bits
      002806 12 3F F9         [24] 1997 	lcall	_USB_SetIndex
      002809 D0 20            [24] 1998 	pop	bits
      00280B D0 06            [24] 1999 	pop	ar6
                           0003A0  2000 	C$efm8_usbd.c$401$3$143 ==.
                                   2001 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:401: USB_EpnOutStall();
      00280D 75 AE 94         [24] 2002 	mov	_USB0ADR,#0x94
      002810                       2003 00115$:
      002810 E5 AE            [12] 2004 	mov	a,_USB0ADR
      002812 20 E7 FB         [24] 2005 	jb	acc.7,00115$
      002815 43 AF 20         [24] 2006 	orl	_USB0DAT,#0x20
      002818                       2007 00118$:
      002818 E5 AE            [12] 2008 	mov	a,_USB0ADR
      00281A 20 E7 FB         [24] 2009 	jb	acc.7,00118$
                           0003B0  2010 	C$efm8_usbd.c$418$1$136 ==.
                                   2011 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:418: }
      00281D                       2012 00124$:
                           0003B0  2013 	C$efm8_usbd.c$420$2$146 ==.
                                   2014 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:420: ENABLE_USB_INTS;
      00281D 30 00 06         [24] 2015 	jnb	b0,00129$
      002820 75 A7 10         [24] 2016 	mov	_SFRPAGE,#0x10
      002823 43 CE 01         [24] 2017 	orl	_EIE2,#0x01
      002826                       2018 00129$:
                           0003B9  2019 	C$efm8_usbd.c$421$1$136 ==.
                                   2020 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:421: USB_RestoreSfrPage();
      002826 8E A7            [24] 2021 	mov	_SFRPAGE,r6
                           0003BB  2022 	C$efm8_usbd.c$423$1$136 ==.
                                   2023 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:423: return USB_STATUS_OK;
      002828 75 82 00         [24] 2024 	mov	dpl,#0x00
      00282B                       2025 00130$:
                           0003BE  2026 	C$efm8_usbd.c$424$1$136 ==.
                           0003BE  2027 	XG$USBD_StallEp$0$0 ==.
      00282B 22               [24] 2028 	ret
                                   2029 ;------------------------------------------------------------
                                   2030 ;Allocation info for local variables in function 'USBD_Stop'
                                   2031 ;------------------------------------------------------------
                           0003BF  2032 	G$USBD_Stop$0$0 ==.
                           0003BF  2033 	C$efm8_usbd.c$426$1$136 ==.
                                   2034 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:426: void USBD_Stop(void)
                                   2035 ;	-----------------------------------------
                                   2036 ;	 function USBD_Stop
                                   2037 ;	-----------------------------------------
      00282C                       2038 _USBD_Stop:
                           0003BF  2039 	C$efm8_usbd.c$428$2$151 ==.
                                   2040 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:428: USB_DisableInts();
      00282C 75 A7 10         [24] 2041 	mov	_SFRPAGE,#0x10
      00282F 53 CE FE         [24] 2042 	anl	_EIE2,#0xfe
                           0003C5  2043 	C$efm8_usbd.c$429$1$150 ==.
                                   2044 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:429: USBD_Disconnect();
      002832 12 25 84         [24] 2045 	lcall	_USBD_Disconnect
                           0003C8  2046 	C$efm8_usbd.c$430$1$150 ==.
                                   2047 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:430: USBD_SetUsbState(USBD_STATE_NONE);
      002835 75 82 00         [24] 2048 	mov	dpl,#0x00
      002838 12 2A 9D         [24] 2049 	lcall	_USBD_SetUsbState
                           0003CE  2050 	C$efm8_usbd.c$431$1$150 ==.
                           0003CE  2051 	XG$USBD_Stop$0$0 ==.
      00283B 22               [24] 2052 	ret
                                   2053 ;------------------------------------------------------------
                                   2054 ;Allocation info for local variables in function 'USBD_Suspend'
                                   2055 ;------------------------------------------------------------
                                   2056 ;i                         Allocated to registers r6 
                                   2057 ;regulatorEnabled          Allocated to registers b1 
                                   2058 ;prefetchEnabled           Allocated to registers b0 
                                   2059 ;SfrPageSave               Allocated to registers r7 
                                   2060 ;------------------------------------------------------------
                           0003CF  2061 	G$USBD_Suspend$0$0 ==.
                           0003CF  2062 	C$efm8_usbd.c$433$1$150 ==.
                                   2063 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:433: void USBD_Suspend(void)
                                   2064 ;	-----------------------------------------
                                   2065 ;	 function USBD_Suspend
                                   2066 ;	-----------------------------------------
      00283C                       2067 _USBD_Suspend:
                           0003CF  2068 	C$efm8_usbd.c$438$1$150 ==.
                                   2069 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:438: USB_SaveSfrPage();
      00283C AF A7            [24] 2070 	mov	r7,_SFRPAGE
                           0003D1  2071 	C$efm8_usbd.c$444$1$153 ==.
                                   2072 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:444: if (USB_IsSuspended() == true)
      00283E C0 07            [24] 2073 	push	ar7
      002840 12 40 36         [24] 2074 	lcall	_USB_IsSuspended
      002843 D0 07            [24] 2075 	pop	ar7
      002845 92 00            [24] 2076 	mov  b0,c
      002847 E4               [12] 2077 	clr	a
      002848 33               [12] 2078 	rlc	a
      002849 FE               [12] 2079 	mov	r6,a
      00284A BE 01 02         [24] 2080 	cjne	r6,#0x01,00167$
      00284D 80 03            [24] 2081 	sjmp	00168$
      00284F                       2082 00167$:
      00284F 02 28 D7         [24] 2083 	ljmp	00137$
      002852                       2084 00168$:
                           0003E5  2085 	C$efm8_usbd.c$449$3$155 ==.
                                   2086 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:449: USB_SuspendTransceiver();
      002852 75 A7 20         [24] 2087 	mov	_SFRPAGE,#0x20
      002855 53 B3 BC         [24] 2088 	anl	_USB0XCN,#0xbc
                           0003EB  2089 	C$efm8_usbd.c$452$3$156 ==.
                                   2090 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:452: USB_SetSuspendClock();
      002858 75 A7 20         [24] 2091 	mov	_SFRPAGE,#0x20
      00285B 53 B5 F8         [24] 2092 	anl	_USB0CF,#0xf8
      00285E 43 B5 01         [24] 2093 	orl	_USB0CF,#0x01
                           0003F4  2094 	C$efm8_usbd.c$457$2$154 ==.
                                   2095 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:457: prefetchEnabled = USB_IsPrefetchEnabled();
      002861 C0 07            [24] 2096 	push	ar7
      002863 12 41 EE         [24] 2097 	lcall	_USB_IsPrefetchEnabled
      002866 92 00            [24] 2098 	mov	b0,c
                           0003FB  2099 	C$efm8_usbd.c$458$3$157 ==.
                                   2100 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:458: USB_DisablePrefetch();
      002868 75 A7 10         [24] 2101 	mov	_SFRPAGE,#0x10
      00286B 53 C1 CF         [24] 2102 	anl	_PFE0CN,#0xcf
                           000401  2103 	C$efm8_usbd.c$461$2$154 ==.
                                   2104 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:461: if (USB_IsRegulatorEnabled() == true)
      00286E C0 20            [24] 2105 	push	bits
      002870 12 41 F8         [24] 2106 	lcall	_USB_IsRegulatorEnabled
      002873 D0 20            [24] 2107 	pop	bits
      002875 D0 07            [24] 2108 	pop	ar7
      002877 92 01            [24] 2109 	mov  b1,c
      002879 E4               [12] 2110 	clr	a
      00287A 33               [12] 2111 	rlc	a
      00287B FE               [12] 2112 	mov	r6,a
      00287C BE 01 12         [24] 2113 	cjne	r6,#0x01,00115$
                           000412  2114 	C$efm8_usbd.c$463$3$158 ==.
                                   2115 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:463: regulatorEnabled = true;
      00287F D2 01            [12] 2116 	setb	b1
                           000414  2117 	C$efm8_usbd.c$468$4$159 ==.
                                   2118 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:468: USB_SuspendRegulator();
      002881 75 A7 20         [24] 2119 	mov	_SFRPAGE,#0x20
      002884 43 C6 02         [24] 2120 	orl	_REG1CN,#0x02
                           00041A  2121 	C$efm8_usbd.c$471$3$158 ==.
                                   2122 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:471: for (i = 0; i < 3; i++)
      002887 7E 03            [12] 2123 	mov	r6,#0x03
      002889                       2124 00140$:
      002889 EE               [12] 2125 	mov	a,r6
      00288A 14               [12] 2126 	dec	a
      00288B FD               [12] 2127 	mov	r5,a
      00288C FE               [12] 2128 	mov	r6,a
      00288D 70 FA            [24] 2129 	jnz	00140$
      00288F 80 02            [24] 2130 	sjmp	00117$
      002891                       2131 00115$:
                           000424  2132 	C$efm8_usbd.c$478$3$161 ==.
                                   2133 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:478: regulatorEnabled = false;
      002891 C2 01            [12] 2134 	clr	b1
                           000426  2135 	C$efm8_usbd.c$481$2$154 ==.
                                   2136 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:481: do
      002893                       2137 00117$:
                           000426  2138 	C$efm8_usbd.c$483$3$162 ==.
                                   2139 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:483: USB_SuspendOscillator();
      002893 C0 07            [24] 2140 	push	ar7
      002895 C0 20            [24] 2141 	push	bits
      002897 12 42 02         [24] 2142 	lcall	_USB_SuspendOscillator
      00289A D0 20            [24] 2143 	pop	bits
                           00042F  2144 	C$efm8_usbd.c$507$2$154 ==.
                                   2145 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:507: } while (USB_IsSuspended() == true);
      00289C C0 20            [24] 2146 	push	bits
      00289E 12 40 36         [24] 2147 	lcall	_USB_IsSuspended
      0028A1 D0 20            [24] 2148 	pop	bits
      0028A3 D0 07            [24] 2149 	pop	ar7
      0028A5 92 02            [24] 2150 	mov  b2,c
      0028A7 E4               [12] 2151 	clr	a
      0028A8 33               [12] 2152 	rlc	a
      0028A9 FE               [12] 2153 	mov	r6,a
      0028AA BE 01 02         [24] 2154 	cjne	r6,#0x01,00172$
      0028AD 80 E4            [24] 2155 	sjmp	00117$
      0028AF                       2156 00172$:
                           000442  2157 	C$efm8_usbd.c$510$2$154 ==.
                                   2158 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:510: if (regulatorEnabled == true)
      0028AF A2 01            [12] 2159 	mov	c,b1
      0028B1 E4               [12] 2160 	clr	a
      0028B2 33               [12] 2161 	rlc	a
      0028B3 FE               [12] 2162 	mov	r6,a
      0028B4 BE 01 06         [24] 2163 	cjne	r6,#0x01,00124$
                           00044A  2164 	C$efm8_usbd.c$512$4$164 ==.
                                   2165 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:512: USB_UnsuspendRegulator();
      0028B7 75 A7 20         [24] 2166 	mov	_SFRPAGE,#0x20
      0028BA 53 C6 FD         [24] 2167 	anl	_REG1CN,#0xfd
      0028BD                       2168 00124$:
                           000450  2169 	C$efm8_usbd.c$516$2$154 ==.
                                   2170 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:516: if (prefetchEnabled == true)
      0028BD A2 00            [12] 2171 	mov	c,b0
      0028BF E4               [12] 2172 	clr	a
      0028C0 33               [12] 2173 	rlc	a
      0028C1 FE               [12] 2174 	mov	r6,a
      0028C2 BE 01 06         [24] 2175 	cjne	r6,#0x01,00130$
                           000458  2176 	C$efm8_usbd.c$518$4$166 ==.
                                   2177 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:518: USB_EnablePrefetch();
      0028C5 75 A7 10         [24] 2178 	mov	_SFRPAGE,#0x10
      0028C8 43 C1 30         [24] 2179 	orl	_PFE0CN,#0x30
                           00045E  2180 	C$efm8_usbd.c$523$2$154 ==.
                                   2181 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:523: USB_SetNormalClock();
      0028CB                       2182 00130$:
      0028CB 75 A7 20         [24] 2183 	mov	_SFRPAGE,#0x20
      0028CE 53 B5 F8         [24] 2184 	anl	_USB0CF,#0xf8
                           000464  2185 	C$efm8_usbd.c$525$3$168 ==.
                                   2186 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:525: USB_EnableTransceiver();
      0028D1 75 A7 20         [24] 2187 	mov	_SFRPAGE,#0x20
      0028D4 43 B3 40         [24] 2188 	orl	_USB0XCN,#0x40
      0028D7                       2189 00137$:
                           00046A  2190 	C$efm8_usbd.c$528$1$153 ==.
                                   2191 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:528: USB_RestoreSfrPage();
      0028D7 8F A7            [24] 2192 	mov	_SFRPAGE,r7
                           00046C  2193 	C$efm8_usbd.c$529$1$153 ==.
                           00046C  2194 	XG$USBD_Suspend$0$0 ==.
      0028D9 22               [24] 2195 	ret
                                   2196 ;------------------------------------------------------------
                                   2197 ;Allocation info for local variables in function 'USBD_UnStallEp'
                                   2198 ;------------------------------------------------------------
                                   2199 ;epAddr                    Allocated to registers r7 
                                   2200 ;usbIntsEnabled            Allocated to registers b0 
                                   2201 ;SfrPageSave               Allocated to registers r6 
                                   2202 ;------------------------------------------------------------
                           00046D  2203 	G$USBD_UnStallEp$0$0 ==.
                           00046D  2204 	C$efm8_usbd.c$531$1$153 ==.
                                   2205 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:531: int8_t USBD_UnStallEp(uint8_t epAddr)
                                   2206 ;	-----------------------------------------
                                   2207 ;	 function USBD_UnStallEp
                                   2208 ;	-----------------------------------------
      0028DA                       2209 _USBD_UnStallEp:
      0028DA AF 82            [24] 2210 	mov	r7,dpl
                           00046F  2211 	C$efm8_usbd.c$535$1$153 ==.
                                   2212 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:535: USB_SaveSfrPage();
      0028DC AE A7            [24] 2213 	mov	r6,_SFRPAGE
                           000471  2214 	C$efm8_usbd.c$538$1$170 ==.
                                   2215 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:538: if ((epAddr == EP0) || (epAddr >= SLAB_USB_NUM_EPS_USED))
      0028DE EF               [12] 2216 	mov	a,r7
      0028DF 60 05            [24] 2217 	jz	00127$
      0028E1 BF 03 00         [24] 2218 	cjne	r7,#0x03,00161$
      0028E4                       2219 00161$:
      0028E4 40 05            [24] 2220 	jc	00128$
      0028E6                       2221 00127$:
                           000479  2222 	C$efm8_usbd.c$541$2$171 ==.
                                   2223 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:541: return USB_STATUS_ILLEGAL;
      0028E6 75 82 FC         [24] 2224 	mov	dpl,#0xfc
      0028E9 80 70            [24] 2225 	sjmp	00131$
      0028EB                       2226 00128$:
                           00047E  2227 	C$efm8_usbd.c$545$3$173 ==.
                                   2228 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:545: DISABLE_USB_INTS;
      0028EB C0 07            [24] 2229 	push	ar7
      0028ED C0 06            [24] 2230 	push	ar6
      0028EF 12 41 E5         [24] 2231 	lcall	_USB_GetIntsEnabled
      0028F2 D0 06            [24] 2232 	pop	ar6
      0028F4 D0 07            [24] 2233 	pop	ar7
      0028F6 92 00            [24] 2234 	mov	b0,c
      0028F8 75 A7 10         [24] 2235 	mov	_SFRPAGE,#0x10
      0028FB 53 CE FE         [24] 2236 	anl	_EIE2,#0xfe
                           000491  2237 	C$efm8_usbd.c$548$2$172 ==.
                                   2238 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:548: switch (epAddr)
      0028FE BF 01 02         [24] 2239 	cjne	r7,#0x01,00163$
      002901 80 05            [24] 2240 	sjmp	00104$
      002903                       2241 00163$:
                           000496  2242 	C$efm8_usbd.c$551$3$175 ==.
                                   2243 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:551: case (EP1IN):
      002903 BF 02 47         [24] 2244 	cjne	r7,#0x02,00121$
      002906 80 21            [24] 2245 	sjmp	00111$
      002908                       2246 00104$:
                           00049B  2247 	C$efm8_usbd.c$552$3$175 ==.
                                   2248 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:552: myUsbDevice.ep1in.state = D_EP_IDLE;
      002908 90 02 03         [24] 2249 	mov	dptr,#(_myUsbDevice + 0x0019)
      00290B 74 01            [12] 2250 	mov	a,#0x01
      00290D F0               [24] 2251 	movx	@dptr,a
                           0004A1  2252 	C$efm8_usbd.c$553$3$175 ==.
                                   2253 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:553: USB_SetIndex(1);
      00290E 75 82 01         [24] 2254 	mov	dpl,#0x01
      002911 C0 06            [24] 2255 	push	ar6
      002913 C0 20            [24] 2256 	push	bits
      002915 12 3F F9         [24] 2257 	lcall	_USB_SetIndex
      002918 D0 20            [24] 2258 	pop	bits
      00291A D0 06            [24] 2259 	pop	ar6
                           0004AF  2260 	C$efm8_usbd.c$554$4$176 ==.
                                   2261 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:554: USB_EpnInEndStall();
      00291C 75 AE 11         [24] 2262 	mov	_USB0ADR,#0x11
      00291F 75 AF 00         [24] 2263 	mov	_USB0DAT,#0x00
      002922                       2264 00105$:
      002922 E5 AE            [12] 2265 	mov	a,_USB0ADR
      002924 20 E7 FB         [24] 2266 	jb	acc.7,00105$
                           0004BA  2267 	C$efm8_usbd.c$555$3$175 ==.
                                   2268 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:555: break;
                           0004BA  2269 	C$efm8_usbd.c$572$3$175 ==.
                                   2270 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:572: case (EP1OUT):
      002927 80 24            [24] 2271 	sjmp	00121$
      002929                       2272 00111$:
                           0004BC  2273 	C$efm8_usbd.c$573$3$175 ==.
                                   2274 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:573: myUsbDevice.ep1out.state = D_EP_IDLE;
      002929 90 02 0A         [24] 2275 	mov	dptr,#(_myUsbDevice + 0x0020)
      00292C 74 01            [12] 2276 	mov	a,#0x01
      00292E F0               [24] 2277 	movx	@dptr,a
                           0004C2  2278 	C$efm8_usbd.c$574$3$175 ==.
                                   2279 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:574: USB_SetIndex(1);
      00292F 75 82 01         [24] 2280 	mov	dpl,#0x01
      002932 C0 06            [24] 2281 	push	ar6
      002934 C0 20            [24] 2282 	push	bits
      002936 12 3F F9         [24] 2283 	lcall	_USB_SetIndex
      002939 D0 20            [24] 2284 	pop	bits
      00293B D0 06            [24] 2285 	pop	ar6
                           0004D0  2286 	C$efm8_usbd.c$575$4$178 ==.
                                   2287 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:575: USB_EpnOutEndStall();
      00293D 75 AE 94         [24] 2288 	mov	_USB0ADR,#0x94
      002940                       2289 00112$:
      002940 E5 AE            [12] 2290 	mov	a,_USB0ADR
      002942 20 E7 FB         [24] 2291 	jb	acc.7,00112$
      002945 53 AF DF         [24] 2292 	anl	_USB0DAT,#0xdf
      002948                       2293 00115$:
      002948 E5 AE            [12] 2294 	mov	a,_USB0ADR
      00294A 20 E7 FB         [24] 2295 	jb	acc.7,00115$
                           0004E0  2296 	C$efm8_usbd.c$592$2$172 ==.
                                   2297 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:592: }
      00294D                       2298 00121$:
                           0004E0  2299 	C$efm8_usbd.c$594$3$181 ==.
                                   2300 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:594: ENABLE_USB_INTS;
      00294D 30 00 06         [24] 2301 	jnb	b0,00126$
      002950 75 A7 10         [24] 2302 	mov	_SFRPAGE,#0x10
      002953 43 CE 01         [24] 2303 	orl	_EIE2,#0x01
      002956                       2304 00126$:
                           0004E9  2305 	C$efm8_usbd.c$595$2$172 ==.
                                   2306 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:595: USB_RestoreSfrPage();
      002956 8E A7            [24] 2307 	mov	_SFRPAGE,r6
                           0004EB  2308 	C$efm8_usbd.c$598$1$170 ==.
                                   2309 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:598: return USB_STATUS_OK;
      002958 75 82 00         [24] 2310 	mov	dpl,#0x00
      00295B                       2311 00131$:
                           0004EE  2312 	C$efm8_usbd.c$599$1$170 ==.
                           0004EE  2313 	XG$USBD_UnStallEp$0$0 ==.
      00295B 22               [24] 2314 	ret
                                   2315 ;------------------------------------------------------------
                                   2316 ;Allocation info for local variables in function 'USBD_Write'
                                   2317 ;------------------------------------------------------------
                                   2318 ;dat                       Allocated to stack - _bp -5
                                   2319 ;byteCount                 Allocated to stack - _bp -7
                                   2320 ;callback                  Allocated to registers b0 
                                   2321 ;epAddr                    Allocated to registers r7 
                                   2322 ;usbIntsEnabled            Allocated to registers b1 
                                   2323 ;ep                        Allocated to registers r3 r4 
                                   2324 ;SfrPageSave               Allocated to registers r6 
                                   2325 ;sloc0                     Allocated to stack - _bp +1
                                   2326 ;------------------------------------------------------------
                           0004EF  2327 	G$USBD_Write$0$0 ==.
                           0004EF  2328 	C$efm8_usbd.c$601$1$170 ==.
                                   2329 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:601: int8_t USBD_Write(uint8_t epAddr,
                                   2330 ;	-----------------------------------------
                                   2331 ;	 function USBD_Write
                                   2332 ;	-----------------------------------------
      00295C                       2333 _USBD_Write:
      00295C C0 1B            [24] 2334 	push	_bp
      00295E 85 81 1B         [24] 2335 	mov	_bp,sp
      002961 05 81            [12] 2336 	inc	sp
      002963 05 81            [12] 2337 	inc	sp
      002965 AF 82            [24] 2338 	mov	r7,dpl
                           0004FA  2339 	C$efm8_usbd.c$609$1$170 ==.
                                   2340 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:609: USB_SaveSfrPage();
      002967 AE A7            [24] 2341 	mov	r6,_SFRPAGE
                           0004FC  2342 	C$efm8_usbd.c$612$1$185 ==.
                                   2343 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:612: switch (epAddr)
      002969 E4               [12] 2344 	clr	a
      00296A BF 00 01         [24] 2345 	cjne	r7,#0x00,00159$
      00296D 04               [12] 2346 	inc	a
      00296E                       2347 00159$:
      00296E FD               [12] 2348 	mov	r5,a
      00296F 70 0B            [24] 2349 	jnz	00105$
      002971 BF 01 02         [24] 2350 	cjne	r7,#0x01,00162$
      002974 80 06            [24] 2351 	sjmp	00105$
      002976                       2352 00162$:
                           000509  2353 	C$efm8_usbd.c$636$2$186 ==.
                                   2354 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:636: return USB_STATUS_ILLEGAL;
      002976 75 82 FC         [24] 2355 	mov	dpl,#0xfc
      002979 02 2A 97         [24] 2356 	ljmp	00125$
                           00050F  2357 	C$efm8_usbd.c$637$1$185 ==.
                                   2358 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:637: }
      00297C                       2359 00105$:
                           00050F  2360 	C$efm8_usbd.c$641$1$185 ==.
                                   2361 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:641: if ((epAddr != EP0) && (myUsbDevice.state != USBD_STATE_CONFIGURED))
      00297C EF               [12] 2362 	mov	a,r7
      00297D 60 10            [24] 2363 	jz	00107$
      00297F 90 01 EC         [24] 2364 	mov	dptr,#(_myUsbDevice + 0x0002)
      002982 E0               [24] 2365 	movx	a,@dptr
      002983 FC               [12] 2366 	mov	r4,a
      002984 BC 06 02         [24] 2367 	cjne	r4,#0x06,00164$
      002987 80 06            [24] 2368 	sjmp	00107$
      002989                       2369 00164$:
                           00051C  2370 	C$efm8_usbd.c$643$2$187 ==.
                                   2371 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:643: return USB_STATUS_DEVICE_UNCONFIGURED;
      002989 75 82 F7         [24] 2372 	mov	dpl,#0xf7
      00298C 02 2A 97         [24] 2373 	ljmp	00125$
      00298F                       2374 00107$:
                           000522  2375 	C$efm8_usbd.c$646$1$185 ==.
                                   2376 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:646: ep = GetEp(epAddr);
      00298F EF               [12] 2377 	mov	a,r7
      002990 75 F0 07         [24] 2378 	mov	b,#0x07
      002993 A4               [48] 2379 	mul	ab
      002994 AC F0            [24] 2380 	mov	r4,b
      002996 24 F7            [12] 2381 	add	a,#(_myUsbDevice + 0x000d)
      002998 FB               [12] 2382 	mov	r3,a
      002999 EC               [12] 2383 	mov	a,r4
      00299A 34 01            [12] 2384 	addc	a,#((_myUsbDevice + 0x000d) >> 8)
      00299C FC               [12] 2385 	mov	r4,a
                           000530  2386 	C$efm8_usbd.c$650$1$185 ==.
                                   2387 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:650: if (ep->state != D_EP_IDLE)
      00299D A8 1B            [24] 2388 	mov	r0,_bp
      00299F 08               [12] 2389 	inc	r0
      0029A0 74 05            [12] 2390 	mov	a,#0x05
      0029A2 2B               [12] 2391 	add	a,r3
      0029A3 F6               [12] 2392 	mov	@r0,a
      0029A4 E4               [12] 2393 	clr	a
      0029A5 3C               [12] 2394 	addc	a,r4
      0029A6 08               [12] 2395 	inc	r0
      0029A7 F6               [12] 2396 	mov	@r0,a
      0029A8 A8 1B            [24] 2397 	mov	r0,_bp
      0029AA 08               [12] 2398 	inc	r0
      0029AB 86 82            [24] 2399 	mov	dpl,@r0
      0029AD 08               [12] 2400 	inc	r0
      0029AE 86 83            [24] 2401 	mov	dph,@r0
      0029B0 E0               [24] 2402 	movx	a,@dptr
      0029B1 FA               [12] 2403 	mov	r2,a
      0029B2 BA 01 02         [24] 2404 	cjne	r2,#0x01,00165$
      0029B5 80 0F            [24] 2405 	sjmp	00113$
      0029B7                       2406 00165$:
                           00054A  2407 	C$efm8_usbd.c$652$2$188 ==.
                                   2408 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:652: if (ep->state == D_EP_STALL)
      0029B7 BA 05 06         [24] 2409 	cjne	r2,#0x05,00110$
                           00054D  2410 	C$efm8_usbd.c$654$3$189 ==.
                                   2411 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:654: return USB_STATUS_EP_STALLED;
      0029BA 75 82 FB         [24] 2412 	mov	dpl,#0xfb
      0029BD 02 2A 97         [24] 2413 	ljmp	00125$
      0029C0                       2414 00110$:
                           000553  2415 	C$efm8_usbd.c$658$3$190 ==.
                                   2416 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:658: return USB_STATUS_EP_BUSY;
      0029C0 75 82 FE         [24] 2417 	mov	dpl,#0xfe
      0029C3 02 2A 97         [24] 2418 	ljmp	00125$
      0029C6                       2419 00113$:
                           000559  2420 	C$efm8_usbd.c$662$2$191 ==.
                                   2421 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:662: DISABLE_USB_INTS;
      0029C6 C0 07            [24] 2422 	push	ar7
      0029C8 C0 06            [24] 2423 	push	ar6
      0029CA C0 05            [24] 2424 	push	ar5
      0029CC C0 04            [24] 2425 	push	ar4
      0029CE C0 03            [24] 2426 	push	ar3
      0029D0 C0 20            [24] 2427 	push	bits
      0029D2 12 41 E5         [24] 2428 	lcall	_USB_GetIntsEnabled
      0029D5 D0 20            [24] 2429 	pop	bits
      0029D7 D0 03            [24] 2430 	pop	ar3
      0029D9 D0 04            [24] 2431 	pop	ar4
      0029DB D0 05            [24] 2432 	pop	ar5
      0029DD D0 06            [24] 2433 	pop	ar6
      0029DF D0 07            [24] 2434 	pop	ar7
      0029E1 92 01            [24] 2435 	mov	b1,c
      0029E3 75 A7 10         [24] 2436 	mov	_SFRPAGE,#0x10
      0029E6 53 CE FE         [24] 2437 	anl	_EIE2,#0xfe
                           00057C  2438 	C$efm8_usbd.c$664$1$185 ==.
                                   2439 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:664: ep->buf = dat;
      0029E9 8B 82            [24] 2440 	mov	dpl,r3
      0029EB 8C 83            [24] 2441 	mov	dph,r4
      0029ED E5 1B            [12] 2442 	mov	a,_bp
      0029EF 24 FB            [12] 2443 	add	a,#0xfb
      0029F1 F8               [12] 2444 	mov	r0,a
      0029F2 E6               [12] 2445 	mov	a,@r0
      0029F3 F0               [24] 2446 	movx	@dptr,a
      0029F4 08               [12] 2447 	inc	r0
      0029F5 E6               [12] 2448 	mov	a,@r0
      0029F6 A3               [24] 2449 	inc	dptr
      0029F7 F0               [24] 2450 	movx	@dptr,a
      0029F8 08               [12] 2451 	inc	r0
      0029F9 E6               [12] 2452 	mov	a,@r0
      0029FA A3               [24] 2453 	inc	dptr
      0029FB F0               [24] 2454 	movx	@dptr,a
                           00058F  2455 	C$efm8_usbd.c$665$1$185 ==.
                                   2456 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:665: ep->remaining = byteCount;
      0029FC 8B 82            [24] 2457 	mov	dpl,r3
      0029FE 8C 83            [24] 2458 	mov	dph,r4
      002A00 A3               [24] 2459 	inc	dptr
      002A01 A3               [24] 2460 	inc	dptr
      002A02 A3               [24] 2461 	inc	dptr
      002A03 E5 1B            [12] 2462 	mov	a,_bp
      002A05 24 F9            [12] 2463 	add	a,#0xf9
      002A07 F8               [12] 2464 	mov	r0,a
      002A08 E6               [12] 2465 	mov	a,@r0
      002A09 F0               [24] 2466 	movx	@dptr,a
      002A0A 08               [12] 2467 	inc	r0
      002A0B E6               [12] 2468 	mov	a,@r0
      002A0C A3               [24] 2469 	inc	dptr
      002A0D F0               [24] 2470 	movx	@dptr,a
                           0005A1  2471 	C$efm8_usbd.c$666$1$185 ==.
                                   2472 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:666: ep->state = D_EP_TRANSMITTING;
      002A0E A8 1B            [24] 2473 	mov	r0,_bp
      002A10 08               [12] 2474 	inc	r0
      002A11 86 82            [24] 2475 	mov	dpl,@r0
      002A13 08               [12] 2476 	inc	r0
      002A14 86 83            [24] 2477 	mov	dph,@r0
      002A16 74 02            [12] 2478 	mov	a,#0x02
      002A18 F0               [24] 2479 	movx	@dptr,a
                           0005AC  2480 	C$efm8_usbd.c$667$1$185 ==.
                                   2481 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:667: ep->misc.bits.callback = callback;
      002A19 74 06            [12] 2482 	mov	a,#0x06
      002A1B 2B               [12] 2483 	add	a,r3
      002A1C FB               [12] 2484 	mov	r3,a
      002A1D E4               [12] 2485 	clr	a
      002A1E 3C               [12] 2486 	addc	a,r4
      002A1F FC               [12] 2487 	mov	r4,a
      002A20 A2 00            [12] 2488 	mov	c,b0
      002A22 E4               [12] 2489 	clr	a
      002A23 33               [12] 2490 	rlc	a
      002A24 FA               [12] 2491 	mov	r2,a
      002A25 8B 82            [24] 2492 	mov	dpl,r3
      002A27 8C 83            [24] 2493 	mov	dph,r4
      002A29 13               [12] 2494 	rrc	a
      002A2A E0               [24] 2495 	movx	a,@dptr
      002A2B 92 E0            [24] 2496 	mov	acc.0,c
      002A2D F0               [24] 2497 	movx	@dptr,a
                           0005C1  2498 	C$efm8_usbd.c$669$1$185 ==.
                                   2499 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:669: switch (epAddr)
      002A2E ED               [12] 2500 	mov	a,r5
      002A2F 70 05            [24] 2501 	jnz	00117$
                           0005C4  2502 	C$efm8_usbd.c$673$2$193 ==.
                                   2503 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:673: case (EP0):
      002A31 BF 01 55         [24] 2504 	cjne	r7,#0x01,00119$
      002A34 80 09            [24] 2505 	sjmp	00118$
      002A36                       2506 00117$:
                           0005C9  2507 	C$efm8_usbd.c$674$2$193 ==.
                                   2508 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:674: myUsbDevice.ep0.misc.bits.inPacketPending = true;
      002A36 90 01 FD         [24] 2509 	mov	dptr,#(_myUsbDevice + 0x0013)
      002A39 E0               [24] 2510 	movx	a,@dptr
      002A3A 44 04            [12] 2511 	orl	a,#0x04
      002A3C F0               [24] 2512 	movx	@dptr,a
                           0005D0  2513 	C$efm8_usbd.c$675$2$193 ==.
                                   2514 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:675: break;
                           0005D0  2515 	C$efm8_usbd.c$680$2$193 ==.
                                   2516 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:680: case (EP1IN):
      002A3D 80 4A            [24] 2517 	sjmp	00119$
      002A3F                       2518 00118$:
                           0005D2  2519 	C$efm8_usbd.c$683$2$193 ==.
                                   2520 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:683: myUsbDevice.ep1in.buf,
      002A3F 90 01 FE         [24] 2521 	mov	dptr,#(_myUsbDevice + 0x0014)
      002A42 E0               [24] 2522 	movx	a,@dptr
      002A43 FC               [12] 2523 	mov	r4,a
      002A44 A3               [24] 2524 	inc	dptr
      002A45 E0               [24] 2525 	movx	a,@dptr
      002A46 FD               [12] 2526 	mov	r5,a
      002A47 A3               [24] 2527 	inc	dptr
      002A48 E0               [24] 2528 	movx	a,@dptr
      002A49 FF               [12] 2529 	mov	r7,a
                           0005DD  2530 	C$efm8_usbd.c$682$2$193 ==.
                                   2531 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:682: (byteCount > SLAB_USB_EP1IN_MAX_PACKET_SIZE) ? SLAB_USB_EP1IN_MAX_PACKET_SIZE : byteCount,
      002A4A E5 1B            [12] 2532 	mov	a,_bp
      002A4C 24 F9            [12] 2533 	add	a,#0xf9
      002A4E F8               [12] 2534 	mov	r0,a
      002A4F C3               [12] 2535 	clr	c
      002A50 74 40            [12] 2536 	mov	a,#0x40
      002A52 96               [12] 2537 	subb	a,@r0
      002A53 E4               [12] 2538 	clr	a
      002A54 08               [12] 2539 	inc	r0
      002A55 96               [12] 2540 	subb	a,@r0
      002A56 50 06            [24] 2541 	jnc	00127$
      002A58 7A 40            [12] 2542 	mov	r2,#0x40
      002A5A 7B 00            [12] 2543 	mov	r3,#0x00
      002A5C 80 0A            [24] 2544 	sjmp	00128$
      002A5E                       2545 00127$:
      002A5E E5 1B            [12] 2546 	mov	a,_bp
      002A60 24 F9            [12] 2547 	add	a,#0xf9
      002A62 F8               [12] 2548 	mov	r0,a
      002A63 86 02            [24] 2549 	mov	ar2,@r0
      002A65 08               [12] 2550 	inc	r0
      002A66 86 03            [24] 2551 	mov	ar3,@r0
      002A68                       2552 00128$:
                           0005FB  2553 	C$efm8_usbd.c$681$2$193 ==.
                                   2554 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:681: USB_WriteFIFO(1,
      002A68 C0 06            [24] 2555 	push	ar6
      002A6A C0 20            [24] 2556 	push	bits
      002A6C C0 04            [24] 2557 	push	ar4
      002A6E C0 05            [24] 2558 	push	ar5
      002A70 C0 07            [24] 2559 	push	ar7
      002A72 C0 02            [24] 2560 	push	ar2
      002A74 D2 F0            [12] 2561 	setb	b[0]
      002A76 85 F0 20         [24] 2562 	mov	bits,b
      002A79 75 82 01         [24] 2563 	mov	dpl,#0x01
      002A7C 12 35 73         [24] 2564 	lcall	_USB_WriteFIFO
      002A7F E5 81            [12] 2565 	mov	a,sp
      002A81 24 FC            [12] 2566 	add	a,#0xfc
      002A83 F5 81            [12] 2567 	mov	sp,a
      002A85 D0 20            [24] 2568 	pop	bits
      002A87 D0 06            [24] 2569 	pop	ar6
                           00061C  2570 	C$efm8_usbd.c$708$1$185 ==.
                                   2571 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:708: }
      002A89                       2572 00119$:
                           00061C  2573 	C$efm8_usbd.c$710$2$194 ==.
                                   2574 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:710: ENABLE_USB_INTS;
      002A89 30 01 06         [24] 2575 	jnb	b1,00124$
      002A8C 75 A7 10         [24] 2576 	mov	_SFRPAGE,#0x10
      002A8F 43 CE 01         [24] 2577 	orl	_EIE2,#0x01
      002A92                       2578 00124$:
                           000625  2579 	C$efm8_usbd.c$711$1$185 ==.
                                   2580 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:711: USB_RestoreSfrPage();
      002A92 8E A7            [24] 2581 	mov	_SFRPAGE,r6
                           000627  2582 	C$efm8_usbd.c$713$1$185 ==.
                                   2583 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:713: return USB_STATUS_OK;
      002A94 75 82 00         [24] 2584 	mov	dpl,#0x00
      002A97                       2585 00125$:
      002A97 85 1B 81         [24] 2586 	mov	sp,_bp
      002A9A D0 1B            [24] 2587 	pop	_bp
                           00062F  2588 	C$efm8_usbd.c$714$1$185 ==.
                           00062F  2589 	XG$USBD_Write$0$0 ==.
      002A9C 22               [24] 2590 	ret
                                   2591 ;------------------------------------------------------------
                                   2592 ;Allocation info for local variables in function 'USBD_SetUsbState'
                                   2593 ;------------------------------------------------------------
                                   2594 ;newState                  Allocated to registers r7 
                                   2595 ;currentState              Allocated to registers r6 
                                   2596 ;------------------------------------------------------------
                           000630  2597 	G$USBD_SetUsbState$0$0 ==.
                           000630  2598 	C$efm8_usbd.c$719$1$185 ==.
                                   2599 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:719: void USBD_SetUsbState(USBD_State_TypeDef newState)
                                   2600 ;	-----------------------------------------
                                   2601 ;	 function USBD_SetUsbState
                                   2602 ;	-----------------------------------------
      002A9D                       2603 _USBD_SetUsbState:
      002A9D AF 82            [24] 2604 	mov	r7,dpl
                           000632  2605 	C$efm8_usbd.c$726$1$198 ==.
                                   2606 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:726: currentState = myUsbDevice.state;
      002A9F 90 01 EC         [24] 2607 	mov	dptr,#(_myUsbDevice + 0x0002)
      002AA2 E0               [24] 2608 	movx	a,@dptr
      002AA3 FE               [12] 2609 	mov	r6,a
                           000637  2610 	C$efm8_usbd.c$730$1$198 ==.
                                   2611 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:730: if ((currentState >= USBD_STATE_SUSPENDED)
      002AA4 BE 05 00         [24] 2612 	cjne	r6,#0x05,00122$
      002AA7                       2613 00122$:
      002AA7 40 10            [24] 2614 	jc	00102$
                           00063C  2615 	C$efm8_usbd.c$731$1$198 ==.
                                   2616 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:731: && (newState < USBD_STATE_SUSPENDED))
      002AA9 BF 05 00         [24] 2617 	cjne	r7,#0x05,00124$
      002AAC                       2618 00124$:
      002AAC 50 0B            [24] 2619 	jnc	00102$
                           000641  2620 	C$efm8_usbd.c$733$2$199 ==.
                                   2621 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:733: USBD_AbortAllTransfers();
      002AAE C0 07            [24] 2622 	push	ar7
      002AB0 C0 06            [24] 2623 	push	ar6
      002AB2 12 24 6D         [24] 2624 	lcall	_USBD_AbortAllTransfers
      002AB5 D0 06            [24] 2625 	pop	ar6
      002AB7 D0 07            [24] 2626 	pop	ar7
      002AB9                       2627 00102$:
                           00064C  2628 	C$efm8_usbd.c$742$1$198 ==.
                                   2629 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:742: if (newState == USBD_STATE_SUSPENDED)
      002AB9 BF 05 05         [24] 2630 	cjne	r7,#0x05,00105$
                           00064F  2631 	C$efm8_usbd.c$744$2$200 ==.
                                   2632 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:744: myUsbDevice.savedState = currentState;
      002ABC 90 01 ED         [24] 2633 	mov	dptr,#(_myUsbDevice + 0x0003)
      002ABF EE               [12] 2634 	mov	a,r6
      002AC0 F0               [24] 2635 	movx	@dptr,a
      002AC1                       2636 00105$:
                           000654  2637 	C$efm8_usbd.c$747$1$198 ==.
                                   2638 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:747: myUsbDevice.state = newState;
      002AC1 90 01 EC         [24] 2639 	mov	dptr,#(_myUsbDevice + 0x0002)
      002AC4 EF               [12] 2640 	mov	a,r7
      002AC5 F0               [24] 2641 	movx	@dptr,a
                           000659  2642 	C$efm8_usbd.c$750$1$198 ==.
                                   2643 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:750: if (currentState != newState)
      002AC6 EE               [12] 2644 	mov	a,r6
      002AC7 B5 07 02         [24] 2645 	cjne	a,ar7,00128$
      002ACA 80 09            [24] 2646 	sjmp	00108$
      002ACC                       2647 00128$:
                           00065F  2648 	C$efm8_usbd.c$752$2$201 ==.
                                   2649 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:752: USBD_DeviceStateChangeCb(currentState, newState);
      002ACC C0 07            [24] 2650 	push	ar7
      002ACE 8E 82            [24] 2651 	mov	dpl,r6
      002AD0 12 3D D1         [24] 2652 	lcall	_USBD_DeviceStateChangeCb
      002AD3 15 81            [12] 2653 	dec	sp
      002AD5                       2654 00108$:
                           000668  2655 	C$efm8_usbd.c$755$1$198 ==.
                           000668  2656 	XG$USBD_SetUsbState$0$0 ==.
      002AD5 22               [24] 2657 	ret
                                   2658 	.area CSEG    (CODE)
                                   2659 	.area CONST   (CODE)
                                   2660 	.area XINIT   (CODE)
                                   2661 	.area CABS    (ABS,CODE)
