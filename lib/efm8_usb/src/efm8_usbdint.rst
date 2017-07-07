                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module efm8_usbdint
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _forceModuleLoad_usbint
                                     12 	.globl _usbIrqHandler
                                     13 	.globl _handleUsbOut1Int
                                     14 	.globl _handleUsbIn1Int
                                     15 	.globl _USB_Ep0GetCount
                                     16 	.globl _USB_Ep0OutPacketReady
                                     17 	.globl _USB_Ep0InPacketReady
                                     18 	.globl _USB_Ep0SentStall
                                     19 	.globl _USB_GetSetupEnd
                                     20 	.globl _USB_GetIndex
                                     21 	.globl _USB_GetOutInts
                                     22 	.globl _USB_GetInInts
                                     23 	.globl _USB_GetCommonInts
                                     24 	.globl _USB_SetIndex
                                     25 	.globl _USB_WriteFIFO
                                     26 	.globl _USB_ReadFIFO
                                     27 	.globl _USBD_XferCompleteCb
                                     28 	.globl _USBD_ResetCb
                                     29 	.globl _USBD_SetUsbState
                                     30 	.globl _UART1FCN1_TFRQ
                                     31 	.globl _UART1FCN1_TXNF
                                     32 	.globl _UART1FCN1_TXHOLD
                                     33 	.globl _UART1FCN1_TIE
                                     34 	.globl _UART1FCN1_RFRQ
                                     35 	.globl _UART1FCN1_RXTO1
                                     36 	.globl _UART1FCN1_RXTO0
                                     37 	.globl _UART1FCN1_RIE
                                     38 	.globl _TMR4CN0_TF4H
                                     39 	.globl _TMR4CN0_TF4L
                                     40 	.globl _TMR4CN0_TF4LEN
                                     41 	.globl _TMR4CN0_TF4CEN
                                     42 	.globl _TMR4CN0_T4SPLIT
                                     43 	.globl _TMR4CN0_TR4
                                     44 	.globl _TMR4CN0_T4XCLK1
                                     45 	.globl _TMR4CN0_T4XCLK0
                                     46 	.globl _TMR2CN0_TF2H
                                     47 	.globl _TMR2CN0_TF2L
                                     48 	.globl _TMR2CN0_TF2LEN
                                     49 	.globl _TMR2CN0_TF2CEN
                                     50 	.globl _TMR2CN0_T2SPLIT
                                     51 	.globl _TMR2CN0_TR2
                                     52 	.globl _TMR2CN0_T2XCLK1
                                     53 	.globl _TMR2CN0_T2XCLK0
                                     54 	.globl _TCON_TF1
                                     55 	.globl _TCON_TR1
                                     56 	.globl _TCON_TF0
                                     57 	.globl _TCON_TR0
                                     58 	.globl _TCON_IE1
                                     59 	.globl _TCON_IT1
                                     60 	.globl _TCON_IE0
                                     61 	.globl _TCON_IT0
                                     62 	.globl _SPI0CN0_SPIF
                                     63 	.globl _SPI0CN0_WCOL
                                     64 	.globl _SPI0CN0_MODF
                                     65 	.globl _SPI0CN0_RXOVRN
                                     66 	.globl _SPI0CN0_NSSMD1
                                     67 	.globl _SPI0CN0_NSSMD0
                                     68 	.globl _SPI0CN0_TXNF
                                     69 	.globl _SPI0CN0_SPIEN
                                     70 	.globl _SMB0CN0_MASTER
                                     71 	.globl _SMB0CN0_TXMODE
                                     72 	.globl _SMB0CN0_STA
                                     73 	.globl _SMB0CN0_STO
                                     74 	.globl _SMB0CN0_ACKRQ
                                     75 	.globl _SMB0CN0_ARBLOST
                                     76 	.globl _SMB0CN0_ACK
                                     77 	.globl _SMB0CN0_SI
                                     78 	.globl _SCON1_OVR
                                     79 	.globl _SCON1_PERR
                                     80 	.globl _SCON1_REN
                                     81 	.globl _SCON1_TBX
                                     82 	.globl _SCON1_RBX
                                     83 	.globl _SCON1_TI
                                     84 	.globl _SCON1_RI
                                     85 	.globl _SCON0_SMODE
                                     86 	.globl _SCON0_MCE
                                     87 	.globl _SCON0_REN
                                     88 	.globl _SCON0_TB8
                                     89 	.globl _SCON0_RB8
                                     90 	.globl _SCON0_TI
                                     91 	.globl _SCON0_RI
                                     92 	.globl _PSW_CY
                                     93 	.globl _PSW_AC
                                     94 	.globl _PSW_F0
                                     95 	.globl _PSW_RS1
                                     96 	.globl _PSW_RS0
                                     97 	.globl _PSW_OV
                                     98 	.globl _PSW_F1
                                     99 	.globl _PSW_PARITY
                                    100 	.globl _PCA0CN0_CF
                                    101 	.globl _PCA0CN0_CR
                                    102 	.globl _PCA0CN0_CCF2
                                    103 	.globl _PCA0CN0_CCF1
                                    104 	.globl _PCA0CN0_CCF0
                                    105 	.globl _P3_B1
                                    106 	.globl _P3_B0
                                    107 	.globl _P2_B3
                                    108 	.globl _P2_B2
                                    109 	.globl _P2_B1
                                    110 	.globl _P2_B0
                                    111 	.globl _P1_B7
                                    112 	.globl _P1_B6
                                    113 	.globl _P1_B5
                                    114 	.globl _P1_B4
                                    115 	.globl _P1_B3
                                    116 	.globl _P1_B2
                                    117 	.globl _P1_B1
                                    118 	.globl _P1_B0
                                    119 	.globl _P0_B7
                                    120 	.globl _P0_B6
                                    121 	.globl _P0_B5
                                    122 	.globl _P0_B4
                                    123 	.globl _P0_B3
                                    124 	.globl _P0_B2
                                    125 	.globl _P0_B1
                                    126 	.globl _P0_B0
                                    127 	.globl _IP_PSPI0
                                    128 	.globl _IP_PT2
                                    129 	.globl _IP_PS0
                                    130 	.globl _IP_PT1
                                    131 	.globl _IP_PX1
                                    132 	.globl _IP_PT0
                                    133 	.globl _IP_PX0
                                    134 	.globl _IE_EA
                                    135 	.globl _IE_ESPI0
                                    136 	.globl _IE_ET2
                                    137 	.globl _IE_ES0
                                    138 	.globl _IE_ET1
                                    139 	.globl _IE_EX1
                                    140 	.globl _IE_ET0
                                    141 	.globl _IE_EX0
                                    142 	.globl _B_B7
                                    143 	.globl _B_B6
                                    144 	.globl _B_B5
                                    145 	.globl _B_B4
                                    146 	.globl _B_B3
                                    147 	.globl _B_B2
                                    148 	.globl _B_B1
                                    149 	.globl _B_B0
                                    150 	.globl _ADC0CN0_ADEN
                                    151 	.globl _ADC0CN0_ADBMEN
                                    152 	.globl _ADC0CN0_ADINT
                                    153 	.globl _ADC0CN0_ADBUSY
                                    154 	.globl _ADC0CN0_ADWINT
                                    155 	.globl _ADC0CN0_ADCM2
                                    156 	.globl _ADC0CN0_ADCM1
                                    157 	.globl _ADC0CN0_ADCM0
                                    158 	.globl _ACC_ACC7
                                    159 	.globl _ACC_ACC6
                                    160 	.globl _ACC_ACC5
                                    161 	.globl _ACC_ACC4
                                    162 	.globl _ACC_ACC3
                                    163 	.globl _ACC_ACC2
                                    164 	.globl _ACC_ACC1
                                    165 	.globl _ACC_ACC0
                                    166 	.globl __XPAGE
                                    167 	.globl _TMR4RL
                                    168 	.globl _TMR4
                                    169 	.globl _TMR3RL
                                    170 	.globl _TMR3
                                    171 	.globl _TMR2RL
                                    172 	.globl _TMR2
                                    173 	.globl _SBRL1
                                    174 	.globl _PCA0
                                    175 	.globl _PCA0CP2
                                    176 	.globl _PCA0CP1
                                    177 	.globl _PCA0CP0
                                    178 	.globl _DP
                                    179 	.globl _ADC0LT
                                    180 	.globl _ADC0
                                    181 	.globl _ADC0GT
                                    182 	.globl _XBR2
                                    183 	.globl _XBR1
                                    184 	.globl _XBR0
                                    185 	.globl _WDTCN
                                    186 	.globl _VDM0CN
                                    187 	.globl _USB0XCN
                                    188 	.globl _USB0DAT
                                    189 	.globl _USB0CF
                                    190 	.globl _USB0CDSTA
                                    191 	.globl _USB0CDCN
                                    192 	.globl _USB0CDCF
                                    193 	.globl _USB0AEC
                                    194 	.globl _USB0ADR
                                    195 	.globl _UART1LIN
                                    196 	.globl _UART1FCT
                                    197 	.globl _UART1FCN1
                                    198 	.globl _UART1FCN0
                                    199 	.globl _TMR4RLL
                                    200 	.globl _TMR4RLH
                                    201 	.globl _TMR4L
                                    202 	.globl _TMR4H
                                    203 	.globl _TMR4CN1
                                    204 	.globl _TMR4CN0
                                    205 	.globl _TMR3RLL
                                    206 	.globl _TMR3RLH
                                    207 	.globl _TMR3L
                                    208 	.globl _TMR3H
                                    209 	.globl _TMR3CN1
                                    210 	.globl _TMR3CN0
                                    211 	.globl _TMR2RLL
                                    212 	.globl _TMR2RLH
                                    213 	.globl _TMR2L
                                    214 	.globl _TMR2H
                                    215 	.globl _TMR2CN1
                                    216 	.globl _TMR2CN0
                                    217 	.globl _TMOD
                                    218 	.globl _TL1
                                    219 	.globl _TL0
                                    220 	.globl _TH1
                                    221 	.globl _TH0
                                    222 	.globl _TCON
                                    223 	.globl _SPI0FCT
                                    224 	.globl _SPI0FCN1
                                    225 	.globl _SPI0FCN0
                                    226 	.globl _SPI0DAT
                                    227 	.globl _SPI0CN0
                                    228 	.globl _SPI0CKR
                                    229 	.globl _SPI0CFG
                                    230 	.globl _SP
                                    231 	.globl _SMOD1
                                    232 	.globl _SMB0TC
                                    233 	.globl _SMB0RXLN
                                    234 	.globl _SMB0FCT
                                    235 	.globl _SMB0FCN1
                                    236 	.globl _SMB0FCN0
                                    237 	.globl _SMB0DAT
                                    238 	.globl _SMB0CN0
                                    239 	.globl _SMB0CF
                                    240 	.globl _SMB0ADR
                                    241 	.globl _SMB0ADM
                                    242 	.globl _SFRSTACK
                                    243 	.globl _SFRPGCN
                                    244 	.globl _SFRPAGE
                                    245 	.globl _SCON1
                                    246 	.globl _SCON0
                                    247 	.globl _SBUF1
                                    248 	.globl _SBUF0
                                    249 	.globl _SBRLL1
                                    250 	.globl _SBRLH1
                                    251 	.globl _SBCON1
                                    252 	.globl _RSTSRC
                                    253 	.globl _REVID
                                    254 	.globl _REG1CN
                                    255 	.globl _REG0CN
                                    256 	.globl _REF0CN
                                    257 	.globl _PSW
                                    258 	.globl _PSCTL
                                    259 	.globl _PRTDRV
                                    260 	.globl _PFE0CN
                                    261 	.globl _PCON1
                                    262 	.globl _PCON0
                                    263 	.globl _PCA0PWM
                                    264 	.globl _PCA0POL
                                    265 	.globl _PCA0MD
                                    266 	.globl _PCA0L
                                    267 	.globl _PCA0H
                                    268 	.globl _PCA0CPM2
                                    269 	.globl _PCA0CPM1
                                    270 	.globl _PCA0CPM0
                                    271 	.globl _PCA0CPL2
                                    272 	.globl _PCA0CPL1
                                    273 	.globl _PCA0CPL0
                                    274 	.globl _PCA0CPH2
                                    275 	.globl _PCA0CPH1
                                    276 	.globl _PCA0CPH0
                                    277 	.globl _PCA0CN0
                                    278 	.globl _PCA0CLR
                                    279 	.globl _PCA0CENT
                                    280 	.globl _P3MDOUT
                                    281 	.globl _P3MDIN
                                    282 	.globl _P3
                                    283 	.globl _P2SKIP
                                    284 	.globl _P2MDOUT
                                    285 	.globl _P2MDIN
                                    286 	.globl _P2MAT
                                    287 	.globl _P2MASK
                                    288 	.globl _P2
                                    289 	.globl _P1SKIP
                                    290 	.globl _P1MDOUT
                                    291 	.globl _P1MDIN
                                    292 	.globl _P1MAT
                                    293 	.globl _P1MASK
                                    294 	.globl _P1
                                    295 	.globl _P0SKIP
                                    296 	.globl _P0MDOUT
                                    297 	.globl _P0MDIN
                                    298 	.globl _P0MAT
                                    299 	.globl _P0MASK
                                    300 	.globl _P0
                                    301 	.globl _LFO0CN
                                    302 	.globl _IT01CF
                                    303 	.globl _IPH
                                    304 	.globl _IP
                                    305 	.globl _IE
                                    306 	.globl _I2C0STAT
                                    307 	.globl _I2C0SLAD
                                    308 	.globl _I2C0FCT
                                    309 	.globl _I2C0FCN1
                                    310 	.globl _I2C0FCN0
                                    311 	.globl _I2C0DOUT
                                    312 	.globl _I2C0DIN
                                    313 	.globl _I2C0CN0
                                    314 	.globl _HFOCN
                                    315 	.globl _HFO1CAL
                                    316 	.globl _HFO0CAL
                                    317 	.globl _FLKEY
                                    318 	.globl _EMI0CN
                                    319 	.globl _EIP2H
                                    320 	.globl _EIP2
                                    321 	.globl _EIP1H
                                    322 	.globl _EIP1
                                    323 	.globl _EIE2
                                    324 	.globl _EIE1
                                    325 	.globl _DPL
                                    326 	.globl _DPH
                                    327 	.globl _DEVICEID
                                    328 	.globl _DERIVID
                                    329 	.globl _CRC0ST
                                    330 	.globl _CRC0IN
                                    331 	.globl _CRC0FLIP
                                    332 	.globl _CRC0DAT
                                    333 	.globl _CRC0CNT
                                    334 	.globl _CRC0CN1
                                    335 	.globl _CRC0CN0
                                    336 	.globl _CMP1MX
                                    337 	.globl _CMP1MD
                                    338 	.globl _CMP1CN1
                                    339 	.globl _CMP1CN0
                                    340 	.globl _CMP0MX
                                    341 	.globl _CMP0MD
                                    342 	.globl _CMP0CN1
                                    343 	.globl _CMP0CN0
                                    344 	.globl _CLKSEL
                                    345 	.globl _CKCON1
                                    346 	.globl _CKCON0
                                    347 	.globl _B
                                    348 	.globl _ADC0TK
                                    349 	.globl _ADC0PWR
                                    350 	.globl _ADC0MX
                                    351 	.globl _ADC0LTL
                                    352 	.globl _ADC0LTH
                                    353 	.globl _ADC0L
                                    354 	.globl _ADC0H
                                    355 	.globl _ADC0GTL
                                    356 	.globl _ADC0GTH
                                    357 	.globl _ADC0CN1
                                    358 	.globl _ADC0CN0
                                    359 	.globl _ADC0CF
                                    360 	.globl _ADC0AC
                                    361 	.globl _ACC
                                    362 	.globl _SendEp0Stall
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
                                   1037 ;--------------------------------------------------------
                                   1038 ; overlayable register banks
                                   1039 ;--------------------------------------------------------
                                   1040 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1041 	.ds 8
                                   1042 ;--------------------------------------------------------
                                   1043 ; overlayable bit register bank
                                   1044 ;--------------------------------------------------------
                                   1045 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1046 bits:
      000020                       1047 	.ds 1
                           008000  1048 	b0 = bits[0]
                           008100  1049 	b1 = bits[1]
                           008200  1050 	b2 = bits[2]
                           008300  1051 	b3 = bits[3]
                           008400  1052 	b4 = bits[4]
                           008500  1053 	b5 = bits[5]
                           008600  1054 	b6 = bits[6]
                           008700  1055 	b7 = bits[7]
                                   1056 ;--------------------------------------------------------
                                   1057 ; internal ram data
                                   1058 ;--------------------------------------------------------
                                   1059 	.area DSEG    (DATA)
                                   1060 ;--------------------------------------------------------
                                   1061 ; overlayable items in internal ram 
                                   1062 ;--------------------------------------------------------
                                   1063 ;--------------------------------------------------------
                                   1064 ; indirectly addressable internal ram data
                                   1065 ;--------------------------------------------------------
                                   1066 	.area ISEG    (DATA)
                                   1067 ;--------------------------------------------------------
                                   1068 ; absolute internal ram data
                                   1069 ;--------------------------------------------------------
                                   1070 	.area IABS    (ABS,DATA)
                                   1071 	.area IABS    (ABS,DATA)
                                   1072 ;--------------------------------------------------------
                                   1073 ; bit data
                                   1074 ;--------------------------------------------------------
                                   1075 	.area BSEG    (BIT)
                                   1076 ;--------------------------------------------------------
                                   1077 ; paged external ram data
                                   1078 ;--------------------------------------------------------
                                   1079 	.area PSEG    (PAG,XDATA)
                                   1080 ;--------------------------------------------------------
                                   1081 ; external ram data
                                   1082 ;--------------------------------------------------------
                                   1083 	.area XSEG    (XDATA)
                                   1084 ;--------------------------------------------------------
                                   1085 ; absolute external ram data
                                   1086 ;--------------------------------------------------------
                                   1087 	.area XABS    (ABS,XDATA)
                                   1088 ;--------------------------------------------------------
                                   1089 ; external initialized ram data
                                   1090 ;--------------------------------------------------------
                                   1091 	.area XISEG   (XDATA)
                                   1092 	.area HOME    (CODE)
                                   1093 	.area GSINIT0 (CODE)
                                   1094 	.area GSINIT1 (CODE)
                                   1095 	.area GSINIT2 (CODE)
                                   1096 	.area GSINIT3 (CODE)
                                   1097 	.area GSINIT4 (CODE)
                                   1098 	.area GSINIT5 (CODE)
                                   1099 	.area GSINIT  (CODE)
                                   1100 	.area GSFINAL (CODE)
                                   1101 	.area CSEG    (CODE)
                                   1102 ;--------------------------------------------------------
                                   1103 ; global & static initialisations
                                   1104 ;--------------------------------------------------------
                                   1105 	.area HOME    (CODE)
                                   1106 	.area GSINIT  (CODE)
                                   1107 	.area GSFINAL (CODE)
                                   1108 	.area GSINIT  (CODE)
                                   1109 ;--------------------------------------------------------
                                   1110 ; Home
                                   1111 ;--------------------------------------------------------
                                   1112 	.area HOME    (CODE)
                                   1113 	.area HOME    (CODE)
                                   1114 ;--------------------------------------------------------
                                   1115 ; code
                                   1116 ;--------------------------------------------------------
                                   1117 	.area CSEG    (CODE)
                                   1118 ;------------------------------------------------------------
                                   1119 ;Allocation info for local variables in function 'usbIrqHandler'
                                   1120 ;------------------------------------------------------------
                                   1121 ;statusCommon              Allocated to registers r7 
                                   1122 ;statusIn                  Allocated to registers r6 
                                   1123 ;statusOut                 Allocated to registers r5 
                                   1124 ;indexSave                 Allocated to registers r4 
                                   1125 ;------------------------------------------------------------
                           000000  1126 	G$usbIrqHandler$0$0 ==.
                           000000  1127 	C$efm8_usbdint.c$61$0$0 ==.
                                   1128 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:61: SI_INTERRUPT(usbIrqHandler, USB0_IRQn)
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function usbIrqHandler
                                   1131 ;	-----------------------------------------
      0037DE                       1132 _usbIrqHandler:
                           000007  1133 	ar7 = 0x07
                           000006  1134 	ar6 = 0x06
                           000005  1135 	ar5 = 0x05
                           000004  1136 	ar4 = 0x04
                           000003  1137 	ar3 = 0x03
                           000002  1138 	ar2 = 0x02
                           000001  1139 	ar1 = 0x01
                           000000  1140 	ar0 = 0x00
      0037DE C0 20            [24] 1141 	push	bits
      0037E0 C0 E0            [24] 1142 	push	acc
      0037E2 C0 F0            [24] 1143 	push	b
      0037E4 C0 82            [24] 1144 	push	dpl
      0037E6 C0 83            [24] 1145 	push	dph
      0037E8 C0 07            [24] 1146 	push	(0+7)
      0037EA C0 06            [24] 1147 	push	(0+6)
      0037EC C0 05            [24] 1148 	push	(0+5)
      0037EE C0 04            [24] 1149 	push	(0+4)
      0037F0 C0 03            [24] 1150 	push	(0+3)
      0037F2 C0 02            [24] 1151 	push	(0+2)
      0037F4 C0 01            [24] 1152 	push	(0+1)
      0037F6 C0 00            [24] 1153 	push	(0+0)
      0037F8 C0 D0            [24] 1154 	push	psw
      0037FA 75 D0 00         [24] 1155 	mov	psw,#0x00
                           00001F  1156 	C$efm8_usbdint.c$74$1$87 ==.
                                   1157 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:74: statusCommon = USB_GetCommonInts();
      0037FD 12 40 06         [24] 1158 	lcall	_USB_GetCommonInts
      003800 AF 82            [24] 1159 	mov	r7,dpl
                           000024  1160 	C$efm8_usbdint.c$75$1$87 ==.
                                   1161 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:75: statusIn = USB_GetInInts();
      003802 C0 07            [24] 1162 	push	ar7
      003804 12 40 12         [24] 1163 	lcall	_USB_GetInInts
      003807 AE 82            [24] 1164 	mov	r6,dpl
                           00002B  1165 	C$efm8_usbdint.c$76$1$87 ==.
                                   1166 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:76: statusOut = USB_GetOutInts();
      003809 C0 06            [24] 1167 	push	ar6
      00380B 12 40 1E         [24] 1168 	lcall	_USB_GetOutInts
      00380E AD 82            [24] 1169 	mov	r5,dpl
                           000032  1170 	C$efm8_usbdint.c$86$1$87 ==.
                                   1171 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:86: indexSave = USB_GetIndex();
      003810 C0 05            [24] 1172 	push	ar5
      003812 12 40 2A         [24] 1173 	lcall	_USB_GetIndex
      003815 AC 82            [24] 1174 	mov	r4,dpl
      003817 D0 05            [24] 1175 	pop	ar5
      003819 D0 06            [24] 1176 	pop	ar6
      00381B D0 07            [24] 1177 	pop	ar7
                           00003F  1178 	C$efm8_usbdint.c$89$1$87 ==.
                                   1179 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:89: if (USB_IsSofIntActive(statusCommon))
      00381D EF               [12] 1180 	mov	a,r7
      00381E 30 E3 42         [24] 1181 	jnb	acc.3,00110$
                           000043  1182 	C$efm8_usbdint.c$97$2$88 ==.
                                   1183 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:97: if (((myUsbDevice.ep0.misc.bits.outPacketPending == true) && (myUsbDevice.ep0.state == D_EP_RECEIVING)) ||
      003821 90 01 FD         [24] 1184 	mov	dptr,#(_myUsbDevice + 0x0013)
      003824 E0               [24] 1185 	movx	a,@dptr
      003825 03               [12] 1186 	rr	a
      003826 54 01            [12] 1187 	anl	a,#0x01
      003828 FB               [12] 1188 	mov	r3,a
      003829 BB 01 0A         [24] 1189 	cjne	r3,#0x01,00105$
      00382C 90 01 FC         [24] 1190 	mov	dptr,#(_myUsbDevice + 0x0012)
      00382F E0               [24] 1191 	movx	a,@dptr
      003830 FB               [12] 1192 	mov	r3,a
      003831 BB 03 02         [24] 1193 	cjne	r3,#0x03,00161$
      003834 80 14            [24] 1194 	sjmp	00101$
      003836                       1195 00161$:
      003836                       1196 00105$:
                           000058  1197 	C$efm8_usbdint.c$98$2$88 ==.
                                   1198 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:98: ((myUsbDevice.ep0.misc.bits.inPacketPending == true) && (myUsbDevice.ep0.state == D_EP_TRANSMITTING)))
      003836 90 01 FD         [24] 1199 	mov	dptr,#(_myUsbDevice + 0x0013)
      003839 E0               [24] 1200 	movx	a,@dptr
      00383A 03               [12] 1201 	rr	a
      00383B 03               [12] 1202 	rr	a
      00383C 54 01            [12] 1203 	anl	a,#0x01
      00383E FB               [12] 1204 	mov	r3,a
      00383F BB 01 0B         [24] 1205 	cjne	r3,#0x01,00102$
      003842 90 01 FC         [24] 1206 	mov	dptr,#(_myUsbDevice + 0x0012)
      003845 E0               [24] 1207 	movx	a,@dptr
      003846 FB               [12] 1208 	mov	r3,a
      003847 BB 02 03         [24] 1209 	cjne	r3,#0x02,00102$
      00384A                       1210 00101$:
                           00006C  1211 	C$efm8_usbdint.c$100$3$89 ==.
                                   1212 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:100: USB_SetEp0IntActive(statusIn);
      00384A 43 06 01         [24] 1213 	orl	ar6,#0x01
      00384D                       1214 00102$:
                           00006F  1215 	C$efm8_usbdint.c$105$2$88 ==.
                                   1216 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:105: if ((myUsbDevice.ep1out.misc.bits.outPacketPending == true) && (myUsbDevice.ep1out.state == D_EP_RECEIVING))
      00384D 90 02 0B         [24] 1217 	mov	dptr,#(_myUsbDevice + 0x0021)
      003850 E0               [24] 1218 	movx	a,@dptr
      003851 03               [12] 1219 	rr	a
      003852 54 01            [12] 1220 	anl	a,#0x01
      003854 FB               [12] 1221 	mov	r3,a
      003855 BB 01 0B         [24] 1222 	cjne	r3,#0x01,00110$
      003858 90 02 0A         [24] 1223 	mov	dptr,#(_myUsbDevice + 0x0020)
      00385B E0               [24] 1224 	movx	a,@dptr
      00385C FB               [12] 1225 	mov	r3,a
      00385D BB 03 03         [24] 1226 	cjne	r3,#0x03,00110$
                           000082  1227 	C$efm8_usbdint.c$107$3$90 ==.
                                   1228 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:107: USB_SetOut1IntActive(statusOut);
      003860 43 05 02         [24] 1229 	orl	ar5,#0x02
      003863                       1230 00110$:
                           000085  1231 	C$efm8_usbdint.c$130$1$87 ==.
                                   1232 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:130: if (USB_IsResetIntActive(statusCommon))
      003863 EF               [12] 1233 	mov	a,r7
      003864 30 E2 13         [24] 1234 	jnb	acc.2,00112$
                           000089  1235 	C$efm8_usbdint.c$132$2$91 ==.
                                   1236 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:132: handleUsbResetInt();
      003867 C0 07            [24] 1237 	push	ar7
      003869 C0 06            [24] 1238 	push	ar6
      00386B C0 05            [24] 1239 	push	ar5
      00386D C0 04            [24] 1240 	push	ar4
      00386F 12 3A 5F         [24] 1241 	lcall	_handleUsbResetInt
      003872 D0 04            [24] 1242 	pop	ar4
      003874 D0 05            [24] 1243 	pop	ar5
      003876 D0 06            [24] 1244 	pop	ar6
      003878 D0 07            [24] 1245 	pop	ar7
      00387A                       1246 00112$:
                           00009C  1247 	C$efm8_usbdint.c$143$1$87 ==.
                                   1248 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:143: if (USB_IsResumeIntActive(statusCommon))
      00387A EF               [12] 1249 	mov	a,r7
      00387B 30 E1 13         [24] 1250 	jnb	acc.1,00114$
                           0000A0  1251 	C$efm8_usbdint.c$145$2$92 ==.
                                   1252 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:145: handleUsbResumeInt();
      00387E C0 07            [24] 1253 	push	ar7
      003880 C0 06            [24] 1254 	push	ar6
      003882 C0 05            [24] 1255 	push	ar5
      003884 C0 04            [24] 1256 	push	ar4
      003886 12 3A B6         [24] 1257 	lcall	_handleUsbResumeInt
      003889 D0 04            [24] 1258 	pop	ar4
      00388B D0 05            [24] 1259 	pop	ar5
      00388D D0 06            [24] 1260 	pop	ar6
      00388F D0 07            [24] 1261 	pop	ar7
      003891                       1262 00114$:
                           0000B3  1263 	C$efm8_usbdint.c$148$1$87 ==.
                                   1264 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:148: if (USB_IsSuspendIntActive(statusCommon))
      003891 EF               [12] 1265 	mov	a,r7
      003892 30 E0 0F         [24] 1266 	jnb	acc.0,00116$
                           0000B7  1267 	C$efm8_usbdint.c$150$2$93 ==.
                                   1268 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:150: handleUsbSuspendInt();
      003895 C0 06            [24] 1269 	push	ar6
      003897 C0 05            [24] 1270 	push	ar5
      003899 C0 04            [24] 1271 	push	ar4
      00389B 12 3A A5         [24] 1272 	lcall	_handleUsbSuspendInt
      00389E D0 04            [24] 1273 	pop	ar4
      0038A0 D0 05            [24] 1274 	pop	ar5
      0038A2 D0 06            [24] 1275 	pop	ar6
      0038A4                       1276 00116$:
                           0000C6  1277 	C$efm8_usbdint.c$175$1$87 ==.
                                   1278 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:175: if (USB_IsIn1IntActive(statusIn))
      0038A4 EE               [12] 1279 	mov	a,r6
      0038A5 30 E1 0F         [24] 1280 	jnb	acc.1,00118$
                           0000CA  1281 	C$efm8_usbdint.c$177$2$94 ==.
                                   1282 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:177: handleUsbIn1Int();
      0038A8 C0 06            [24] 1283 	push	ar6
      0038AA C0 05            [24] 1284 	push	ar5
      0038AC C0 04            [24] 1285 	push	ar4
      0038AE 12 32 C3         [24] 1286 	lcall	_handleUsbIn1Int
      0038B1 D0 04            [24] 1287 	pop	ar4
      0038B3 D0 05            [24] 1288 	pop	ar5
      0038B5 D0 06            [24] 1289 	pop	ar6
      0038B7                       1290 00118$:
                           0000D9  1291 	C$efm8_usbdint.c$189$1$87 ==.
                                   1292 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:189: if (USB_IsOut1IntActive(statusOut))
      0038B7 ED               [12] 1293 	mov	a,r5
      0038B8 30 E1 0B         [24] 1294 	jnb	acc.1,00120$
                           0000DD  1295 	C$efm8_usbdint.c$191$2$95 ==.
                                   1296 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:191: handleUsbOut1Int();
      0038BB C0 06            [24] 1297 	push	ar6
      0038BD C0 04            [24] 1298 	push	ar4
      0038BF 12 33 DA         [24] 1299 	lcall	_handleUsbOut1Int
      0038C2 D0 04            [24] 1300 	pop	ar4
      0038C4 D0 06            [24] 1301 	pop	ar6
      0038C6                       1302 00120$:
                           0000E8  1303 	C$efm8_usbdint.c$196$1$87 ==.
                                   1304 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:196: if (USB_IsEp0IntActive(statusIn))
      0038C6 EE               [12] 1305 	mov	a,r6
      0038C7 30 E0 07         [24] 1306 	jnb	acc.0,00122$
                           0000EC  1307 	C$efm8_usbdint.c$198$2$96 ==.
                                   1308 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:198: handleUsbEp0Int();
      0038CA C0 04            [24] 1309 	push	ar4
      0038CC 12 38 F3         [24] 1310 	lcall	_handleUsbEp0Int
      0038CF D0 04            [24] 1311 	pop	ar4
      0038D1                       1312 00122$:
                           0000F3  1313 	C$efm8_usbdint.c$202$1$87 ==.
                                   1314 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:202: USB_SetIndex(indexSave);
      0038D1 8C 82            [24] 1315 	mov	dpl,r4
      0038D3 12 3F F9         [24] 1316 	lcall	_USB_SetIndex
      0038D6 D0 D0            [24] 1317 	pop	psw
      0038D8 D0 00            [24] 1318 	pop	(0+0)
      0038DA D0 01            [24] 1319 	pop	(0+1)
      0038DC D0 02            [24] 1320 	pop	(0+2)
      0038DE D0 03            [24] 1321 	pop	(0+3)
      0038E0 D0 04            [24] 1322 	pop	(0+4)
      0038E2 D0 05            [24] 1323 	pop	(0+5)
      0038E4 D0 06            [24] 1324 	pop	(0+6)
      0038E6 D0 07            [24] 1325 	pop	(0+7)
      0038E8 D0 83            [24] 1326 	pop	dph
      0038EA D0 82            [24] 1327 	pop	dpl
      0038EC D0 F0            [24] 1328 	pop	b
      0038EE D0 E0            [24] 1329 	pop	acc
      0038F0 D0 20            [24] 1330 	pop	bits
                           000114  1331 	C$efm8_usbdint.c$208$1$87 ==.
                           000114  1332 	XG$usbIrqHandler$0$0 ==.
      0038F2 32               [24] 1333 	reti
                                   1334 ;------------------------------------------------------------
                                   1335 ;Allocation info for local variables in function 'handleUsbEp0Int'
                                   1336 ;------------------------------------------------------------
                           000115  1337 	Fefm8_usbdint$handleUsbEp0Int$0$0 ==.
                           000115  1338 	C$efm8_usbdint.c$213$1$87 ==.
                                   1339 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:213: static void handleUsbEp0Int(void)
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function handleUsbEp0Int
                                   1342 ;	-----------------------------------------
      0038F3                       1343 _handleUsbEp0Int:
                           000115  1344 	C$efm8_usbdint.c$215$1$98 ==.
                                   1345 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:215: USB_SetIndex(0);
      0038F3 75 82 00         [24] 1346 	mov	dpl,#0x00
      0038F6 12 3F F9         [24] 1347 	lcall	_USB_SetIndex
                           00011B  1348 	C$efm8_usbdint.c$217$1$98 ==.
                                   1349 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:217: if (USB_Ep0SentStall() || USB_GetSetupEnd())
      0038F9 12 40 54         [24] 1350 	lcall	_USB_Ep0SentStall
      0038FC 40 05            [24] 1351 	jc	00104$
      0038FE 12 40 45         [24] 1352 	lcall	_USB_GetSetupEnd
      003901 50 21            [24] 1353 	jnc	00114$
                           000125  1354 	C$efm8_usbdint.c$219$2$99 ==.
                                   1355 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:219: USB_Ep0ClearSentStall();
      003903                       1356 00104$:
      003903 75 AE 11         [24] 1357 	mov	_USB0ADR,#0x11
      003906 75 AF 00         [24] 1358 	mov	_USB0DAT,#0x00
      003909                       1359 00101$:
      003909 E5 AE            [12] 1360 	mov	a,_USB0ADR
      00390B 20 E7 FB         [24] 1361 	jb	acc.7,00101$
                           000130  1362 	C$efm8_usbdint.c$220$3$102 ==.
                                   1363 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:220: USB_ServicedSetupEnd();
      00390E 75 AE 11         [24] 1364 	mov	_USB0ADR,#0x11
      003911 75 AF 80         [24] 1365 	mov	_USB0DAT,#0x80
      003914                       1366 00107$:
      003914 E5 AE            [12] 1367 	mov	a,_USB0ADR
      003916 20 E7 FB         [24] 1368 	jb	acc.7,00107$
                           00013B  1369 	C$efm8_usbdint.c$221$2$99 ==.
                                   1370 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:221: myUsbDevice.ep0.state = D_EP_IDLE;
      003919 90 01 FC         [24] 1371 	mov	dptr,#(_myUsbDevice + 0x0012)
      00391C 74 01            [12] 1372 	mov	a,#0x01
      00391E F0               [24] 1373 	movx	@dptr,a
                           000141  1374 	C$efm8_usbdint.c$222$2$99 ==.
                                   1375 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:222: myUsbDevice.ep0.misc.c = 0;
      00391F 90 01 FD         [24] 1376 	mov	dptr,#(_myUsbDevice + 0x0013)
      003922 E4               [12] 1377 	clr	a
      003923 F0               [24] 1378 	movx	@dptr,a
      003924                       1379 00114$:
                           000146  1380 	C$efm8_usbdint.c$224$1$98 ==.
                                   1381 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:224: if (USB_Ep0OutPacketReady())
      003924 12 40 63         [24] 1382 	lcall	_USB_Ep0OutPacketReady
      003927 50 59            [24] 1383 	jnc	00136$
                           00014B  1384 	C$efm8_usbdint.c$226$2$104 ==.
                                   1385 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:226: if (myUsbDevice.ep0.misc.bits.waitForRead == true)
      003929 90 01 FD         [24] 1386 	mov	dptr,#(_myUsbDevice + 0x0013)
      00392C E0               [24] 1387 	movx	a,@dptr
      00392D C4               [12] 1388 	swap	a
      00392E 23               [12] 1389 	rl	a
      00392F 54 01            [12] 1390 	anl	a,#0x01
      003931 FF               [12] 1391 	mov	r7,a
      003932 BF 01 09         [24] 1392 	cjne	r7,#0x01,00133$
                           000157  1393 	C$efm8_usbdint.c$228$3$105 ==.
                                   1394 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:228: myUsbDevice.ep0.misc.bits.outPacketPending = true;
      003935 90 01 FD         [24] 1395 	mov	dptr,#(_myUsbDevice + 0x0013)
      003938 E0               [24] 1396 	movx	a,@dptr
      003939 44 02            [12] 1397 	orl	a,#0x02
      00393B F0               [24] 1398 	movx	@dptr,a
      00393C 80 44            [24] 1399 	sjmp	00136$
      00393E                       1400 00133$:
                           000160  1401 	C$efm8_usbdint.c$230$2$104 ==.
                                   1402 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:230: else if (myUsbDevice.ep0.state == D_EP_IDLE)
      00393E 90 01 FC         [24] 1403 	mov	dptr,#(_myUsbDevice + 0x0012)
      003941 E0               [24] 1404 	movx	a,@dptr
      003942 FF               [12] 1405 	mov	r7,a
      003943 BF 01 2D         [24] 1406 	cjne	r7,#0x01,00130$
                           000168  1407 	C$efm8_usbdint.c$232$3$106 ==.
                                   1408 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:232: myUsbDevice.ep0String.c = USB_STRING_DESCRIPTOR_UTF16LE;
      003946 90 01 F6         [24] 1409 	mov	dptr,#(_myUsbDevice + 0x000c)
      003949 E4               [12] 1410 	clr	a
      00394A F0               [24] 1411 	movx	@dptr,a
                           00016D  1412 	C$efm8_usbdint.c$233$3$106 ==.
                                   1413 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:233: USB_ReadFIFOSetup();
      00394B 12 39 93         [24] 1414 	lcall	_USB_ReadFIFOSetup
                           000170  1415 	C$efm8_usbdint.c$254$4$110 ==.
                                   1416 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:254: if ((myUsbDevice.setup.bmRequestType.Direction == USB_SETUP_DIR_OUT)
      00394E 90 01 EE         [24] 1417 	mov	dptr,#(_myUsbDevice + 0x0004)
      003951 E0               [24] 1418 	movx	a,@dptr
      003952 20 E7 2D         [24] 1419 	jb	acc.7,00136$
                           000177  1420 	C$efm8_usbdint.c$255$4$110 ==.
                                   1421 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:255: && (myUsbDevice.ep0.state != D_EP_RECEIVING)
      003955 90 01 FC         [24] 1422 	mov	dptr,#(_myUsbDevice + 0x0012)
      003958 E0               [24] 1423 	movx	a,@dptr
      003959 FE               [12] 1424 	mov	r6,a
      00395A BE 03 02         [24] 1425 	cjne	r6,#0x03,00194$
      00395D 80 23            [24] 1426 	sjmp	00136$
      00395F                       1427 00194$:
                           000181  1428 	C$efm8_usbdint.c$256$4$110 ==.
                                   1429 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:256: && (myUsbDevice.setup.wLength)
      00395F 90 01 F4         [24] 1430 	mov	dptr,#(_myUsbDevice + 0x000a)
      003962 E0               [24] 1431 	movx	a,@dptr
      003963 FD               [12] 1432 	mov	r5,a
      003964 A3               [24] 1433 	inc	dptr
      003965 E0               [24] 1434 	movx	a,@dptr
      003966 FE               [12] 1435 	mov	r6,a
      003967 4D               [12] 1436 	orl	a,r5
      003968 60 18            [24] 1437 	jz	00136$
                           00018C  1438 	C$efm8_usbdint.c$259$5$111 ==.
                                   1439 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:259: myUsbDevice.ep0.misc.bits.waitForRead = true;
      00396A 90 01 FD         [24] 1440 	mov	dptr,#(_myUsbDevice + 0x0013)
      00396D E0               [24] 1441 	movx	a,@dptr
      00396E 44 08            [12] 1442 	orl	a,#0x08
      003970 F0               [24] 1443 	movx	@dptr,a
      003971 80 0F            [24] 1444 	sjmp	00136$
      003973                       1445 00130$:
                           000195  1446 	C$efm8_usbdint.c$264$2$104 ==.
                                   1447 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:264: else if (myUsbDevice.ep0.state == D_EP_RECEIVING)
      003973 BF 03 05         [24] 1448 	cjne	r7,#0x03,00127$
                           000198  1449 	C$efm8_usbdint.c$266$3$112 ==.
                                   1450 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:266: handleUsbEp0Rx();
      003976 12 3C BA         [24] 1451 	lcall	_handleUsbEp0Rx
      003979 80 07            [24] 1452 	sjmp	00136$
      00397B                       1453 00127$:
                           00019D  1454 	C$efm8_usbdint.c$270$3$113 ==.
                                   1455 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:270: myUsbDevice.ep0.misc.bits.outPacketPending = true;
      00397B 90 01 FD         [24] 1456 	mov	dptr,#(_myUsbDevice + 0x0013)
      00397E E0               [24] 1457 	movx	a,@dptr
      00397F 44 02            [12] 1458 	orl	a,#0x02
      003981 F0               [24] 1459 	movx	@dptr,a
      003982                       1460 00136$:
                           0001A4  1461 	C$efm8_usbdint.c$273$1$98 ==.
                                   1462 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:273: if ((myUsbDevice.ep0.state == D_EP_TRANSMITTING) && (USB_Ep0InPacketReady() == 0))
      003982 90 01 FC         [24] 1463 	mov	dptr,#(_myUsbDevice + 0x0012)
      003985 E0               [24] 1464 	movx	a,@dptr
      003986 FF               [12] 1465 	mov	r7,a
      003987 BF 02 08         [24] 1466 	cjne	r7,#0x02,00140$
      00398A 12 40 71         [24] 1467 	lcall	_USB_Ep0InPacketReady
      00398D 40 03            [24] 1468 	jc	00140$
                           0001B1  1469 	C$efm8_usbdint.c$275$2$114 ==.
                                   1470 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:275: handleUsbEp0Tx();
      00398F 12 3A C0         [24] 1471 	lcall	_handleUsbEp0Tx
      003992                       1472 00140$:
                           0001B4  1473 	C$efm8_usbdint.c$277$1$98 ==.
                           0001B4  1474 	XFefm8_usbdint$handleUsbEp0Int$0$0 ==.
      003992 22               [24] 1475 	ret
                                   1476 ;------------------------------------------------------------
                                   1477 ;Allocation info for local variables in function 'USB_ReadFIFOSetup'
                                   1478 ;------------------------------------------------------------
                                   1479 ;ptr                       Allocated to stack - _bp +1
                                   1480 ;------------------------------------------------------------
                           0001B5  1481 	Fefm8_usbdint$USB_ReadFIFOSetup$0$0 ==.
                           0001B5  1482 	C$efm8_usbdint.c$282$1$98 ==.
                                   1483 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:282: static void USB_ReadFIFOSetup(void)
                                   1484 ;	-----------------------------------------
                                   1485 ;	 function USB_ReadFIFOSetup
                                   1486 ;	-----------------------------------------
      003993                       1487 _USB_ReadFIFOSetup:
      003993 C0 1B            [24] 1488 	push	_bp
      003995 85 81 1B         [24] 1489 	mov	_bp,sp
      003998 05 81            [12] 1490 	inc	sp
      00399A 05 81            [12] 1491 	inc	sp
      00399C 05 81            [12] 1492 	inc	sp
                           0001C0  1493 	C$efm8_usbdint.c$285$1$116 ==.
                                   1494 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:285: uint16_t * ptr = (uint16_t * )myUsbDevice.setup;
      00399E A8 1B            [24] 1495 	mov	r0,_bp
      0039A0 08               [12] 1496 	inc	r0
      0039A1 76 EE            [12] 1497 	mov	@r0,#(_myUsbDevice + 0x0004)
      0039A3 08               [12] 1498 	inc	r0
      0039A4 76 01            [12] 1499 	mov	@r0,#((_myUsbDevice + 0x0004) >> 8)
      0039A6 08               [12] 1500 	inc	r0
      0039A7 76 00            [12] 1501 	mov	@r0,#0x00
                           0001CB  1502 	C$efm8_usbdint.c$287$1$116 ==.
                                   1503 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:287: USB_ReadFIFO(0, 8, (uint8_t *)ptr);
      0039A9 A8 1B            [24] 1504 	mov	r0,_bp
      0039AB 08               [12] 1505 	inc	r0
      0039AC 86 02            [24] 1506 	mov	ar2,@r0
      0039AE 08               [12] 1507 	inc	r0
      0039AF 86 03            [24] 1508 	mov	ar3,@r0
      0039B1 08               [12] 1509 	inc	r0
      0039B2 86 04            [24] 1510 	mov	ar4,@r0
      0039B4 C0 02            [24] 1511 	push	ar2
      0039B6 C0 03            [24] 1512 	push	ar3
      0039B8 C0 04            [24] 1513 	push	ar4
      0039BA 74 08            [12] 1514 	mov	a,#0x08
      0039BC C0 E0            [24] 1515 	push	acc
      0039BE 75 82 00         [24] 1516 	mov	dpl,#0x00
      0039C1 12 35 35         [24] 1517 	lcall	_USB_ReadFIFO
      0039C4 E5 81            [12] 1518 	mov	a,sp
      0039C6 24 FC            [12] 1519 	add	a,#0xfc
      0039C8 F5 81            [12] 1520 	mov	sp,a
                           0001EC  1521 	C$efm8_usbdint.c$289$2$117 ==.
                                   1522 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:289: USB_Ep0ServicedOutPacketReady();
      0039CA 75 AE 11         [24] 1523 	mov	_USB0ADR,#0x11
      0039CD 75 AF 40         [24] 1524 	mov	_USB0DAT,#0x40
      0039D0                       1525 00101$:
      0039D0 E5 AE            [12] 1526 	mov	a,_USB0ADR
      0039D2 20 E7 FB         [24] 1527 	jb	acc.7,00101$
                           0001F7  1528 	C$efm8_usbdint.c$292$1$116 ==.
                                   1529 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:292: ptr[1] = le16toh(ptr[1]);
      0039D5 A8 1B            [24] 1530 	mov	r0,_bp
      0039D7 08               [12] 1531 	inc	r0
      0039D8 74 02            [12] 1532 	mov	a,#0x02
      0039DA 26               [12] 1533 	add	a,@r0
      0039DB FA               [12] 1534 	mov	r2,a
      0039DC E4               [12] 1535 	clr	a
      0039DD 08               [12] 1536 	inc	r0
      0039DE 36               [12] 1537 	addc	a,@r0
      0039DF FB               [12] 1538 	mov	r3,a
      0039E0 08               [12] 1539 	inc	r0
      0039E1 86 04            [24] 1540 	mov	ar4,@r0
      0039E3 8A 82            [24] 1541 	mov	dpl,r2
      0039E5 8B 83            [24] 1542 	mov	dph,r3
      0039E7 8C F0            [24] 1543 	mov	b,r4
      0039E9 12 5E 3E         [24] 1544 	lcall	__gptrget
      0039EC FE               [12] 1545 	mov	r6,a
      0039ED A3               [24] 1546 	inc	dptr
      0039EE 12 5E 3E         [24] 1547 	lcall	__gptrget
      0039F1 FF               [12] 1548 	mov	r7,a
      0039F2 8A 82            [24] 1549 	mov	dpl,r2
      0039F4 8B 83            [24] 1550 	mov	dph,r3
      0039F6 8C F0            [24] 1551 	mov	b,r4
      0039F8 EE               [12] 1552 	mov	a,r6
      0039F9 12 5A 48         [24] 1553 	lcall	__gptrput
      0039FC A3               [24] 1554 	inc	dptr
      0039FD EF               [12] 1555 	mov	a,r7
      0039FE 12 5A 48         [24] 1556 	lcall	__gptrput
                           000223  1557 	C$efm8_usbdint.c$293$1$116 ==.
                                   1558 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:293: ptr[2] = le16toh(ptr[2]);
      003A01 A8 1B            [24] 1559 	mov	r0,_bp
      003A03 08               [12] 1560 	inc	r0
      003A04 74 04            [12] 1561 	mov	a,#0x04
      003A06 26               [12] 1562 	add	a,@r0
      003A07 FD               [12] 1563 	mov	r5,a
      003A08 E4               [12] 1564 	clr	a
      003A09 08               [12] 1565 	inc	r0
      003A0A 36               [12] 1566 	addc	a,@r0
      003A0B FE               [12] 1567 	mov	r6,a
      003A0C 08               [12] 1568 	inc	r0
      003A0D 86 07            [24] 1569 	mov	ar7,@r0
      003A0F 8D 82            [24] 1570 	mov	dpl,r5
      003A11 8E 83            [24] 1571 	mov	dph,r6
      003A13 8F F0            [24] 1572 	mov	b,r7
      003A15 12 5E 3E         [24] 1573 	lcall	__gptrget
      003A18 FB               [12] 1574 	mov	r3,a
      003A19 A3               [24] 1575 	inc	dptr
      003A1A 12 5E 3E         [24] 1576 	lcall	__gptrget
      003A1D FC               [12] 1577 	mov	r4,a
      003A1E 8D 82            [24] 1578 	mov	dpl,r5
      003A20 8E 83            [24] 1579 	mov	dph,r6
      003A22 8F F0            [24] 1580 	mov	b,r7
      003A24 EB               [12] 1581 	mov	a,r3
      003A25 12 5A 48         [24] 1582 	lcall	__gptrput
      003A28 A3               [24] 1583 	inc	dptr
      003A29 EC               [12] 1584 	mov	a,r4
      003A2A 12 5A 48         [24] 1585 	lcall	__gptrput
                           00024F  1586 	C$efm8_usbdint.c$294$1$116 ==.
                                   1587 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:294: ptr[3] = le16toh(ptr[3]);
      003A2D A8 1B            [24] 1588 	mov	r0,_bp
      003A2F 08               [12] 1589 	inc	r0
      003A30 74 06            [12] 1590 	mov	a,#0x06
      003A32 26               [12] 1591 	add	a,@r0
      003A33 FD               [12] 1592 	mov	r5,a
      003A34 E4               [12] 1593 	clr	a
      003A35 08               [12] 1594 	inc	r0
      003A36 36               [12] 1595 	addc	a,@r0
      003A37 FE               [12] 1596 	mov	r6,a
      003A38 08               [12] 1597 	inc	r0
      003A39 86 07            [24] 1598 	mov	ar7,@r0
      003A3B 8D 82            [24] 1599 	mov	dpl,r5
      003A3D 8E 83            [24] 1600 	mov	dph,r6
      003A3F 8F F0            [24] 1601 	mov	b,r7
      003A41 12 5E 3E         [24] 1602 	lcall	__gptrget
      003A44 FB               [12] 1603 	mov	r3,a
      003A45 A3               [24] 1604 	inc	dptr
      003A46 12 5E 3E         [24] 1605 	lcall	__gptrget
      003A49 FC               [12] 1606 	mov	r4,a
      003A4A 8D 82            [24] 1607 	mov	dpl,r5
      003A4C 8E 83            [24] 1608 	mov	dph,r6
      003A4E 8F F0            [24] 1609 	mov	b,r7
      003A50 EB               [12] 1610 	mov	a,r3
      003A51 12 5A 48         [24] 1611 	lcall	__gptrput
      003A54 A3               [24] 1612 	inc	dptr
      003A55 EC               [12] 1613 	mov	a,r4
      003A56 12 5A 48         [24] 1614 	lcall	__gptrput
      003A59 85 1B 81         [24] 1615 	mov	sp,_bp
      003A5C D0 1B            [24] 1616 	pop	_bp
                           000280  1617 	C$efm8_usbdint.c$295$1$116 ==.
                           000280  1618 	XFefm8_usbdint$USB_ReadFIFOSetup$0$0 ==.
      003A5E 22               [24] 1619 	ret
                                   1620 ;------------------------------------------------------------
                                   1621 ;Allocation info for local variables in function 'handleUsbResetInt'
                                   1622 ;------------------------------------------------------------
                           000281  1623 	Fefm8_usbdint$handleUsbResetInt$0$0 ==.
                           000281  1624 	C$efm8_usbdint.c$302$1$116 ==.
                                   1625 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:302: static void handleUsbResetInt(void)
                                   1626 ;	-----------------------------------------
                                   1627 ;	 function handleUsbResetInt
                                   1628 ;	-----------------------------------------
      003A5F                       1629 _handleUsbResetInt:
                           000281  1630 	C$efm8_usbdint.c$305$1$120 ==.
                                   1631 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:305: myUsbDevice.ep0.state = D_EP_IDLE;
      003A5F 90 01 FC         [24] 1632 	mov	dptr,#(_myUsbDevice + 0x0012)
      003A62 74 01            [12] 1633 	mov	a,#0x01
      003A64 F0               [24] 1634 	movx	@dptr,a
                           000287  1635 	C$efm8_usbdint.c$309$1$120 ==.
                                   1636 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:309: myUsbDevice.ep1in.state = D_EP_HALT;
      003A65 90 02 03         [24] 1637 	mov	dptr,#(_myUsbDevice + 0x0019)
      003A68 74 06            [12] 1638 	mov	a,#0x06
      003A6A F0               [24] 1639 	movx	@dptr,a
                           00028D  1640 	C$efm8_usbdint.c$318$1$120 ==.
                                   1641 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:318: myUsbDevice.ep1out.state = D_EP_HALT;
      003A6B 90 02 0A         [24] 1642 	mov	dptr,#(_myUsbDevice + 0x0020)
      003A6E F0               [24] 1643 	movx	@dptr,a
                           000291  1644 	C$efm8_usbdint.c$333$2$121 ==.
                                   1645 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:333: USB_EnableFullSpeedClockRecovery();
      003A6F 75 AE 0F         [24] 1646 	mov	_USB0ADR,#0x0f
      003A72 75 AF 8F         [24] 1647 	mov	_USB0DAT,#0x8f
      003A75                       1648 00101$:
      003A75 E5 AE            [12] 1649 	mov	a,_USB0ADR
      003A77 20 E7 FB         [24] 1650 	jb	acc.7,00101$
                           00029C  1651 	C$efm8_usbdint.c$340$2$123 ==.
                                   1652 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:340: USB_EnableSuspendDetection();
      003A7A 75 AE 01         [24] 1653 	mov	_USB0ADR,#0x01
      003A7D 75 AF 01         [24] 1654 	mov	_USB0DAT,#0x01
      003A80                       1655 00107$:
      003A80 E5 AE            [12] 1656 	mov	a,_USB0ADR
      003A82 20 E7 FB         [24] 1657 	jb	acc.7,00107$
                           0002A7  1658 	C$efm8_usbdint.c$341$2$125 ==.
                                   1659 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:341: USB_EnableDeviceInts();
      003A85 75 AE 0B         [24] 1660 	mov	_USB0ADR,#0x0b
      003A88 75 AF 0F         [24] 1661 	mov	_USB0DAT,#0x0f
      003A8B                       1662 00113$:
      003A8B E5 AE            [12] 1663 	mov	a,_USB0ADR
      003A8D 20 E7 FB         [24] 1664 	jb	acc.7,00113$
                           0002B2  1665 	C$efm8_usbdint.c$346$1$120 ==.
                                   1666 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:346: if (USB_IsVbusOn())
      003A90 30 B1 08         [24] 1667 	jnb	_P3_B1,00120$
                           0002B5  1668 	C$efm8_usbdint.c$348$2$127 ==.
                                   1669 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:348: USBD_SetUsbState(USBD_STATE_DEFAULT);
      003A93 75 82 03         [24] 1670 	mov	dpl,#0x03
      003A96 12 2A 9D         [24] 1671 	lcall	_USBD_SetUsbState
      003A99 80 06            [24] 1672 	sjmp	00121$
      003A9B                       1673 00120$:
                           0002BD  1674 	C$efm8_usbdint.c$352$2$128 ==.
                                   1675 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:352: USBD_SetUsbState(USBD_STATE_ATTACHED);
      003A9B 75 82 01         [24] 1676 	mov	dpl,#0x01
      003A9E 12 2A 9D         [24] 1677 	lcall	_USBD_SetUsbState
      003AA1                       1678 00121$:
                           0002C3  1679 	C$efm8_usbdint.c$360$1$120 ==.
                                   1680 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:360: USBD_ResetCb();
      003AA1 12 3D D0         [24] 1681 	lcall	_USBD_ResetCb
                           0002C6  1682 	C$efm8_usbdint.c$362$1$120 ==.
                           0002C6  1683 	XFefm8_usbdint$handleUsbResetInt$0$0 ==.
      003AA4 22               [24] 1684 	ret
                                   1685 ;------------------------------------------------------------
                                   1686 ;Allocation info for local variables in function 'handleUsbSuspendInt'
                                   1687 ;------------------------------------------------------------
                           0002C7  1688 	Fefm8_usbdint$handleUsbSuspendInt$0$0 ==.
                           0002C7  1689 	C$efm8_usbdint.c$370$1$120 ==.
                                   1690 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:370: static void handleUsbSuspendInt(void)
                                   1691 ;	-----------------------------------------
                                   1692 ;	 function handleUsbSuspendInt
                                   1693 ;	-----------------------------------------
      003AA5                       1694 _handleUsbSuspendInt:
                           0002C7  1695 	C$efm8_usbdint.c$372$1$130 ==.
                                   1696 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:372: if (myUsbDevice.state >= USBD_STATE_POWERED)
      003AA5 90 01 EC         [24] 1697 	mov	dptr,#(_myUsbDevice + 0x0002)
      003AA8 E0               [24] 1698 	movx	a,@dptr
      003AA9 FF               [12] 1699 	mov	r7,a
      003AAA BF 02 00         [24] 1700 	cjne	r7,#0x02,00108$
      003AAD                       1701 00108$:
      003AAD 40 06            [24] 1702 	jc	00103$
                           0002D1  1703 	C$efm8_usbdint.c$374$2$131 ==.
                                   1704 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:374: USBD_SetUsbState(USBD_STATE_SUSPENDED);
      003AAF 75 82 05         [24] 1705 	mov	dpl,#0x05
      003AB2 12 2A 9D         [24] 1706 	lcall	_USBD_SetUsbState
      003AB5                       1707 00103$:
                           0002D7  1708 	C$efm8_usbdint.c$380$1$130 ==.
                           0002D7  1709 	XFefm8_usbdint$handleUsbSuspendInt$0$0 ==.
      003AB5 22               [24] 1710 	ret
                                   1711 ;------------------------------------------------------------
                                   1712 ;Allocation info for local variables in function 'handleUsbResumeInt'
                                   1713 ;------------------------------------------------------------
                           0002D8  1714 	Fefm8_usbdint$handleUsbResumeInt$0$0 ==.
                           0002D8  1715 	C$efm8_usbdint.c$386$1$130 ==.
                                   1716 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:386: static void handleUsbResumeInt(void)
                                   1717 ;	-----------------------------------------
                                   1718 ;	 function handleUsbResumeInt
                                   1719 ;	-----------------------------------------
      003AB6                       1720 _handleUsbResumeInt:
                           0002D8  1721 	C$efm8_usbdint.c$388$1$133 ==.
                                   1722 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:388: USBD_SetUsbState(myUsbDevice.savedState);
      003AB6 90 01 ED         [24] 1723 	mov	dptr,#(_myUsbDevice + 0x0003)
      003AB9 E0               [24] 1724 	movx	a,@dptr
      003ABA F5 82            [12] 1725 	mov	dpl,a
      003ABC 12 2A 9D         [24] 1726 	lcall	_USBD_SetUsbState
                           0002E1  1727 	C$efm8_usbdint.c$389$1$133 ==.
                           0002E1  1728 	XFefm8_usbdint$handleUsbResumeInt$0$0 ==.
      003ABF 22               [24] 1729 	ret
                                   1730 ;------------------------------------------------------------
                                   1731 ;Allocation info for local variables in function 'handleUsbEp0Tx'
                                   1732 ;------------------------------------------------------------
                                   1733 ;count                     Allocated to registers r4 
                                   1734 ;count_snapshot            Allocated to registers r7 
                                   1735 ;i                         Allocated to registers r5 
                                   1736 ;callback                  Allocated to registers b0 
                                   1737 ;------------------------------------------------------------
                           0002E2  1738 	Fefm8_usbdint$handleUsbEp0Tx$0$0 ==.
                           0002E2  1739 	C$efm8_usbdint.c$394$1$133 ==.
                                   1740 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:394: static void handleUsbEp0Tx(void)
                                   1741 ;	-----------------------------------------
                                   1742 ;	 function handleUsbEp0Tx
                                   1743 ;	-----------------------------------------
      003AC0                       1744 _handleUsbEp0Tx:
                           0002E2  1745 	C$efm8_usbdint.c$397$1$135 ==.
                                   1746 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:397: bool callback = myUsbDevice.ep0.misc.bits.callback;
      003AC0 90 01 FD         [24] 1747 	mov	dptr,#(_myUsbDevice + 0x0013)
      003AC3 E0               [24] 1748 	movx	a,@dptr
      003AC4 54 01            [12] 1749 	anl	a,#0x01
      003AC6 24 FF            [12] 1750 	add	a,#0xff
      003AC8 92 00            [24] 1751 	mov	b0,c
                           0002EC  1752 	C$efm8_usbdint.c$401$1$135 ==.
                                   1753 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:401: count = (myUsbDevice.ep0.remaining >= USB_EP0_SIZE) ?
      003ACA 90 01 FA         [24] 1754 	mov	dptr,#(_myUsbDevice + 0x0010)
      003ACD E0               [24] 1755 	movx	a,@dptr
      003ACE FE               [12] 1756 	mov	r6,a
      003ACF A3               [24] 1757 	inc	dptr
      003AD0 E0               [24] 1758 	movx	a,@dptr
      003AD1 FF               [12] 1759 	mov	r7,a
      003AD2 C3               [12] 1760 	clr	c
      003AD3 EE               [12] 1761 	mov	a,r6
      003AD4 94 40            [12] 1762 	subb	a,#0x40
      003AD6 EF               [12] 1763 	mov	a,r7
      003AD7 94 00            [12] 1764 	subb	a,#0x00
      003AD9 92 01            [24] 1765 	mov	b1,c
      003ADB 40 06            [24] 1766 	jc	00130$
                           0002FF  1767 	C$efm8_usbdint.c$402$1$135 ==.
                                   1768 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:402: USB_EP0_SIZE : myUsbDevice.ep0.remaining;
      003ADD 7C 40            [12] 1769 	mov	r4,#0x40
      003ADF 7D 00            [12] 1770 	mov	r5,#0x00
      003AE1 80 04            [24] 1771 	sjmp	00131$
      003AE3                       1772 00130$:
      003AE3 8E 04            [24] 1773 	mov	ar4,r6
      003AE5 8F 05            [24] 1774 	mov	ar5,r7
      003AE7                       1775 00131$:
                           000309  1776 	C$efm8_usbdint.c$405$1$135 ==.
                                   1777 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:405: count_snapshot = count;
      003AE7 8C 07            [24] 1778 	mov	ar7,r4
                           00030B  1779 	C$efm8_usbdint.c$411$1$135 ==.
                                   1780 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:411: if (myUsbDevice.ep0String.encoding.type == USB_STRING_DESCRIPTOR_UTF16LE_PACKED)
      003AE9 90 01 F6         [24] 1781 	mov	dptr,#(_myUsbDevice + 0x000c)
      003AEC E0               [24] 1782 	movx	a,@dptr
      003AED 54 7F            [12] 1783 	anl	a,#0x7f
      003AEF FE               [12] 1784 	mov	r6,a
      003AF0 BE 01 02         [24] 1785 	cjne	r6,#0x01,00167$
      003AF3 80 03            [24] 1786 	sjmp	00168$
      003AF5                       1787 00167$:
      003AF5 02 3B F2         [24] 1788 	ljmp	00105$
      003AF8                       1789 00168$:
                           00031A  1790 	C$efm8_usbdint.c$417$2$136 ==.
                                   1791 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:417: if (myUsbDevice.ep0String.encoding.init == true)
      003AF8 90 01 F6         [24] 1792 	mov	dptr,#(_myUsbDevice + 0x000c)
      003AFB E0               [24] 1793 	movx	a,@dptr
      003AFC 23               [12] 1794 	rl	a
      003AFD 54 01            [12] 1795 	anl	a,#0x01
      003AFF FE               [12] 1796 	mov	r6,a
      003B00 BE 01 58         [24] 1797 	cjne	r6,#0x01,00136$
                           000325  1798 	C$efm8_usbdint.c$419$3$137 ==.
                                   1799 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:419: USB_WriteFIFO(0, 2, myUsbDevice.ep0.buf, false);
      003B03 90 01 F7         [24] 1800 	mov	dptr,#(_myUsbDevice + 0x000d)
      003B06 E0               [24] 1801 	movx	a,@dptr
      003B07 FB               [12] 1802 	mov	r3,a
      003B08 A3               [24] 1803 	inc	dptr
      003B09 E0               [24] 1804 	movx	a,@dptr
      003B0A FD               [12] 1805 	mov	r5,a
      003B0B A3               [24] 1806 	inc	dptr
      003B0C E0               [24] 1807 	movx	a,@dptr
      003B0D FE               [12] 1808 	mov	r6,a
      003B0E C0 07            [24] 1809 	push	ar7
      003B10 C0 04            [24] 1810 	push	ar4
      003B12 C0 20            [24] 1811 	push	bits
      003B14 C0 03            [24] 1812 	push	ar3
      003B16 C0 05            [24] 1813 	push	ar5
      003B18 C0 06            [24] 1814 	push	ar6
      003B1A 74 02            [12] 1815 	mov	a,#0x02
      003B1C C0 E0            [24] 1816 	push	acc
      003B1E C2 F0            [12] 1817 	clr	b[0]
      003B20 85 F0 20         [24] 1818 	mov	bits,b
      003B23 75 82 00         [24] 1819 	mov	dpl,#0x00
      003B26 12 35 73         [24] 1820 	lcall	_USB_WriteFIFO
      003B29 E5 81            [12] 1821 	mov	a,sp
      003B2B 24 FC            [12] 1822 	add	a,#0xfc
      003B2D F5 81            [12] 1823 	mov	sp,a
      003B2F D0 20            [24] 1824 	pop	bits
      003B31 D0 04            [24] 1825 	pop	ar4
      003B33 D0 07            [24] 1826 	pop	ar7
                           000357  1827 	C$efm8_usbdint.c$420$3$137 ==.
                                   1828 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:420: myUsbDevice.ep0.buf += 2;
      003B35 90 01 F7         [24] 1829 	mov	dptr,#(_myUsbDevice + 0x000d)
      003B38 E0               [24] 1830 	movx	a,@dptr
      003B39 FB               [12] 1831 	mov	r3,a
      003B3A A3               [24] 1832 	inc	dptr
      003B3B E0               [24] 1833 	movx	a,@dptr
      003B3C FD               [12] 1834 	mov	r5,a
      003B3D A3               [24] 1835 	inc	dptr
      003B3E E0               [24] 1836 	movx	a,@dptr
      003B3F FE               [12] 1837 	mov	r6,a
      003B40 74 02            [12] 1838 	mov	a,#0x02
      003B42 2B               [12] 1839 	add	a,r3
      003B43 FB               [12] 1840 	mov	r3,a
      003B44 E4               [12] 1841 	clr	a
      003B45 3D               [12] 1842 	addc	a,r5
      003B46 FD               [12] 1843 	mov	r5,a
      003B47 90 01 F7         [24] 1844 	mov	dptr,#(_myUsbDevice + 0x000d)
      003B4A EB               [12] 1845 	mov	a,r3
      003B4B F0               [24] 1846 	movx	@dptr,a
      003B4C ED               [12] 1847 	mov	a,r5
      003B4D A3               [24] 1848 	inc	dptr
      003B4E F0               [24] 1849 	movx	@dptr,a
      003B4F EE               [12] 1850 	mov	a,r6
      003B50 A3               [24] 1851 	inc	dptr
      003B51 F0               [24] 1852 	movx	@dptr,a
                           000374  1853 	C$efm8_usbdint.c$421$3$137 ==.
                                   1854 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:421: count -= 2;
      003B52 1C               [12] 1855 	dec	r4
      003B53 1C               [12] 1856 	dec	r4
                           000376  1857 	C$efm8_usbdint.c$422$3$137 ==.
                                   1858 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:422: myUsbDevice.ep0String.encoding.init = false;
      003B54 90 01 F6         [24] 1859 	mov	dptr,#(_myUsbDevice + 0x000c)
      003B57 E0               [24] 1860 	movx	a,@dptr
      003B58 54 7F            [12] 1861 	anl	a,#0x7f
      003B5A F0               [24] 1862 	movx	@dptr,a
                           00037D  1863 	C$efm8_usbdint.c$426$1$135 ==.
                                   1864 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:426: for (i = 0; i < count / 2; i++)
      003B5B                       1865 00136$:
      003B5B EC               [12] 1866 	mov	a,r4
      003B5C C3               [12] 1867 	clr	c
      003B5D 13               [12] 1868 	rrc	a
      003B5E FE               [12] 1869 	mov	r6,a
      003B5F 7D 00            [12] 1870 	mov	r5,#0x00
      003B61                       1871 00126$:
      003B61 C3               [12] 1872 	clr	c
      003B62 ED               [12] 1873 	mov	a,r5
      003B63 9E               [12] 1874 	subb	a,r6
      003B64 40 03            [24] 1875 	jc	00171$
      003B66 02 3C 3E         [24] 1876 	ljmp	00106$
      003B69                       1877 00171$:
                           00038B  1878 	C$efm8_usbdint.c$428$1$135 ==.
                                   1879 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:428: USB_WriteFIFO(0, 1, myUsbDevice.ep0.buf, false);
      003B69 C0 06            [24] 1880 	push	ar6
      003B6B 90 01 F7         [24] 1881 	mov	dptr,#(_myUsbDevice + 0x000d)
      003B6E E0               [24] 1882 	movx	a,@dptr
      003B6F FA               [12] 1883 	mov	r2,a
      003B70 A3               [24] 1884 	inc	dptr
      003B71 E0               [24] 1885 	movx	a,@dptr
      003B72 FB               [12] 1886 	mov	r3,a
      003B73 A3               [24] 1887 	inc	dptr
      003B74 E0               [24] 1888 	movx	a,@dptr
      003B75 FE               [12] 1889 	mov	r6,a
      003B76 C0 07            [24] 1890 	push	ar7
      003B78 C0 06            [24] 1891 	push	ar6
      003B7A C0 05            [24] 1892 	push	ar5
      003B7C C0 20            [24] 1893 	push	bits
      003B7E C0 02            [24] 1894 	push	ar2
      003B80 C0 03            [24] 1895 	push	ar3
      003B82 C0 06            [24] 1896 	push	ar6
      003B84 74 01            [12] 1897 	mov	a,#0x01
      003B86 C0 E0            [24] 1898 	push	acc
      003B88 C2 F0            [12] 1899 	clr	b[0]
      003B8A 85 F0 20         [24] 1900 	mov	bits,b
      003B8D 75 82 00         [24] 1901 	mov	dpl,#0x00
      003B90 12 35 73         [24] 1902 	lcall	_USB_WriteFIFO
      003B93 E5 81            [12] 1903 	mov	a,sp
      003B95 24 FC            [12] 1904 	add	a,#0xfc
      003B97 F5 81            [12] 1905 	mov	sp,a
      003B99 D0 20            [24] 1906 	pop	bits
      003B9B D0 05            [24] 1907 	pop	ar5
      003B9D D0 06            [24] 1908 	pop	ar6
      003B9F D0 07            [24] 1909 	pop	ar7
                           0003C3  1910 	C$efm8_usbdint.c$429$3$138 ==.
                                   1911 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:429: myUsbDevice.ep0.buf++;
      003BA1 90 01 F7         [24] 1912 	mov	dptr,#(_myUsbDevice + 0x000d)
      003BA4 E0               [24] 1913 	movx	a,@dptr
      003BA5 FA               [12] 1914 	mov	r2,a
      003BA6 A3               [24] 1915 	inc	dptr
      003BA7 E0               [24] 1916 	movx	a,@dptr
      003BA8 FB               [12] 1917 	mov	r3,a
      003BA9 A3               [24] 1918 	inc	dptr
      003BAA E0               [24] 1919 	movx	a,@dptr
      003BAB FE               [12] 1920 	mov	r6,a
      003BAC 0A               [12] 1921 	inc	r2
      003BAD BA 00 01         [24] 1922 	cjne	r2,#0x00,00172$
      003BB0 0B               [12] 1923 	inc	r3
      003BB1                       1924 00172$:
      003BB1 90 01 F7         [24] 1925 	mov	dptr,#(_myUsbDevice + 0x000d)
      003BB4 EA               [12] 1926 	mov	a,r2
      003BB5 F0               [24] 1927 	movx	@dptr,a
      003BB6 EB               [12] 1928 	mov	a,r3
      003BB7 A3               [24] 1929 	inc	dptr
      003BB8 F0               [24] 1930 	movx	@dptr,a
      003BB9 EE               [12] 1931 	mov	a,r6
      003BBA A3               [24] 1932 	inc	dptr
      003BBB F0               [24] 1933 	movx	@dptr,a
                           0003DE  1934 	C$efm8_usbdint.c$430$3$138 ==.
                                   1935 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:430: USB_WriteFIFO(0, 1, txZero, false);
      003BBC C0 07            [24] 1936 	push	ar7
      003BBE C0 06            [24] 1937 	push	ar6
      003BC0 C0 05            [24] 1938 	push	ar5
      003BC2 C0 20            [24] 1939 	push	bits
      003BC4 74 BB            [12] 1940 	mov	a,#_txZero
      003BC6 C0 E0            [24] 1941 	push	acc
      003BC8 74 5E            [12] 1942 	mov	a,#(_txZero >> 8)
      003BCA C0 E0            [24] 1943 	push	acc
      003BCC 74 80            [12] 1944 	mov	a,#0x80
      003BCE C0 E0            [24] 1945 	push	acc
      003BD0 23               [12] 1946 	rl	a
      003BD1 C0 E0            [24] 1947 	push	acc
      003BD3 C2 F0            [12] 1948 	clr	b[0]
      003BD5 85 F0 20         [24] 1949 	mov	bits,b
      003BD8 75 82 00         [24] 1950 	mov	dpl,#0x00
      003BDB 12 35 73         [24] 1951 	lcall	_USB_WriteFIFO
      003BDE E5 81            [12] 1952 	mov	a,sp
      003BE0 24 FC            [12] 1953 	add	a,#0xfc
      003BE2 F5 81            [12] 1954 	mov	sp,a
      003BE4 D0 20            [24] 1955 	pop	bits
      003BE6 D0 05            [24] 1956 	pop	ar5
      003BE8 D0 06            [24] 1957 	pop	ar6
      003BEA D0 07            [24] 1958 	pop	ar7
                           00040E  1959 	C$efm8_usbdint.c$426$2$136 ==.
                                   1960 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:426: for (i = 0; i < count / 2; i++)
      003BEC 0D               [12] 1961 	inc	r5
      003BED D0 06            [24] 1962 	pop	ar6
      003BEF 02 3B 61         [24] 1963 	ljmp	00126$
      003BF2                       1964 00105$:
                           000414  1965 	C$efm8_usbdint.c$437$2$139 ==.
                                   1966 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:437: USB_WriteFIFO(0, count, myUsbDevice.ep0.buf, false);
      003BF2 90 01 F7         [24] 1967 	mov	dptr,#(_myUsbDevice + 0x000d)
      003BF5 E0               [24] 1968 	movx	a,@dptr
      003BF6 FB               [12] 1969 	mov	r3,a
      003BF7 A3               [24] 1970 	inc	dptr
      003BF8 E0               [24] 1971 	movx	a,@dptr
      003BF9 FD               [12] 1972 	mov	r5,a
      003BFA A3               [24] 1973 	inc	dptr
      003BFB E0               [24] 1974 	movx	a,@dptr
      003BFC FE               [12] 1975 	mov	r6,a
      003BFD C0 07            [24] 1976 	push	ar7
      003BFF C0 04            [24] 1977 	push	ar4
      003C01 C0 20            [24] 1978 	push	bits
      003C03 C0 03            [24] 1979 	push	ar3
      003C05 C0 05            [24] 1980 	push	ar5
      003C07 C0 06            [24] 1981 	push	ar6
      003C09 C0 04            [24] 1982 	push	ar4
      003C0B C2 F0            [12] 1983 	clr	b[0]
      003C0D 85 F0 20         [24] 1984 	mov	bits,b
      003C10 75 82 00         [24] 1985 	mov	dpl,#0x00
      003C13 12 35 73         [24] 1986 	lcall	_USB_WriteFIFO
      003C16 E5 81            [12] 1987 	mov	a,sp
      003C18 24 FC            [12] 1988 	add	a,#0xfc
      003C1A F5 81            [12] 1989 	mov	sp,a
      003C1C D0 20            [24] 1990 	pop	bits
      003C1E D0 04            [24] 1991 	pop	ar4
      003C20 D0 07            [24] 1992 	pop	ar7
                           000444  1993 	C$efm8_usbdint.c$438$2$139 ==.
                                   1994 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:438: myUsbDevice.ep0.buf += count;
      003C22 90 01 F7         [24] 1995 	mov	dptr,#(_myUsbDevice + 0x000d)
      003C25 E0               [24] 1996 	movx	a,@dptr
      003C26 FB               [12] 1997 	mov	r3,a
      003C27 A3               [24] 1998 	inc	dptr
      003C28 E0               [24] 1999 	movx	a,@dptr
      003C29 FD               [12] 2000 	mov	r5,a
      003C2A A3               [24] 2001 	inc	dptr
      003C2B E0               [24] 2002 	movx	a,@dptr
      003C2C FE               [12] 2003 	mov	r6,a
      003C2D EC               [12] 2004 	mov	a,r4
      003C2E 2B               [12] 2005 	add	a,r3
      003C2F FB               [12] 2006 	mov	r3,a
      003C30 E4               [12] 2007 	clr	a
      003C31 3D               [12] 2008 	addc	a,r5
      003C32 FD               [12] 2009 	mov	r5,a
      003C33 90 01 F7         [24] 2010 	mov	dptr,#(_myUsbDevice + 0x000d)
      003C36 EB               [12] 2011 	mov	a,r3
      003C37 F0               [24] 2012 	movx	@dptr,a
      003C38 ED               [12] 2013 	mov	a,r5
      003C39 A3               [24] 2014 	inc	dptr
      003C3A F0               [24] 2015 	movx	@dptr,a
      003C3B EE               [12] 2016 	mov	a,r6
      003C3C A3               [24] 2017 	inc	dptr
      003C3D F0               [24] 2018 	movx	@dptr,a
      003C3E                       2019 00106$:
                           000460  2020 	C$efm8_usbdint.c$441$1$135 ==.
                                   2021 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:441: myUsbDevice.ep0.misc.bits.inPacketPending = false;
      003C3E 90 01 FD         [24] 2022 	mov	dptr,#(_myUsbDevice + 0x0013)
      003C41 E0               [24] 2023 	movx	a,@dptr
      003C42 54 FB            [12] 2024 	anl	a,#0xfb
      003C44 F0               [24] 2025 	movx	@dptr,a
                           000467  2026 	C$efm8_usbdint.c$442$1$135 ==.
                                   2027 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:442: myUsbDevice.ep0.remaining -= count_snapshot;
      003C45 90 01 FA         [24] 2028 	mov	dptr,#(_myUsbDevice + 0x0010)
      003C48 E0               [24] 2029 	movx	a,@dptr
      003C49 FD               [12] 2030 	mov	r5,a
      003C4A A3               [24] 2031 	inc	dptr
      003C4B E0               [24] 2032 	movx	a,@dptr
      003C4C FE               [12] 2033 	mov	r6,a
      003C4D 8F 03            [24] 2034 	mov	ar3,r7
      003C4F 7C 00            [12] 2035 	mov	r4,#0x00
      003C51 ED               [12] 2036 	mov	a,r5
      003C52 C3               [12] 2037 	clr	c
      003C53 9B               [12] 2038 	subb	a,r3
      003C54 FD               [12] 2039 	mov	r5,a
      003C55 EE               [12] 2040 	mov	a,r6
      003C56 9C               [12] 2041 	subb	a,r4
      003C57 FE               [12] 2042 	mov	r6,a
      003C58 90 01 FA         [24] 2043 	mov	dptr,#(_myUsbDevice + 0x0010)
      003C5B ED               [12] 2044 	mov	a,r5
      003C5C F0               [24] 2045 	movx	@dptr,a
      003C5D EE               [12] 2046 	mov	a,r6
      003C5E A3               [24] 2047 	inc	dptr
      003C5F F0               [24] 2048 	movx	@dptr,a
                           000482  2049 	C$efm8_usbdint.c$448$1$135 ==.
                                   2050 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:448: if ((myUsbDevice.ep0.remaining == 0) && (count_snapshot != USB_EP0_SIZE))
      003C60 ED               [12] 2051 	mov	a,r5
      003C61 4E               [12] 2052 	orl	a,r6
      003C62 70 21            [24] 2053 	jnz	00116$
      003C64 BF 40 02         [24] 2054 	cjne	r7,#0x40,00174$
      003C67 80 1C            [24] 2055 	sjmp	00116$
      003C69                       2056 00174$:
                           00048B  2057 	C$efm8_usbdint.c$450$3$141 ==.
                                   2058 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:450: USB_Ep0SetLastInPacketReady();
      003C69 75 AE 11         [24] 2059 	mov	_USB0ADR,#0x11
      003C6C 75 AF 0A         [24] 2060 	mov	_USB0DAT,#0x0a
      003C6F                       2061 00107$:
      003C6F E5 AE            [12] 2062 	mov	a,_USB0ADR
      003C71 20 E7 FB         [24] 2063 	jb	acc.7,00107$
                           000496  2064 	C$efm8_usbdint.c$451$2$140 ==.
                                   2065 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:451: myUsbDevice.ep0.state = D_EP_IDLE;
      003C74 90 01 FC         [24] 2066 	mov	dptr,#(_myUsbDevice + 0x0012)
      003C77 74 01            [12] 2067 	mov	a,#0x01
      003C79 F0               [24] 2068 	movx	@dptr,a
                           00049C  2069 	C$efm8_usbdint.c$452$2$140 ==.
                                   2070 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:452: myUsbDevice.ep0String.c = USB_STRING_DESCRIPTOR_UTF16LE;
      003C7A 90 01 F6         [24] 2071 	mov	dptr,#(_myUsbDevice + 0x000c)
      003C7D E4               [12] 2072 	clr	a
      003C7E F0               [24] 2073 	movx	@dptr,a
                           0004A1  2074 	C$efm8_usbdint.c$453$2$140 ==.
                                   2075 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:453: myUsbDevice.ep0.misc.c = 0;
      003C7F 90 01 FD         [24] 2076 	mov	dptr,#(_myUsbDevice + 0x0013)
      003C82 F0               [24] 2077 	movx	@dptr,a
                           0004A5  2078 	C$efm8_usbdint.c$459$2$143 ==.
                                   2079 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:459: USB_Ep0SetInPacketReady();
      003C83 80 0B            [24] 2080 	sjmp	00121$
      003C85                       2081 00116$:
      003C85 75 AE 11         [24] 2082 	mov	_USB0ADR,#0x11
      003C88 75 AF 02         [24] 2083 	mov	_USB0DAT,#0x02
      003C8B                       2084 00113$:
      003C8B E5 AE            [12] 2085 	mov	a,_USB0ADR
      003C8D 20 E7 FB         [24] 2086 	jb	acc.7,00113$
      003C90                       2087 00121$:
                           0004B2  2088 	C$efm8_usbdint.c$462$1$135 ==.
                                   2089 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:462: if (callback == true)
      003C90 A2 00            [12] 2090 	mov	c,b0
      003C92 E4               [12] 2091 	clr	a
      003C93 33               [12] 2092 	rlc	a
      003C94 FE               [12] 2093 	mov	r6,a
      003C95 BE 01 21         [24] 2094 	cjne	r6,#0x01,00128$
                           0004BA  2095 	C$efm8_usbdint.c$464$2$146 ==.
                                   2096 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:464: USBD_XferCompleteCb(EP0, USB_STATUS_OK, count_snapshot, myUsbDevice.ep0.remaining);
      003C98 90 01 FA         [24] 2097 	mov	dptr,#(_myUsbDevice + 0x0010)
      003C9B E0               [24] 2098 	movx	a,@dptr
      003C9C FD               [12] 2099 	mov	r5,a
      003C9D A3               [24] 2100 	inc	dptr
      003C9E E0               [24] 2101 	movx	a,@dptr
      003C9F FE               [12] 2102 	mov	r6,a
      003CA0 7C 00            [12] 2103 	mov	r4,#0x00
      003CA2 C0 05            [24] 2104 	push	ar5
      003CA4 C0 06            [24] 2105 	push	ar6
      003CA6 C0 07            [24] 2106 	push	ar7
      003CA8 C0 04            [24] 2107 	push	ar4
      003CAA E4               [12] 2108 	clr	a
      003CAB C0 E0            [24] 2109 	push	acc
      003CAD 75 82 00         [24] 2110 	mov	dpl,#0x00
      003CB0 12 3F B6         [24] 2111 	lcall	_USBD_XferCompleteCb
      003CB3 E5 81            [12] 2112 	mov	a,sp
      003CB5 24 FB            [12] 2113 	add	a,#0xfb
      003CB7 F5 81            [12] 2114 	mov	sp,a
      003CB9                       2115 00128$:
                           0004DB  2116 	C$efm8_usbdint.c$466$1$135 ==.
                           0004DB  2117 	XFefm8_usbdint$handleUsbEp0Tx$0$0 ==.
      003CB9 22               [24] 2118 	ret
                                   2119 ;------------------------------------------------------------
                                   2120 ;Allocation info for local variables in function 'handleUsbEp0Rx'
                                   2121 ;------------------------------------------------------------
                                   2122 ;count                     Allocated to registers r7 
                                   2123 ;status                    Allocated to registers r6 
                                   2124 ;callback                  Allocated to registers b0 
                                   2125 ;------------------------------------------------------------
                           0004DC  2126 	Fefm8_usbdint$handleUsbEp0Rx$0$0 ==.
                           0004DC  2127 	C$efm8_usbdint.c$471$1$135 ==.
                                   2128 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:471: void handleUsbEp0Rx(void)
                                   2129 ;	-----------------------------------------
                                   2130 ;	 function handleUsbEp0Rx
                                   2131 ;	-----------------------------------------
      003CBA                       2132 _handleUsbEp0Rx:
                           0004DC  2133 	C$efm8_usbdint.c$475$1$148 ==.
                                   2134 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:475: bool callback = myUsbDevice.ep0.misc.bits.callback;
      003CBA 90 01 FD         [24] 2135 	mov	dptr,#(_myUsbDevice + 0x0013)
      003CBD E0               [24] 2136 	movx	a,@dptr
      003CBE 54 01            [12] 2137 	anl	a,#0x01
      003CC0 24 FF            [12] 2138 	add	a,#0xff
      003CC2 92 00            [24] 2139 	mov	b0,c
                           0004E6  2140 	C$efm8_usbdint.c$478$1$148 ==.
                                   2141 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:478: count = USB_Ep0GetCount();
      003CC4 C0 20            [24] 2142 	push	bits
      003CC6 12 40 80         [24] 2143 	lcall	_USB_Ep0GetCount
      003CC9 AF 82            [24] 2144 	mov	r7,dpl
      003CCB D0 20            [24] 2145 	pop	bits
                           0004EF  2146 	C$efm8_usbdint.c$482$1$148 ==.
                                   2147 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:482: if (myUsbDevice.ep0.remaining < count)
      003CCD 90 01 FA         [24] 2148 	mov	dptr,#(_myUsbDevice + 0x0010)
      003CD0 E0               [24] 2149 	movx	a,@dptr
      003CD1 FD               [12] 2150 	mov	r5,a
      003CD2 A3               [24] 2151 	inc	dptr
      003CD3 E0               [24] 2152 	movx	a,@dptr
      003CD4 FE               [12] 2153 	mov	r6,a
      003CD5 8F 03            [24] 2154 	mov	ar3,r7
      003CD7 7C 00            [12] 2155 	mov	r4,#0x00
      003CD9 C3               [12] 2156 	clr	c
      003CDA ED               [12] 2157 	mov	a,r5
      003CDB 9B               [12] 2158 	subb	a,r3
      003CDC EE               [12] 2159 	mov	a,r6
      003CDD 9C               [12] 2160 	subb	a,r4
      003CDE 50 12            [24] 2161 	jnc	00118$
                           000502  2162 	C$efm8_usbdint.c$484$2$149 ==.
                                   2163 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:484: myUsbDevice.ep0.state = D_EP_IDLE;
      003CE0 90 01 FC         [24] 2164 	mov	dptr,#(_myUsbDevice + 0x0012)
      003CE3 74 01            [12] 2165 	mov	a,#0x01
      003CE5 F0               [24] 2166 	movx	@dptr,a
                           000508  2167 	C$efm8_usbdint.c$485$2$149 ==.
                                   2168 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:485: myUsbDevice.ep0.misc.bits.outPacketPending = true;
      003CE6 90 01 FD         [24] 2169 	mov	dptr,#(_myUsbDevice + 0x0013)
      003CE9 E0               [24] 2170 	movx	a,@dptr
      003CEA 44 02            [12] 2171 	orl	a,#0x02
      003CEC F0               [24] 2172 	movx	@dptr,a
                           00050F  2173 	C$efm8_usbdint.c$486$2$149 ==.
                                   2174 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:486: status = USB_STATUS_EP_RX_BUFFER_OVERRUN;
      003CED 7E F2            [12] 2175 	mov	r6,#0xf2
      003CEF 02 3D 90         [24] 2176 	ljmp	00119$
      003CF2                       2177 00118$:
                           000514  2178 	C$efm8_usbdint.c$490$1$148 ==.
                                   2179 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:490: USB_ReadFIFO(0, count, myUsbDevice.ep0.buf);
      003CF2 C0 03            [24] 2180 	push	ar3
      003CF4 C0 04            [24] 2181 	push	ar4
      003CF6 90 01 F7         [24] 2182 	mov	dptr,#(_myUsbDevice + 0x000d)
      003CF9 E0               [24] 2183 	movx	a,@dptr
      003CFA FA               [12] 2184 	mov	r2,a
      003CFB A3               [24] 2185 	inc	dptr
      003CFC E0               [24] 2186 	movx	a,@dptr
      003CFD FC               [12] 2187 	mov	r4,a
      003CFE A3               [24] 2188 	inc	dptr
      003CFF E0               [24] 2189 	movx	a,@dptr
      003D00 FD               [12] 2190 	mov	r5,a
      003D01 C0 07            [24] 2191 	push	ar7
      003D03 C0 04            [24] 2192 	push	ar4
      003D05 C0 03            [24] 2193 	push	ar3
      003D07 C0 20            [24] 2194 	push	bits
      003D09 C0 02            [24] 2195 	push	ar2
      003D0B C0 04            [24] 2196 	push	ar4
      003D0D C0 05            [24] 2197 	push	ar5
      003D0F C0 07            [24] 2198 	push	ar7
      003D11 75 82 00         [24] 2199 	mov	dpl,#0x00
      003D14 12 35 35         [24] 2200 	lcall	_USB_ReadFIFO
      003D17 E5 81            [12] 2201 	mov	a,sp
      003D19 24 FC            [12] 2202 	add	a,#0xfc
      003D1B F5 81            [12] 2203 	mov	sp,a
      003D1D D0 20            [24] 2204 	pop	bits
      003D1F D0 03            [24] 2205 	pop	ar3
      003D21 D0 04            [24] 2206 	pop	ar4
      003D23 D0 07            [24] 2207 	pop	ar7
                           000547  2208 	C$efm8_usbdint.c$491$2$150 ==.
                                   2209 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:491: myUsbDevice.ep0.buf += count;
      003D25 90 01 F7         [24] 2210 	mov	dptr,#(_myUsbDevice + 0x000d)
      003D28 E0               [24] 2211 	movx	a,@dptr
      003D29 FB               [12] 2212 	mov	r3,a
      003D2A A3               [24] 2213 	inc	dptr
      003D2B E0               [24] 2214 	movx	a,@dptr
      003D2C FC               [12] 2215 	mov	r4,a
      003D2D A3               [24] 2216 	inc	dptr
      003D2E E0               [24] 2217 	movx	a,@dptr
      003D2F FD               [12] 2218 	mov	r5,a
      003D30 EF               [12] 2219 	mov	a,r7
      003D31 2B               [12] 2220 	add	a,r3
      003D32 FB               [12] 2221 	mov	r3,a
      003D33 E4               [12] 2222 	clr	a
      003D34 3C               [12] 2223 	addc	a,r4
      003D35 FC               [12] 2224 	mov	r4,a
      003D36 90 01 F7         [24] 2225 	mov	dptr,#(_myUsbDevice + 0x000d)
      003D39 EB               [12] 2226 	mov	a,r3
      003D3A F0               [24] 2227 	movx	@dptr,a
      003D3B EC               [12] 2228 	mov	a,r4
      003D3C A3               [24] 2229 	inc	dptr
      003D3D F0               [24] 2230 	movx	@dptr,a
      003D3E ED               [12] 2231 	mov	a,r5
      003D3F A3               [24] 2232 	inc	dptr
      003D40 F0               [24] 2233 	movx	@dptr,a
                           000563  2234 	C$efm8_usbdint.c$492$2$150 ==.
                                   2235 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:492: myUsbDevice.ep0.remaining -= count;
      003D41 90 01 FA         [24] 2236 	mov	dptr,#(_myUsbDevice + 0x0010)
      003D44 E0               [24] 2237 	movx	a,@dptr
      003D45 FC               [12] 2238 	mov	r4,a
      003D46 A3               [24] 2239 	inc	dptr
      003D47 E0               [24] 2240 	movx	a,@dptr
      003D48 FD               [12] 2241 	mov	r5,a
      003D49 8F 02            [24] 2242 	mov	ar2,r7
      003D4B 7B 00            [12] 2243 	mov	r3,#0x00
      003D4D EC               [12] 2244 	mov	a,r4
      003D4E C3               [12] 2245 	clr	c
      003D4F 9A               [12] 2246 	subb	a,r2
      003D50 FC               [12] 2247 	mov	r4,a
      003D51 ED               [12] 2248 	mov	a,r5
      003D52 9B               [12] 2249 	subb	a,r3
      003D53 FD               [12] 2250 	mov	r5,a
      003D54 90 01 FA         [24] 2251 	mov	dptr,#(_myUsbDevice + 0x0010)
      003D57 EC               [12] 2252 	mov	a,r4
      003D58 F0               [24] 2253 	movx	@dptr,a
      003D59 ED               [12] 2254 	mov	a,r5
      003D5A A3               [24] 2255 	inc	dptr
      003D5B F0               [24] 2256 	movx	@dptr,a
                           00057E  2257 	C$efm8_usbdint.c$493$2$150 ==.
                                   2258 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:493: status = USB_STATUS_OK;
      003D5C 7E 00            [12] 2259 	mov	r6,#0x00
                           000580  2260 	C$efm8_usbdint.c$499$1$148 ==.
                                   2261 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:499: if ((myUsbDevice.ep0.remaining == 0) && (count != USB_EP0_SIZE))
      003D5E EC               [12] 2262 	mov	a,r4
      003D5F 4D               [12] 2263 	orl	a,r5
      003D60 D0 04            [24] 2264 	pop	ar4
      003D62 D0 03            [24] 2265 	pop	ar3
      003D64 70 1F            [24] 2266 	jnz	00110$
      003D66 BF 40 02         [24] 2267 	cjne	r7,#0x40,00147$
      003D69 80 1A            [24] 2268 	sjmp	00110$
      003D6B                       2269 00147$:
                           00058D  2270 	C$efm8_usbdint.c$501$4$152 ==.
                                   2271 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:501: USB_Ep0SetLastOutPacketReady();
      003D6B 75 AE 11         [24] 2272 	mov	_USB0ADR,#0x11
      003D6E 75 AF 48         [24] 2273 	mov	_USB0DAT,#0x48
      003D71                       2274 00101$:
      003D71 E5 AE            [12] 2275 	mov	a,_USB0ADR
      003D73 20 E7 FB         [24] 2276 	jb	acc.7,00101$
                           000598  2277 	C$efm8_usbdint.c$502$3$151 ==.
                                   2278 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:502: myUsbDevice.ep0.state = D_EP_IDLE;
      003D76 90 01 FC         [24] 2279 	mov	dptr,#(_myUsbDevice + 0x0012)
      003D79 74 01            [12] 2280 	mov	a,#0x01
      003D7B F0               [24] 2281 	movx	@dptr,a
                           00059E  2282 	C$efm8_usbdint.c$503$3$151 ==.
                                   2283 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:503: myUsbDevice.ep0.misc.bits.callback = false;
      003D7C 90 01 FD         [24] 2284 	mov	dptr,#(_myUsbDevice + 0x0013)
      003D7F E0               [24] 2285 	movx	a,@dptr
      003D80 54 FE            [12] 2286 	anl	a,#0xfe
      003D82 F0               [24] 2287 	movx	@dptr,a
                           0005A5  2288 	C$efm8_usbdint.c$508$3$154 ==.
                                   2289 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:508: USB_Ep0ServicedOutPacketReady();
      003D83 80 0B            [24] 2290 	sjmp	00119$
      003D85                       2291 00110$:
      003D85 75 AE 11         [24] 2292 	mov	_USB0ADR,#0x11
      003D88 75 AF 40         [24] 2293 	mov	_USB0DAT,#0x40
      003D8B                       2294 00107$:
      003D8B E5 AE            [12] 2295 	mov	a,_USB0ADR
      003D8D 20 E7 FB         [24] 2296 	jb	acc.7,00107$
      003D90                       2297 00119$:
                           0005B2  2298 	C$efm8_usbdint.c$513$1$148 ==.
                                   2299 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:513: if (callback == true)
      003D90 A2 00            [12] 2300 	mov	c,b0
      003D92 E4               [12] 2301 	clr	a
      003D93 33               [12] 2302 	rlc	a
      003D94 FF               [12] 2303 	mov	r7,a
      003D95 BF 01 1E         [24] 2304 	cjne	r7,#0x01,00122$
                           0005BA  2305 	C$efm8_usbdint.c$515$2$157 ==.
                                   2306 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:515: USBD_XferCompleteCb(EP0, status, count, myUsbDevice.ep0.remaining);
      003D98 90 01 FA         [24] 2307 	mov	dptr,#(_myUsbDevice + 0x0010)
      003D9B E0               [24] 2308 	movx	a,@dptr
      003D9C FD               [12] 2309 	mov	r5,a
      003D9D A3               [24] 2310 	inc	dptr
      003D9E E0               [24] 2311 	movx	a,@dptr
      003D9F FF               [12] 2312 	mov	r7,a
      003DA0 C0 05            [24] 2313 	push	ar5
      003DA2 C0 07            [24] 2314 	push	ar7
      003DA4 C0 03            [24] 2315 	push	ar3
      003DA6 C0 04            [24] 2316 	push	ar4
      003DA8 C0 06            [24] 2317 	push	ar6
      003DAA 75 82 00         [24] 2318 	mov	dpl,#0x00
      003DAD 12 3F B6         [24] 2319 	lcall	_USBD_XferCompleteCb
      003DB0 E5 81            [12] 2320 	mov	a,sp
      003DB2 24 FB            [12] 2321 	add	a,#0xfb
      003DB4 F5 81            [12] 2322 	mov	sp,a
      003DB6                       2323 00122$:
                           0005D8  2324 	C$efm8_usbdint.c$517$1$148 ==.
                           0005D8  2325 	XFefm8_usbdint$handleUsbEp0Rx$0$0 ==.
      003DB6 22               [24] 2326 	ret
                                   2327 ;------------------------------------------------------------
                                   2328 ;Allocation info for local variables in function 'SendEp0Stall'
                                   2329 ;------------------------------------------------------------
                           0005D9  2330 	G$SendEp0Stall$0$0 ==.
                           0005D9  2331 	C$efm8_usbdint.c$523$1$148 ==.
                                   2332 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:523: void SendEp0Stall(void)
                                   2333 ;	-----------------------------------------
                                   2334 ;	 function SendEp0Stall
                                   2335 ;	-----------------------------------------
      003DB7                       2336 _SendEp0Stall:
                           0005D9  2337 	C$efm8_usbdint.c$525$1$159 ==.
                                   2338 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:525: USB_SetIndex(0);
      003DB7 75 82 00         [24] 2339 	mov	dpl,#0x00
      003DBA 12 3F F9         [24] 2340 	lcall	_USB_SetIndex
                           0005DF  2341 	C$efm8_usbdint.c$526$1$159 ==.
                                   2342 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:526: myUsbDevice.ep0.state = D_EP_STALL;
      003DBD 90 01 FC         [24] 2343 	mov	dptr,#(_myUsbDevice + 0x0012)
      003DC0 74 05            [12] 2344 	mov	a,#0x05
      003DC2 F0               [24] 2345 	movx	@dptr,a
                           0005E5  2346 	C$efm8_usbdint.c$527$2$160 ==.
                                   2347 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:527: USB_Ep0SendStall();
      003DC3 75 AE 11         [24] 2348 	mov	_USB0ADR,#0x11
      003DC6 75 AF 20         [24] 2349 	mov	_USB0DAT,#0x20
      003DC9                       2350 00101$:
      003DC9 E5 AE            [12] 2351 	mov	a,_USB0ADR
      003DCB 20 E7 FB         [24] 2352 	jb	acc.7,00101$
                           0005F0  2353 	C$efm8_usbdint.c$528$1$159 ==.
                           0005F0  2354 	XG$SendEp0Stall$0$0 ==.
      003DCE 22               [24] 2355 	ret
                                   2356 ;------------------------------------------------------------
                                   2357 ;Allocation info for local variables in function 'forceModuleLoad_usbint'
                                   2358 ;------------------------------------------------------------
                           0005F1  2359 	G$forceModuleLoad_usbint$0$0 ==.
                           0005F1  2360 	C$efm8_usbdint.c$534$1$159 ==.
                                   2361 ;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdint.c:534: void forceModuleLoad_usbint(void){}
                                   2362 ;	-----------------------------------------
                                   2363 ;	 function forceModuleLoad_usbint
                                   2364 ;	-----------------------------------------
      003DCF                       2365 _forceModuleLoad_usbint:
                           0005F1  2366 	C$efm8_usbdint.c$534$1$159 ==.
                           0005F1  2367 	XG$forceModuleLoad_usbint$0$0 ==.
      003DCF 22               [24] 2368 	ret
                                   2369 	.area CSEG    (CODE)
                                   2370 	.area CONST   (CODE)
                                   2371 	.area XINIT   (CODE)
                                   2372 	.area CABS    (ABS,CODE)
