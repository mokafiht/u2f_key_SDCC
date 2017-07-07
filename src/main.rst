                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _init
                                     13 	.globl _custom_command
                                     14 	.globl _atecc_idle
                                     15 	.globl _u2f_printx
                                     16 	.globl _u2f_prints
                                     17 	.globl _smb_init
                                     18 	.globl _u2f_hid_check_timeouts
                                     19 	.globl _u2f_hid_init
                                     20 	.globl _USBD_Read
                                     21 	.globl _USBD_EpIsBusy
                                     22 	.globl _enter_DefaultMode_from_RESET
                                     23 	.globl _U2F_BLUE
                                     24 	.globl _U2F_GREEN
                                     25 	.globl _U2F_RED
                                     26 	.globl _U2F_BUTTON_VAL
                                     27 	.globl _U2F_BUTTON
                                     28 	.globl _UART1FCN1_TFRQ
                                     29 	.globl _UART1FCN1_TXNF
                                     30 	.globl _UART1FCN1_TXHOLD
                                     31 	.globl _UART1FCN1_TIE
                                     32 	.globl _UART1FCN1_RFRQ
                                     33 	.globl _UART1FCN1_RXTO1
                                     34 	.globl _UART1FCN1_RXTO0
                                     35 	.globl _UART1FCN1_RIE
                                     36 	.globl _TMR4CN0_TF4H
                                     37 	.globl _TMR4CN0_TF4L
                                     38 	.globl _TMR4CN0_TF4LEN
                                     39 	.globl _TMR4CN0_TF4CEN
                                     40 	.globl _TMR4CN0_T4SPLIT
                                     41 	.globl _TMR4CN0_TR4
                                     42 	.globl _TMR4CN0_T4XCLK1
                                     43 	.globl _TMR4CN0_T4XCLK0
                                     44 	.globl _TMR2CN0_TF2H
                                     45 	.globl _TMR2CN0_TF2L
                                     46 	.globl _TMR2CN0_TF2LEN
                                     47 	.globl _TMR2CN0_TF2CEN
                                     48 	.globl _TMR2CN0_T2SPLIT
                                     49 	.globl _TMR2CN0_TR2
                                     50 	.globl _TMR2CN0_T2XCLK1
                                     51 	.globl _TMR2CN0_T2XCLK0
                                     52 	.globl _TCON_TF1
                                     53 	.globl _TCON_TR1
                                     54 	.globl _TCON_TF0
                                     55 	.globl _TCON_TR0
                                     56 	.globl _TCON_IE1
                                     57 	.globl _TCON_IT1
                                     58 	.globl _TCON_IE0
                                     59 	.globl _TCON_IT0
                                     60 	.globl _SPI0CN0_SPIF
                                     61 	.globl _SPI0CN0_WCOL
                                     62 	.globl _SPI0CN0_MODF
                                     63 	.globl _SPI0CN0_RXOVRN
                                     64 	.globl _SPI0CN0_NSSMD1
                                     65 	.globl _SPI0CN0_NSSMD0
                                     66 	.globl _SPI0CN0_TXNF
                                     67 	.globl _SPI0CN0_SPIEN
                                     68 	.globl _SMB0CN0_MASTER
                                     69 	.globl _SMB0CN0_TXMODE
                                     70 	.globl _SMB0CN0_STA
                                     71 	.globl _SMB0CN0_STO
                                     72 	.globl _SMB0CN0_ACKRQ
                                     73 	.globl _SMB0CN0_ARBLOST
                                     74 	.globl _SMB0CN0_ACK
                                     75 	.globl _SMB0CN0_SI
                                     76 	.globl _SCON1_OVR
                                     77 	.globl _SCON1_PERR
                                     78 	.globl _SCON1_REN
                                     79 	.globl _SCON1_TBX
                                     80 	.globl _SCON1_RBX
                                     81 	.globl _SCON1_TI
                                     82 	.globl _SCON1_RI
                                     83 	.globl _SCON0_SMODE
                                     84 	.globl _SCON0_MCE
                                     85 	.globl _SCON0_REN
                                     86 	.globl _SCON0_TB8
                                     87 	.globl _SCON0_RB8
                                     88 	.globl _SCON0_TI
                                     89 	.globl _SCON0_RI
                                     90 	.globl _PSW_CY
                                     91 	.globl _PSW_AC
                                     92 	.globl _PSW_F0
                                     93 	.globl _PSW_RS1
                                     94 	.globl _PSW_RS0
                                     95 	.globl _PSW_OV
                                     96 	.globl _PSW_F1
                                     97 	.globl _PSW_PARITY
                                     98 	.globl _PCA0CN0_CF
                                     99 	.globl _PCA0CN0_CR
                                    100 	.globl _PCA0CN0_CCF2
                                    101 	.globl _PCA0CN0_CCF1
                                    102 	.globl _PCA0CN0_CCF0
                                    103 	.globl _P3_B1
                                    104 	.globl _P3_B0
                                    105 	.globl _P2_B3
                                    106 	.globl _P2_B2
                                    107 	.globl _P2_B1
                                    108 	.globl _P2_B0
                                    109 	.globl _P1_B7
                                    110 	.globl _P1_B6
                                    111 	.globl _P1_B5
                                    112 	.globl _P1_B4
                                    113 	.globl _P1_B3
                                    114 	.globl _P1_B2
                                    115 	.globl _P1_B1
                                    116 	.globl _P1_B0
                                    117 	.globl _P0_B7
                                    118 	.globl _P0_B6
                                    119 	.globl _P0_B5
                                    120 	.globl _P0_B4
                                    121 	.globl _P0_B3
                                    122 	.globl _P0_B2
                                    123 	.globl _P0_B1
                                    124 	.globl _P0_B0
                                    125 	.globl _IP_PSPI0
                                    126 	.globl _IP_PT2
                                    127 	.globl _IP_PS0
                                    128 	.globl _IP_PT1
                                    129 	.globl _IP_PX1
                                    130 	.globl _IP_PT0
                                    131 	.globl _IP_PX0
                                    132 	.globl _IE_EA
                                    133 	.globl _IE_ESPI0
                                    134 	.globl _IE_ET2
                                    135 	.globl _IE_ES0
                                    136 	.globl _IE_ET1
                                    137 	.globl _IE_EX1
                                    138 	.globl _IE_ET0
                                    139 	.globl _IE_EX0
                                    140 	.globl _B_B7
                                    141 	.globl _B_B6
                                    142 	.globl _B_B5
                                    143 	.globl _B_B4
                                    144 	.globl _B_B3
                                    145 	.globl _B_B2
                                    146 	.globl _B_B1
                                    147 	.globl _B_B0
                                    148 	.globl _ADC0CN0_ADEN
                                    149 	.globl _ADC0CN0_ADBMEN
                                    150 	.globl _ADC0CN0_ADINT
                                    151 	.globl _ADC0CN0_ADBUSY
                                    152 	.globl _ADC0CN0_ADWINT
                                    153 	.globl _ADC0CN0_ADCM2
                                    154 	.globl _ADC0CN0_ADCM1
                                    155 	.globl _ADC0CN0_ADCM0
                                    156 	.globl _ACC_ACC7
                                    157 	.globl _ACC_ACC6
                                    158 	.globl _ACC_ACC5
                                    159 	.globl _ACC_ACC4
                                    160 	.globl _ACC_ACC3
                                    161 	.globl _ACC_ACC2
                                    162 	.globl _ACC_ACC1
                                    163 	.globl _ACC_ACC0
                                    164 	.globl __XPAGE
                                    165 	.globl _TMR4RL
                                    166 	.globl _TMR4
                                    167 	.globl _TMR3RL
                                    168 	.globl _TMR3
                                    169 	.globl _TMR2RL
                                    170 	.globl _TMR2
                                    171 	.globl _SBRL1
                                    172 	.globl _PCA0
                                    173 	.globl _PCA0CP2
                                    174 	.globl _PCA0CP1
                                    175 	.globl _PCA0CP0
                                    176 	.globl _DP
                                    177 	.globl _ADC0LT
                                    178 	.globl _ADC0
                                    179 	.globl _ADC0GT
                                    180 	.globl _XBR2
                                    181 	.globl _XBR1
                                    182 	.globl _XBR0
                                    183 	.globl _WDTCN
                                    184 	.globl _VDM0CN
                                    185 	.globl _USB0XCN
                                    186 	.globl _USB0DAT
                                    187 	.globl _USB0CF
                                    188 	.globl _USB0CDSTA
                                    189 	.globl _USB0CDCN
                                    190 	.globl _USB0CDCF
                                    191 	.globl _USB0AEC
                                    192 	.globl _USB0ADR
                                    193 	.globl _UART1LIN
                                    194 	.globl _UART1FCT
                                    195 	.globl _UART1FCN1
                                    196 	.globl _UART1FCN0
                                    197 	.globl _TMR4RLL
                                    198 	.globl _TMR4RLH
                                    199 	.globl _TMR4L
                                    200 	.globl _TMR4H
                                    201 	.globl _TMR4CN1
                                    202 	.globl _TMR4CN0
                                    203 	.globl _TMR3RLL
                                    204 	.globl _TMR3RLH
                                    205 	.globl _TMR3L
                                    206 	.globl _TMR3H
                                    207 	.globl _TMR3CN1
                                    208 	.globl _TMR3CN0
                                    209 	.globl _TMR2RLL
                                    210 	.globl _TMR2RLH
                                    211 	.globl _TMR2L
                                    212 	.globl _TMR2H
                                    213 	.globl _TMR2CN1
                                    214 	.globl _TMR2CN0
                                    215 	.globl _TMOD
                                    216 	.globl _TL1
                                    217 	.globl _TL0
                                    218 	.globl _TH1
                                    219 	.globl _TH0
                                    220 	.globl _TCON
                                    221 	.globl _SPI0FCT
                                    222 	.globl _SPI0FCN1
                                    223 	.globl _SPI0FCN0
                                    224 	.globl _SPI0DAT
                                    225 	.globl _SPI0CN0
                                    226 	.globl _SPI0CKR
                                    227 	.globl _SPI0CFG
                                    228 	.globl _SP
                                    229 	.globl _SMOD1
                                    230 	.globl _SMB0TC
                                    231 	.globl _SMB0RXLN
                                    232 	.globl _SMB0FCT
                                    233 	.globl _SMB0FCN1
                                    234 	.globl _SMB0FCN0
                                    235 	.globl _SMB0DAT
                                    236 	.globl _SMB0CN0
                                    237 	.globl _SMB0CF
                                    238 	.globl _SMB0ADR
                                    239 	.globl _SMB0ADM
                                    240 	.globl _SFRSTACK
                                    241 	.globl _SFRPGCN
                                    242 	.globl _SFRPAGE
                                    243 	.globl _SCON1
                                    244 	.globl _SCON0
                                    245 	.globl _SBUF1
                                    246 	.globl _SBUF0
                                    247 	.globl _SBRLL1
                                    248 	.globl _SBRLH1
                                    249 	.globl _SBCON1
                                    250 	.globl _RSTSRC
                                    251 	.globl _REVID
                                    252 	.globl _REG1CN
                                    253 	.globl _REG0CN
                                    254 	.globl _REF0CN
                                    255 	.globl _PSW
                                    256 	.globl _PSCTL
                                    257 	.globl _PRTDRV
                                    258 	.globl _PFE0CN
                                    259 	.globl _PCON1
                                    260 	.globl _PCON0
                                    261 	.globl _PCA0PWM
                                    262 	.globl _PCA0POL
                                    263 	.globl _PCA0MD
                                    264 	.globl _PCA0L
                                    265 	.globl _PCA0H
                                    266 	.globl _PCA0CPM2
                                    267 	.globl _PCA0CPM1
                                    268 	.globl _PCA0CPM0
                                    269 	.globl _PCA0CPL2
                                    270 	.globl _PCA0CPL1
                                    271 	.globl _PCA0CPL0
                                    272 	.globl _PCA0CPH2
                                    273 	.globl _PCA0CPH1
                                    274 	.globl _PCA0CPH0
                                    275 	.globl _PCA0CN0
                                    276 	.globl _PCA0CLR
                                    277 	.globl _PCA0CENT
                                    278 	.globl _P3MDOUT
                                    279 	.globl _P3MDIN
                                    280 	.globl _P3
                                    281 	.globl _P2SKIP
                                    282 	.globl _P2MDOUT
                                    283 	.globl _P2MDIN
                                    284 	.globl _P2MAT
                                    285 	.globl _P2MASK
                                    286 	.globl _P2
                                    287 	.globl _P1SKIP
                                    288 	.globl _P1MDOUT
                                    289 	.globl _P1MDIN
                                    290 	.globl _P1MAT
                                    291 	.globl _P1MASK
                                    292 	.globl _P1
                                    293 	.globl _P0SKIP
                                    294 	.globl _P0MDOUT
                                    295 	.globl _P0MDIN
                                    296 	.globl _P0MAT
                                    297 	.globl _P0MASK
                                    298 	.globl _P0
                                    299 	.globl _LFO0CN
                                    300 	.globl _IT01CF
                                    301 	.globl _IPH
                                    302 	.globl _IP
                                    303 	.globl _IE
                                    304 	.globl _I2C0STAT
                                    305 	.globl _I2C0SLAD
                                    306 	.globl _I2C0FCT
                                    307 	.globl _I2C0FCN1
                                    308 	.globl _I2C0FCN0
                                    309 	.globl _I2C0DOUT
                                    310 	.globl _I2C0DIN
                                    311 	.globl _I2C0CN0
                                    312 	.globl _HFOCN
                                    313 	.globl _HFO1CAL
                                    314 	.globl _HFO0CAL
                                    315 	.globl _FLKEY
                                    316 	.globl _EMI0CN
                                    317 	.globl _EIP2H
                                    318 	.globl _EIP2
                                    319 	.globl _EIP1H
                                    320 	.globl _EIP1
                                    321 	.globl _EIE2
                                    322 	.globl _EIE1
                                    323 	.globl _DPL
                                    324 	.globl _DPH
                                    325 	.globl _DEVICEID
                                    326 	.globl _DERIVID
                                    327 	.globl _CRC0ST
                                    328 	.globl _CRC0IN
                                    329 	.globl _CRC0FLIP
                                    330 	.globl _CRC0DAT
                                    331 	.globl _CRC0CNT
                                    332 	.globl _CRC0CN1
                                    333 	.globl _CRC0CN0
                                    334 	.globl _CMP1MX
                                    335 	.globl _CMP1MD
                                    336 	.globl _CMP1CN1
                                    337 	.globl _CMP1CN0
                                    338 	.globl _CMP0MX
                                    339 	.globl _CMP0MD
                                    340 	.globl _CMP0CN1
                                    341 	.globl _CMP0CN0
                                    342 	.globl _CLKSEL
                                    343 	.globl _CKCON1
                                    344 	.globl _CKCON0
                                    345 	.globl _B
                                    346 	.globl _ADC0TK
                                    347 	.globl _ADC0PWR
                                    348 	.globl _ADC0MX
                                    349 	.globl _ADC0LTL
                                    350 	.globl _ADC0LTH
                                    351 	.globl _ADC0L
                                    352 	.globl _ADC0H
                                    353 	.globl _ADC0GTL
                                    354 	.globl _ADC0GTH
                                    355 	.globl _ADC0CN1
                                    356 	.globl _ADC0CN0
                                    357 	.globl _ADC0CF
                                    358 	.globl _ADC0AC
                                    359 	.globl _ACC
                                    360 	.globl _hid_msg
                                    361 	.globl _winkc
                                    362 	.globl _state
                                    363 	.globl _error
                                    364 	.globl _appdata
                                    365 	.globl _set_app_error
                                    366 	.globl _get_app_error
                                    367 	.globl _get_app_state
                                    368 	.globl _set_app_state
                                    369 	.globl _app_wink
                                    370 	.globl _set_app_u2f_hid_msg
                                    371 	.globl _rgb
                                    372 ;--------------------------------------------------------
                                    373 ; special function registers
                                    374 ;--------------------------------------------------------
                                    375 	.area RSEG    (ABS,DATA)
      000000                        376 	.org 0x0000
                           0000E0   377 G$ACC$0$0 == 0x00e0
                           0000E0   378 _ACC	=	0x00e0
                           0000B3   379 G$ADC0AC$0$0 == 0x00b3
                           0000B3   380 _ADC0AC	=	0x00b3
                           0000BC   381 G$ADC0CF$0$0 == 0x00bc
                           0000BC   382 _ADC0CF	=	0x00bc
                           0000E8   383 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   384 _ADC0CN0	=	0x00e8
                           0000B2   385 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   386 _ADC0CN1	=	0x00b2
                           0000C4   387 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   388 _ADC0GTH	=	0x00c4
                           0000C3   389 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   390 _ADC0GTL	=	0x00c3
                           0000BE   391 G$ADC0H$0$0 == 0x00be
                           0000BE   392 _ADC0H	=	0x00be
                           0000BD   393 G$ADC0L$0$0 == 0x00bd
                           0000BD   394 _ADC0L	=	0x00bd
                           0000C6   395 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   396 _ADC0LTH	=	0x00c6
                           0000C5   397 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   398 _ADC0LTL	=	0x00c5
                           0000BB   399 G$ADC0MX$0$0 == 0x00bb
                           0000BB   400 _ADC0MX	=	0x00bb
                           0000DF   401 G$ADC0PWR$0$0 == 0x00df
                           0000DF   402 _ADC0PWR	=	0x00df
                           0000B9   403 G$ADC0TK$0$0 == 0x00b9
                           0000B9   404 _ADC0TK	=	0x00b9
                           0000F0   405 G$B$0$0 == 0x00f0
                           0000F0   406 _B	=	0x00f0
                           00008E   407 G$CKCON0$0$0 == 0x008e
                           00008E   408 _CKCON0	=	0x008e
                           0000A6   409 G$CKCON1$0$0 == 0x00a6
                           0000A6   410 _CKCON1	=	0x00a6
                           0000A9   411 G$CLKSEL$0$0 == 0x00a9
                           0000A9   412 _CLKSEL	=	0x00a9
                           00009B   413 G$CMP0CN0$0$0 == 0x009b
                           00009B   414 _CMP0CN0	=	0x009b
                           000099   415 G$CMP0CN1$0$0 == 0x0099
                           000099   416 _CMP0CN1	=	0x0099
                           00009D   417 G$CMP0MD$0$0 == 0x009d
                           00009D   418 _CMP0MD	=	0x009d
                           00009F   419 G$CMP0MX$0$0 == 0x009f
                           00009F   420 _CMP0MX	=	0x009f
                           0000BF   421 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   422 _CMP1CN0	=	0x00bf
                           0000AC   423 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   424 _CMP1CN1	=	0x00ac
                           0000AB   425 G$CMP1MD$0$0 == 0x00ab
                           0000AB   426 _CMP1MD	=	0x00ab
                           0000AA   427 G$CMP1MX$0$0 == 0x00aa
                           0000AA   428 _CMP1MX	=	0x00aa
                           0000CE   429 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   430 _CRC0CN0	=	0x00ce
                           000086   431 G$CRC0CN1$0$0 == 0x0086
                           000086   432 _CRC0CN1	=	0x0086
                           0000D3   433 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   434 _CRC0CNT	=	0x00d3
                           0000DE   435 G$CRC0DAT$0$0 == 0x00de
                           0000DE   436 _CRC0DAT	=	0x00de
                           0000CF   437 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   438 _CRC0FLIP	=	0x00cf
                           0000DD   439 G$CRC0IN$0$0 == 0x00dd
                           0000DD   440 _CRC0IN	=	0x00dd
                           0000D2   441 G$CRC0ST$0$0 == 0x00d2
                           0000D2   442 _CRC0ST	=	0x00d2
                           0000AD   443 G$DERIVID$0$0 == 0x00ad
                           0000AD   444 _DERIVID	=	0x00ad
                           0000B5   445 G$DEVICEID$0$0 == 0x00b5
                           0000B5   446 _DEVICEID	=	0x00b5
                           000083   447 G$DPH$0$0 == 0x0083
                           000083   448 _DPH	=	0x0083
                           000082   449 G$DPL$0$0 == 0x0082
                           000082   450 _DPL	=	0x0082
                           0000E6   451 G$EIE1$0$0 == 0x00e6
                           0000E6   452 _EIE1	=	0x00e6
                           0000CE   453 G$EIE2$0$0 == 0x00ce
                           0000CE   454 _EIE2	=	0x00ce
                           0000F3   455 G$EIP1$0$0 == 0x00f3
                           0000F3   456 _EIP1	=	0x00f3
                           0000F5   457 G$EIP1H$0$0 == 0x00f5
                           0000F5   458 _EIP1H	=	0x00f5
                           0000F4   459 G$EIP2$0$0 == 0x00f4
                           0000F4   460 _EIP2	=	0x00f4
                           0000F6   461 G$EIP2H$0$0 == 0x00f6
                           0000F6   462 _EIP2H	=	0x00f6
                           0000E7   463 G$EMI0CN$0$0 == 0x00e7
                           0000E7   464 _EMI0CN	=	0x00e7
                           0000B7   465 G$FLKEY$0$0 == 0x00b7
                           0000B7   466 _FLKEY	=	0x00b7
                           0000C7   467 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   468 _HFO0CAL	=	0x00c7
                           0000D6   469 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   470 _HFO1CAL	=	0x00d6
                           0000EF   471 G$HFOCN$0$0 == 0x00ef
                           0000EF   472 _HFOCN	=	0x00ef
                           0000BA   473 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   474 _I2C0CN0	=	0x00ba
                           0000BC   475 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   476 _I2C0DIN	=	0x00bc
                           0000BB   477 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   478 _I2C0DOUT	=	0x00bb
                           0000AD   479 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   480 _I2C0FCN0	=	0x00ad
                           0000AB   481 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   482 _I2C0FCN1	=	0x00ab
                           0000F5   483 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   484 _I2C0FCT	=	0x00f5
                           0000BD   485 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   486 _I2C0SLAD	=	0x00bd
                           0000B9   487 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   488 _I2C0STAT	=	0x00b9
                           0000A8   489 G$IE$0$0 == 0x00a8
                           0000A8   490 _IE	=	0x00a8
                           0000B8   491 G$IP$0$0 == 0x00b8
                           0000B8   492 _IP	=	0x00b8
                           0000F2   493 G$IPH$0$0 == 0x00f2
                           0000F2   494 _IPH	=	0x00f2
                           0000E4   495 G$IT01CF$0$0 == 0x00e4
                           0000E4   496 _IT01CF	=	0x00e4
                           0000B1   497 G$LFO0CN$0$0 == 0x00b1
                           0000B1   498 _LFO0CN	=	0x00b1
                           000080   499 G$P0$0$0 == 0x0080
                           000080   500 _P0	=	0x0080
                           0000FE   501 G$P0MASK$0$0 == 0x00fe
                           0000FE   502 _P0MASK	=	0x00fe
                           0000FD   503 G$P0MAT$0$0 == 0x00fd
                           0000FD   504 _P0MAT	=	0x00fd
                           0000F1   505 G$P0MDIN$0$0 == 0x00f1
                           0000F1   506 _P0MDIN	=	0x00f1
                           0000A4   507 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   508 _P0MDOUT	=	0x00a4
                           0000D4   509 G$P0SKIP$0$0 == 0x00d4
                           0000D4   510 _P0SKIP	=	0x00d4
                           000090   511 G$P1$0$0 == 0x0090
                           000090   512 _P1	=	0x0090
                           0000EE   513 G$P1MASK$0$0 == 0x00ee
                           0000EE   514 _P1MASK	=	0x00ee
                           0000ED   515 G$P1MAT$0$0 == 0x00ed
                           0000ED   516 _P1MAT	=	0x00ed
                           0000F2   517 G$P1MDIN$0$0 == 0x00f2
                           0000F2   518 _P1MDIN	=	0x00f2
                           0000A5   519 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   520 _P1MDOUT	=	0x00a5
                           0000D5   521 G$P1SKIP$0$0 == 0x00d5
                           0000D5   522 _P1SKIP	=	0x00d5
                           0000A0   523 G$P2$0$0 == 0x00a0
                           0000A0   524 _P2	=	0x00a0
                           0000FC   525 G$P2MASK$0$0 == 0x00fc
                           0000FC   526 _P2MASK	=	0x00fc
                           0000FB   527 G$P2MAT$0$0 == 0x00fb
                           0000FB   528 _P2MAT	=	0x00fb
                           0000F3   529 G$P2MDIN$0$0 == 0x00f3
                           0000F3   530 _P2MDIN	=	0x00f3
                           0000A6   531 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   532 _P2MDOUT	=	0x00a6
                           0000CC   533 G$P2SKIP$0$0 == 0x00cc
                           0000CC   534 _P2SKIP	=	0x00cc
                           0000B0   535 G$P3$0$0 == 0x00b0
                           0000B0   536 _P3	=	0x00b0
                           0000F4   537 G$P3MDIN$0$0 == 0x00f4
                           0000F4   538 _P3MDIN	=	0x00f4
                           00009C   539 G$P3MDOUT$0$0 == 0x009c
                           00009C   540 _P3MDOUT	=	0x009c
                           00009E   541 G$PCA0CENT$0$0 == 0x009e
                           00009E   542 _PCA0CENT	=	0x009e
                           00009C   543 G$PCA0CLR$0$0 == 0x009c
                           00009C   544 _PCA0CLR	=	0x009c
                           0000D8   545 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   546 _PCA0CN0	=	0x00d8
                           0000FC   547 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   548 _PCA0CPH0	=	0x00fc
                           0000EA   549 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   550 _PCA0CPH1	=	0x00ea
                           0000EC   551 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   552 _PCA0CPH2	=	0x00ec
                           0000FB   553 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   554 _PCA0CPL0	=	0x00fb
                           0000E9   555 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   556 _PCA0CPL1	=	0x00e9
                           0000EB   557 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   558 _PCA0CPL2	=	0x00eb
                           0000DA   559 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   560 _PCA0CPM0	=	0x00da
                           0000DB   561 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   562 _PCA0CPM1	=	0x00db
                           0000DC   563 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   564 _PCA0CPM2	=	0x00dc
                           0000FA   565 G$PCA0H$0$0 == 0x00fa
                           0000FA   566 _PCA0H	=	0x00fa
                           0000F9   567 G$PCA0L$0$0 == 0x00f9
                           0000F9   568 _PCA0L	=	0x00f9
                           0000D9   569 G$PCA0MD$0$0 == 0x00d9
                           0000D9   570 _PCA0MD	=	0x00d9
                           000096   571 G$PCA0POL$0$0 == 0x0096
                           000096   572 _PCA0POL	=	0x0096
                           0000F7   573 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   574 _PCA0PWM	=	0x00f7
                           000087   575 G$PCON0$0$0 == 0x0087
                           000087   576 _PCON0	=	0x0087
                           00009A   577 G$PCON1$0$0 == 0x009a
                           00009A   578 _PCON1	=	0x009a
                           0000C1   579 G$PFE0CN$0$0 == 0x00c1
                           0000C1   580 _PFE0CN	=	0x00c1
                           0000F6   581 G$PRTDRV$0$0 == 0x00f6
                           0000F6   582 _PRTDRV	=	0x00f6
                           00008F   583 G$PSCTL$0$0 == 0x008f
                           00008F   584 _PSCTL	=	0x008f
                           0000D0   585 G$PSW$0$0 == 0x00d0
                           0000D0   586 _PSW	=	0x00d0
                           0000D1   587 G$REF0CN$0$0 == 0x00d1
                           0000D1   588 _REF0CN	=	0x00d1
                           0000C9   589 G$REG0CN$0$0 == 0x00c9
                           0000C9   590 _REG0CN	=	0x00c9
                           0000C6   591 G$REG1CN$0$0 == 0x00c6
                           0000C6   592 _REG1CN	=	0x00c6
                           0000B6   593 G$REVID$0$0 == 0x00b6
                           0000B6   594 _REVID	=	0x00b6
                           0000EF   595 G$RSTSRC$0$0 == 0x00ef
                           0000EF   596 _RSTSRC	=	0x00ef
                           000094   597 G$SBCON1$0$0 == 0x0094
                           000094   598 _SBCON1	=	0x0094
                           000096   599 G$SBRLH1$0$0 == 0x0096
                           000096   600 _SBRLH1	=	0x0096
                           000095   601 G$SBRLL1$0$0 == 0x0095
                           000095   602 _SBRLL1	=	0x0095
                           000099   603 G$SBUF0$0$0 == 0x0099
                           000099   604 _SBUF0	=	0x0099
                           000092   605 G$SBUF1$0$0 == 0x0092
                           000092   606 _SBUF1	=	0x0092
                           000098   607 G$SCON0$0$0 == 0x0098
                           000098   608 _SCON0	=	0x0098
                           0000C8   609 G$SCON1$0$0 == 0x00c8
                           0000C8   610 _SCON1	=	0x00c8
                           0000A7   611 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   612 _SFRPAGE	=	0x00a7
                           0000CF   613 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   614 _SFRPGCN	=	0x00cf
                           0000D7   615 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   616 _SFRSTACK	=	0x00d7
                           0000D6   617 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   618 _SMB0ADM	=	0x00d6
                           0000D7   619 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   620 _SMB0ADR	=	0x00d7
                           0000C1   621 G$SMB0CF$0$0 == 0x00c1
                           0000C1   622 _SMB0CF	=	0x00c1
                           0000C0   623 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   624 _SMB0CN0	=	0x00c0
                           0000C2   625 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   626 _SMB0DAT	=	0x00c2
                           0000C3   627 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   628 _SMB0FCN0	=	0x00c3
                           0000C4   629 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   630 _SMB0FCN1	=	0x00c4
                           0000EF   631 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   632 _SMB0FCT	=	0x00ef
                           0000C5   633 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   634 _SMB0RXLN	=	0x00c5
                           0000AC   635 G$SMB0TC$0$0 == 0x00ac
                           0000AC   636 _SMB0TC	=	0x00ac
                           000093   637 G$SMOD1$0$0 == 0x0093
                           000093   638 _SMOD1	=	0x0093
                           000081   639 G$SP$0$0 == 0x0081
                           000081   640 _SP	=	0x0081
                           0000A1   641 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   642 _SPI0CFG	=	0x00a1
                           0000A2   643 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   644 _SPI0CKR	=	0x00a2
                           0000F8   645 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   646 _SPI0CN0	=	0x00f8
                           0000A3   647 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   648 _SPI0DAT	=	0x00a3
                           00009A   649 G$SPI0FCN0$0$0 == 0x009a
                           00009A   650 _SPI0FCN0	=	0x009a
                           00009B   651 G$SPI0FCN1$0$0 == 0x009b
                           00009B   652 _SPI0FCN1	=	0x009b
                           0000F7   653 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   654 _SPI0FCT	=	0x00f7
                           000088   655 G$TCON$0$0 == 0x0088
                           000088   656 _TCON	=	0x0088
                           00008C   657 G$TH0$0$0 == 0x008c
                           00008C   658 _TH0	=	0x008c
                           00008D   659 G$TH1$0$0 == 0x008d
                           00008D   660 _TH1	=	0x008d
                           00008A   661 G$TL0$0$0 == 0x008a
                           00008A   662 _TL0	=	0x008a
                           00008B   663 G$TL1$0$0 == 0x008b
                           00008B   664 _TL1	=	0x008b
                           000089   665 G$TMOD$0$0 == 0x0089
                           000089   666 _TMOD	=	0x0089
                           0000C8   667 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   668 _TMR2CN0	=	0x00c8
                           0000FD   669 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   670 _TMR2CN1	=	0x00fd
                           0000CD   671 G$TMR2H$0$0 == 0x00cd
                           0000CD   672 _TMR2H	=	0x00cd
                           0000CC   673 G$TMR2L$0$0 == 0x00cc
                           0000CC   674 _TMR2L	=	0x00cc
                           0000CB   675 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   676 _TMR2RLH	=	0x00cb
                           0000CA   677 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   678 _TMR2RLL	=	0x00ca
                           000091   679 G$TMR3CN0$0$0 == 0x0091
                           000091   680 _TMR3CN0	=	0x0091
                           0000FE   681 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   682 _TMR3CN1	=	0x00fe
                           000095   683 G$TMR3H$0$0 == 0x0095
                           000095   684 _TMR3H	=	0x0095
                           000094   685 G$TMR3L$0$0 == 0x0094
                           000094   686 _TMR3L	=	0x0094
                           000093   687 G$TMR3RLH$0$0 == 0x0093
                           000093   688 _TMR3RLH	=	0x0093
                           000092   689 G$TMR3RLL$0$0 == 0x0092
                           000092   690 _TMR3RLL	=	0x0092
                           000098   691 G$TMR4CN0$0$0 == 0x0098
                           000098   692 _TMR4CN0	=	0x0098
                           0000FF   693 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   694 _TMR4CN1	=	0x00ff
                           0000A5   695 G$TMR4H$0$0 == 0x00a5
                           0000A5   696 _TMR4H	=	0x00a5
                           0000A4   697 G$TMR4L$0$0 == 0x00a4
                           0000A4   698 _TMR4L	=	0x00a4
                           0000A3   699 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   700 _TMR4RLH	=	0x00a3
                           0000A2   701 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   702 _TMR4RLL	=	0x00a2
                           00009D   703 G$UART1FCN0$0$0 == 0x009d
                           00009D   704 _UART1FCN0	=	0x009d
                           0000D8   705 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   706 _UART1FCN1	=	0x00d8
                           0000FA   707 G$UART1FCT$0$0 == 0x00fa
                           0000FA   708 _UART1FCT	=	0x00fa
                           00009E   709 G$UART1LIN$0$0 == 0x009e
                           00009E   710 _UART1LIN	=	0x009e
                           0000AE   711 G$USB0ADR$0$0 == 0x00ae
                           0000AE   712 _USB0ADR	=	0x00ae
                           0000B2   713 G$USB0AEC$0$0 == 0x00b2
                           0000B2   714 _USB0AEC	=	0x00b2
                           0000B6   715 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   716 _USB0CDCF	=	0x00b6
                           0000BE   717 G$USB0CDCN$0$0 == 0x00be
                           0000BE   718 _USB0CDCN	=	0x00be
                           0000BF   719 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   720 _USB0CDSTA	=	0x00bf
                           0000B5   721 G$USB0CF$0$0 == 0x00b5
                           0000B5   722 _USB0CF	=	0x00b5
                           0000AF   723 G$USB0DAT$0$0 == 0x00af
                           0000AF   724 _USB0DAT	=	0x00af
                           0000B3   725 G$USB0XCN$0$0 == 0x00b3
                           0000B3   726 _USB0XCN	=	0x00b3
                           0000FF   727 G$VDM0CN$0$0 == 0x00ff
                           0000FF   728 _VDM0CN	=	0x00ff
                           000097   729 G$WDTCN$0$0 == 0x0097
                           000097   730 _WDTCN	=	0x0097
                           0000E1   731 G$XBR0$0$0 == 0x00e1
                           0000E1   732 _XBR0	=	0x00e1
                           0000E2   733 G$XBR1$0$0 == 0x00e2
                           0000E2   734 _XBR1	=	0x00e2
                           0000E3   735 G$XBR2$0$0 == 0x00e3
                           0000E3   736 _XBR2	=	0x00e3
                           0000C3   737 G$ADC0GT$0$0 == 0x00c3
                           0000C3   738 _ADC0GT	=	0x00c3
                           0000BD   739 G$ADC0$0$0 == 0x00bd
                           0000BD   740 _ADC0	=	0x00bd
                           0000C5   741 G$ADC0LT$0$0 == 0x00c5
                           0000C5   742 _ADC0LT	=	0x00c5
                           000082   743 G$DP$0$0 == 0x0082
                           000082   744 _DP	=	0x0082
                           0000FB   745 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   746 _PCA0CP0	=	0x00fb
                           0000E9   747 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   748 _PCA0CP1	=	0x00e9
                           0000EB   749 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   750 _PCA0CP2	=	0x00eb
                           0000F9   751 G$PCA0$0$0 == 0x00f9
                           0000F9   752 _PCA0	=	0x00f9
                           000095   753 G$SBRL1$0$0 == 0x0095
                           000095   754 _SBRL1	=	0x0095
                           0000CC   755 G$TMR2$0$0 == 0x00cc
                           0000CC   756 _TMR2	=	0x00cc
                           0000CA   757 G$TMR2RL$0$0 == 0x00ca
                           0000CA   758 _TMR2RL	=	0x00ca
                           000094   759 G$TMR3$0$0 == 0x0094
                           000094   760 _TMR3	=	0x0094
                           000092   761 G$TMR3RL$0$0 == 0x0092
                           000092   762 _TMR3RL	=	0x0092
                           0000A4   763 G$TMR4$0$0 == 0x00a4
                           0000A4   764 _TMR4	=	0x00a4
                           0000A2   765 G$TMR4RL$0$0 == 0x00a2
                           0000A2   766 _TMR4RL	=	0x00a2
                           0000AA   767 G$_XPAGE$0$0 == 0x00aa
                           0000AA   768 __XPAGE	=	0x00aa
                                    769 ;--------------------------------------------------------
                                    770 ; special function bits
                                    771 ;--------------------------------------------------------
                                    772 	.area RSEG    (ABS,DATA)
      000000                        773 	.org 0x0000
                           0000E0   774 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   775 _ACC_ACC0	=	0x00e0
                           0000E1   776 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   777 _ACC_ACC1	=	0x00e1
                           0000E2   778 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   779 _ACC_ACC2	=	0x00e2
                           0000E3   780 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   781 _ACC_ACC3	=	0x00e3
                           0000E4   782 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   783 _ACC_ACC4	=	0x00e4
                           0000E5   784 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   785 _ACC_ACC5	=	0x00e5
                           0000E6   786 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   787 _ACC_ACC6	=	0x00e6
                           0000E7   788 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   789 _ACC_ACC7	=	0x00e7
                           0000E8   790 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   791 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   792 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   793 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   794 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   795 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   796 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   797 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   798 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   799 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   800 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   801 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   802 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   803 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   804 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   805 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   806 G$B_B0$0$0 == 0x00f0
                           0000F0   807 _B_B0	=	0x00f0
                           0000F1   808 G$B_B1$0$0 == 0x00f1
                           0000F1   809 _B_B1	=	0x00f1
                           0000F2   810 G$B_B2$0$0 == 0x00f2
                           0000F2   811 _B_B2	=	0x00f2
                           0000F3   812 G$B_B3$0$0 == 0x00f3
                           0000F3   813 _B_B3	=	0x00f3
                           0000F4   814 G$B_B4$0$0 == 0x00f4
                           0000F4   815 _B_B4	=	0x00f4
                           0000F5   816 G$B_B5$0$0 == 0x00f5
                           0000F5   817 _B_B5	=	0x00f5
                           0000F6   818 G$B_B6$0$0 == 0x00f6
                           0000F6   819 _B_B6	=	0x00f6
                           0000F7   820 G$B_B7$0$0 == 0x00f7
                           0000F7   821 _B_B7	=	0x00f7
                           0000A8   822 G$IE_EX0$0$0 == 0x00a8
                           0000A8   823 _IE_EX0	=	0x00a8
                           0000A9   824 G$IE_ET0$0$0 == 0x00a9
                           0000A9   825 _IE_ET0	=	0x00a9
                           0000AA   826 G$IE_EX1$0$0 == 0x00aa
                           0000AA   827 _IE_EX1	=	0x00aa
                           0000AB   828 G$IE_ET1$0$0 == 0x00ab
                           0000AB   829 _IE_ET1	=	0x00ab
                           0000AC   830 G$IE_ES0$0$0 == 0x00ac
                           0000AC   831 _IE_ES0	=	0x00ac
                           0000AD   832 G$IE_ET2$0$0 == 0x00ad
                           0000AD   833 _IE_ET2	=	0x00ad
                           0000AE   834 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   835 _IE_ESPI0	=	0x00ae
                           0000AF   836 G$IE_EA$0$0 == 0x00af
                           0000AF   837 _IE_EA	=	0x00af
                           0000B8   838 G$IP_PX0$0$0 == 0x00b8
                           0000B8   839 _IP_PX0	=	0x00b8
                           0000B9   840 G$IP_PT0$0$0 == 0x00b9
                           0000B9   841 _IP_PT0	=	0x00b9
                           0000BA   842 G$IP_PX1$0$0 == 0x00ba
                           0000BA   843 _IP_PX1	=	0x00ba
                           0000BB   844 G$IP_PT1$0$0 == 0x00bb
                           0000BB   845 _IP_PT1	=	0x00bb
                           0000BC   846 G$IP_PS0$0$0 == 0x00bc
                           0000BC   847 _IP_PS0	=	0x00bc
                           0000BD   848 G$IP_PT2$0$0 == 0x00bd
                           0000BD   849 _IP_PT2	=	0x00bd
                           0000BE   850 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   851 _IP_PSPI0	=	0x00be
                           000080   852 G$P0_B0$0$0 == 0x0080
                           000080   853 _P0_B0	=	0x0080
                           000081   854 G$P0_B1$0$0 == 0x0081
                           000081   855 _P0_B1	=	0x0081
                           000082   856 G$P0_B2$0$0 == 0x0082
                           000082   857 _P0_B2	=	0x0082
                           000083   858 G$P0_B3$0$0 == 0x0083
                           000083   859 _P0_B3	=	0x0083
                           000084   860 G$P0_B4$0$0 == 0x0084
                           000084   861 _P0_B4	=	0x0084
                           000085   862 G$P0_B5$0$0 == 0x0085
                           000085   863 _P0_B5	=	0x0085
                           000086   864 G$P0_B6$0$0 == 0x0086
                           000086   865 _P0_B6	=	0x0086
                           000087   866 G$P0_B7$0$0 == 0x0087
                           000087   867 _P0_B7	=	0x0087
                           000090   868 G$P1_B0$0$0 == 0x0090
                           000090   869 _P1_B0	=	0x0090
                           000091   870 G$P1_B1$0$0 == 0x0091
                           000091   871 _P1_B1	=	0x0091
                           000092   872 G$P1_B2$0$0 == 0x0092
                           000092   873 _P1_B2	=	0x0092
                           000093   874 G$P1_B3$0$0 == 0x0093
                           000093   875 _P1_B3	=	0x0093
                           000094   876 G$P1_B4$0$0 == 0x0094
                           000094   877 _P1_B4	=	0x0094
                           000095   878 G$P1_B5$0$0 == 0x0095
                           000095   879 _P1_B5	=	0x0095
                           000096   880 G$P1_B6$0$0 == 0x0096
                           000096   881 _P1_B6	=	0x0096
                           000097   882 G$P1_B7$0$0 == 0x0097
                           000097   883 _P1_B7	=	0x0097
                           0000A0   884 G$P2_B0$0$0 == 0x00a0
                           0000A0   885 _P2_B0	=	0x00a0
                           0000A1   886 G$P2_B1$0$0 == 0x00a1
                           0000A1   887 _P2_B1	=	0x00a1
                           0000A2   888 G$P2_B2$0$0 == 0x00a2
                           0000A2   889 _P2_B2	=	0x00a2
                           0000A3   890 G$P2_B3$0$0 == 0x00a3
                           0000A3   891 _P2_B3	=	0x00a3
                           0000B0   892 G$P3_B0$0$0 == 0x00b0
                           0000B0   893 _P3_B0	=	0x00b0
                           0000B1   894 G$P3_B1$0$0 == 0x00b1
                           0000B1   895 _P3_B1	=	0x00b1
                           0000D8   896 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   897 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   898 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   899 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   900 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   901 _PCA0CN0_CCF2	=	0x00da
                           0000DE   902 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   903 _PCA0CN0_CR	=	0x00de
                           0000DF   904 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   905 _PCA0CN0_CF	=	0x00df
                           0000D0   906 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   907 _PSW_PARITY	=	0x00d0
                           0000D1   908 G$PSW_F1$0$0 == 0x00d1
                           0000D1   909 _PSW_F1	=	0x00d1
                           0000D2   910 G$PSW_OV$0$0 == 0x00d2
                           0000D2   911 _PSW_OV	=	0x00d2
                           0000D3   912 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   913 _PSW_RS0	=	0x00d3
                           0000D4   914 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   915 _PSW_RS1	=	0x00d4
                           0000D5   916 G$PSW_F0$0$0 == 0x00d5
                           0000D5   917 _PSW_F0	=	0x00d5
                           0000D6   918 G$PSW_AC$0$0 == 0x00d6
                           0000D6   919 _PSW_AC	=	0x00d6
                           0000D7   920 G$PSW_CY$0$0 == 0x00d7
                           0000D7   921 _PSW_CY	=	0x00d7
                           000098   922 G$SCON0_RI$0$0 == 0x0098
                           000098   923 _SCON0_RI	=	0x0098
                           000099   924 G$SCON0_TI$0$0 == 0x0099
                           000099   925 _SCON0_TI	=	0x0099
                           00009A   926 G$SCON0_RB8$0$0 == 0x009a
                           00009A   927 _SCON0_RB8	=	0x009a
                           00009B   928 G$SCON0_TB8$0$0 == 0x009b
                           00009B   929 _SCON0_TB8	=	0x009b
                           00009C   930 G$SCON0_REN$0$0 == 0x009c
                           00009C   931 _SCON0_REN	=	0x009c
                           00009D   932 G$SCON0_MCE$0$0 == 0x009d
                           00009D   933 _SCON0_MCE	=	0x009d
                           00009F   934 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   935 _SCON0_SMODE	=	0x009f
                           0000C8   936 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   937 _SCON1_RI	=	0x00c8
                           0000C9   938 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   939 _SCON1_TI	=	0x00c9
                           0000CA   940 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   941 _SCON1_RBX	=	0x00ca
                           0000CB   942 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   943 _SCON1_TBX	=	0x00cb
                           0000CC   944 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   945 _SCON1_REN	=	0x00cc
                           0000CE   946 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   947 _SCON1_PERR	=	0x00ce
                           0000CF   948 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   949 _SCON1_OVR	=	0x00cf
                           0000C0   950 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   951 _SMB0CN0_SI	=	0x00c0
                           0000C1   952 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   953 _SMB0CN0_ACK	=	0x00c1
                           0000C2   954 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   955 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   956 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   957 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   958 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   959 _SMB0CN0_STO	=	0x00c4
                           0000C5   960 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   961 _SMB0CN0_STA	=	0x00c5
                           0000C6   962 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   963 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   964 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   965 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   966 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   967 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   968 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   969 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   970 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   971 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   972 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   973 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   974 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   975 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   976 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   977 _SPI0CN0_MODF	=	0x00fd
                           0000FE   978 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   979 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   980 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   981 _SPI0CN0_SPIF	=	0x00ff
                           000088   982 G$TCON_IT0$0$0 == 0x0088
                           000088   983 _TCON_IT0	=	0x0088
                           000089   984 G$TCON_IE0$0$0 == 0x0089
                           000089   985 _TCON_IE0	=	0x0089
                           00008A   986 G$TCON_IT1$0$0 == 0x008a
                           00008A   987 _TCON_IT1	=	0x008a
                           00008B   988 G$TCON_IE1$0$0 == 0x008b
                           00008B   989 _TCON_IE1	=	0x008b
                           00008C   990 G$TCON_TR0$0$0 == 0x008c
                           00008C   991 _TCON_TR0	=	0x008c
                           00008D   992 G$TCON_TF0$0$0 == 0x008d
                           00008D   993 _TCON_TF0	=	0x008d
                           00008E   994 G$TCON_TR1$0$0 == 0x008e
                           00008E   995 _TCON_TR1	=	0x008e
                           00008F   996 G$TCON_TF1$0$0 == 0x008f
                           00008F   997 _TCON_TF1	=	0x008f
                           0000C8   998 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   999 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9  1000 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9  1001 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA  1002 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA  1003 _TMR2CN0_TR2	=	0x00ca
                           0000CB  1004 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB  1005 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC  1006 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC  1007 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD  1008 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD  1009 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE  1010 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE  1011 _TMR2CN0_TF2L	=	0x00ce
                           0000CF  1012 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF  1013 _TMR2CN0_TF2H	=	0x00cf
                           000098  1014 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1015 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1016 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1017 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1018 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1019 _TMR4CN0_TR4	=	0x009a
                           00009B  1020 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1021 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1022 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1023 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1024 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1025 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1026 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1027 _TMR4CN0_TF4L	=	0x009e
                           00009F  1028 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1029 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1030 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1031 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1032 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1033 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1034 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1035 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1036 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1037 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1038 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1039 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1040 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1041 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1042 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1043 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1044 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1045 _UART1FCN1_TFRQ	=	0x00df
                           000095  1046 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1047 _U2F_BUTTON	=	0x0095
                           000096  1048 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1049 _U2F_BUTTON_VAL	=	0x0096
                           000091  1050 G$U2F_RED$0$0 == 0x0091
                           000091  1051 _U2F_RED	=	0x0091
                           000090  1052 G$U2F_GREEN$0$0 == 0x0090
                           000090  1053 _U2F_GREEN	=	0x0090
                           000087  1054 G$U2F_BLUE$0$0 == 0x0087
                           000087  1055 _U2F_BLUE	=	0x0087
                                   1056 ;--------------------------------------------------------
                                   1057 ; overlayable register banks
                                   1058 ;--------------------------------------------------------
                                   1059 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1060 	.ds 8
                                   1061 ;--------------------------------------------------------
                                   1062 ; overlayable bit register bank
                                   1063 ;--------------------------------------------------------
                                   1064 	.area BIT_BANK	(REL,OVR,DATA)
      000020                       1065 bits:
      000020                       1066 	.ds 1
                           008000  1067 	b0 = bits[0]
                           008100  1068 	b1 = bits[1]
                           008200  1069 	b2 = bits[2]
                           008300  1070 	b3 = bits[3]
                           008400  1071 	b4 = bits[4]
                           008500  1072 	b5 = bits[5]
                           008600  1073 	b6 = bits[6]
                           008700  1074 	b7 = bits[7]
                                   1075 ;--------------------------------------------------------
                                   1076 ; internal ram data
                                   1077 ;--------------------------------------------------------
                                   1078 	.area DSEG    (DATA)
                           000000  1079 G$appdata$0$0==.
      000021                       1080 _appdata::
      000021                       1081 	.ds 70
                                   1082 ;--------------------------------------------------------
                                   1083 ; overlayable items in internal ram 
                                   1084 ;--------------------------------------------------------
                                   1085 ;--------------------------------------------------------
                                   1086 ; Stack segment in internal ram 
                                   1087 ;--------------------------------------------------------
                                   1088 	.area	SSEG
      000067                       1089 __start__stack:
      000067                       1090 	.ds	1
                                   1091 
                                   1092 ;--------------------------------------------------------
                                   1093 ; indirectly addressable internal ram data
                                   1094 ;--------------------------------------------------------
                                   1095 	.area ISEG    (DATA)
                                   1096 ;--------------------------------------------------------
                                   1097 ; absolute internal ram data
                                   1098 ;--------------------------------------------------------
                                   1099 	.area IABS    (ABS,DATA)
                                   1100 	.area IABS    (ABS,DATA)
                                   1101 ;--------------------------------------------------------
                                   1102 ; bit data
                                   1103 ;--------------------------------------------------------
                                   1104 	.area BSEG    (BIT)
                                   1105 ;--------------------------------------------------------
                                   1106 ; paged external ram data
                                   1107 ;--------------------------------------------------------
                                   1108 	.area PSEG    (PAG,XDATA)
                                   1109 ;--------------------------------------------------------
                                   1110 ; external ram data
                                   1111 ;--------------------------------------------------------
                                   1112 	.area XSEG    (XDATA)
                           000000  1113 G$error$0$0==.
      000001                       1114 _error::
      000001                       1115 	.ds 1
                           000001  1116 G$state$0$0==.
      000002                       1117 _state::
      000002                       1118 	.ds 1
                           000002  1119 G$winkc$0$0==.
      000003                       1120 _winkc::
      000003                       1121 	.ds 4
                           000006  1122 G$hid_msg$0$0==.
      000007                       1123 _hid_msg::
      000007                       1124 	.ds 3
                                   1125 ;--------------------------------------------------------
                                   1126 ; absolute external ram data
                                   1127 ;--------------------------------------------------------
                                   1128 	.area XABS    (ABS,XDATA)
                                   1129 ;--------------------------------------------------------
                                   1130 ; external initialized ram data
                                   1131 ;--------------------------------------------------------
                                   1132 	.area XISEG   (XDATA)
                                   1133 	.area HOME    (CODE)
                                   1134 	.area GSINIT0 (CODE)
                                   1135 	.area GSINIT1 (CODE)
                                   1136 	.area GSINIT2 (CODE)
                                   1137 	.area GSINIT3 (CODE)
                                   1138 	.area GSINIT4 (CODE)
                                   1139 	.area GSINIT5 (CODE)
                                   1140 	.area GSINIT  (CODE)
                                   1141 	.area GSFINAL (CODE)
                                   1142 	.area CSEG    (CODE)
                                   1143 ;--------------------------------------------------------
                                   1144 ; interrupt vector 
                                   1145 ;--------------------------------------------------------
                                   1146 	.area HOME    (CODE)
      000000                       1147 __interrupt_vect:
      000000 02 00 06         [24] 1148 	ljmp	__sdcc_gsinit_startup
                                   1149 ;--------------------------------------------------------
                                   1150 ; global & static initialisations
                                   1151 ;--------------------------------------------------------
                                   1152 	.area HOME    (CODE)
                                   1153 	.area GSINIT  (CODE)
                                   1154 	.area GSFINAL (CODE)
                                   1155 	.area GSINIT  (CODE)
                                   1156 	.globl __sdcc_gsinit_startup
                                   1157 	.globl __sdcc_program_startup
                                   1158 	.globl __start__stack
                                   1159 	.globl __mcs51_genXINIT
                                   1160 	.globl __mcs51_genXRAMCLEAR
                                   1161 	.globl __mcs51_genRAMCLEAR
                                   1162 	.area GSFINAL (CODE)
      00008C 02 00 03         [24] 1163 	ljmp	__sdcc_program_startup
                                   1164 ;--------------------------------------------------------
                                   1165 ; Home
                                   1166 ;--------------------------------------------------------
                                   1167 	.area HOME    (CODE)
                                   1168 	.area HOME    (CODE)
      000003                       1169 __sdcc_program_startup:
      000003 02 01 29         [24] 1170 	ljmp	_main
                                   1171 ;	return from main will return to caller
                                   1172 ;--------------------------------------------------------
                                   1173 ; code
                                   1174 ;--------------------------------------------------------
                                   1175 	.area CSEG    (CODE)
                                   1176 ;------------------------------------------------------------
                                   1177 ;Allocation info for local variables in function 'init'
                                   1178 ;------------------------------------------------------------
                                   1179 ;ap                        Allocated to registers 
                                   1180 ;------------------------------------------------------------
                           000000  1181 	G$init$0$0 ==.
                           000000  1182 	C$main.c$55$0$0 ==.
                                   1183 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:55: void init(struct APP_DATA* ap)
                                   1184 ;	-----------------------------------------
                                   1185 ;	 function init
                                   1186 ;	-----------------------------------------
      00008F                       1187 _init:
                           000007  1188 	ar7 = 0x07
                           000006  1189 	ar6 = 0x06
                           000005  1190 	ar5 = 0x05
                           000004  1191 	ar4 = 0x04
                           000003  1192 	ar3 = 0x03
                           000002  1193 	ar2 = 0x02
                           000001  1194 	ar1 = 0x01
                           000000  1195 	ar0 = 0x00
                           000000  1196 	C$main.c$58$1$158 ==.
                                   1197 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:58: u2f_hid_init();
      00008F 12 05 C5         [24] 1198 	lcall	_u2f_hid_init
                           000003  1199 	C$main.c$59$1$158 ==.
                                   1200 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:59: smb_init();
      000092 12 1A E4         [24] 1201 	lcall	_smb_init
                           000006  1202 	C$main.c$60$1$158 ==.
                                   1203 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:60: atecc_idle();
      000095 12 1B 5E         [24] 1204 	lcall	_atecc_idle
                           000009  1205 	C$main.c$62$1$158 ==.
                                   1206 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:62: U2F_BUTTON_VAL = 1;
      000098 D2 96            [12] 1207 	setb	_U2F_BUTTON_VAL
                           00000B  1208 	C$main.c$63$1$158 ==.
                                   1209 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:63: state = APP_NOTHING;
      00009A 90 00 02         [24] 1210 	mov	dptr,#_state
      00009D E4               [12] 1211 	clr	a
      00009E F0               [24] 1212 	movx	@dptr,a
                           000010  1213 	C$main.c$64$1$158 ==.
                                   1214 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:64: error = ERROR_NOTHING;
      00009F 90 00 01         [24] 1215 	mov	dptr,#_error
      0000A2 F0               [24] 1216 	movx	@dptr,a
                           000014  1217 	C$main.c$65$1$158 ==.
                           000014  1218 	XG$init$0$0 ==.
      0000A3 22               [24] 1219 	ret
                                   1220 ;------------------------------------------------------------
                                   1221 ;Allocation info for local variables in function 'set_app_error'
                                   1222 ;------------------------------------------------------------
                                   1223 ;ec                        Allocated to registers 
                                   1224 ;------------------------------------------------------------
                           000015  1225 	G$set_app_error$0$0 ==.
                           000015  1226 	C$main.c$67$1$158 ==.
                                   1227 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:67: void set_app_error(APP_ERROR_CODE ec)
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function set_app_error
                                   1230 ;	-----------------------------------------
      0000A4                       1231 _set_app_error:
      0000A4 E5 82            [12] 1232 	mov	a,dpl
      0000A6 90 00 01         [24] 1233 	mov	dptr,#_error
      0000A9 F0               [24] 1234 	movx	@dptr,a
                           00001B  1235 	C$main.c$69$1$160 ==.
                                   1236 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:69: error = ec;
                           00001B  1237 	C$main.c$70$1$160 ==.
                           00001B  1238 	XG$set_app_error$0$0 ==.
      0000AA 22               [24] 1239 	ret
                                   1240 ;------------------------------------------------------------
                                   1241 ;Allocation info for local variables in function 'get_app_error'
                                   1242 ;------------------------------------------------------------
                           00001C  1243 	G$get_app_error$0$0 ==.
                           00001C  1244 	C$main.c$72$1$160 ==.
                                   1245 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:72: uint8_t get_app_error()
                                   1246 ;	-----------------------------------------
                                   1247 ;	 function get_app_error
                                   1248 ;	-----------------------------------------
      0000AB                       1249 _get_app_error:
                           00001C  1250 	C$main.c$74$1$161 ==.
                                   1251 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:74: return error;
      0000AB 90 00 01         [24] 1252 	mov	dptr,#_error
      0000AE E0               [24] 1253 	movx	a,@dptr
                           000020  1254 	C$main.c$75$1$161 ==.
                           000020  1255 	XG$get_app_error$0$0 ==.
      0000AF F5 82            [12] 1256 	mov	dpl,a
      0000B1 22               [24] 1257 	ret
                                   1258 ;------------------------------------------------------------
                                   1259 ;Allocation info for local variables in function 'get_app_state'
                                   1260 ;------------------------------------------------------------
                           000023  1261 	G$get_app_state$0$0 ==.
                           000023  1262 	C$main.c$77$1$161 ==.
                                   1263 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:77: uint8_t get_app_state()
                                   1264 ;	-----------------------------------------
                                   1265 ;	 function get_app_state
                                   1266 ;	-----------------------------------------
      0000B2                       1267 _get_app_state:
                           000023  1268 	C$main.c$79$1$162 ==.
                                   1269 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:79: return state;
      0000B2 90 00 02         [24] 1270 	mov	dptr,#_state
      0000B5 E0               [24] 1271 	movx	a,@dptr
                           000027  1272 	C$main.c$80$1$162 ==.
                           000027  1273 	XG$get_app_state$0$0 ==.
      0000B6 F5 82            [12] 1274 	mov	dpl,a
      0000B8 22               [24] 1275 	ret
                                   1276 ;------------------------------------------------------------
                                   1277 ;Allocation info for local variables in function 'set_app_state'
                                   1278 ;------------------------------------------------------------
                                   1279 ;s                         Allocated to registers 
                                   1280 ;------------------------------------------------------------
                           00002A  1281 	G$set_app_state$0$0 ==.
                           00002A  1282 	C$main.c$82$1$162 ==.
                                   1283 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:82: void set_app_state(APP_STATE s)
                                   1284 ;	-----------------------------------------
                                   1285 ;	 function set_app_state
                                   1286 ;	-----------------------------------------
      0000B9                       1287 _set_app_state:
      0000B9 E5 82            [12] 1288 	mov	a,dpl
      0000BB 90 00 02         [24] 1289 	mov	dptr,#_state
      0000BE F0               [24] 1290 	movx	@dptr,a
                           000030  1291 	C$main.c$84$1$164 ==.
                                   1292 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:84: state = s;
                           000030  1293 	C$main.c$85$1$164 ==.
                           000030  1294 	XG$set_app_state$0$0 ==.
      0000BF 22               [24] 1295 	ret
                                   1296 ;------------------------------------------------------------
                                   1297 ;Allocation info for local variables in function 'app_wink'
                                   1298 ;------------------------------------------------------------
                                   1299 ;c                         Allocated to registers 
                                   1300 ;------------------------------------------------------------
                           000031  1301 	G$app_wink$0$0 ==.
                           000031  1302 	C$main.c$87$1$164 ==.
                                   1303 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:87: void app_wink(uint32_t c)
                                   1304 ;	-----------------------------------------
                                   1305 ;	 function app_wink
                                   1306 ;	-----------------------------------------
      0000C0                       1307 _app_wink:
      0000C0 AF 82            [24] 1308 	mov	r7,dpl
      0000C2 AE 83            [24] 1309 	mov	r6,dph
      0000C4 AD F0            [24] 1310 	mov	r5,b
      0000C6 FC               [12] 1311 	mov	r4,a
      0000C7 90 00 03         [24] 1312 	mov	dptr,#_winkc
      0000CA EF               [12] 1313 	mov	a,r7
      0000CB F0               [24] 1314 	movx	@dptr,a
      0000CC EE               [12] 1315 	mov	a,r6
      0000CD A3               [24] 1316 	inc	dptr
      0000CE F0               [24] 1317 	movx	@dptr,a
      0000CF ED               [12] 1318 	mov	a,r5
      0000D0 A3               [24] 1319 	inc	dptr
      0000D1 F0               [24] 1320 	movx	@dptr,a
      0000D2 EC               [12] 1321 	mov	a,r4
      0000D3 A3               [24] 1322 	inc	dptr
      0000D4 F0               [24] 1323 	movx	@dptr,a
                           000046  1324 	C$main.c$91$1$166 ==.
                                   1325 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:91: set_app_state(APP_WINK);
      0000D5 75 82 02         [24] 1326 	mov	dpl,#0x02
      0000D8 12 00 B9         [24] 1327 	lcall	_set_app_state
                           00004C  1328 	C$main.c$93$1$166 ==.
                           00004C  1329 	XG$app_wink$0$0 ==.
      0000DB 22               [24] 1330 	ret
                                   1331 ;------------------------------------------------------------
                                   1332 ;Allocation info for local variables in function 'set_app_u2f_hid_msg'
                                   1333 ;------------------------------------------------------------
                                   1334 ;msg                       Allocated to registers r5 r6 r7 
                                   1335 ;------------------------------------------------------------
                           00004D  1336 	G$set_app_u2f_hid_msg$0$0 ==.
                           00004D  1337 	C$main.c$95$1$166 ==.
                                   1338 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:95: void set_app_u2f_hid_msg(struct u2f_hid_msg * msg ){
                                   1339 ;	-----------------------------------------
                                   1340 ;	 function set_app_u2f_hid_msg
                                   1341 ;	-----------------------------------------
      0000DC                       1342 _set_app_u2f_hid_msg:
      0000DC AD 82            [24] 1343 	mov	r5,dpl
      0000DE AE 83            [24] 1344 	mov	r6,dph
      0000E0 AF F0            [24] 1345 	mov	r7,b
                           000053  1346 	C$main.c$96$1$168 ==.
                                   1347 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:96: state = APP_HID_MSG;
      0000E2 90 00 02         [24] 1348 	mov	dptr,#_state
      0000E5 74 01            [12] 1349 	mov	a,#0x01
      0000E7 F0               [24] 1350 	movx	@dptr,a
                           000059  1351 	C$main.c$97$1$168 ==.
                                   1352 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:97: hid_msg = msg;
      0000E8 90 00 07         [24] 1353 	mov	dptr,#_hid_msg
      0000EB ED               [12] 1354 	mov	a,r5
      0000EC F0               [24] 1355 	movx	@dptr,a
      0000ED EE               [12] 1356 	mov	a,r6
      0000EE A3               [24] 1357 	inc	dptr
      0000EF F0               [24] 1358 	movx	@dptr,a
      0000F0 EF               [12] 1359 	mov	a,r7
      0000F1 A3               [24] 1360 	inc	dptr
      0000F2 F0               [24] 1361 	movx	@dptr,a
                           000064  1362 	C$main.c$98$1$168 ==.
                           000064  1363 	XG$set_app_u2f_hid_msg$0$0 ==.
      0000F3 22               [24] 1364 	ret
                                   1365 ;------------------------------------------------------------
                                   1366 ;Allocation info for local variables in function 'rgb'
                                   1367 ;------------------------------------------------------------
                                   1368 ;g                         Allocated to stack - _bp -3
                                   1369 ;b                         Allocated to stack - _bp -4
                                   1370 ;r                         Allocated to registers r7 
                                   1371 ;------------------------------------------------------------
                           000065  1372 	G$rgb$0$0 ==.
                           000065  1373 	C$main.c$102$1$168 ==.
                                   1374 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:102: void rgb(uint8_t r, uint8_t g, uint8_t b)
                                   1375 ;	-----------------------------------------
                                   1376 ;	 function rgb
                                   1377 ;	-----------------------------------------
      0000F4                       1378 _rgb:
      0000F4 C0 1B            [24] 1379 	push	_bp
      0000F6 85 81 1B         [24] 1380 	mov	_bp,sp
                           00006A  1381 	C$main.c$105$1$170 ==.
                                   1382 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:105: if (r)
      0000F9 E5 82            [12] 1383 	mov	a,dpl
      0000FB FF               [12] 1384 	mov	r7,a
      0000FC 60 05            [24] 1385 	jz	00102$
                           00006F  1386 	C$main.c$107$2$171 ==.
                                   1387 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:107: PCA0CPM2 |= PCA0CPM2_PWM__ENABLED;
      0000FE 43 DC 02         [24] 1388 	orl	_PCA0CPM2,#0x02
      000101 80 03            [24] 1389 	sjmp	00103$
      000103                       1390 00102$:
                           000074  1391 	C$main.c$112$2$172 ==.
                                   1392 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:112: PCA0CPM2 &= ~PCA0CPM2_PWM__ENABLED;
      000103 53 DC FD         [24] 1393 	anl	_PCA0CPM2,#0xfd
      000106                       1394 00103$:
                           000077  1395 	C$main.c$115$1$170 ==.
                                   1396 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:115: if (b)
      000106 E5 1B            [12] 1397 	mov	a,_bp
      000108 24 FC            [12] 1398 	add	a,#0xfc
      00010A F8               [12] 1399 	mov	r0,a
      00010B E6               [12] 1400 	mov	a,@r0
      00010C 60 05            [24] 1401 	jz	00105$
                           00007F  1402 	C$main.c$117$2$173 ==.
                                   1403 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:117: PCA0CPM0 |= PCA0CPM0_PWM__ENABLED;
      00010E 43 DA 02         [24] 1404 	orl	_PCA0CPM0,#0x02
      000111 80 03            [24] 1405 	sjmp	00106$
      000113                       1406 00105$:
                           000084  1407 	C$main.c$122$2$174 ==.
                                   1408 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:122: PCA0CPM0 &= ~PCA0CPM0_PWM__ENABLED;
      000113 53 DA FD         [24] 1409 	anl	_PCA0CPM0,#0xfd
      000116                       1410 00106$:
                           000087  1411 	C$main.c$125$1$170 ==.
                                   1412 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:125: if (g)
      000116 E5 1B            [12] 1413 	mov	a,_bp
      000118 24 FD            [12] 1414 	add	a,#0xfd
      00011A F8               [12] 1415 	mov	r0,a
      00011B E6               [12] 1416 	mov	a,@r0
      00011C 60 05            [24] 1417 	jz	00108$
                           00008F  1418 	C$main.c$127$2$175 ==.
                                   1419 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:127: PCA0CPM1 |= PCA0CPM1_PWM__ENABLED;
      00011E 43 DB 02         [24] 1420 	orl	_PCA0CPM1,#0x02
      000121 80 03            [24] 1421 	sjmp	00110$
      000123                       1422 00108$:
                           000094  1423 	C$main.c$132$2$176 ==.
                                   1424 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:132: PCA0CPM1 &= ~PCA0CPM1_PWM__ENABLED;
      000123 53 DB FD         [24] 1425 	anl	_PCA0CPM1,#0xfd
      000126                       1426 00110$:
      000126 D0 1B            [24] 1427 	pop	_bp
                           000099  1428 	C$main.c$135$1$170 ==.
                           000099  1429 	XG$rgb$0$0 ==.
      000128 22               [24] 1430 	ret
                                   1431 ;------------------------------------------------------------
                                   1432 ;Allocation info for local variables in function 'main'
                                   1433 ;------------------------------------------------------------
                                   1434 ;ms_heart                  Allocated to stack - _bp +10
                                   1435 ;ms_wink                   Allocated to stack - _bp +12
                                   1436 ;ms_grad                   Allocated to stack - _bp +14
                                   1437 ;winks                     Allocated to stack - _bp +16
                                   1438 ;light                     Allocated to stack - _bp +17
                                   1439 ;grad_dir                  Allocated to stack - _bp +18
                                   1440 ;grad_inc                  Allocated to registers 
                                   1441 ;ii                        Allocated to stack - _bp +11
                                   1442 ;i                         Allocated to stack - _bp +12
                                   1443 ;clear                     Allocated to stack - _bp +19
                                   1444 ;i                         Allocated to registers r2 r3 r6 r7 
                                   1445 ;sloc0                     Allocated to stack - _bp +1
                                   1446 ;sloc1                     Allocated to stack - _bp +23
                                   1447 ;sloc2                     Allocated to stack - _bp +3
                                   1448 ;sloc3                     Allocated to stack - _bp +5
                                   1449 ;sloc4                     Allocated to stack - _bp +8
                                   1450 ;------------------------------------------------------------
                           00009A  1451 	G$main$0$0 ==.
                           00009A  1452 	C$main.c$140$1$170 ==.
                                   1453 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:140: int16_t main(void) {
                                   1454 ;	-----------------------------------------
                                   1455 ;	 function main
                                   1456 ;	-----------------------------------------
      000129                       1457 _main:
      000129 C0 1B            [24] 1458 	push	_bp
      00012B E5 81            [12] 1459 	mov	a,sp
      00012D F5 1B            [12] 1460 	mov	_bp,a
      00012F 24 15            [12] 1461 	add	a,#0x15
      000131 F5 81            [12] 1462 	mov	sp,a
                           0000A4  1463 	C$main.c$145$1$170 ==.
                                   1464 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:145: uint8_t winks = 0, light = 1, grad_dir = 0;
      000133 E5 1B            [12] 1465 	mov	a,_bp
      000135 24 10            [12] 1466 	add	a,#0x10
      000137 F8               [12] 1467 	mov	r0,a
      000138 76 00            [12] 1468 	mov	@r0,#0x00
      00013A E5 1B            [12] 1469 	mov	a,_bp
      00013C 24 11            [12] 1470 	add	a,#0x11
      00013E F8               [12] 1471 	mov	r0,a
      00013F 76 01            [12] 1472 	mov	@r0,#0x01
      000141 E5 1B            [12] 1473 	mov	a,_bp
      000143 24 12            [12] 1474 	add	a,#0x12
      000145 F8               [12] 1475 	mov	r0,a
      000146 76 00            [12] 1476 	mov	@r0,#0x00
                           0000B9  1477 	C$main.c$149$1$170 ==.
                                   1478 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:149: uint8_t * clear = 0;
      000148 E5 1B            [12] 1479 	mov	a,_bp
      00014A 24 13            [12] 1480 	add	a,#0x13
      00014C F8               [12] 1481 	mov	r0,a
      00014D E4               [12] 1482 	clr	a
      00014E F6               [12] 1483 	mov	@r0,a
      00014F 08               [12] 1484 	inc	r0
      000150 F6               [12] 1485 	mov	@r0,a
      000151 08               [12] 1486 	inc	r0
      000152 76 00            [12] 1487 	mov	@r0,#0x00
                           0000C5  1488 	C$main.c$152$1$178 ==.
                                   1489 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:152: enter_DefaultMode_from_RESET();
      000154 12 04 D2         [24] 1490 	lcall	_enter_DefaultMode_from_RESET
                           0000C8  1491 	C$main.c$159$1$178 ==.
                                   1492 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:159: WDTCN = 0xA5;
      000157 75 97 A5         [24] 1493 	mov	_WDTCN,#0xa5
                           0000CB  1494 	C$main.c$160$1$178 ==.
                                   1495 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:160: init(&appdata);
      00015A 90 00 21         [24] 1496 	mov	dptr,#_appdata
      00015D 75 F0 40         [24] 1497 	mov	b,#0x40
      000160 12 00 8F         [24] 1498 	lcall	_init
                           0000D4  1499 	C$main.c$162$1$178 ==.
                                   1500 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:162: IE_EA = 1;
      000163 D2 AF            [12] 1501 	setb	_IE_EA
                           0000D6  1502 	C$main.c$164$1$178 ==.
                                   1503 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:164: WDTCN = 0xA5;
      000165 75 97 A5         [24] 1504 	mov	_WDTCN,#0xa5
                           0000D9  1505 	C$main.c$166$1$178 ==.
                                   1506 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:166: u2f_prints("U2F ZERO\r\n");
      000168 90 5E 5E         [24] 1507 	mov	dptr,#___str_0
      00016B 75 F0 80         [24] 1508 	mov	b,#0x80
      00016E 12 1F 7C         [24] 1509 	lcall	_u2f_prints
                           0000E2  1510 	C$main.c$167$1$178 ==.
                                   1511 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:167: if (RSTSRC & RSTSRC_WDTRSF__SET)
      000171 E5 EF            [12] 1512 	mov	a,_RSTSRC
      000173 30 E3 06         [24] 1513 	jnb	acc.3,00148$
                           0000E7  1514 	C$main.c$169$2$179 ==.
                                   1515 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:169: error = ERROR_DAMN_WATCHDOG;
      000176 90 00 01         [24] 1516 	mov	dptr,#_error
      000179 74 19            [12] 1517 	mov	a,#0x19
      00017B F0               [24] 1518 	movx	@dptr,a
                           0000ED  1519 	C$main.c$174$1$178 ==.
                                   1520 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:174: while (1)
      00017C                       1521 00148$:
                           0000ED  1522 	C$main.c$177$2$180 ==.
                                   1523 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:177: watchdog();
      00017C 75 97 A5         [24] 1524 	mov	_WDTCN,#0xa5
                           0000F0  1525 	C$main.c$179$2$180 ==.
                                   1526 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:179: if (!USBD_EpIsBusy(EP1OUT) && !USBD_EpIsBusy(EP1IN) && state != APP_HID_MSG)
      00017F 75 82 02         [24] 1527 	mov	dpl,#0x02
      000182 12 25 8F         [24] 1528 	lcall	_USBD_EpIsBusy
      000185 40 35            [24] 1529 	jc	00104$
      000187 75 82 01         [24] 1530 	mov	dpl,#0x01
      00018A 12 25 8F         [24] 1531 	lcall	_USBD_EpIsBusy
      00018D 40 2D            [24] 1532 	jc	00104$
      00018F 90 00 02         [24] 1533 	mov	dptr,#_state
      000192 E0               [24] 1534 	movx	a,@dptr
      000193 FD               [12] 1535 	mov	r5,a
      000194 BD 01 02         [24] 1536 	cjne	r5,#0x01,00256$
      000197 80 23            [24] 1537 	sjmp	00104$
      000199                       1538 00256$:
                           00010A  1539 	C$main.c$181$3$181 ==.
                                   1540 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:181: USBD_Read(EP1OUT, hidmsgbuf, sizeof(hidmsgbuf), true);
      000199 74 40            [12] 1541 	mov	a,#0x40
      00019B C0 E0            [24] 1542 	push	acc
      00019D E4               [12] 1543 	clr	a
      00019E C0 E0            [24] 1544 	push	acc
      0001A0 74 18            [12] 1545 	mov	a,#_hidmsgbuf
      0001A2 C0 E0            [24] 1546 	push	acc
      0001A4 74 02            [12] 1547 	mov	a,#(_hidmsgbuf >> 8)
      0001A6 C0 E0            [24] 1548 	push	acc
      0001A8 E4               [12] 1549 	clr	a
      0001A9 C0 E0            [24] 1550 	push	acc
      0001AB D2 F0            [12] 1551 	setb	b[0]
      0001AD 85 F0 20         [24] 1552 	mov	bits,b
      0001B0 75 82 02         [24] 1553 	mov	dpl,#0x02
      0001B3 12 26 CA         [24] 1554 	lcall	_USBD_Read
      0001B6 E5 81            [12] 1555 	mov	a,sp
      0001B8 24 FB            [12] 1556 	add	a,#0xfb
      0001BA F5 81            [12] 1557 	mov	sp,a
      0001BC                       1558 00104$:
                           00012D  1559 	C$main.c$183$2$180 ==.
                                   1560 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:183: u2f_hid_check_timeouts();
      0001BC 12 12 0B         [24] 1561 	lcall	_u2f_hid_check_timeouts
                           000130  1562 	C$main.c$185$2$180 ==.
                                   1563 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:185: switch(state)
      0001BF 90 00 02         [24] 1564 	mov	dptr,#_state
      0001C2 E0               [24] 1565 	movx	a,@dptr
      0001C3 FD               [12] 1566 	mov  r5,a
      0001C4 24 FC            [12] 1567 	add	a,#0xff - 0x03
      0001C6 50 03            [24] 1568 	jnc	00257$
      0001C8 02 03 AF         [24] 1569 	ljmp	00138$
      0001CB                       1570 00257$:
      0001CB ED               [12] 1571 	mov	a,r5
      0001CC 2D               [12] 1572 	add	a,r5
      0001CD 2D               [12] 1573 	add	a,r5
      0001CE 90 01 D2         [24] 1574 	mov	dptr,#00258$
      0001D1 73               [24] 1575 	jmp	@a+dptr
      0001D2                       1576 00258$:
      0001D2 02 01 DE         [24] 1577 	ljmp	00107$
      0001D5 02 02 BA         [24] 1578 	ljmp	00124$
      0001D8 02 02 E3         [24] 1579 	ljmp	00129$
      0001DB 02 03 1D         [24] 1580 	ljmp	00130$
                           00014F  1581 	C$main.c$187$3$182 ==.
                                   1582 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:187: case APP_NOTHING:
      0001DE                       1583 00107$:
                           00014F  1584 	C$main.c$189$3$182 ==.
                                   1585 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:189: if (ms_since(ms_grad, 150))
      0001DE AC 08            [24] 1586 	mov	r4,__MS_
      0001E0 AD 09            [24] 1587 	mov	r5,(__MS_ + 1)
      0001E2 A8 1B            [24] 1588 	mov	r0,_bp
      0001E4 08               [12] 1589 	inc	r0
      0001E5 EC               [12] 1590 	mov	a,r4
      0001E6 C3               [12] 1591 	clr	c
      0001E7 96               [12] 1592 	subb	a,@r0
      0001E8 FA               [12] 1593 	mov	r2,a
      0001E9 ED               [12] 1594 	mov	a,r5
      0001EA 08               [12] 1595 	inc	r0
      0001EB 96               [12] 1596 	subb	a,@r0
      0001EC FB               [12] 1597 	mov	r3,a
      0001ED C3               [12] 1598 	clr	c
      0001EE EA               [12] 1599 	mov	a,r2
      0001EF 94 96            [12] 1600 	subb	a,#0x96
      0001F1 EB               [12] 1601 	mov	a,r3
      0001F2 94 00            [12] 1602 	subb	a,#0x00
      0001F4 92 00            [24] 1603 	mov	b0,c
      0001F6 40 10            [24] 1604 	jc	00160$
      0001F8 A8 1B            [24] 1605 	mov	r0,_bp
      0001FA 08               [12] 1606 	inc	r0
      0001FB A6 04            [24] 1607 	mov	@r0,ar4
      0001FD 08               [12] 1608 	inc	r0
      0001FE A6 05            [24] 1609 	mov	@r0,ar5
      000200 EC               [12] 1610 	mov	a,r4
      000201 4D               [12] 1611 	orl	a,r5
      000202 24 FF            [12] 1612 	add	a,#0xff
      000204 92 00            [24] 1613 	mov	b0,c
      000206 80 02            [24] 1614 	sjmp	00161$
      000208                       1615 00160$:
      000208 C2 00            [12] 1616 	clr	b0
      00020A                       1617 00161$:
      00020A 20 00 03         [24] 1618 	jb	b0,00260$
      00020D 02 03 AF         [24] 1619 	ljmp	00138$
      000210                       1620 00260$:
                           000181  1621 	C$main.c$191$4$183 ==.
                                   1622 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:191: if (light == 16)
      000210 E5 1B            [12] 1623 	mov	a,_bp
      000212 24 11            [12] 1624 	add	a,#0x11
      000214 F8               [12] 1625 	mov	r0,a
      000215 B6 10 09         [24] 1626 	cjne	@r0,#0x10,00111$
                           000189  1627 	C$main.c$193$5$184 ==.
                                   1628 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:193: grad_dir = 0;
      000218 E5 1B            [12] 1629 	mov	a,_bp
      00021A 24 12            [12] 1630 	add	a,#0x12
      00021C F8               [12] 1631 	mov	r0,a
      00021D 76 00            [12] 1632 	mov	@r0,#0x00
      00021F 80 0F            [24] 1633 	sjmp	00112$
      000221                       1634 00111$:
                           000192  1635 	C$main.c$195$4$183 ==.
                                   1636 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:195: else if (light == 1)
      000221 E5 1B            [12] 1637 	mov	a,_bp
      000223 24 11            [12] 1638 	add	a,#0x11
      000225 F8               [12] 1639 	mov	r0,a
      000226 B6 01 07         [24] 1640 	cjne	@r0,#0x01,00112$
                           00019A  1641 	C$main.c$197$5$185 ==.
                                   1642 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:197: grad_dir = 1;
      000229 E5 1B            [12] 1643 	mov	a,_bp
      00022B 24 12            [12] 1644 	add	a,#0x12
      00022D F8               [12] 1645 	mov	r0,a
      00022E 76 01            [12] 1646 	mov	@r0,#0x01
      000230                       1647 00112$:
                           0001A1  1648 	C$main.c$199$4$183 ==.
                                   1649 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:199: if (grad_dir)
      000230 E5 1B            [12] 1650 	mov	a,_bp
      000232 24 12            [12] 1651 	add	a,#0x12
      000234 F8               [12] 1652 	mov	r0,a
      000235 E6               [12] 1653 	mov	a,@r0
      000236 60 41            [24] 1654 	jz	00120$
                           0001A9  1655 	C$main.c$200$4$183 ==.
                                   1656 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:200: if (U2F_BUTTON_IS_PRESSED())
      000238 20 95 1F         [24] 1657 	jb	_U2F_BUTTON,00114$
                           0001AC  1658 	C$main.c$201$4$183 ==.
                                   1659 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:201: rgb(0,0,light++);
      00023B E5 1B            [12] 1660 	mov	a,_bp
      00023D 24 11            [12] 1661 	add	a,#0x11
      00023F F8               [12] 1662 	mov	r0,a
      000240 86 05            [24] 1663 	mov	ar5,@r0
      000242 E5 1B            [12] 1664 	mov	a,_bp
      000244 24 11            [12] 1665 	add	a,#0x11
      000246 F8               [12] 1666 	mov	r0,a
      000247 06               [12] 1667 	inc	@r0
      000248 C0 05            [24] 1668 	push	ar5
      00024A E4               [12] 1669 	clr	a
      00024B C0 E0            [24] 1670 	push	acc
      00024D 75 82 00         [24] 1671 	mov	dpl,#0x00
      000250 12 00 F4         [24] 1672 	lcall	_rgb
      000253 15 81            [12] 1673 	dec	sp
      000255 15 81            [12] 1674 	dec	sp
      000257 02 03 AF         [24] 1675 	ljmp	00138$
      00025A                       1676 00114$:
                           0001CB  1677 	C$main.c$203$4$183 ==.
                                   1678 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:203: rgb(0,light++,0);
      00025A E5 1B            [12] 1679 	mov	a,_bp
      00025C 24 11            [12] 1680 	add	a,#0x11
      00025E F8               [12] 1681 	mov	r0,a
      00025F 86 05            [24] 1682 	mov	ar5,@r0
      000261 E5 1B            [12] 1683 	mov	a,_bp
      000263 24 11            [12] 1684 	add	a,#0x11
      000265 F8               [12] 1685 	mov	r0,a
      000266 06               [12] 1686 	inc	@r0
      000267 E4               [12] 1687 	clr	a
      000268 C0 E0            [24] 1688 	push	acc
      00026A C0 05            [24] 1689 	push	ar5
      00026C 75 82 00         [24] 1690 	mov	dpl,#0x00
      00026F 12 00 F4         [24] 1691 	lcall	_rgb
      000272 15 81            [12] 1692 	dec	sp
      000274 15 81            [12] 1693 	dec	sp
      000276 02 03 AF         [24] 1694 	ljmp	00138$
      000279                       1695 00120$:
                           0001EA  1696 	C$main.c$205$4$183 ==.
                                   1697 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:205: if (U2F_BUTTON_IS_PRESSED())
      000279 20 95 1F         [24] 1698 	jb	_U2F_BUTTON,00117$
                           0001ED  1699 	C$main.c$206$4$183 ==.
                                   1700 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:206: rgb(0,0,light--);
      00027C E5 1B            [12] 1701 	mov	a,_bp
      00027E 24 11            [12] 1702 	add	a,#0x11
      000280 F8               [12] 1703 	mov	r0,a
      000281 86 05            [24] 1704 	mov	ar5,@r0
      000283 E5 1B            [12] 1705 	mov	a,_bp
      000285 24 11            [12] 1706 	add	a,#0x11
      000287 F8               [12] 1707 	mov	r0,a
      000288 16               [12] 1708 	dec	@r0
      000289 C0 05            [24] 1709 	push	ar5
      00028B E4               [12] 1710 	clr	a
      00028C C0 E0            [24] 1711 	push	acc
      00028E 75 82 00         [24] 1712 	mov	dpl,#0x00
      000291 12 00 F4         [24] 1713 	lcall	_rgb
      000294 15 81            [12] 1714 	dec	sp
      000296 15 81            [12] 1715 	dec	sp
      000298 02 03 AF         [24] 1716 	ljmp	00138$
      00029B                       1717 00117$:
                           00020C  1718 	C$main.c$208$4$183 ==.
                                   1719 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:208: rgb(0,light--,0);
      00029B E5 1B            [12] 1720 	mov	a,_bp
      00029D 24 11            [12] 1721 	add	a,#0x11
      00029F F8               [12] 1722 	mov	r0,a
      0002A0 86 05            [24] 1723 	mov	ar5,@r0
      0002A2 E5 1B            [12] 1724 	mov	a,_bp
      0002A4 24 11            [12] 1725 	add	a,#0x11
      0002A6 F8               [12] 1726 	mov	r0,a
      0002A7 16               [12] 1727 	dec	@r0
      0002A8 E4               [12] 1728 	clr	a
      0002A9 C0 E0            [24] 1729 	push	acc
      0002AB C0 05            [24] 1730 	push	ar5
      0002AD 75 82 00         [24] 1731 	mov	dpl,#0x00
      0002B0 12 00 F4         [24] 1732 	lcall	_rgb
      0002B3 15 81            [12] 1733 	dec	sp
      0002B5 15 81            [12] 1734 	dec	sp
                           000228  1735 	C$main.c$210$3$182 ==.
                                   1736 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:210: break;
      0002B7 02 03 AF         [24] 1737 	ljmp	00138$
                           00022B  1738 	C$main.c$211$3$182 ==.
                                   1739 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:211: case APP_HID_MSG:
      0002BA                       1740 00124$:
                           00022B  1741 	C$main.c$213$3$182 ==.
                                   1742 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:213: if (custom_command(hid_msg))
      0002BA 90 00 07         [24] 1743 	mov	dptr,#_hid_msg
      0002BD E0               [24] 1744 	movx	a,@dptr
      0002BE FB               [12] 1745 	mov	r3,a
      0002BF A3               [24] 1746 	inc	dptr
      0002C0 E0               [24] 1747 	movx	a,@dptr
      0002C1 FC               [12] 1748 	mov	r4,a
      0002C2 A3               [24] 1749 	inc	dptr
      0002C3 E0               [24] 1750 	movx	a,@dptr
      0002C4 FD               [12] 1751 	mov	r5,a
      0002C5 8B 82            [24] 1752 	mov	dpl,r3
      0002C7 8C 83            [24] 1753 	mov	dph,r4
      0002C9 8D F0            [24] 1754 	mov	b,r5
      0002CB 12 42 22         [24] 1755 	lcall	_custom_command
                           00023F  1756 	C$main.c$222$3$182 ==.
                                   1757 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:222: if (state == APP_HID_MSG)
      0002CE 90 00 02         [24] 1758 	mov	dptr,#_state
      0002D1 E0               [24] 1759 	movx	a,@dptr
      0002D2 FD               [12] 1760 	mov	r5,a
      0002D3 BD 01 02         [24] 1761 	cjne	r5,#0x01,00268$
      0002D6 80 03            [24] 1762 	sjmp	00269$
      0002D8                       1763 00268$:
      0002D8 02 03 AF         [24] 1764 	ljmp	00138$
      0002DB                       1765 00269$:
                           00024C  1766 	C$main.c$223$3$182 ==.
                                   1767 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:223: state = APP_NOTHING;
      0002DB 90 00 02         [24] 1768 	mov	dptr,#_state
      0002DE E4               [12] 1769 	clr	a
      0002DF F0               [24] 1770 	movx	@dptr,a
                           000251  1771 	C$main.c$224$3$182 ==.
                                   1772 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:224: break;
      0002E0 02 03 AF         [24] 1773 	ljmp	00138$
                           000254  1774 	C$main.c$226$3$182 ==.
                                   1775 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:226: case APP_WINK:
      0002E3                       1776 00129$:
                           000254  1777 	C$main.c$228$1$178 ==.
                                   1778 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:228: rgb_hex(winkc);
      0002E3 90 00 03         [24] 1779 	mov	dptr,#_winkc
      0002E6 E0               [24] 1780 	movx	a,@dptr
      0002E7 FA               [12] 1781 	mov	r2,a
      0002E8 A3               [24] 1782 	inc	dptr
      0002E9 E0               [24] 1783 	movx	a,@dptr
      0002EA FB               [12] 1784 	mov	r3,a
      0002EB A3               [24] 1785 	inc	dptr
      0002EC E0               [24] 1786 	movx	a,@dptr
      0002ED FC               [12] 1787 	mov	r4,a
      0002EE A3               [24] 1788 	inc	dptr
      0002EF E0               [24] 1789 	movx	a,@dptr
      0002F0 8C 07            [24] 1790 	mov	ar7,r4
      0002F2 8F 06            [24] 1791 	mov	ar6,r7
      0002F4 8B 07            [24] 1792 	mov	ar7,r3
      0002F6 C0 06            [24] 1793 	push	ar6
      0002F8 C0 07            [24] 1794 	push	ar7
      0002FA 8A 82            [24] 1795 	mov	dpl,r2
      0002FC 12 00 F4         [24] 1796 	lcall	_rgb
      0002FF 15 81            [12] 1797 	dec	sp
      000301 15 81            [12] 1798 	dec	sp
                           000274  1799 	C$main.c$229$3$182 ==.
                                   1800 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:229: light = 1;
      000303 E5 1B            [12] 1801 	mov	a,_bp
      000305 24 11            [12] 1802 	add	a,#0x11
      000307 F8               [12] 1803 	mov	r0,a
      000308 76 01            [12] 1804 	mov	@r0,#0x01
                           00027B  1805 	C$main.c$230$3$182 ==.
                                   1806 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:230: ms_wink = get_ms();
      00030A E5 1B            [12] 1807 	mov	a,_bp
      00030C 24 03            [12] 1808 	add	a,#0x03
      00030E F8               [12] 1809 	mov	r0,a
      00030F A6 08            [24] 1810 	mov	@r0,__MS_
      000311 08               [12] 1811 	inc	r0
      000312 A6 09            [24] 1812 	mov	@r0,(__MS_ + 1)
                           000285  1813 	C$main.c$231$3$182 ==.
                                   1814 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:231: state = _APP_WINK;
      000314 90 00 02         [24] 1815 	mov	dptr,#_state
      000317 74 03            [12] 1816 	mov	a,#0x03
      000319 F0               [24] 1817 	movx	@dptr,a
                           00028B  1818 	C$main.c$232$1$178 ==.
                                   1819 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:232: break;
      00031A 02 03 AF         [24] 1820 	ljmp	00138$
                           00028E  1821 	C$main.c$233$3$182 ==.
                                   1822 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:233: case _APP_WINK:
      00031D                       1823 00130$:
                           00028E  1824 	C$main.c$235$3$182 ==.
                                   1825 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:235: if (ms_since(ms_wink,150))
      00031D AC 08            [24] 1826 	mov	r4,__MS_
      00031F AD 09            [24] 1827 	mov	r5,(__MS_ + 1)
      000321 E5 1B            [12] 1828 	mov	a,_bp
      000323 24 03            [12] 1829 	add	a,#0x03
      000325 F8               [12] 1830 	mov	r0,a
      000326 EC               [12] 1831 	mov	a,r4
      000327 C3               [12] 1832 	clr	c
      000328 96               [12] 1833 	subb	a,@r0
      000329 FA               [12] 1834 	mov	r2,a
      00032A ED               [12] 1835 	mov	a,r5
      00032B 08               [12] 1836 	inc	r0
      00032C 96               [12] 1837 	subb	a,@r0
      00032D FB               [12] 1838 	mov	r3,a
      00032E C3               [12] 1839 	clr	c
      00032F EA               [12] 1840 	mov	a,r2
      000330 94 96            [12] 1841 	subb	a,#0x96
      000332 EB               [12] 1842 	mov	a,r3
      000333 94 00            [12] 1843 	subb	a,#0x00
      000335 92 00            [24] 1844 	mov	b0,c
      000337 40 12            [24] 1845 	jc	00162$
      000339 E5 1B            [12] 1846 	mov	a,_bp
      00033B 24 03            [12] 1847 	add	a,#0x03
      00033D F8               [12] 1848 	mov	r0,a
      00033E A6 04            [24] 1849 	mov	@r0,ar4
      000340 08               [12] 1850 	inc	r0
      000341 A6 05            [24] 1851 	mov	@r0,ar5
      000343 EC               [12] 1852 	mov	a,r4
      000344 4D               [12] 1853 	orl	a,r5
      000345 24 FF            [12] 1854 	add	a,#0xff
      000347 92 00            [24] 1855 	mov	b0,c
      000349 80 02            [24] 1856 	sjmp	00163$
      00034B                       1857 00162$:
      00034B C2 00            [12] 1858 	clr	b0
      00034D                       1859 00163$:
      00034D 30 00 4B         [24] 1860 	jnb	b0,00135$
                           0002C1  1861 	C$main.c$237$4$188 ==.
                                   1862 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:237: if (light)
      000350 E5 1B            [12] 1863 	mov	a,_bp
      000352 24 11            [12] 1864 	add	a,#0x11
      000354 F8               [12] 1865 	mov	r0,a
      000355 E6               [12] 1866 	mov	a,@r0
      000356 60 27            [24] 1867 	jz	00132$
                           0002C9  1868 	C$main.c$239$1$178 ==.
                                   1869 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:239: light = 0;
      000358 E5 1B            [12] 1870 	mov	a,_bp
      00035A 24 11            [12] 1871 	add	a,#0x11
      00035C F8               [12] 1872 	mov	r0,a
      00035D 76 00            [12] 1873 	mov	@r0,#0x00
                           0002D0  1874 	C$main.c$240$5$189 ==.
                                   1875 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:240: rgb_hex(winkc);
      00035F 90 00 03         [24] 1876 	mov	dptr,#_winkc
      000362 E0               [24] 1877 	movx	a,@dptr
      000363 FA               [12] 1878 	mov	r2,a
      000364 A3               [24] 1879 	inc	dptr
      000365 E0               [24] 1880 	movx	a,@dptr
      000366 FB               [12] 1881 	mov	r3,a
      000367 A3               [24] 1882 	inc	dptr
      000368 E0               [24] 1883 	movx	a,@dptr
      000369 FC               [12] 1884 	mov	r4,a
      00036A A3               [24] 1885 	inc	dptr
      00036B E0               [24] 1886 	movx	a,@dptr
      00036C 8C 07            [24] 1887 	mov	ar7,r4
      00036E 8B 06            [24] 1888 	mov	ar6,r3
      000370 C0 07            [24] 1889 	push	ar7
      000372 C0 06            [24] 1890 	push	ar6
      000374 8A 82            [24] 1891 	mov	dpl,r2
      000376 12 00 F4         [24] 1892 	lcall	_rgb
      000379 15 81            [12] 1893 	dec	sp
      00037B 15 81            [12] 1894 	dec	sp
      00037D 80 16            [24] 1895 	sjmp	00133$
      00037F                       1896 00132$:
                           0002F0  1897 	C$main.c$244$5$190 ==.
                                   1898 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:244: light = 1;
      00037F E5 1B            [12] 1899 	mov	a,_bp
      000381 24 11            [12] 1900 	add	a,#0x11
      000383 F8               [12] 1901 	mov	r0,a
      000384 76 01            [12] 1902 	mov	@r0,#0x01
                           0002F7  1903 	C$main.c$245$5$190 ==.
                                   1904 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:245: rgb_hex(0);
      000386 E4               [12] 1905 	clr	a
      000387 C0 E0            [24] 1906 	push	acc
      000389 C0 E0            [24] 1907 	push	acc
      00038B 75 82 00         [24] 1908 	mov	dpl,#0x00
      00038E 12 00 F4         [24] 1909 	lcall	_rgb
      000391 15 81            [12] 1910 	dec	sp
      000393 15 81            [12] 1911 	dec	sp
      000395                       1912 00133$:
                           000306  1913 	C$main.c$247$4$188 ==.
                                   1914 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:247: winks++;
      000395 E5 1B            [12] 1915 	mov	a,_bp
      000397 24 10            [12] 1916 	add	a,#0x10
      000399 F8               [12] 1917 	mov	r0,a
      00039A 06               [12] 1918 	inc	@r0
      00039B                       1919 00135$:
                           00030C  1920 	C$main.c$249$3$182 ==.
                                   1921 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:249: if (winks == 5)
      00039B E5 1B            [12] 1922 	mov	a,_bp
      00039D 24 10            [12] 1923 	add	a,#0x10
      00039F F8               [12] 1924 	mov	r0,a
      0003A0 B6 05 0C         [24] 1925 	cjne	@r0,#0x05,00138$
                           000314  1926 	C$main.c$251$4$191 ==.
                                   1927 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:251: winks = 0;
      0003A3 E5 1B            [12] 1928 	mov	a,_bp
      0003A5 24 10            [12] 1929 	add	a,#0x10
      0003A7 F8               [12] 1930 	mov	r0,a
      0003A8 76 00            [12] 1931 	mov	@r0,#0x00
                           00031B  1932 	C$main.c$252$4$191 ==.
                                   1933 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:252: state = APP_NOTHING;
      0003AA 90 00 02         [24] 1934 	mov	dptr,#_state
      0003AD E4               [12] 1935 	clr	a
      0003AE F0               [24] 1936 	movx	@dptr,a
                           000320  1937 	C$main.c$256$2$180 ==.
                                   1938 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:256: }
      0003AF                       1939 00138$:
                           000320  1940 	C$main.c$257$2$180 ==.
                                   1941 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:257: if (error)
      0003AF 90 00 01         [24] 1942 	mov	dptr,#_error
      0003B2 E0               [24] 1943 	movx	a,@dptr
      0003B3 FE               [12] 1944 	mov	r6,a
      0003B4 E0               [24] 1945 	movx	a,@dptr
      0003B5 70 03            [24] 1946 	jnz	00275$
      0003B7 02 04 8C         [24] 1947 	ljmp	00144$
      0003BA                       1948 00275$:
                           00032B  1949 	C$main.c$259$3$192 ==.
                                   1950 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:259: u2f_printx("error: ", 1, (uint16_t)error);
      0003BA 7D 00            [12] 1951 	mov	r5,#0x00
      0003BC C0 06            [24] 1952 	push	ar6
      0003BE C0 05            [24] 1953 	push	ar5
      0003C0 74 01            [12] 1954 	mov	a,#0x01
      0003C2 C0 E0            [24] 1955 	push	acc
      0003C4 74 69            [12] 1956 	mov	a,#___str_1
      0003C6 C0 E0            [24] 1957 	push	acc
      0003C8 74 5E            [12] 1958 	mov	a,#(___str_1 >> 8)
      0003CA C0 E0            [24] 1959 	push	acc
      0003CC 74 80            [12] 1960 	mov	a,#0x80
      0003CE C0 E0            [24] 1961 	push	acc
      0003D0 12 23 3F         [24] 1962 	lcall	_u2f_printx
      0003D3 E5 81            [12] 1963 	mov	a,sp
      0003D5 24 FA            [12] 1964 	add	a,#0xfa
      0003D7 F5 81            [12] 1965 	mov	sp,a
                           00034A  1966 	C$main.c$277$3$192 ==.
                                   1967 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:277: rgb_hex(U2F_DEFAULT_COLOR_ERROR);
      0003D9 E4               [12] 1968 	clr	a
      0003DA C0 E0            [24] 1969 	push	acc
      0003DC C0 E0            [24] 1970 	push	acc
      0003DE 75 82 38         [24] 1971 	mov	dpl,#0x38
      0003E1 12 00 F4         [24] 1972 	lcall	_rgb
      0003E4 15 81            [12] 1973 	dec	sp
      0003E6 15 81            [12] 1974 	dec	sp
                           000359  1975 	C$main.c$279$1$178 ==.
                                   1976 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:279: for (i=0; i<0x400;i++)
      0003E8 E5 1B            [12] 1977 	mov	a,_bp
      0003EA 24 13            [12] 1978 	add	a,#0x13
      0003EC F8               [12] 1979 	mov	r0,a
      0003ED E5 1B            [12] 1980 	mov	a,_bp
      0003EF 24 05            [12] 1981 	add	a,#0x05
      0003F1 F9               [12] 1982 	mov	r1,a
      0003F2 E6               [12] 1983 	mov	a,@r0
      0003F3 F7               [12] 1984 	mov	@r1,a
      0003F4 08               [12] 1985 	inc	r0
      0003F5 09               [12] 1986 	inc	r1
      0003F6 E6               [12] 1987 	mov	a,@r0
      0003F7 F7               [12] 1988 	mov	@r1,a
      0003F8 08               [12] 1989 	inc	r0
      0003F9 09               [12] 1990 	inc	r1
      0003FA E6               [12] 1991 	mov	a,@r0
      0003FB F7               [12] 1992 	mov	@r1,a
      0003FC 7A 00            [12] 1993 	mov	r2,#0x00
      0003FE 7B 00            [12] 1994 	mov	r3,#0x00
      000400 7E 00            [12] 1995 	mov	r6,#0x00
      000402 7F 00            [12] 1996 	mov	r7,#0x00
      000404                       1997 00150$:
                           000375  1998 	C$main.c$281$4$193 ==.
                                   1999 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:281: *(clear++) = 0x0;
      000404 E5 1B            [12] 2000 	mov	a,_bp
      000406 24 05            [12] 2001 	add	a,#0x05
      000408 F8               [12] 2002 	mov	r0,a
      000409 86 82            [24] 2003 	mov	dpl,@r0
      00040B 08               [12] 2004 	inc	r0
      00040C 86 83            [24] 2005 	mov	dph,@r0
      00040E 08               [12] 2006 	inc	r0
      00040F 86 F0            [24] 2007 	mov	b,@r0
      000411 E4               [12] 2008 	clr	a
      000412 12 5A 48         [24] 2009 	lcall	__gptrput
      000415 A3               [24] 2010 	inc	dptr
      000416 18               [12] 2011 	dec	r0
      000417 18               [12] 2012 	dec	r0
      000418 A6 82            [24] 2013 	mov	@r0,dpl
      00041A 08               [12] 2014 	inc	r0
      00041B A6 83            [24] 2015 	mov	@r0,dph
                           00038E  2016 	C$main.c$282$4$193 ==.
                                   2017 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:282: watchdog();
      00041D 75 97 A5         [24] 2018 	mov	_WDTCN,#0xa5
                           000391  2019 	C$main.c$279$3$192 ==.
                                   2020 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:279: for (i=0; i<0x400;i++)
      000420 0A               [12] 2021 	inc	r2
      000421 BA 00 09         [24] 2022 	cjne	r2,#0x00,00276$
      000424 0B               [12] 2023 	inc	r3
      000425 BB 00 05         [24] 2024 	cjne	r3,#0x00,00276$
      000428 0E               [12] 2025 	inc	r6
      000429 BE 00 01         [24] 2026 	cjne	r6,#0x00,00276$
      00042C 0F               [12] 2027 	inc	r7
      00042D                       2028 00276$:
      00042D C3               [12] 2029 	clr	c
      00042E EB               [12] 2030 	mov	a,r3
      00042F 94 04            [12] 2031 	subb	a,#0x04
      000431 EE               [12] 2032 	mov	a,r6
      000432 94 00            [12] 2033 	subb	a,#0x00
      000434 EF               [12] 2034 	mov	a,r7
      000435 64 80            [12] 2035 	xrl	a,#0x80
      000437 94 80            [12] 2036 	subb	a,#0x80
      000439 40 C9            [24] 2037 	jc	00150$
                           0003AC  2038 	C$main.c$285$1$178 ==.
                                   2039 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:285: error = 0;
      00043B E5 1B            [12] 2040 	mov	a,_bp
      00043D 24 05            [12] 2041 	add	a,#0x05
      00043F F8               [12] 2042 	mov	r0,a
      000440 E5 1B            [12] 2043 	mov	a,_bp
      000442 24 13            [12] 2044 	add	a,#0x13
      000444 F9               [12] 2045 	mov	r1,a
      000445 E6               [12] 2046 	mov	a,@r0
      000446 F7               [12] 2047 	mov	@r1,a
      000447 08               [12] 2048 	inc	r0
      000448 09               [12] 2049 	inc	r1
      000449 E6               [12] 2050 	mov	a,@r0
      00044A F7               [12] 2051 	mov	@r1,a
      00044B 08               [12] 2052 	inc	r0
      00044C 09               [12] 2053 	inc	r1
      00044D E6               [12] 2054 	mov	a,@r0
      00044E F7               [12] 2055 	mov	@r1,a
      00044F 90 00 01         [24] 2056 	mov	dptr,#_error
      000452 E4               [12] 2057 	clr	a
      000453 F0               [24] 2058 	movx	@dptr,a
                           0003C5  2059 	C$main.c$286$3$192 ==.
                                   2060 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:286: while(!ms_since(ms_heart,500))
      000454                       2061 00140$:
      000454 AE 08            [24] 2062 	mov	r6,__MS_
      000456 AF 09            [24] 2063 	mov	r7,(__MS_ + 1)
      000458 E5 1B            [12] 2064 	mov	a,_bp
      00045A 24 08            [12] 2065 	add	a,#0x08
      00045C F8               [12] 2066 	mov	r0,a
      00045D EE               [12] 2067 	mov	a,r6
      00045E C3               [12] 2068 	clr	c
      00045F 96               [12] 2069 	subb	a,@r0
      000460 FC               [12] 2070 	mov	r4,a
      000461 EF               [12] 2071 	mov	a,r7
      000462 08               [12] 2072 	inc	r0
      000463 96               [12] 2073 	subb	a,@r0
      000464 FD               [12] 2074 	mov	r5,a
      000465 C3               [12] 2075 	clr	c
      000466 EC               [12] 2076 	mov	a,r4
      000467 94 F4            [12] 2077 	subb	a,#0xf4
      000469 ED               [12] 2078 	mov	a,r5
      00046A 94 01            [12] 2079 	subb	a,#0x01
      00046C 92 00            [24] 2080 	mov	b0,c
      00046E 40 12            [24] 2081 	jc	00164$
      000470 E5 1B            [12] 2082 	mov	a,_bp
      000472 24 08            [12] 2083 	add	a,#0x08
      000474 F8               [12] 2084 	mov	r0,a
      000475 A6 06            [24] 2085 	mov	@r0,ar6
      000477 08               [12] 2086 	inc	r0
      000478 A6 07            [24] 2087 	mov	@r0,ar7
      00047A EE               [12] 2088 	mov	a,r6
      00047B 4F               [12] 2089 	orl	a,r7
      00047C 24 FF            [12] 2090 	add	a,#0xff
      00047E 92 00            [24] 2091 	mov	b0,c
      000480 80 02            [24] 2092 	sjmp	00165$
      000482                       2093 00164$:
      000482 C2 00            [12] 2094 	clr	b0
      000484                       2095 00165$:
      000484 20 00 05         [24] 2096 	jb	b0,00144$
                           0003F8  2097 	C$main.c$288$4$194 ==.
                                   2098 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:288: watchdog();
      000487 75 97 A5         [24] 2099 	mov	_WDTCN,#0xa5
      00048A 80 C8            [24] 2100 	sjmp	00140$
      00048C                       2101 00144$:
                           0003FD  2102 	C$main.c$294$2$180 ==.
                                   2103 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:294: P0 = 0x40;
      00048C 75 80 40         [24] 2104 	mov	_P0,#0x40
                           000400  2105 	C$main.c$295$1$178 ==.
                                   2106 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:295: for(i=0;i<2000;i++){
      00048F 7C D0            [12] 2107 	mov	r4,#0xd0
      000491 7D 07            [12] 2108 	mov	r5,#0x07
      000493 7E 00            [12] 2109 	mov	r6,#0x00
      000495 7F 00            [12] 2110 	mov	r7,#0x00
      000497                       2111 00154$:
      000497 1C               [12] 2112 	dec	r4
      000498 BC FF 09         [24] 2113 	cjne	r4,#0xff,00280$
      00049B 1D               [12] 2114 	dec	r5
      00049C BD FF 05         [24] 2115 	cjne	r5,#0xff,00280$
      00049F 1E               [12] 2116 	dec	r6
      0004A0 BE FF 01         [24] 2117 	cjne	r6,#0xff,00280$
      0004A3 1F               [12] 2118 	dec	r7
      0004A4                       2119 00280$:
      0004A4 EC               [12] 2120 	mov	a,r4
      0004A5 4D               [12] 2121 	orl	a,r5
      0004A6 4E               [12] 2122 	orl	a,r6
      0004A7 4F               [12] 2123 	orl	a,r7
                           000419  2124 	C$main.c$297$2$180 ==.
                                   2125 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:297: P0 = 0x00;
                           000419  2126 	C$main.c$299$1$178 ==.
                                   2127 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:299: for(i=0;i<2000;i++){
      0004A8 70 ED            [24] 2128 	jnz	00154$
      0004AA F5 80            [12] 2129 	mov	_P0,a
      0004AC 7C D0            [12] 2130 	mov	r4,#0xd0
      0004AE 7D 07            [12] 2131 	mov	r5,#0x07
      0004B0 FE               [12] 2132 	mov	r6,a
      0004B1 7F 00            [12] 2133 	mov	r7,#0x00
      0004B3                       2134 00157$:
      0004B3 1C               [12] 2135 	dec	r4
      0004B4 BC FF 09         [24] 2136 	cjne	r4,#0xff,00282$
      0004B7 1D               [12] 2137 	dec	r5
      0004B8 BD FF 05         [24] 2138 	cjne	r5,#0xff,00282$
      0004BB 1E               [12] 2139 	dec	r6
      0004BC BE FF 01         [24] 2140 	cjne	r6,#0xff,00282$
      0004BF 1F               [12] 2141 	dec	r7
      0004C0                       2142 00282$:
      0004C0 EC               [12] 2143 	mov	a,r4
      0004C1 4D               [12] 2144 	orl	a,r5
      0004C2 4E               [12] 2145 	orl	a,r6
      0004C3 4F               [12] 2146 	orl	a,r7
      0004C4 70 ED            [24] 2147 	jnz	00157$
                           000437  2148 	C$main.c$301$2$180 ==.
                                   2149 ;	D:\Freelancer_projects\jan333\sdcc_project\src\main.c:301: WDTCN = 0xA5;
      0004C6 75 97 A5         [24] 2150 	mov	_WDTCN,#0xa5
      0004C9 02 01 7C         [24] 2151 	ljmp	00148$
      0004CC 85 1B 81         [24] 2152 	mov	sp,_bp
      0004CF D0 1B            [24] 2153 	pop	_bp
                           000442  2154 	C$main.c$305$1$178 ==.
                           000442  2155 	XG$main$0$0 ==.
      0004D1 22               [24] 2156 	ret
                                   2157 	.area CSEG    (CODE)
                                   2158 	.area CONST   (CODE)
                           000000  2159 Fmain$__str_0$0$0 == .
      005E5E                       2160 ___str_0:
      005E5E 55 32 46 20 5A 45 52  2161 	.ascii "U2F ZERO"
             4F
      005E66 0D                    2162 	.db 0x0d
      005E67 0A                    2163 	.db 0x0a
      005E68 00                    2164 	.db 0x00
                           00000B  2165 Fmain$__str_1$0$0 == .
      005E69                       2166 ___str_1:
      005E69 65 72 72 6F 72 3A 20  2167 	.ascii "error: "
      005E70 00                    2168 	.db 0x00
                                   2169 	.area XINIT   (CODE)
                                   2170 	.area CABS    (ABS,CODE)
