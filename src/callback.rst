                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module callback
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _set_app_u2f_hid_msg
                                     12 	.globl _USBD_Write
                                     13 	.globl _U2F_BLUE
                                     14 	.globl _U2F_GREEN
                                     15 	.globl _U2F_RED
                                     16 	.globl _U2F_BUTTON_VAL
                                     17 	.globl _U2F_BUTTON
                                     18 	.globl _UART1FCN1_TFRQ
                                     19 	.globl _UART1FCN1_TXNF
                                     20 	.globl _UART1FCN1_TXHOLD
                                     21 	.globl _UART1FCN1_TIE
                                     22 	.globl _UART1FCN1_RFRQ
                                     23 	.globl _UART1FCN1_RXTO1
                                     24 	.globl _UART1FCN1_RXTO0
                                     25 	.globl _UART1FCN1_RIE
                                     26 	.globl _TMR4CN0_TF4H
                                     27 	.globl _TMR4CN0_TF4L
                                     28 	.globl _TMR4CN0_TF4LEN
                                     29 	.globl _TMR4CN0_TF4CEN
                                     30 	.globl _TMR4CN0_T4SPLIT
                                     31 	.globl _TMR4CN0_TR4
                                     32 	.globl _TMR4CN0_T4XCLK1
                                     33 	.globl _TMR4CN0_T4XCLK0
                                     34 	.globl _TMR2CN0_TF2H
                                     35 	.globl _TMR2CN0_TF2L
                                     36 	.globl _TMR2CN0_TF2LEN
                                     37 	.globl _TMR2CN0_TF2CEN
                                     38 	.globl _TMR2CN0_T2SPLIT
                                     39 	.globl _TMR2CN0_TR2
                                     40 	.globl _TMR2CN0_T2XCLK1
                                     41 	.globl _TMR2CN0_T2XCLK0
                                     42 	.globl _TCON_TF1
                                     43 	.globl _TCON_TR1
                                     44 	.globl _TCON_TF0
                                     45 	.globl _TCON_TR0
                                     46 	.globl _TCON_IE1
                                     47 	.globl _TCON_IT1
                                     48 	.globl _TCON_IE0
                                     49 	.globl _TCON_IT0
                                     50 	.globl _SPI0CN0_SPIF
                                     51 	.globl _SPI0CN0_WCOL
                                     52 	.globl _SPI0CN0_MODF
                                     53 	.globl _SPI0CN0_RXOVRN
                                     54 	.globl _SPI0CN0_NSSMD1
                                     55 	.globl _SPI0CN0_NSSMD0
                                     56 	.globl _SPI0CN0_TXNF
                                     57 	.globl _SPI0CN0_SPIEN
                                     58 	.globl _SMB0CN0_MASTER
                                     59 	.globl _SMB0CN0_TXMODE
                                     60 	.globl _SMB0CN0_STA
                                     61 	.globl _SMB0CN0_STO
                                     62 	.globl _SMB0CN0_ACKRQ
                                     63 	.globl _SMB0CN0_ARBLOST
                                     64 	.globl _SMB0CN0_ACK
                                     65 	.globl _SMB0CN0_SI
                                     66 	.globl _SCON1_OVR
                                     67 	.globl _SCON1_PERR
                                     68 	.globl _SCON1_REN
                                     69 	.globl _SCON1_TBX
                                     70 	.globl _SCON1_RBX
                                     71 	.globl _SCON1_TI
                                     72 	.globl _SCON1_RI
                                     73 	.globl _SCON0_SMODE
                                     74 	.globl _SCON0_MCE
                                     75 	.globl _SCON0_REN
                                     76 	.globl _SCON0_TB8
                                     77 	.globl _SCON0_RB8
                                     78 	.globl _SCON0_TI
                                     79 	.globl _SCON0_RI
                                     80 	.globl _PSW_CY
                                     81 	.globl _PSW_AC
                                     82 	.globl _PSW_F0
                                     83 	.globl _PSW_RS1
                                     84 	.globl _PSW_RS0
                                     85 	.globl _PSW_OV
                                     86 	.globl _PSW_F1
                                     87 	.globl _PSW_PARITY
                                     88 	.globl _PCA0CN0_CF
                                     89 	.globl _PCA0CN0_CR
                                     90 	.globl _PCA0CN0_CCF2
                                     91 	.globl _PCA0CN0_CCF1
                                     92 	.globl _PCA0CN0_CCF0
                                     93 	.globl _P3_B1
                                     94 	.globl _P3_B0
                                     95 	.globl _P2_B3
                                     96 	.globl _P2_B2
                                     97 	.globl _P2_B1
                                     98 	.globl _P2_B0
                                     99 	.globl _P1_B7
                                    100 	.globl _P1_B6
                                    101 	.globl _P1_B5
                                    102 	.globl _P1_B4
                                    103 	.globl _P1_B3
                                    104 	.globl _P1_B2
                                    105 	.globl _P1_B1
                                    106 	.globl _P1_B0
                                    107 	.globl _P0_B7
                                    108 	.globl _P0_B6
                                    109 	.globl _P0_B5
                                    110 	.globl _P0_B4
                                    111 	.globl _P0_B3
                                    112 	.globl _P0_B2
                                    113 	.globl _P0_B1
                                    114 	.globl _P0_B0
                                    115 	.globl _IP_PSPI0
                                    116 	.globl _IP_PT2
                                    117 	.globl _IP_PS0
                                    118 	.globl _IP_PT1
                                    119 	.globl _IP_PX1
                                    120 	.globl _IP_PT0
                                    121 	.globl _IP_PX0
                                    122 	.globl _IE_EA
                                    123 	.globl _IE_ESPI0
                                    124 	.globl _IE_ET2
                                    125 	.globl _IE_ES0
                                    126 	.globl _IE_ET1
                                    127 	.globl _IE_EX1
                                    128 	.globl _IE_ET0
                                    129 	.globl _IE_EX0
                                    130 	.globl _B_B7
                                    131 	.globl _B_B6
                                    132 	.globl _B_B5
                                    133 	.globl _B_B4
                                    134 	.globl _B_B3
                                    135 	.globl _B_B2
                                    136 	.globl _B_B1
                                    137 	.globl _B_B0
                                    138 	.globl _ADC0CN0_ADEN
                                    139 	.globl _ADC0CN0_ADBMEN
                                    140 	.globl _ADC0CN0_ADINT
                                    141 	.globl _ADC0CN0_ADBUSY
                                    142 	.globl _ADC0CN0_ADWINT
                                    143 	.globl _ADC0CN0_ADCM2
                                    144 	.globl _ADC0CN0_ADCM1
                                    145 	.globl _ADC0CN0_ADCM0
                                    146 	.globl _ACC_ACC7
                                    147 	.globl _ACC_ACC6
                                    148 	.globl _ACC_ACC5
                                    149 	.globl _ACC_ACC4
                                    150 	.globl _ACC_ACC3
                                    151 	.globl _ACC_ACC2
                                    152 	.globl _ACC_ACC1
                                    153 	.globl _ACC_ACC0
                                    154 	.globl __XPAGE
                                    155 	.globl _TMR4RL
                                    156 	.globl _TMR4
                                    157 	.globl _TMR3RL
                                    158 	.globl _TMR3
                                    159 	.globl _TMR2RL
                                    160 	.globl _TMR2
                                    161 	.globl _SBRL1
                                    162 	.globl _PCA0
                                    163 	.globl _PCA0CP2
                                    164 	.globl _PCA0CP1
                                    165 	.globl _PCA0CP0
                                    166 	.globl _DP
                                    167 	.globl _ADC0LT
                                    168 	.globl _ADC0
                                    169 	.globl _ADC0GT
                                    170 	.globl _XBR2
                                    171 	.globl _XBR1
                                    172 	.globl _XBR0
                                    173 	.globl _WDTCN
                                    174 	.globl _VDM0CN
                                    175 	.globl _USB0XCN
                                    176 	.globl _USB0DAT
                                    177 	.globl _USB0CF
                                    178 	.globl _USB0CDSTA
                                    179 	.globl _USB0CDCN
                                    180 	.globl _USB0CDCF
                                    181 	.globl _USB0AEC
                                    182 	.globl _USB0ADR
                                    183 	.globl _UART1LIN
                                    184 	.globl _UART1FCT
                                    185 	.globl _UART1FCN1
                                    186 	.globl _UART1FCN0
                                    187 	.globl _TMR4RLL
                                    188 	.globl _TMR4RLH
                                    189 	.globl _TMR4L
                                    190 	.globl _TMR4H
                                    191 	.globl _TMR4CN1
                                    192 	.globl _TMR4CN0
                                    193 	.globl _TMR3RLL
                                    194 	.globl _TMR3RLH
                                    195 	.globl _TMR3L
                                    196 	.globl _TMR3H
                                    197 	.globl _TMR3CN1
                                    198 	.globl _TMR3CN0
                                    199 	.globl _TMR2RLL
                                    200 	.globl _TMR2RLH
                                    201 	.globl _TMR2L
                                    202 	.globl _TMR2H
                                    203 	.globl _TMR2CN1
                                    204 	.globl _TMR2CN0
                                    205 	.globl _TMOD
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TH1
                                    209 	.globl _TH0
                                    210 	.globl _TCON
                                    211 	.globl _SPI0FCT
                                    212 	.globl _SPI0FCN1
                                    213 	.globl _SPI0FCN0
                                    214 	.globl _SPI0DAT
                                    215 	.globl _SPI0CN0
                                    216 	.globl _SPI0CKR
                                    217 	.globl _SPI0CFG
                                    218 	.globl _SP
                                    219 	.globl _SMOD1
                                    220 	.globl _SMB0TC
                                    221 	.globl _SMB0RXLN
                                    222 	.globl _SMB0FCT
                                    223 	.globl _SMB0FCN1
                                    224 	.globl _SMB0FCN0
                                    225 	.globl _SMB0DAT
                                    226 	.globl _SMB0CN0
                                    227 	.globl _SMB0CF
                                    228 	.globl _SMB0ADR
                                    229 	.globl _SMB0ADM
                                    230 	.globl _SFRSTACK
                                    231 	.globl _SFRPGCN
                                    232 	.globl _SFRPAGE
                                    233 	.globl _SCON1
                                    234 	.globl _SCON0
                                    235 	.globl _SBUF1
                                    236 	.globl _SBUF0
                                    237 	.globl _SBRLL1
                                    238 	.globl _SBRLH1
                                    239 	.globl _SBCON1
                                    240 	.globl _RSTSRC
                                    241 	.globl _REVID
                                    242 	.globl _REG1CN
                                    243 	.globl _REG0CN
                                    244 	.globl _REF0CN
                                    245 	.globl _PSW
                                    246 	.globl _PSCTL
                                    247 	.globl _PRTDRV
                                    248 	.globl _PFE0CN
                                    249 	.globl _PCON1
                                    250 	.globl _PCON0
                                    251 	.globl _PCA0PWM
                                    252 	.globl _PCA0POL
                                    253 	.globl _PCA0MD
                                    254 	.globl _PCA0L
                                    255 	.globl _PCA0H
                                    256 	.globl _PCA0CPM2
                                    257 	.globl _PCA0CPM1
                                    258 	.globl _PCA0CPM0
                                    259 	.globl _PCA0CPL2
                                    260 	.globl _PCA0CPL1
                                    261 	.globl _PCA0CPL0
                                    262 	.globl _PCA0CPH2
                                    263 	.globl _PCA0CPH1
                                    264 	.globl _PCA0CPH0
                                    265 	.globl _PCA0CN0
                                    266 	.globl _PCA0CLR
                                    267 	.globl _PCA0CENT
                                    268 	.globl _P3MDOUT
                                    269 	.globl _P3MDIN
                                    270 	.globl _P3
                                    271 	.globl _P2SKIP
                                    272 	.globl _P2MDOUT
                                    273 	.globl _P2MDIN
                                    274 	.globl _P2MAT
                                    275 	.globl _P2MASK
                                    276 	.globl _P2
                                    277 	.globl _P1SKIP
                                    278 	.globl _P1MDOUT
                                    279 	.globl _P1MDIN
                                    280 	.globl _P1MAT
                                    281 	.globl _P1MASK
                                    282 	.globl _P1
                                    283 	.globl _P0SKIP
                                    284 	.globl _P0MDOUT
                                    285 	.globl _P0MDIN
                                    286 	.globl _P0MAT
                                    287 	.globl _P0MASK
                                    288 	.globl _P0
                                    289 	.globl _LFO0CN
                                    290 	.globl _IT01CF
                                    291 	.globl _IPH
                                    292 	.globl _IP
                                    293 	.globl _IE
                                    294 	.globl _I2C0STAT
                                    295 	.globl _I2C0SLAD
                                    296 	.globl _I2C0FCT
                                    297 	.globl _I2C0FCN1
                                    298 	.globl _I2C0FCN0
                                    299 	.globl _I2C0DOUT
                                    300 	.globl _I2C0DIN
                                    301 	.globl _I2C0CN0
                                    302 	.globl _HFOCN
                                    303 	.globl _HFO1CAL
                                    304 	.globl _HFO0CAL
                                    305 	.globl _FLKEY
                                    306 	.globl _EMI0CN
                                    307 	.globl _EIP2H
                                    308 	.globl _EIP2
                                    309 	.globl _EIP1H
                                    310 	.globl _EIP1
                                    311 	.globl _EIE2
                                    312 	.globl _EIE1
                                    313 	.globl _DPL
                                    314 	.globl _DPH
                                    315 	.globl _DEVICEID
                                    316 	.globl _DERIVID
                                    317 	.globl _CRC0ST
                                    318 	.globl _CRC0IN
                                    319 	.globl _CRC0FLIP
                                    320 	.globl _CRC0DAT
                                    321 	.globl _CRC0CNT
                                    322 	.globl _CRC0CN1
                                    323 	.globl _CRC0CN0
                                    324 	.globl _CMP1MX
                                    325 	.globl _CMP1MD
                                    326 	.globl _CMP1CN1
                                    327 	.globl _CMP1CN0
                                    328 	.globl _CMP0MX
                                    329 	.globl _CMP0MD
                                    330 	.globl _CMP0CN1
                                    331 	.globl _CMP0CN0
                                    332 	.globl _CLKSEL
                                    333 	.globl _CKCON1
                                    334 	.globl _CKCON0
                                    335 	.globl _B
                                    336 	.globl _ADC0TK
                                    337 	.globl _ADC0PWR
                                    338 	.globl _ADC0MX
                                    339 	.globl _ADC0LTL
                                    340 	.globl _ADC0LTH
                                    341 	.globl _ADC0L
                                    342 	.globl _ADC0H
                                    343 	.globl _ADC0GTL
                                    344 	.globl _ADC0GTH
                                    345 	.globl _ADC0CN1
                                    346 	.globl _ADC0CN0
                                    347 	.globl _ADC0CF
                                    348 	.globl _ADC0AC
                                    349 	.globl _ACC
                                    350 	.globl _hidmsgbuf
                                    351 	.globl _tmpBuffer
                                    352 	.globl _USBD_ResetCb
                                    353 	.globl _USBD_DeviceStateChangeCb
                                    354 	.globl _USBD_IsSelfPoweredCb
                                    355 	.globl _USBD_SetupCmdCb
                                    356 	.globl _USBD_XferCompleteCb
                                    357 ;--------------------------------------------------------
                                    358 ; special function registers
                                    359 ;--------------------------------------------------------
                                    360 	.area RSEG    (ABS,DATA)
      000000                        361 	.org 0x0000
                           0000E0   362 G$ACC$0$0 == 0x00e0
                           0000E0   363 _ACC	=	0x00e0
                           0000B3   364 G$ADC0AC$0$0 == 0x00b3
                           0000B3   365 _ADC0AC	=	0x00b3
                           0000BC   366 G$ADC0CF$0$0 == 0x00bc
                           0000BC   367 _ADC0CF	=	0x00bc
                           0000E8   368 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   369 _ADC0CN0	=	0x00e8
                           0000B2   370 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   371 _ADC0CN1	=	0x00b2
                           0000C4   372 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   373 _ADC0GTH	=	0x00c4
                           0000C3   374 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   375 _ADC0GTL	=	0x00c3
                           0000BE   376 G$ADC0H$0$0 == 0x00be
                           0000BE   377 _ADC0H	=	0x00be
                           0000BD   378 G$ADC0L$0$0 == 0x00bd
                           0000BD   379 _ADC0L	=	0x00bd
                           0000C6   380 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   381 _ADC0LTH	=	0x00c6
                           0000C5   382 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   383 _ADC0LTL	=	0x00c5
                           0000BB   384 G$ADC0MX$0$0 == 0x00bb
                           0000BB   385 _ADC0MX	=	0x00bb
                           0000DF   386 G$ADC0PWR$0$0 == 0x00df
                           0000DF   387 _ADC0PWR	=	0x00df
                           0000B9   388 G$ADC0TK$0$0 == 0x00b9
                           0000B9   389 _ADC0TK	=	0x00b9
                           0000F0   390 G$B$0$0 == 0x00f0
                           0000F0   391 _B	=	0x00f0
                           00008E   392 G$CKCON0$0$0 == 0x008e
                           00008E   393 _CKCON0	=	0x008e
                           0000A6   394 G$CKCON1$0$0 == 0x00a6
                           0000A6   395 _CKCON1	=	0x00a6
                           0000A9   396 G$CLKSEL$0$0 == 0x00a9
                           0000A9   397 _CLKSEL	=	0x00a9
                           00009B   398 G$CMP0CN0$0$0 == 0x009b
                           00009B   399 _CMP0CN0	=	0x009b
                           000099   400 G$CMP0CN1$0$0 == 0x0099
                           000099   401 _CMP0CN1	=	0x0099
                           00009D   402 G$CMP0MD$0$0 == 0x009d
                           00009D   403 _CMP0MD	=	0x009d
                           00009F   404 G$CMP0MX$0$0 == 0x009f
                           00009F   405 _CMP0MX	=	0x009f
                           0000BF   406 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   407 _CMP1CN0	=	0x00bf
                           0000AC   408 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   409 _CMP1CN1	=	0x00ac
                           0000AB   410 G$CMP1MD$0$0 == 0x00ab
                           0000AB   411 _CMP1MD	=	0x00ab
                           0000AA   412 G$CMP1MX$0$0 == 0x00aa
                           0000AA   413 _CMP1MX	=	0x00aa
                           0000CE   414 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   415 _CRC0CN0	=	0x00ce
                           000086   416 G$CRC0CN1$0$0 == 0x0086
                           000086   417 _CRC0CN1	=	0x0086
                           0000D3   418 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   419 _CRC0CNT	=	0x00d3
                           0000DE   420 G$CRC0DAT$0$0 == 0x00de
                           0000DE   421 _CRC0DAT	=	0x00de
                           0000CF   422 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   423 _CRC0FLIP	=	0x00cf
                           0000DD   424 G$CRC0IN$0$0 == 0x00dd
                           0000DD   425 _CRC0IN	=	0x00dd
                           0000D2   426 G$CRC0ST$0$0 == 0x00d2
                           0000D2   427 _CRC0ST	=	0x00d2
                           0000AD   428 G$DERIVID$0$0 == 0x00ad
                           0000AD   429 _DERIVID	=	0x00ad
                           0000B5   430 G$DEVICEID$0$0 == 0x00b5
                           0000B5   431 _DEVICEID	=	0x00b5
                           000083   432 G$DPH$0$0 == 0x0083
                           000083   433 _DPH	=	0x0083
                           000082   434 G$DPL$0$0 == 0x0082
                           000082   435 _DPL	=	0x0082
                           0000E6   436 G$EIE1$0$0 == 0x00e6
                           0000E6   437 _EIE1	=	0x00e6
                           0000CE   438 G$EIE2$0$0 == 0x00ce
                           0000CE   439 _EIE2	=	0x00ce
                           0000F3   440 G$EIP1$0$0 == 0x00f3
                           0000F3   441 _EIP1	=	0x00f3
                           0000F5   442 G$EIP1H$0$0 == 0x00f5
                           0000F5   443 _EIP1H	=	0x00f5
                           0000F4   444 G$EIP2$0$0 == 0x00f4
                           0000F4   445 _EIP2	=	0x00f4
                           0000F6   446 G$EIP2H$0$0 == 0x00f6
                           0000F6   447 _EIP2H	=	0x00f6
                           0000E7   448 G$EMI0CN$0$0 == 0x00e7
                           0000E7   449 _EMI0CN	=	0x00e7
                           0000B7   450 G$FLKEY$0$0 == 0x00b7
                           0000B7   451 _FLKEY	=	0x00b7
                           0000C7   452 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   453 _HFO0CAL	=	0x00c7
                           0000D6   454 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   455 _HFO1CAL	=	0x00d6
                           0000EF   456 G$HFOCN$0$0 == 0x00ef
                           0000EF   457 _HFOCN	=	0x00ef
                           0000BA   458 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   459 _I2C0CN0	=	0x00ba
                           0000BC   460 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   461 _I2C0DIN	=	0x00bc
                           0000BB   462 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   463 _I2C0DOUT	=	0x00bb
                           0000AD   464 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   465 _I2C0FCN0	=	0x00ad
                           0000AB   466 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   467 _I2C0FCN1	=	0x00ab
                           0000F5   468 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   469 _I2C0FCT	=	0x00f5
                           0000BD   470 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   471 _I2C0SLAD	=	0x00bd
                           0000B9   472 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   473 _I2C0STAT	=	0x00b9
                           0000A8   474 G$IE$0$0 == 0x00a8
                           0000A8   475 _IE	=	0x00a8
                           0000B8   476 G$IP$0$0 == 0x00b8
                           0000B8   477 _IP	=	0x00b8
                           0000F2   478 G$IPH$0$0 == 0x00f2
                           0000F2   479 _IPH	=	0x00f2
                           0000E4   480 G$IT01CF$0$0 == 0x00e4
                           0000E4   481 _IT01CF	=	0x00e4
                           0000B1   482 G$LFO0CN$0$0 == 0x00b1
                           0000B1   483 _LFO0CN	=	0x00b1
                           000080   484 G$P0$0$0 == 0x0080
                           000080   485 _P0	=	0x0080
                           0000FE   486 G$P0MASK$0$0 == 0x00fe
                           0000FE   487 _P0MASK	=	0x00fe
                           0000FD   488 G$P0MAT$0$0 == 0x00fd
                           0000FD   489 _P0MAT	=	0x00fd
                           0000F1   490 G$P0MDIN$0$0 == 0x00f1
                           0000F1   491 _P0MDIN	=	0x00f1
                           0000A4   492 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   493 _P0MDOUT	=	0x00a4
                           0000D4   494 G$P0SKIP$0$0 == 0x00d4
                           0000D4   495 _P0SKIP	=	0x00d4
                           000090   496 G$P1$0$0 == 0x0090
                           000090   497 _P1	=	0x0090
                           0000EE   498 G$P1MASK$0$0 == 0x00ee
                           0000EE   499 _P1MASK	=	0x00ee
                           0000ED   500 G$P1MAT$0$0 == 0x00ed
                           0000ED   501 _P1MAT	=	0x00ed
                           0000F2   502 G$P1MDIN$0$0 == 0x00f2
                           0000F2   503 _P1MDIN	=	0x00f2
                           0000A5   504 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   505 _P1MDOUT	=	0x00a5
                           0000D5   506 G$P1SKIP$0$0 == 0x00d5
                           0000D5   507 _P1SKIP	=	0x00d5
                           0000A0   508 G$P2$0$0 == 0x00a0
                           0000A0   509 _P2	=	0x00a0
                           0000FC   510 G$P2MASK$0$0 == 0x00fc
                           0000FC   511 _P2MASK	=	0x00fc
                           0000FB   512 G$P2MAT$0$0 == 0x00fb
                           0000FB   513 _P2MAT	=	0x00fb
                           0000F3   514 G$P2MDIN$0$0 == 0x00f3
                           0000F3   515 _P2MDIN	=	0x00f3
                           0000A6   516 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   517 _P2MDOUT	=	0x00a6
                           0000CC   518 G$P2SKIP$0$0 == 0x00cc
                           0000CC   519 _P2SKIP	=	0x00cc
                           0000B0   520 G$P3$0$0 == 0x00b0
                           0000B0   521 _P3	=	0x00b0
                           0000F4   522 G$P3MDIN$0$0 == 0x00f4
                           0000F4   523 _P3MDIN	=	0x00f4
                           00009C   524 G$P3MDOUT$0$0 == 0x009c
                           00009C   525 _P3MDOUT	=	0x009c
                           00009E   526 G$PCA0CENT$0$0 == 0x009e
                           00009E   527 _PCA0CENT	=	0x009e
                           00009C   528 G$PCA0CLR$0$0 == 0x009c
                           00009C   529 _PCA0CLR	=	0x009c
                           0000D8   530 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   531 _PCA0CN0	=	0x00d8
                           0000FC   532 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   533 _PCA0CPH0	=	0x00fc
                           0000EA   534 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   535 _PCA0CPH1	=	0x00ea
                           0000EC   536 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   537 _PCA0CPH2	=	0x00ec
                           0000FB   538 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   539 _PCA0CPL0	=	0x00fb
                           0000E9   540 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   541 _PCA0CPL1	=	0x00e9
                           0000EB   542 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   543 _PCA0CPL2	=	0x00eb
                           0000DA   544 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   545 _PCA0CPM0	=	0x00da
                           0000DB   546 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   547 _PCA0CPM1	=	0x00db
                           0000DC   548 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   549 _PCA0CPM2	=	0x00dc
                           0000FA   550 G$PCA0H$0$0 == 0x00fa
                           0000FA   551 _PCA0H	=	0x00fa
                           0000F9   552 G$PCA0L$0$0 == 0x00f9
                           0000F9   553 _PCA0L	=	0x00f9
                           0000D9   554 G$PCA0MD$0$0 == 0x00d9
                           0000D9   555 _PCA0MD	=	0x00d9
                           000096   556 G$PCA0POL$0$0 == 0x0096
                           000096   557 _PCA0POL	=	0x0096
                           0000F7   558 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   559 _PCA0PWM	=	0x00f7
                           000087   560 G$PCON0$0$0 == 0x0087
                           000087   561 _PCON0	=	0x0087
                           00009A   562 G$PCON1$0$0 == 0x009a
                           00009A   563 _PCON1	=	0x009a
                           0000C1   564 G$PFE0CN$0$0 == 0x00c1
                           0000C1   565 _PFE0CN	=	0x00c1
                           0000F6   566 G$PRTDRV$0$0 == 0x00f6
                           0000F6   567 _PRTDRV	=	0x00f6
                           00008F   568 G$PSCTL$0$0 == 0x008f
                           00008F   569 _PSCTL	=	0x008f
                           0000D0   570 G$PSW$0$0 == 0x00d0
                           0000D0   571 _PSW	=	0x00d0
                           0000D1   572 G$REF0CN$0$0 == 0x00d1
                           0000D1   573 _REF0CN	=	0x00d1
                           0000C9   574 G$REG0CN$0$0 == 0x00c9
                           0000C9   575 _REG0CN	=	0x00c9
                           0000C6   576 G$REG1CN$0$0 == 0x00c6
                           0000C6   577 _REG1CN	=	0x00c6
                           0000B6   578 G$REVID$0$0 == 0x00b6
                           0000B6   579 _REVID	=	0x00b6
                           0000EF   580 G$RSTSRC$0$0 == 0x00ef
                           0000EF   581 _RSTSRC	=	0x00ef
                           000094   582 G$SBCON1$0$0 == 0x0094
                           000094   583 _SBCON1	=	0x0094
                           000096   584 G$SBRLH1$0$0 == 0x0096
                           000096   585 _SBRLH1	=	0x0096
                           000095   586 G$SBRLL1$0$0 == 0x0095
                           000095   587 _SBRLL1	=	0x0095
                           000099   588 G$SBUF0$0$0 == 0x0099
                           000099   589 _SBUF0	=	0x0099
                           000092   590 G$SBUF1$0$0 == 0x0092
                           000092   591 _SBUF1	=	0x0092
                           000098   592 G$SCON0$0$0 == 0x0098
                           000098   593 _SCON0	=	0x0098
                           0000C8   594 G$SCON1$0$0 == 0x00c8
                           0000C8   595 _SCON1	=	0x00c8
                           0000A7   596 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   597 _SFRPAGE	=	0x00a7
                           0000CF   598 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   599 _SFRPGCN	=	0x00cf
                           0000D7   600 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   601 _SFRSTACK	=	0x00d7
                           0000D6   602 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   603 _SMB0ADM	=	0x00d6
                           0000D7   604 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   605 _SMB0ADR	=	0x00d7
                           0000C1   606 G$SMB0CF$0$0 == 0x00c1
                           0000C1   607 _SMB0CF	=	0x00c1
                           0000C0   608 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   609 _SMB0CN0	=	0x00c0
                           0000C2   610 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   611 _SMB0DAT	=	0x00c2
                           0000C3   612 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   613 _SMB0FCN0	=	0x00c3
                           0000C4   614 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   615 _SMB0FCN1	=	0x00c4
                           0000EF   616 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   617 _SMB0FCT	=	0x00ef
                           0000C5   618 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   619 _SMB0RXLN	=	0x00c5
                           0000AC   620 G$SMB0TC$0$0 == 0x00ac
                           0000AC   621 _SMB0TC	=	0x00ac
                           000093   622 G$SMOD1$0$0 == 0x0093
                           000093   623 _SMOD1	=	0x0093
                           000081   624 G$SP$0$0 == 0x0081
                           000081   625 _SP	=	0x0081
                           0000A1   626 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   627 _SPI0CFG	=	0x00a1
                           0000A2   628 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   629 _SPI0CKR	=	0x00a2
                           0000F8   630 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   631 _SPI0CN0	=	0x00f8
                           0000A3   632 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   633 _SPI0DAT	=	0x00a3
                           00009A   634 G$SPI0FCN0$0$0 == 0x009a
                           00009A   635 _SPI0FCN0	=	0x009a
                           00009B   636 G$SPI0FCN1$0$0 == 0x009b
                           00009B   637 _SPI0FCN1	=	0x009b
                           0000F7   638 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   639 _SPI0FCT	=	0x00f7
                           000088   640 G$TCON$0$0 == 0x0088
                           000088   641 _TCON	=	0x0088
                           00008C   642 G$TH0$0$0 == 0x008c
                           00008C   643 _TH0	=	0x008c
                           00008D   644 G$TH1$0$0 == 0x008d
                           00008D   645 _TH1	=	0x008d
                           00008A   646 G$TL0$0$0 == 0x008a
                           00008A   647 _TL0	=	0x008a
                           00008B   648 G$TL1$0$0 == 0x008b
                           00008B   649 _TL1	=	0x008b
                           000089   650 G$TMOD$0$0 == 0x0089
                           000089   651 _TMOD	=	0x0089
                           0000C8   652 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   653 _TMR2CN0	=	0x00c8
                           0000FD   654 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   655 _TMR2CN1	=	0x00fd
                           0000CD   656 G$TMR2H$0$0 == 0x00cd
                           0000CD   657 _TMR2H	=	0x00cd
                           0000CC   658 G$TMR2L$0$0 == 0x00cc
                           0000CC   659 _TMR2L	=	0x00cc
                           0000CB   660 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   661 _TMR2RLH	=	0x00cb
                           0000CA   662 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   663 _TMR2RLL	=	0x00ca
                           000091   664 G$TMR3CN0$0$0 == 0x0091
                           000091   665 _TMR3CN0	=	0x0091
                           0000FE   666 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   667 _TMR3CN1	=	0x00fe
                           000095   668 G$TMR3H$0$0 == 0x0095
                           000095   669 _TMR3H	=	0x0095
                           000094   670 G$TMR3L$0$0 == 0x0094
                           000094   671 _TMR3L	=	0x0094
                           000093   672 G$TMR3RLH$0$0 == 0x0093
                           000093   673 _TMR3RLH	=	0x0093
                           000092   674 G$TMR3RLL$0$0 == 0x0092
                           000092   675 _TMR3RLL	=	0x0092
                           000098   676 G$TMR4CN0$0$0 == 0x0098
                           000098   677 _TMR4CN0	=	0x0098
                           0000FF   678 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   679 _TMR4CN1	=	0x00ff
                           0000A5   680 G$TMR4H$0$0 == 0x00a5
                           0000A5   681 _TMR4H	=	0x00a5
                           0000A4   682 G$TMR4L$0$0 == 0x00a4
                           0000A4   683 _TMR4L	=	0x00a4
                           0000A3   684 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   685 _TMR4RLH	=	0x00a3
                           0000A2   686 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   687 _TMR4RLL	=	0x00a2
                           00009D   688 G$UART1FCN0$0$0 == 0x009d
                           00009D   689 _UART1FCN0	=	0x009d
                           0000D8   690 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   691 _UART1FCN1	=	0x00d8
                           0000FA   692 G$UART1FCT$0$0 == 0x00fa
                           0000FA   693 _UART1FCT	=	0x00fa
                           00009E   694 G$UART1LIN$0$0 == 0x009e
                           00009E   695 _UART1LIN	=	0x009e
                           0000AE   696 G$USB0ADR$0$0 == 0x00ae
                           0000AE   697 _USB0ADR	=	0x00ae
                           0000B2   698 G$USB0AEC$0$0 == 0x00b2
                           0000B2   699 _USB0AEC	=	0x00b2
                           0000B6   700 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   701 _USB0CDCF	=	0x00b6
                           0000BE   702 G$USB0CDCN$0$0 == 0x00be
                           0000BE   703 _USB0CDCN	=	0x00be
                           0000BF   704 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   705 _USB0CDSTA	=	0x00bf
                           0000B5   706 G$USB0CF$0$0 == 0x00b5
                           0000B5   707 _USB0CF	=	0x00b5
                           0000AF   708 G$USB0DAT$0$0 == 0x00af
                           0000AF   709 _USB0DAT	=	0x00af
                           0000B3   710 G$USB0XCN$0$0 == 0x00b3
                           0000B3   711 _USB0XCN	=	0x00b3
                           0000FF   712 G$VDM0CN$0$0 == 0x00ff
                           0000FF   713 _VDM0CN	=	0x00ff
                           000097   714 G$WDTCN$0$0 == 0x0097
                           000097   715 _WDTCN	=	0x0097
                           0000E1   716 G$XBR0$0$0 == 0x00e1
                           0000E1   717 _XBR0	=	0x00e1
                           0000E2   718 G$XBR1$0$0 == 0x00e2
                           0000E2   719 _XBR1	=	0x00e2
                           0000E3   720 G$XBR2$0$0 == 0x00e3
                           0000E3   721 _XBR2	=	0x00e3
                           0000C3   722 G$ADC0GT$0$0 == 0x00c3
                           0000C3   723 _ADC0GT	=	0x00c3
                           0000BD   724 G$ADC0$0$0 == 0x00bd
                           0000BD   725 _ADC0	=	0x00bd
                           0000C5   726 G$ADC0LT$0$0 == 0x00c5
                           0000C5   727 _ADC0LT	=	0x00c5
                           000082   728 G$DP$0$0 == 0x0082
                           000082   729 _DP	=	0x0082
                           0000FB   730 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   731 _PCA0CP0	=	0x00fb
                           0000E9   732 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   733 _PCA0CP1	=	0x00e9
                           0000EB   734 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   735 _PCA0CP2	=	0x00eb
                           0000F9   736 G$PCA0$0$0 == 0x00f9
                           0000F9   737 _PCA0	=	0x00f9
                           000095   738 G$SBRL1$0$0 == 0x0095
                           000095   739 _SBRL1	=	0x0095
                           0000CC   740 G$TMR2$0$0 == 0x00cc
                           0000CC   741 _TMR2	=	0x00cc
                           0000CA   742 G$TMR2RL$0$0 == 0x00ca
                           0000CA   743 _TMR2RL	=	0x00ca
                           000094   744 G$TMR3$0$0 == 0x0094
                           000094   745 _TMR3	=	0x0094
                           000092   746 G$TMR3RL$0$0 == 0x0092
                           000092   747 _TMR3RL	=	0x0092
                           0000A4   748 G$TMR4$0$0 == 0x00a4
                           0000A4   749 _TMR4	=	0x00a4
                           0000A2   750 G$TMR4RL$0$0 == 0x00a2
                           0000A2   751 _TMR4RL	=	0x00a2
                           0000AA   752 G$_XPAGE$0$0 == 0x00aa
                           0000AA   753 __XPAGE	=	0x00aa
                                    754 ;--------------------------------------------------------
                                    755 ; special function bits
                                    756 ;--------------------------------------------------------
                                    757 	.area RSEG    (ABS,DATA)
      000000                        758 	.org 0x0000
                           0000E0   759 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   760 _ACC_ACC0	=	0x00e0
                           0000E1   761 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   762 _ACC_ACC1	=	0x00e1
                           0000E2   763 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   764 _ACC_ACC2	=	0x00e2
                           0000E3   765 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   766 _ACC_ACC3	=	0x00e3
                           0000E4   767 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   768 _ACC_ACC4	=	0x00e4
                           0000E5   769 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   770 _ACC_ACC5	=	0x00e5
                           0000E6   771 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   772 _ACC_ACC6	=	0x00e6
                           0000E7   773 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   774 _ACC_ACC7	=	0x00e7
                           0000E8   775 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   776 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   777 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   778 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   779 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   780 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   781 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   782 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   783 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   784 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   785 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   786 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   787 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   788 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   789 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   790 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   791 G$B_B0$0$0 == 0x00f0
                           0000F0   792 _B_B0	=	0x00f0
                           0000F1   793 G$B_B1$0$0 == 0x00f1
                           0000F1   794 _B_B1	=	0x00f1
                           0000F2   795 G$B_B2$0$0 == 0x00f2
                           0000F2   796 _B_B2	=	0x00f2
                           0000F3   797 G$B_B3$0$0 == 0x00f3
                           0000F3   798 _B_B3	=	0x00f3
                           0000F4   799 G$B_B4$0$0 == 0x00f4
                           0000F4   800 _B_B4	=	0x00f4
                           0000F5   801 G$B_B5$0$0 == 0x00f5
                           0000F5   802 _B_B5	=	0x00f5
                           0000F6   803 G$B_B6$0$0 == 0x00f6
                           0000F6   804 _B_B6	=	0x00f6
                           0000F7   805 G$B_B7$0$0 == 0x00f7
                           0000F7   806 _B_B7	=	0x00f7
                           0000A8   807 G$IE_EX0$0$0 == 0x00a8
                           0000A8   808 _IE_EX0	=	0x00a8
                           0000A9   809 G$IE_ET0$0$0 == 0x00a9
                           0000A9   810 _IE_ET0	=	0x00a9
                           0000AA   811 G$IE_EX1$0$0 == 0x00aa
                           0000AA   812 _IE_EX1	=	0x00aa
                           0000AB   813 G$IE_ET1$0$0 == 0x00ab
                           0000AB   814 _IE_ET1	=	0x00ab
                           0000AC   815 G$IE_ES0$0$0 == 0x00ac
                           0000AC   816 _IE_ES0	=	0x00ac
                           0000AD   817 G$IE_ET2$0$0 == 0x00ad
                           0000AD   818 _IE_ET2	=	0x00ad
                           0000AE   819 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   820 _IE_ESPI0	=	0x00ae
                           0000AF   821 G$IE_EA$0$0 == 0x00af
                           0000AF   822 _IE_EA	=	0x00af
                           0000B8   823 G$IP_PX0$0$0 == 0x00b8
                           0000B8   824 _IP_PX0	=	0x00b8
                           0000B9   825 G$IP_PT0$0$0 == 0x00b9
                           0000B9   826 _IP_PT0	=	0x00b9
                           0000BA   827 G$IP_PX1$0$0 == 0x00ba
                           0000BA   828 _IP_PX1	=	0x00ba
                           0000BB   829 G$IP_PT1$0$0 == 0x00bb
                           0000BB   830 _IP_PT1	=	0x00bb
                           0000BC   831 G$IP_PS0$0$0 == 0x00bc
                           0000BC   832 _IP_PS0	=	0x00bc
                           0000BD   833 G$IP_PT2$0$0 == 0x00bd
                           0000BD   834 _IP_PT2	=	0x00bd
                           0000BE   835 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   836 _IP_PSPI0	=	0x00be
                           000080   837 G$P0_B0$0$0 == 0x0080
                           000080   838 _P0_B0	=	0x0080
                           000081   839 G$P0_B1$0$0 == 0x0081
                           000081   840 _P0_B1	=	0x0081
                           000082   841 G$P0_B2$0$0 == 0x0082
                           000082   842 _P0_B2	=	0x0082
                           000083   843 G$P0_B3$0$0 == 0x0083
                           000083   844 _P0_B3	=	0x0083
                           000084   845 G$P0_B4$0$0 == 0x0084
                           000084   846 _P0_B4	=	0x0084
                           000085   847 G$P0_B5$0$0 == 0x0085
                           000085   848 _P0_B5	=	0x0085
                           000086   849 G$P0_B6$0$0 == 0x0086
                           000086   850 _P0_B6	=	0x0086
                           000087   851 G$P0_B7$0$0 == 0x0087
                           000087   852 _P0_B7	=	0x0087
                           000090   853 G$P1_B0$0$0 == 0x0090
                           000090   854 _P1_B0	=	0x0090
                           000091   855 G$P1_B1$0$0 == 0x0091
                           000091   856 _P1_B1	=	0x0091
                           000092   857 G$P1_B2$0$0 == 0x0092
                           000092   858 _P1_B2	=	0x0092
                           000093   859 G$P1_B3$0$0 == 0x0093
                           000093   860 _P1_B3	=	0x0093
                           000094   861 G$P1_B4$0$0 == 0x0094
                           000094   862 _P1_B4	=	0x0094
                           000095   863 G$P1_B5$0$0 == 0x0095
                           000095   864 _P1_B5	=	0x0095
                           000096   865 G$P1_B6$0$0 == 0x0096
                           000096   866 _P1_B6	=	0x0096
                           000097   867 G$P1_B7$0$0 == 0x0097
                           000097   868 _P1_B7	=	0x0097
                           0000A0   869 G$P2_B0$0$0 == 0x00a0
                           0000A0   870 _P2_B0	=	0x00a0
                           0000A1   871 G$P2_B1$0$0 == 0x00a1
                           0000A1   872 _P2_B1	=	0x00a1
                           0000A2   873 G$P2_B2$0$0 == 0x00a2
                           0000A2   874 _P2_B2	=	0x00a2
                           0000A3   875 G$P2_B3$0$0 == 0x00a3
                           0000A3   876 _P2_B3	=	0x00a3
                           0000B0   877 G$P3_B0$0$0 == 0x00b0
                           0000B0   878 _P3_B0	=	0x00b0
                           0000B1   879 G$P3_B1$0$0 == 0x00b1
                           0000B1   880 _P3_B1	=	0x00b1
                           0000D8   881 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   882 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   883 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   884 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   885 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   886 _PCA0CN0_CCF2	=	0x00da
                           0000DE   887 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   888 _PCA0CN0_CR	=	0x00de
                           0000DF   889 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   890 _PCA0CN0_CF	=	0x00df
                           0000D0   891 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   892 _PSW_PARITY	=	0x00d0
                           0000D1   893 G$PSW_F1$0$0 == 0x00d1
                           0000D1   894 _PSW_F1	=	0x00d1
                           0000D2   895 G$PSW_OV$0$0 == 0x00d2
                           0000D2   896 _PSW_OV	=	0x00d2
                           0000D3   897 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   898 _PSW_RS0	=	0x00d3
                           0000D4   899 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   900 _PSW_RS1	=	0x00d4
                           0000D5   901 G$PSW_F0$0$0 == 0x00d5
                           0000D5   902 _PSW_F0	=	0x00d5
                           0000D6   903 G$PSW_AC$0$0 == 0x00d6
                           0000D6   904 _PSW_AC	=	0x00d6
                           0000D7   905 G$PSW_CY$0$0 == 0x00d7
                           0000D7   906 _PSW_CY	=	0x00d7
                           000098   907 G$SCON0_RI$0$0 == 0x0098
                           000098   908 _SCON0_RI	=	0x0098
                           000099   909 G$SCON0_TI$0$0 == 0x0099
                           000099   910 _SCON0_TI	=	0x0099
                           00009A   911 G$SCON0_RB8$0$0 == 0x009a
                           00009A   912 _SCON0_RB8	=	0x009a
                           00009B   913 G$SCON0_TB8$0$0 == 0x009b
                           00009B   914 _SCON0_TB8	=	0x009b
                           00009C   915 G$SCON0_REN$0$0 == 0x009c
                           00009C   916 _SCON0_REN	=	0x009c
                           00009D   917 G$SCON0_MCE$0$0 == 0x009d
                           00009D   918 _SCON0_MCE	=	0x009d
                           00009F   919 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   920 _SCON0_SMODE	=	0x009f
                           0000C8   921 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   922 _SCON1_RI	=	0x00c8
                           0000C9   923 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   924 _SCON1_TI	=	0x00c9
                           0000CA   925 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   926 _SCON1_RBX	=	0x00ca
                           0000CB   927 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   928 _SCON1_TBX	=	0x00cb
                           0000CC   929 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   930 _SCON1_REN	=	0x00cc
                           0000CE   931 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   932 _SCON1_PERR	=	0x00ce
                           0000CF   933 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   934 _SCON1_OVR	=	0x00cf
                           0000C0   935 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   936 _SMB0CN0_SI	=	0x00c0
                           0000C1   937 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   938 _SMB0CN0_ACK	=	0x00c1
                           0000C2   939 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   940 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   941 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   942 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   943 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   944 _SMB0CN0_STO	=	0x00c4
                           0000C5   945 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   946 _SMB0CN0_STA	=	0x00c5
                           0000C6   947 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   948 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   949 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   950 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   951 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   952 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   953 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   954 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   955 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   956 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   957 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   958 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   959 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   960 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   961 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   962 _SPI0CN0_MODF	=	0x00fd
                           0000FE   963 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   964 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   965 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   966 _SPI0CN0_SPIF	=	0x00ff
                           000088   967 G$TCON_IT0$0$0 == 0x0088
                           000088   968 _TCON_IT0	=	0x0088
                           000089   969 G$TCON_IE0$0$0 == 0x0089
                           000089   970 _TCON_IE0	=	0x0089
                           00008A   971 G$TCON_IT1$0$0 == 0x008a
                           00008A   972 _TCON_IT1	=	0x008a
                           00008B   973 G$TCON_IE1$0$0 == 0x008b
                           00008B   974 _TCON_IE1	=	0x008b
                           00008C   975 G$TCON_TR0$0$0 == 0x008c
                           00008C   976 _TCON_TR0	=	0x008c
                           00008D   977 G$TCON_TF0$0$0 == 0x008d
                           00008D   978 _TCON_TF0	=	0x008d
                           00008E   979 G$TCON_TR1$0$0 == 0x008e
                           00008E   980 _TCON_TR1	=	0x008e
                           00008F   981 G$TCON_TF1$0$0 == 0x008f
                           00008F   982 _TCON_TF1	=	0x008f
                           0000C8   983 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   984 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   985 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   986 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   987 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   988 _TMR2CN0_TR2	=	0x00ca
                           0000CB   989 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   990 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   991 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   992 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   993 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   994 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   995 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE   996 _TMR2CN0_TF2L	=	0x00ce
                           0000CF   997 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF   998 _TMR2CN0_TF2H	=	0x00cf
                           000098   999 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1000 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1001 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1002 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1003 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1004 _TMR4CN0_TR4	=	0x009a
                           00009B  1005 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1006 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1007 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1008 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1009 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1010 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1011 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1012 _TMR4CN0_TF4L	=	0x009e
                           00009F  1013 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1014 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1015 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1016 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1017 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1018 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1019 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1020 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1021 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1022 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1023 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1024 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1025 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1026 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1027 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1028 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1029 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1030 _UART1FCN1_TFRQ	=	0x00df
                           000095  1031 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1032 _U2F_BUTTON	=	0x0095
                           000096  1033 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1034 _U2F_BUTTON_VAL	=	0x0096
                           000091  1035 G$U2F_RED$0$0 == 0x0091
                           000091  1036 _U2F_RED	=	0x0091
                           000090  1037 G$U2F_GREEN$0$0 == 0x0090
                           000090  1038 _U2F_GREEN	=	0x0090
                           000087  1039 G$U2F_BLUE$0$0 == 0x0087
                           000087  1040 _U2F_BLUE	=	0x0087
                                   1041 ;--------------------------------------------------------
                                   1042 ; overlayable register banks
                                   1043 ;--------------------------------------------------------
                                   1044 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1045 	.ds 8
                                   1046 ;--------------------------------------------------------
                                   1047 ; overlayable bit register bank
                                   1048 ;--------------------------------------------------------
                                   1049 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1050 bits:
      000020                       1051 	.ds 1
                           008000  1052 	b0 = bits[0]
                           008100  1053 	b1 = bits[1]
                           008200  1054 	b2 = bits[2]
                           008300  1055 	b3 = bits[3]
                           008400  1056 	b4 = bits[4]
                           008500  1057 	b5 = bits[5]
                           008600  1058 	b6 = bits[6]
                           008700  1059 	b7 = bits[7]
                                   1060 ;--------------------------------------------------------
                                   1061 ; internal ram data
                                   1062 ;--------------------------------------------------------
                                   1063 	.area DSEG    (DATA)
                                   1064 ;--------------------------------------------------------
                                   1065 ; overlayable items in internal ram 
                                   1066 ;--------------------------------------------------------
                                   1067 ;--------------------------------------------------------
                                   1068 ; indirectly addressable internal ram data
                                   1069 ;--------------------------------------------------------
                                   1070 	.area ISEG    (DATA)
                                   1071 ;--------------------------------------------------------
                                   1072 ; absolute internal ram data
                                   1073 ;--------------------------------------------------------
                                   1074 	.area IABS    (ABS,DATA)
                                   1075 	.area IABS    (ABS,DATA)
                                   1076 ;--------------------------------------------------------
                                   1077 ; bit data
                                   1078 ;--------------------------------------------------------
                                   1079 	.area BSEG    (BIT)
                                   1080 ;--------------------------------------------------------
                                   1081 ; paged external ram data
                                   1082 ;--------------------------------------------------------
                                   1083 	.area PSEG    (PAG,XDATA)
                                   1084 ;--------------------------------------------------------
                                   1085 ; external ram data
                                   1086 ;--------------------------------------------------------
                                   1087 	.area XSEG    (XDATA)
                           000000  1088 G$tmpBuffer$0$0==.
      000217                       1089 _tmpBuffer::
      000217                       1090 	.ds 1
                           000001  1091 G$hidmsgbuf$0$0==.
      000218                       1092 _hidmsgbuf::
      000218                       1093 	.ds 64
                                   1094 ;--------------------------------------------------------
                                   1095 ; absolute external ram data
                                   1096 ;--------------------------------------------------------
                                   1097 	.area XABS    (ABS,XDATA)
                                   1098 ;--------------------------------------------------------
                                   1099 ; external initialized ram data
                                   1100 ;--------------------------------------------------------
                                   1101 	.area XISEG   (XDATA)
                                   1102 	.area HOME    (CODE)
                                   1103 	.area GSINIT0 (CODE)
                                   1104 	.area GSINIT1 (CODE)
                                   1105 	.area GSINIT2 (CODE)
                                   1106 	.area GSINIT3 (CODE)
                                   1107 	.area GSINIT4 (CODE)
                                   1108 	.area GSINIT5 (CODE)
                                   1109 	.area GSINIT  (CODE)
                                   1110 	.area GSFINAL (CODE)
                                   1111 	.area CSEG    (CODE)
                                   1112 ;--------------------------------------------------------
                                   1113 ; global & static initialisations
                                   1114 ;--------------------------------------------------------
                                   1115 	.area HOME    (CODE)
                                   1116 	.area GSINIT  (CODE)
                                   1117 	.area GSFINAL (CODE)
                                   1118 	.area GSINIT  (CODE)
                                   1119 ;--------------------------------------------------------
                                   1120 ; Home
                                   1121 ;--------------------------------------------------------
                                   1122 	.area HOME    (CODE)
                                   1123 	.area HOME    (CODE)
                                   1124 ;--------------------------------------------------------
                                   1125 ; code
                                   1126 ;--------------------------------------------------------
                                   1127 	.area CSEG    (CODE)
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function 'USBD_ResetCb'
                                   1130 ;------------------------------------------------------------
                           000000  1131 	G$USBD_ResetCb$0$0 ==.
                           000000  1132 	C$callback.c$51$0$0 ==.
                                   1133 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:51: void USBD_ResetCb(void) {
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function USBD_ResetCb
                                   1136 ;	-----------------------------------------
      003DD0                       1137 _USBD_ResetCb:
                           000007  1138 	ar7 = 0x07
                           000006  1139 	ar6 = 0x06
                           000005  1140 	ar5 = 0x05
                           000004  1141 	ar4 = 0x04
                           000003  1142 	ar3 = 0x03
                           000002  1143 	ar2 = 0x02
                           000001  1144 	ar1 = 0x01
                           000000  1145 	ar0 = 0x00
                           000000  1146 	C$callback.c$53$0$0 ==.
                                   1147 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:53: }
                           000000  1148 	C$callback.c$53$0$0 ==.
                           000000  1149 	XG$USBD_ResetCb$0$0 ==.
      003DD0 22               [24] 1150 	ret
                                   1151 ;------------------------------------------------------------
                                   1152 ;Allocation info for local variables in function 'USBD_DeviceStateChangeCb'
                                   1153 ;------------------------------------------------------------
                                   1154 ;newState                  Allocated to stack - _bp -3
                                   1155 ;oldState                  Allocated to registers 
                                   1156 ;------------------------------------------------------------
                           000001  1157 	G$USBD_DeviceStateChangeCb$0$0 ==.
                           000001  1158 	C$callback.c$56$0$0 ==.
                                   1159 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:56: void USBD_DeviceStateChangeCb(USBD_State_TypeDef oldState,
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function USBD_DeviceStateChangeCb
                                   1162 ;	-----------------------------------------
      003DD1                       1163 _USBD_DeviceStateChangeCb:
      003DD1 C0 1B            [24] 1164 	push	_bp
      003DD3 85 81 1B         [24] 1165 	mov	_bp,sp
                           000006  1166 	C$callback.c$60$1$134 ==.
                                   1167 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:60: UNUSED(newState);
      003DD6 D0 1B            [24] 1168 	pop	_bp
                           000008  1169 	C$callback.c$63$1$134 ==.
                           000008  1170 	XG$USBD_DeviceStateChangeCb$0$0 ==.
      003DD8 22               [24] 1171 	ret
                                   1172 ;------------------------------------------------------------
                                   1173 ;Allocation info for local variables in function 'USBD_IsSelfPoweredCb'
                                   1174 ;------------------------------------------------------------
                           000009  1175 	G$USBD_IsSelfPoweredCb$0$0 ==.
                           000009  1176 	C$callback.c$65$1$134 ==.
                                   1177 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:65: bool USBD_IsSelfPoweredCb(void) {
                                   1178 ;	-----------------------------------------
                                   1179 ;	 function USBD_IsSelfPoweredCb
                                   1180 ;	-----------------------------------------
      003DD9                       1181 _USBD_IsSelfPoweredCb:
                           000009  1182 	C$callback.c$66$1$138 ==.
                                   1183 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:66: return false;
      003DD9 C3               [12] 1184 	clr	c
                           00000A  1185 	C$callback.c$67$1$138 ==.
                           00000A  1186 	XG$USBD_IsSelfPoweredCb$0$0 ==.
      003DDA 22               [24] 1187 	ret
                                   1188 ;------------------------------------------------------------
                                   1189 ;Allocation info for local variables in function 'USBD_SetupCmdCb'
                                   1190 ;------------------------------------------------------------
                                   1191 ;setup                     Allocated to registers r6 r7 
                                   1192 ;retVal                    Allocated to registers r5 
                                   1193 ;sloc0                     Allocated to stack - _bp +4
                                   1194 ;sloc1                     Allocated to stack - _bp +6
                                   1195 ;------------------------------------------------------------
                           00000B  1196 	G$USBD_SetupCmdCb$0$0 ==.
                           00000B  1197 	C$callback.c$70$1$138 ==.
                                   1198 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:70: USB_Status_TypeDef USBD_SetupCmdCb(
                                   1199 ;	-----------------------------------------
                                   1200 ;	 function USBD_SetupCmdCb
                                   1201 ;	-----------------------------------------
      003DDB                       1202 _USBD_SetupCmdCb:
      003DDB AE 82            [24] 1203 	mov	r6,dpl
      003DDD AF 83            [24] 1204 	mov	r7,dph
                           00000F  1205 	C$callback.c$73$1$138 ==.
                                   1206 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:73: USB_Status_TypeDef retVal = USB_STATUS_REQ_UNHANDLED;
      003DDF 7D FD            [12] 1207 	mov	r5,#0xfd
                           000011  1208 	C$callback.c$76$1$140 ==.
                                   1209 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:76: if ((setup->bmRequestType.Type == USB_SETUP_TYPE_STANDARD)
      003DE1 8E 03            [24] 1210 	mov	ar3,r6
      003DE3 8F 04            [24] 1211 	mov	ar4,r7
      003DE5 8B 82            [24] 1212 	mov	dpl,r3
      003DE7 8C 83            [24] 1213 	mov	dph,r4
      003DE9 E0               [24] 1214 	movx	a,@dptr
      003DEA 54 60            [12] 1215 	anl	a,#0x60
      003DEC 60 03            [24] 1216 	jz	00197$
      003DEE 02 3E DD         [24] 1217 	ljmp	00127$
      003DF1                       1218 00197$:
                           000021  1219 	C$callback.c$77$1$140 ==.
                                   1220 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:77: && (setup->bmRequestType.Direction == USB_SETUP_DIR_IN)
      003DF1 8E 82            [24] 1221 	mov	dpl,r6
      003DF3 8F 83            [24] 1222 	mov	dph,r7
      003DF5 E0               [24] 1223 	movx	a,@dptr
      003DF6 23               [12] 1224 	rl	a
      003DF7 54 01            [12] 1225 	anl	a,#0x01
      003DF9 FC               [12] 1226 	mov	r4,a
      003DFA BC 01 02         [24] 1227 	cjne	r4,#0x01,00198$
      003DFD 80 03            [24] 1228 	sjmp	00199$
      003DFF                       1229 00198$:
      003DFF 02 3E DD         [24] 1230 	ljmp	00127$
      003E02                       1231 00199$:
                           000032  1232 	C$callback.c$78$1$140 ==.
                                   1233 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:78: && (setup->bmRequestType.Recipient == USB_SETUP_RECIPIENT_INTERFACE)) {
      003E02 8E 82            [24] 1234 	mov	dpl,r6
      003E04 8F 83            [24] 1235 	mov	dph,r7
      003E06 E0               [24] 1236 	movx	a,@dptr
      003E07 54 1F            [12] 1237 	anl	a,#0x1f
      003E09 FC               [12] 1238 	mov	r4,a
      003E0A BC 01 02         [24] 1239 	cjne	r4,#0x01,00200$
      003E0D 80 03            [24] 1240 	sjmp	00201$
      003E0F                       1241 00200$:
      003E0F 02 3E DD         [24] 1242 	ljmp	00127$
      003E12                       1243 00201$:
                           000042  1244 	C$callback.c$82$2$141 ==.
                                   1245 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:82: switch (setup->bRequest) {
      003E12 8E 82            [24] 1246 	mov	dpl,r6
      003E14 8F 83            [24] 1247 	mov	dph,r7
      003E16 A3               [24] 1248 	inc	dptr
      003E17 E0               [24] 1249 	movx	a,@dptr
      003E18 FC               [12] 1250 	mov	r4,a
      003E19 BC 06 02         [24] 1251 	cjne	r4,#0x06,00202$
      003E1C 80 03            [24] 1252 	sjmp	00203$
      003E1E                       1253 00202$:
      003E1E 02 3F B3         [24] 1254 	ljmp	00128$
      003E21                       1255 00203$:
                           000051  1256 	C$callback.c$84$3$142 ==.
                                   1257 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:84: if (setup->wIndex == 0)
      003E21 8E 82            [24] 1258 	mov	dpl,r6
      003E23 8F 83            [24] 1259 	mov	dph,r7
      003E25 A3               [24] 1260 	inc	dptr
      003E26 A3               [24] 1261 	inc	dptr
      003E27 A3               [24] 1262 	inc	dptr
      003E28 A3               [24] 1263 	inc	dptr
      003E29 E0               [24] 1264 	movx	a,@dptr
      003E2A FB               [12] 1265 	mov	r3,a
      003E2B A3               [24] 1266 	inc	dptr
      003E2C E0               [24] 1267 	movx	a,@dptr
      003E2D FC               [12] 1268 	mov	r4,a
      003E2E 4B               [12] 1269 	orl	a,r3
      003E2F 60 03            [24] 1270 	jz	00204$
      003E31 02 3F B3         [24] 1271 	ljmp	00128$
      003E34                       1272 00204$:
                           000064  1273 	C$callback.c$86$4$143 ==.
                                   1274 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:86: if ((setup->wValue >> 8) == USB_HID_REPORT_DESCRIPTOR) {
      003E34 8E 82            [24] 1275 	mov	dpl,r6
      003E36 8F 83            [24] 1276 	mov	dph,r7
      003E38 A3               [24] 1277 	inc	dptr
      003E39 A3               [24] 1278 	inc	dptr
      003E3A E0               [24] 1279 	movx	a,@dptr
      003E3B A3               [24] 1280 	inc	dptr
      003E3C E0               [24] 1281 	movx	a,@dptr
      003E3D FB               [12] 1282 	mov	r3,a
      003E3E 7C 00            [12] 1283 	mov	r4,#0x00
      003E40 BB 22 49         [24] 1284 	cjne	r3,#0x22,00105$
      003E43 BC 00 46         [24] 1285 	cjne	r4,#0x00,00105$
                           000076  1286 	C$callback.c$89$5$144 ==.
                                   1287 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:89: EFM8_MIN(sizeof(ReportDescriptor0), setup->wLength),
      003E46 74 06            [12] 1288 	mov	a,#0x06
      003E48 2E               [12] 1289 	add	a,r6
      003E49 F5 82            [12] 1290 	mov	dpl,a
      003E4B E4               [12] 1291 	clr	a
      003E4C 3F               [12] 1292 	addc	a,r7
      003E4D F5 83            [12] 1293 	mov	dph,a
      003E4F E0               [24] 1294 	movx	a,@dptr
      003E50 FF               [12] 1295 	mov	r7,a
      003E51 A3               [24] 1296 	inc	dptr
      003E52 E0               [24] 1297 	movx	a,@dptr
      003E53 FE               [12] 1298 	mov	r6,a
      003E54 C3               [12] 1299 	clr	c
      003E55 74 22            [12] 1300 	mov	a,#0x22
      003E57 9F               [12] 1301 	subb	a,r7
      003E58 E4               [12] 1302 	clr	a
      003E59 9E               [12] 1303 	subb	a,r6
      003E5A 50 06            [24] 1304 	jnc	00133$
      003E5C 7D 22            [12] 1305 	mov	r5,#0x22
      003E5E 7C 00            [12] 1306 	mov	r4,#0x00
      003E60 80 04            [24] 1307 	sjmp	00134$
      003E62                       1308 00133$:
      003E62 8F 05            [24] 1309 	mov	ar5,r7
      003E64 8E 04            [24] 1310 	mov	ar4,r6
      003E66                       1311 00134$:
                           000096  1312 	C$callback.c$88$5$144 ==.
                                   1313 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:88: USBD_Write(EP0, ReportDescriptor0,
      003E66 C0 05            [24] 1314 	push	ar5
      003E68 C0 04            [24] 1315 	push	ar4
      003E6A 74 BD            [12] 1316 	mov	a,#_ReportDescriptor0
      003E6C C0 E0            [24] 1317 	push	acc
      003E6E 74 5E            [12] 1318 	mov	a,#(_ReportDescriptor0 >> 8)
      003E70 C0 E0            [24] 1319 	push	acc
      003E72 74 80            [12] 1320 	mov	a,#0x80
      003E74 C0 E0            [24] 1321 	push	acc
      003E76 C2 F0            [12] 1322 	clr	b[0]
      003E78 85 F0 20         [24] 1323 	mov	bits,b
      003E7B 75 82 00         [24] 1324 	mov	dpl,#0x00
      003E7E 12 29 5C         [24] 1325 	lcall	_USBD_Write
      003E81 E5 81            [12] 1326 	mov	a,sp
      003E83 24 FB            [12] 1327 	add	a,#0xfb
      003E85 F5 81            [12] 1328 	mov	sp,a
                           0000B7  1329 	C$callback.c$91$5$144 ==.
                                   1330 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:91: retVal = USB_STATUS_OK;
      003E87 7D 00            [12] 1331 	mov	r5,#0x00
      003E89 02 3F B3         [24] 1332 	ljmp	00128$
      003E8C                       1333 00105$:
                           0000BC  1334 	C$callback.c$93$4$143 ==.
                                   1335 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:93: } else if ((setup->wValue >> 8) == USB_HID_DESCRIPTOR) {
      003E8C BB 21 05         [24] 1336 	cjne	r3,#0x21,00208$
      003E8F BC 00 02         [24] 1337 	cjne	r4,#0x00,00208$
      003E92 80 03            [24] 1338 	sjmp	00209$
      003E94                       1339 00208$:
      003E94 02 3F B3         [24] 1340 	ljmp	00128$
      003E97                       1341 00209$:
                           0000C7  1342 	C$callback.c$96$5$145 ==.
                                   1343 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:96: EFM8_MIN(USB_HID_DESCSIZE, setup->wLength), false);
      003E97 74 06            [12] 1344 	mov	a,#0x06
      003E99 2E               [12] 1345 	add	a,r6
      003E9A F5 82            [12] 1346 	mov	dpl,a
      003E9C E4               [12] 1347 	clr	a
      003E9D 3F               [12] 1348 	addc	a,r7
      003E9E F5 83            [12] 1349 	mov	dph,a
      003EA0 E0               [24] 1350 	movx	a,@dptr
      003EA1 FB               [12] 1351 	mov	r3,a
      003EA2 A3               [24] 1352 	inc	dptr
      003EA3 E0               [24] 1353 	movx	a,@dptr
      003EA4 FC               [12] 1354 	mov	r4,a
      003EA5 C3               [12] 1355 	clr	c
      003EA6 74 09            [12] 1356 	mov	a,#0x09
      003EA8 9B               [12] 1357 	subb	a,r3
      003EA9 E4               [12] 1358 	clr	a
      003EAA 9C               [12] 1359 	subb	a,r4
      003EAB 50 06            [24] 1360 	jnc	00135$
      003EAD 7F 09            [12] 1361 	mov	r7,#0x09
      003EAF 7E 00            [12] 1362 	mov	r6,#0x00
      003EB1 80 04            [24] 1363 	sjmp	00136$
      003EB3                       1364 00135$:
      003EB3 8B 07            [24] 1365 	mov	ar7,r3
      003EB5 8C 06            [24] 1366 	mov	ar6,r4
      003EB7                       1367 00136$:
                           0000E7  1368 	C$callback.c$95$5$145 ==.
                                   1369 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:95: USBD_Write(EP0, (&configDesc[18]),
      003EB7 C0 07            [24] 1370 	push	ar7
      003EB9 C0 06            [24] 1371 	push	ar6
      003EBB 74 FF            [12] 1372 	mov	a,#(_configDesc + 0x0012)
      003EBD C0 E0            [24] 1373 	push	acc
      003EBF 74 5E            [12] 1374 	mov	a,#((_configDesc + 0x0012) >> 8)
      003EC1 C0 E0            [24] 1375 	push	acc
      003EC3 74 80            [12] 1376 	mov	a,#0x80
      003EC5 C0 E0            [24] 1377 	push	acc
      003EC7 C2 F0            [12] 1378 	clr	b[0]
      003EC9 85 F0 20         [24] 1379 	mov	bits,b
      003ECC 75 82 00         [24] 1380 	mov	dpl,#0x00
      003ECF 12 29 5C         [24] 1381 	lcall	_USBD_Write
      003ED2 E5 81            [12] 1382 	mov	a,sp
      003ED4 24 FB            [12] 1383 	add	a,#0xfb
      003ED6 F5 81            [12] 1384 	mov	sp,a
                           000108  1385 	C$callback.c$97$5$145 ==.
                                   1386 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:97: retVal = USB_STATUS_OK;
      003ED8 7D 00            [12] 1387 	mov	r5,#0x00
                           00010A  1388 	C$callback.c$102$1$140 ==.
                                   1389 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:102: }
      003EDA 02 3F B3         [24] 1390 	ljmp	00128$
      003EDD                       1391 00127$:
                           00010D  1392 	C$callback.c$104$1$140 ==.
                                   1393 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:104: else if ((setup->bmRequestType.Type == USB_SETUP_TYPE_CLASS)
      003EDD 8E 82            [24] 1394 	mov	dpl,r6
      003EDF 8F 83            [24] 1395 	mov	dph,r7
      003EE1 E0               [24] 1396 	movx	a,@dptr
      003EE2 C4               [12] 1397 	swap	a
      003EE3 03               [12] 1398 	rr	a
      003EE4 54 03            [12] 1399 	anl	a,#0x03
      003EE6 FC               [12] 1400 	mov	r4,a
      003EE7 BC 01 02         [24] 1401 	cjne	r4,#0x01,00211$
      003EEA 80 03            [24] 1402 	sjmp	00212$
      003EEC                       1403 00211$:
      003EEC 02 3F B3         [24] 1404 	ljmp	00128$
      003EEF                       1405 00212$:
                           00011F  1406 	C$callback.c$105$1$140 ==.
                                   1407 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:105: && (setup->bmRequestType.Recipient == USB_SETUP_RECIPIENT_INTERFACE)
      003EEF 8E 82            [24] 1408 	mov	dpl,r6
      003EF1 8F 83            [24] 1409 	mov	dph,r7
      003EF3 E0               [24] 1410 	movx	a,@dptr
      003EF4 54 1F            [12] 1411 	anl	a,#0x1f
      003EF6 FC               [12] 1412 	mov	r4,a
      003EF7 BC 01 02         [24] 1413 	cjne	r4,#0x01,00213$
      003EFA 80 03            [24] 1414 	sjmp	00214$
      003EFC                       1415 00213$:
      003EFC 02 3F B3         [24] 1416 	ljmp	00128$
      003EFF                       1417 00214$:
                           00012F  1418 	C$callback.c$106$1$140 ==.
                                   1419 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:106: && (setup->wIndex == HID_INTERFACE_INDEX))
      003EFF 8E 82            [24] 1420 	mov	dpl,r6
      003F01 8F 83            [24] 1421 	mov	dph,r7
      003F03 A3               [24] 1422 	inc	dptr
      003F04 A3               [24] 1423 	inc	dptr
      003F05 A3               [24] 1424 	inc	dptr
      003F06 A3               [24] 1425 	inc	dptr
      003F07 E0               [24] 1426 	movx	a,@dptr
      003F08 FB               [12] 1427 	mov	r3,a
      003F09 A3               [24] 1428 	inc	dptr
      003F0A E0               [24] 1429 	movx	a,@dptr
      003F0B FC               [12] 1430 	mov	r4,a
      003F0C 4B               [12] 1431 	orl	a,r3
      003F0D 60 03            [24] 1432 	jz	00215$
      003F0F 02 3F B3         [24] 1433 	ljmp	00128$
      003F12                       1434 00215$:
                           000142  1435 	C$callback.c$109$2$146 ==.
                                   1436 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:109: switch (setup->bRequest)
      003F12 8E 82            [24] 1437 	mov	dpl,r6
      003F14 8F 83            [24] 1438 	mov	dph,r7
      003F16 A3               [24] 1439 	inc	dptr
      003F17 E0               [24] 1440 	movx	a,@dptr
      003F18 FC               [12] 1441 	mov	r4,a
      003F19 BC 02 02         [24] 1442 	cjne	r4,#0x02,00216$
      003F1C 80 3C            [24] 1443 	sjmp	00115$
      003F1E                       1444 00216$:
      003F1E BC 0A 02         [24] 1445 	cjne	r4,#0x0a,00217$
      003F21 80 03            [24] 1446 	sjmp	00218$
      003F23                       1447 00217$:
      003F23 02 3F B3         [24] 1448 	ljmp	00128$
      003F26                       1449 00218$:
                           000156  1450 	C$callback.c$112$3$147 ==.
                                   1451 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:112: if (((setup->wValue & 0xFF) == 0)             // Report ID
      003F26 8E 82            [24] 1452 	mov	dpl,r6
      003F28 8F 83            [24] 1453 	mov	dph,r7
      003F2A A3               [24] 1454 	inc	dptr
      003F2B A3               [24] 1455 	inc	dptr
      003F2C E0               [24] 1456 	movx	a,@dptr
      003F2D FB               [12] 1457 	mov	r3,a
      003F2E A3               [24] 1458 	inc	dptr
      003F2F E0               [24] 1459 	movx	a,@dptr
      003F30 FC               [12] 1460 	mov	r4,a
      003F31 EB               [12] 1461 	mov	a,r3
      003F32 60 03            [24] 1462 	jz	00220$
      003F34 02 3F B3         [24] 1463 	ljmp	00128$
      003F37                       1464 00220$:
                           000167  1465 	C$callback.c$113$3$147 ==.
                                   1466 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:113: && (setup->wLength == 0)
      003F37 74 06            [12] 1467 	mov	a,#0x06
      003F39 2E               [12] 1468 	add	a,r6
      003F3A F5 82            [12] 1469 	mov	dpl,a
      003F3C E4               [12] 1470 	clr	a
      003F3D 3F               [12] 1471 	addc	a,r7
      003F3E F5 83            [12] 1472 	mov	dph,a
      003F40 E0               [24] 1473 	movx	a,@dptr
      003F41 FB               [12] 1474 	mov	r3,a
      003F42 A3               [24] 1475 	inc	dptr
      003F43 E0               [24] 1476 	movx	a,@dptr
      003F44 FC               [12] 1477 	mov	r4,a
      003F45 4B               [12] 1478 	orl	a,r3
      003F46 70 6B            [24] 1479 	jnz	00128$
                           000178  1480 	C$callback.c$114$3$147 ==.
                                   1481 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:114: && (setup->bmRequestType.Direction != USB_SETUP_DIR_IN))
      003F48 8E 82            [24] 1482 	mov	dpl,r6
      003F4A 8F 83            [24] 1483 	mov	dph,r7
      003F4C E0               [24] 1484 	movx	a,@dptr
      003F4D 23               [12] 1485 	rl	a
      003F4E 54 01            [12] 1486 	anl	a,#0x01
      003F50 FC               [12] 1487 	mov	r4,a
      003F51 BC 01 02         [24] 1488 	cjne	r4,#0x01,00222$
      003F54 80 5D            [24] 1489 	sjmp	00128$
      003F56                       1490 00222$:
                           000186  1491 	C$callback.c$116$4$148 ==.
                                   1492 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:116: retVal = USB_STATUS_OK;
      003F56 7D 00            [12] 1493 	mov	r5,#0x00
                           000188  1494 	C$callback.c$118$3$147 ==.
                                   1495 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:118: break;
                           000188  1496 	C$callback.c$120$3$147 ==.
                                   1497 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:120: case USB_HID_GET_IDLE:
      003F58 80 59            [24] 1498 	sjmp	00128$
      003F5A                       1499 00115$:
                           00018A  1500 	C$callback.c$121$3$147 ==.
                                   1501 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:121: if ((setup->wValue == 0)                      // Report ID
      003F5A 8E 82            [24] 1502 	mov	dpl,r6
      003F5C 8F 83            [24] 1503 	mov	dph,r7
      003F5E A3               [24] 1504 	inc	dptr
      003F5F A3               [24] 1505 	inc	dptr
      003F60 E0               [24] 1506 	movx	a,@dptr
      003F61 FB               [12] 1507 	mov	r3,a
      003F62 A3               [24] 1508 	inc	dptr
      003F63 E0               [24] 1509 	movx	a,@dptr
      003F64 FC               [12] 1510 	mov	r4,a
      003F65 4B               [12] 1511 	orl	a,r3
      003F66 70 4B            [24] 1512 	jnz	00128$
                           000198  1513 	C$callback.c$122$3$147 ==.
                                   1514 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:122: && (setup->wLength == 1)
      003F68 74 06            [12] 1515 	mov	a,#0x06
      003F6A 2E               [12] 1516 	add	a,r6
      003F6B F5 82            [12] 1517 	mov	dpl,a
      003F6D E4               [12] 1518 	clr	a
      003F6E 3F               [12] 1519 	addc	a,r7
      003F6F F5 83            [12] 1520 	mov	dph,a
      003F71 E0               [24] 1521 	movx	a,@dptr
      003F72 FB               [12] 1522 	mov	r3,a
      003F73 A3               [24] 1523 	inc	dptr
      003F74 E0               [24] 1524 	movx	a,@dptr
      003F75 FC               [12] 1525 	mov	r4,a
      003F76 BB 01 3A         [24] 1526 	cjne	r3,#0x01,00128$
      003F79 BC 00 37         [24] 1527 	cjne	r4,#0x00,00128$
                           0001AC  1528 	C$callback.c$123$3$147 ==.
                                   1529 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:123: && (setup->bmRequestType.Direction == USB_SETUP_DIR_IN))
      003F7C 8E 82            [24] 1530 	mov	dpl,r6
      003F7E 8F 83            [24] 1531 	mov	dph,r7
      003F80 E0               [24] 1532 	movx	a,@dptr
      003F81 23               [12] 1533 	rl	a
      003F82 54 01            [12] 1534 	anl	a,#0x01
      003F84 FF               [12] 1535 	mov	r7,a
      003F85 BF 01 2B         [24] 1536 	cjne	r7,#0x01,00128$
                           0001B8  1537 	C$callback.c$125$4$149 ==.
                                   1538 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:125: tmpBuffer = 24;
      003F88 90 02 17         [24] 1539 	mov	dptr,#_tmpBuffer
      003F8B 74 18            [12] 1540 	mov	a,#0x18
      003F8D F0               [24] 1541 	movx	@dptr,a
                           0001BE  1542 	C$callback.c$126$4$149 ==.
                                   1543 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:126: USBD_Write(EP0, &tmpBuffer, 1, false);
      003F8E 74 01            [12] 1544 	mov	a,#0x01
      003F90 C0 E0            [24] 1545 	push	acc
      003F92 E4               [12] 1546 	clr	a
      003F93 C0 E0            [24] 1547 	push	acc
      003F95 74 17            [12] 1548 	mov	a,#_tmpBuffer
      003F97 C0 E0            [24] 1549 	push	acc
      003F99 74 02            [12] 1550 	mov	a,#(_tmpBuffer >> 8)
      003F9B C0 E0            [24] 1551 	push	acc
      003F9D E4               [12] 1552 	clr	a
      003F9E C0 E0            [24] 1553 	push	acc
      003FA0 C2 F0            [12] 1554 	clr	b[0]
      003FA2 85 F0 20         [24] 1555 	mov	bits,b
      003FA5 75 82 00         [24] 1556 	mov	dpl,#0x00
      003FA8 12 29 5C         [24] 1557 	lcall	_USBD_Write
      003FAB E5 81            [12] 1558 	mov	a,sp
      003FAD 24 FB            [12] 1559 	add	a,#0xfb
      003FAF F5 81            [12] 1560 	mov	sp,a
                           0001E1  1561 	C$callback.c$127$4$149 ==.
                                   1562 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:127: retVal = USB_STATUS_OK;
      003FB1 7D 00            [12] 1563 	mov	r5,#0x00
                           0001E3  1564 	C$callback.c$132$1$140 ==.
                                   1565 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:132: }
      003FB3                       1566 00128$:
                           0001E3  1567 	C$callback.c$135$1$140 ==.
                                   1568 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:135: return retVal;
      003FB3 8D 82            [24] 1569 	mov	dpl,r5
                           0001E5  1570 	C$callback.c$136$1$140 ==.
                           0001E5  1571 	XG$USBD_SetupCmdCb$0$0 ==.
      003FB5 22               [24] 1572 	ret
                                   1573 ;------------------------------------------------------------
                                   1574 ;Allocation info for local variables in function 'USBD_XferCompleteCb'
                                   1575 ;------------------------------------------------------------
                                   1576 ;status                    Allocated to stack - _bp -3
                                   1577 ;xferred                   Allocated to stack - _bp -5
                                   1578 ;remaining                 Allocated to stack - _bp -7
                                   1579 ;epAddr                    Allocated to registers r7 
                                   1580 ;------------------------------------------------------------
                           0001E6  1581 	G$USBD_XferCompleteCb$0$0 ==.
                           0001E6  1582 	C$callback.c$142$1$140 ==.
                                   1583 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:142: uint16_t USBD_XferCompleteCb(uint8_t epAddr, USB_Status_TypeDef status,
                                   1584 ;	-----------------------------------------
                                   1585 ;	 function USBD_XferCompleteCb
                                   1586 ;	-----------------------------------------
      003FB6                       1587 _USBD_XferCompleteCb:
      003FB6 C0 1B            [24] 1588 	push	_bp
      003FB8 85 81 1B         [24] 1589 	mov	_bp,sp
      003FBB AF 82            [24] 1590 	mov	r7,dpl
                           0001ED  1591 	C$callback.c$150$1$151 ==.
                                   1592 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:150: if (epAddr == EP1OUT)
      003FBD BF 02 09         [24] 1593 	cjne	r7,#0x02,00111$
                           0001F0  1594 	C$callback.c$152$2$155 ==.
                                   1595 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:152: set_app_u2f_hid_msg((struct u2f_hid_msg *) hidmsgbuf );
      003FC0 90 02 18         [24] 1596 	mov	dptr,#_hidmsgbuf
      003FC3 75 F0 00         [24] 1597 	mov	b,#0x00
      003FC6 12 00 DC         [24] 1598 	lcall	_set_app_u2f_hid_msg
      003FC9                       1599 00111$:
                           0001F9  1600 	C$callback.c$154$1$151 ==.
                                   1601 ;	D:\Freelancer_projects\jan333\sdcc_project\src\callback.c:154: return 0;
      003FC9 90 00 00         [24] 1602 	mov	dptr,#0x0000
      003FCC D0 1B            [24] 1603 	pop	_bp
                           0001FE  1604 	C$callback.c$155$1$151 ==.
                           0001FE  1605 	XG$USBD_XferCompleteCb$0$0 ==.
      003FCE 22               [24] 1606 	ret
                                   1607 	.area CSEG    (CODE)
                                   1608 	.area CONST   (CODE)
                                   1609 	.area XINIT   (CODE)
                                   1610 	.area CABS    (ABS,CODE)
