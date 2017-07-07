                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module u2f_hid
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _u2f_request
                                     12 	.globl _u2f_printlx
                                     13 	.globl _u2f_printb
                                     14 	.globl _u2f_prints
                                     15 	.globl _usb_write
                                     16 	.globl _app_wink
                                     17 	.globl _set_app_error
                                     18 	.globl _memset
                                     19 	.globl _memmove
                                     20 	.globl _U2F_BLUE
                                     21 	.globl _U2F_GREEN
                                     22 	.globl _U2F_RED
                                     23 	.globl _U2F_BUTTON_VAL
                                     24 	.globl _U2F_BUTTON
                                     25 	.globl _UART1FCN1_TFRQ
                                     26 	.globl _UART1FCN1_TXNF
                                     27 	.globl _UART1FCN1_TXHOLD
                                     28 	.globl _UART1FCN1_TIE
                                     29 	.globl _UART1FCN1_RFRQ
                                     30 	.globl _UART1FCN1_RXTO1
                                     31 	.globl _UART1FCN1_RXTO0
                                     32 	.globl _UART1FCN1_RIE
                                     33 	.globl _TMR4CN0_TF4H
                                     34 	.globl _TMR4CN0_TF4L
                                     35 	.globl _TMR4CN0_TF4LEN
                                     36 	.globl _TMR4CN0_TF4CEN
                                     37 	.globl _TMR4CN0_T4SPLIT
                                     38 	.globl _TMR4CN0_TR4
                                     39 	.globl _TMR4CN0_T4XCLK1
                                     40 	.globl _TMR4CN0_T4XCLK0
                                     41 	.globl _TMR2CN0_TF2H
                                     42 	.globl _TMR2CN0_TF2L
                                     43 	.globl _TMR2CN0_TF2LEN
                                     44 	.globl _TMR2CN0_TF2CEN
                                     45 	.globl _TMR2CN0_T2SPLIT
                                     46 	.globl _TMR2CN0_TR2
                                     47 	.globl _TMR2CN0_T2XCLK1
                                     48 	.globl _TMR2CN0_T2XCLK0
                                     49 	.globl _TCON_TF1
                                     50 	.globl _TCON_TR1
                                     51 	.globl _TCON_TF0
                                     52 	.globl _TCON_TR0
                                     53 	.globl _TCON_IE1
                                     54 	.globl _TCON_IT1
                                     55 	.globl _TCON_IE0
                                     56 	.globl _TCON_IT0
                                     57 	.globl _SPI0CN0_SPIF
                                     58 	.globl _SPI0CN0_WCOL
                                     59 	.globl _SPI0CN0_MODF
                                     60 	.globl _SPI0CN0_RXOVRN
                                     61 	.globl _SPI0CN0_NSSMD1
                                     62 	.globl _SPI0CN0_NSSMD0
                                     63 	.globl _SPI0CN0_TXNF
                                     64 	.globl _SPI0CN0_SPIEN
                                     65 	.globl _SMB0CN0_MASTER
                                     66 	.globl _SMB0CN0_TXMODE
                                     67 	.globl _SMB0CN0_STA
                                     68 	.globl _SMB0CN0_STO
                                     69 	.globl _SMB0CN0_ACKRQ
                                     70 	.globl _SMB0CN0_ARBLOST
                                     71 	.globl _SMB0CN0_ACK
                                     72 	.globl _SMB0CN0_SI
                                     73 	.globl _SCON1_OVR
                                     74 	.globl _SCON1_PERR
                                     75 	.globl _SCON1_REN
                                     76 	.globl _SCON1_TBX
                                     77 	.globl _SCON1_RBX
                                     78 	.globl _SCON1_TI
                                     79 	.globl _SCON1_RI
                                     80 	.globl _SCON0_SMODE
                                     81 	.globl _SCON0_MCE
                                     82 	.globl _SCON0_REN
                                     83 	.globl _SCON0_TB8
                                     84 	.globl _SCON0_RB8
                                     85 	.globl _SCON0_TI
                                     86 	.globl _SCON0_RI
                                     87 	.globl _PSW_CY
                                     88 	.globl _PSW_AC
                                     89 	.globl _PSW_F0
                                     90 	.globl _PSW_RS1
                                     91 	.globl _PSW_RS0
                                     92 	.globl _PSW_OV
                                     93 	.globl _PSW_F1
                                     94 	.globl _PSW_PARITY
                                     95 	.globl _PCA0CN0_CF
                                     96 	.globl _PCA0CN0_CR
                                     97 	.globl _PCA0CN0_CCF2
                                     98 	.globl _PCA0CN0_CCF1
                                     99 	.globl _PCA0CN0_CCF0
                                    100 	.globl _P3_B1
                                    101 	.globl _P3_B0
                                    102 	.globl _P2_B3
                                    103 	.globl _P2_B2
                                    104 	.globl _P2_B1
                                    105 	.globl _P2_B0
                                    106 	.globl _P1_B7
                                    107 	.globl _P1_B6
                                    108 	.globl _P1_B5
                                    109 	.globl _P1_B4
                                    110 	.globl _P1_B3
                                    111 	.globl _P1_B2
                                    112 	.globl _P1_B1
                                    113 	.globl _P1_B0
                                    114 	.globl _P0_B7
                                    115 	.globl _P0_B6
                                    116 	.globl _P0_B5
                                    117 	.globl _P0_B4
                                    118 	.globl _P0_B3
                                    119 	.globl _P0_B2
                                    120 	.globl _P0_B1
                                    121 	.globl _P0_B0
                                    122 	.globl _IP_PSPI0
                                    123 	.globl _IP_PT2
                                    124 	.globl _IP_PS0
                                    125 	.globl _IP_PT1
                                    126 	.globl _IP_PX1
                                    127 	.globl _IP_PT0
                                    128 	.globl _IP_PX0
                                    129 	.globl _IE_EA
                                    130 	.globl _IE_ESPI0
                                    131 	.globl _IE_ET2
                                    132 	.globl _IE_ES0
                                    133 	.globl _IE_ET1
                                    134 	.globl _IE_EX1
                                    135 	.globl _IE_ET0
                                    136 	.globl _IE_EX0
                                    137 	.globl _B_B7
                                    138 	.globl _B_B6
                                    139 	.globl _B_B5
                                    140 	.globl _B_B4
                                    141 	.globl _B_B3
                                    142 	.globl _B_B2
                                    143 	.globl _B_B1
                                    144 	.globl _B_B0
                                    145 	.globl _ADC0CN0_ADEN
                                    146 	.globl _ADC0CN0_ADBMEN
                                    147 	.globl _ADC0CN0_ADINT
                                    148 	.globl _ADC0CN0_ADBUSY
                                    149 	.globl _ADC0CN0_ADWINT
                                    150 	.globl _ADC0CN0_ADCM2
                                    151 	.globl _ADC0CN0_ADCM1
                                    152 	.globl _ADC0CN0_ADCM0
                                    153 	.globl _ACC_ACC7
                                    154 	.globl _ACC_ACC6
                                    155 	.globl _ACC_ACC5
                                    156 	.globl _ACC_ACC4
                                    157 	.globl _ACC_ACC3
                                    158 	.globl _ACC_ACC2
                                    159 	.globl _ACC_ACC1
                                    160 	.globl _ACC_ACC0
                                    161 	.globl __XPAGE
                                    162 	.globl _TMR4RL
                                    163 	.globl _TMR4
                                    164 	.globl _TMR3RL
                                    165 	.globl _TMR3
                                    166 	.globl _TMR2RL
                                    167 	.globl _TMR2
                                    168 	.globl _SBRL1
                                    169 	.globl _PCA0
                                    170 	.globl _PCA0CP2
                                    171 	.globl _PCA0CP1
                                    172 	.globl _PCA0CP0
                                    173 	.globl _DP
                                    174 	.globl _ADC0LT
                                    175 	.globl _ADC0
                                    176 	.globl _ADC0GT
                                    177 	.globl _XBR2
                                    178 	.globl _XBR1
                                    179 	.globl _XBR0
                                    180 	.globl _WDTCN
                                    181 	.globl _VDM0CN
                                    182 	.globl _USB0XCN
                                    183 	.globl _USB0DAT
                                    184 	.globl _USB0CF
                                    185 	.globl _USB0CDSTA
                                    186 	.globl _USB0CDCN
                                    187 	.globl _USB0CDCF
                                    188 	.globl _USB0AEC
                                    189 	.globl _USB0ADR
                                    190 	.globl _UART1LIN
                                    191 	.globl _UART1FCT
                                    192 	.globl _UART1FCN1
                                    193 	.globl _UART1FCN0
                                    194 	.globl _TMR4RLL
                                    195 	.globl _TMR4RLH
                                    196 	.globl _TMR4L
                                    197 	.globl _TMR4H
                                    198 	.globl _TMR4CN1
                                    199 	.globl _TMR4CN0
                                    200 	.globl _TMR3RLL
                                    201 	.globl _TMR3RLH
                                    202 	.globl _TMR3L
                                    203 	.globl _TMR3H
                                    204 	.globl _TMR3CN1
                                    205 	.globl _TMR3CN0
                                    206 	.globl _TMR2RLL
                                    207 	.globl _TMR2RLH
                                    208 	.globl _TMR2L
                                    209 	.globl _TMR2H
                                    210 	.globl _TMR2CN1
                                    211 	.globl _TMR2CN0
                                    212 	.globl _TMOD
                                    213 	.globl _TL1
                                    214 	.globl _TL0
                                    215 	.globl _TH1
                                    216 	.globl _TH0
                                    217 	.globl _TCON
                                    218 	.globl _SPI0FCT
                                    219 	.globl _SPI0FCN1
                                    220 	.globl _SPI0FCN0
                                    221 	.globl _SPI0DAT
                                    222 	.globl _SPI0CN0
                                    223 	.globl _SPI0CKR
                                    224 	.globl _SPI0CFG
                                    225 	.globl _SP
                                    226 	.globl _SMOD1
                                    227 	.globl _SMB0TC
                                    228 	.globl _SMB0RXLN
                                    229 	.globl _SMB0FCT
                                    230 	.globl _SMB0FCN1
                                    231 	.globl _SMB0FCN0
                                    232 	.globl _SMB0DAT
                                    233 	.globl _SMB0CN0
                                    234 	.globl _SMB0CF
                                    235 	.globl _SMB0ADR
                                    236 	.globl _SMB0ADM
                                    237 	.globl _SFRSTACK
                                    238 	.globl _SFRPGCN
                                    239 	.globl _SFRPAGE
                                    240 	.globl _SCON1
                                    241 	.globl _SCON0
                                    242 	.globl _SBUF1
                                    243 	.globl _SBUF0
                                    244 	.globl _SBRLL1
                                    245 	.globl _SBRLH1
                                    246 	.globl _SBCON1
                                    247 	.globl _RSTSRC
                                    248 	.globl _REVID
                                    249 	.globl _REG1CN
                                    250 	.globl _REG0CN
                                    251 	.globl _REF0CN
                                    252 	.globl _PSW
                                    253 	.globl _PSCTL
                                    254 	.globl _PRTDRV
                                    255 	.globl _PFE0CN
                                    256 	.globl _PCON1
                                    257 	.globl _PCON0
                                    258 	.globl _PCA0PWM
                                    259 	.globl _PCA0POL
                                    260 	.globl _PCA0MD
                                    261 	.globl _PCA0L
                                    262 	.globl _PCA0H
                                    263 	.globl _PCA0CPM2
                                    264 	.globl _PCA0CPM1
                                    265 	.globl _PCA0CPM0
                                    266 	.globl _PCA0CPL2
                                    267 	.globl _PCA0CPL1
                                    268 	.globl _PCA0CPL0
                                    269 	.globl _PCA0CPH2
                                    270 	.globl _PCA0CPH1
                                    271 	.globl _PCA0CPH0
                                    272 	.globl _PCA0CN0
                                    273 	.globl _PCA0CLR
                                    274 	.globl _PCA0CENT
                                    275 	.globl _P3MDOUT
                                    276 	.globl _P3MDIN
                                    277 	.globl _P3
                                    278 	.globl _P2SKIP
                                    279 	.globl _P2MDOUT
                                    280 	.globl _P2MDIN
                                    281 	.globl _P2MAT
                                    282 	.globl _P2MASK
                                    283 	.globl _P2
                                    284 	.globl _P1SKIP
                                    285 	.globl _P1MDOUT
                                    286 	.globl _P1MDIN
                                    287 	.globl _P1MAT
                                    288 	.globl _P1MASK
                                    289 	.globl _P1
                                    290 	.globl _P0SKIP
                                    291 	.globl _P0MDOUT
                                    292 	.globl _P0MDIN
                                    293 	.globl _P0MAT
                                    294 	.globl _P0MASK
                                    295 	.globl _P0
                                    296 	.globl _LFO0CN
                                    297 	.globl _IT01CF
                                    298 	.globl _IPH
                                    299 	.globl _IP
                                    300 	.globl _IE
                                    301 	.globl _I2C0STAT
                                    302 	.globl _I2C0SLAD
                                    303 	.globl _I2C0FCT
                                    304 	.globl _I2C0FCN1
                                    305 	.globl _I2C0FCN0
                                    306 	.globl _I2C0DOUT
                                    307 	.globl _I2C0DIN
                                    308 	.globl _I2C0CN0
                                    309 	.globl _HFOCN
                                    310 	.globl _HFO1CAL
                                    311 	.globl _HFO0CAL
                                    312 	.globl _FLKEY
                                    313 	.globl _EMI0CN
                                    314 	.globl _EIP2H
                                    315 	.globl _EIP2
                                    316 	.globl _EIP1H
                                    317 	.globl _EIP1
                                    318 	.globl _EIE2
                                    319 	.globl _EIE1
                                    320 	.globl _DPL
                                    321 	.globl _DPH
                                    322 	.globl _DEVICEID
                                    323 	.globl _DERIVID
                                    324 	.globl _CRC0ST
                                    325 	.globl _CRC0IN
                                    326 	.globl _CRC0FLIP
                                    327 	.globl _CRC0DAT
                                    328 	.globl _CRC0CNT
                                    329 	.globl _CRC0CN1
                                    330 	.globl _CRC0CN0
                                    331 	.globl _CMP1MX
                                    332 	.globl _CMP1MD
                                    333 	.globl _CMP1CN1
                                    334 	.globl _CMP1CN0
                                    335 	.globl _CMP0MX
                                    336 	.globl _CMP0MD
                                    337 	.globl _CMP0CN1
                                    338 	.globl _CMP0CN0
                                    339 	.globl _CLKSEL
                                    340 	.globl _CKCON1
                                    341 	.globl _CKCON0
                                    342 	.globl _B
                                    343 	.globl _ADC0TK
                                    344 	.globl _ADC0PWR
                                    345 	.globl _ADC0MX
                                    346 	.globl _ADC0LTL
                                    347 	.globl _ADC0LTH
                                    348 	.globl _ADC0L
                                    349 	.globl _ADC0H
                                    350 	.globl _ADC0GTL
                                    351 	.globl _ADC0GTH
                                    352 	.globl _ADC0CN1
                                    353 	.globl _ADC0CN0
                                    354 	.globl _ADC0CF
                                    355 	.globl _ADC0AC
                                    356 	.globl _ACC
                                    357 	.globl __hid_lock_cid
                                    358 	.globl __hid_lockt
                                    359 	.globl _u2f_hid_init
                                    360 	.globl _u2f_hid_set_len
                                    361 	.globl _u2f_hid_flush
                                    362 	.globl _u2f_hid_writeback
                                    363 	.globl _u2f_hid_check_timeouts
                                    364 	.globl _u2f_hid_request
                                    365 ;--------------------------------------------------------
                                    366 ; special function registers
                                    367 ;--------------------------------------------------------
                                    368 	.area RSEG    (ABS,DATA)
      000000                        369 	.org 0x0000
                           0000E0   370 G$ACC$0$0 == 0x00e0
                           0000E0   371 _ACC	=	0x00e0
                           0000B3   372 G$ADC0AC$0$0 == 0x00b3
                           0000B3   373 _ADC0AC	=	0x00b3
                           0000BC   374 G$ADC0CF$0$0 == 0x00bc
                           0000BC   375 _ADC0CF	=	0x00bc
                           0000E8   376 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   377 _ADC0CN0	=	0x00e8
                           0000B2   378 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   379 _ADC0CN1	=	0x00b2
                           0000C4   380 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   381 _ADC0GTH	=	0x00c4
                           0000C3   382 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   383 _ADC0GTL	=	0x00c3
                           0000BE   384 G$ADC0H$0$0 == 0x00be
                           0000BE   385 _ADC0H	=	0x00be
                           0000BD   386 G$ADC0L$0$0 == 0x00bd
                           0000BD   387 _ADC0L	=	0x00bd
                           0000C6   388 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   389 _ADC0LTH	=	0x00c6
                           0000C5   390 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   391 _ADC0LTL	=	0x00c5
                           0000BB   392 G$ADC0MX$0$0 == 0x00bb
                           0000BB   393 _ADC0MX	=	0x00bb
                           0000DF   394 G$ADC0PWR$0$0 == 0x00df
                           0000DF   395 _ADC0PWR	=	0x00df
                           0000B9   396 G$ADC0TK$0$0 == 0x00b9
                           0000B9   397 _ADC0TK	=	0x00b9
                           0000F0   398 G$B$0$0 == 0x00f0
                           0000F0   399 _B	=	0x00f0
                           00008E   400 G$CKCON0$0$0 == 0x008e
                           00008E   401 _CKCON0	=	0x008e
                           0000A6   402 G$CKCON1$0$0 == 0x00a6
                           0000A6   403 _CKCON1	=	0x00a6
                           0000A9   404 G$CLKSEL$0$0 == 0x00a9
                           0000A9   405 _CLKSEL	=	0x00a9
                           00009B   406 G$CMP0CN0$0$0 == 0x009b
                           00009B   407 _CMP0CN0	=	0x009b
                           000099   408 G$CMP0CN1$0$0 == 0x0099
                           000099   409 _CMP0CN1	=	0x0099
                           00009D   410 G$CMP0MD$0$0 == 0x009d
                           00009D   411 _CMP0MD	=	0x009d
                           00009F   412 G$CMP0MX$0$0 == 0x009f
                           00009F   413 _CMP0MX	=	0x009f
                           0000BF   414 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   415 _CMP1CN0	=	0x00bf
                           0000AC   416 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   417 _CMP1CN1	=	0x00ac
                           0000AB   418 G$CMP1MD$0$0 == 0x00ab
                           0000AB   419 _CMP1MD	=	0x00ab
                           0000AA   420 G$CMP1MX$0$0 == 0x00aa
                           0000AA   421 _CMP1MX	=	0x00aa
                           0000CE   422 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   423 _CRC0CN0	=	0x00ce
                           000086   424 G$CRC0CN1$0$0 == 0x0086
                           000086   425 _CRC0CN1	=	0x0086
                           0000D3   426 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   427 _CRC0CNT	=	0x00d3
                           0000DE   428 G$CRC0DAT$0$0 == 0x00de
                           0000DE   429 _CRC0DAT	=	0x00de
                           0000CF   430 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   431 _CRC0FLIP	=	0x00cf
                           0000DD   432 G$CRC0IN$0$0 == 0x00dd
                           0000DD   433 _CRC0IN	=	0x00dd
                           0000D2   434 G$CRC0ST$0$0 == 0x00d2
                           0000D2   435 _CRC0ST	=	0x00d2
                           0000AD   436 G$DERIVID$0$0 == 0x00ad
                           0000AD   437 _DERIVID	=	0x00ad
                           0000B5   438 G$DEVICEID$0$0 == 0x00b5
                           0000B5   439 _DEVICEID	=	0x00b5
                           000083   440 G$DPH$0$0 == 0x0083
                           000083   441 _DPH	=	0x0083
                           000082   442 G$DPL$0$0 == 0x0082
                           000082   443 _DPL	=	0x0082
                           0000E6   444 G$EIE1$0$0 == 0x00e6
                           0000E6   445 _EIE1	=	0x00e6
                           0000CE   446 G$EIE2$0$0 == 0x00ce
                           0000CE   447 _EIE2	=	0x00ce
                           0000F3   448 G$EIP1$0$0 == 0x00f3
                           0000F3   449 _EIP1	=	0x00f3
                           0000F5   450 G$EIP1H$0$0 == 0x00f5
                           0000F5   451 _EIP1H	=	0x00f5
                           0000F4   452 G$EIP2$0$0 == 0x00f4
                           0000F4   453 _EIP2	=	0x00f4
                           0000F6   454 G$EIP2H$0$0 == 0x00f6
                           0000F6   455 _EIP2H	=	0x00f6
                           0000E7   456 G$EMI0CN$0$0 == 0x00e7
                           0000E7   457 _EMI0CN	=	0x00e7
                           0000B7   458 G$FLKEY$0$0 == 0x00b7
                           0000B7   459 _FLKEY	=	0x00b7
                           0000C7   460 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   461 _HFO0CAL	=	0x00c7
                           0000D6   462 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   463 _HFO1CAL	=	0x00d6
                           0000EF   464 G$HFOCN$0$0 == 0x00ef
                           0000EF   465 _HFOCN	=	0x00ef
                           0000BA   466 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   467 _I2C0CN0	=	0x00ba
                           0000BC   468 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   469 _I2C0DIN	=	0x00bc
                           0000BB   470 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   471 _I2C0DOUT	=	0x00bb
                           0000AD   472 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   473 _I2C0FCN0	=	0x00ad
                           0000AB   474 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   475 _I2C0FCN1	=	0x00ab
                           0000F5   476 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   477 _I2C0FCT	=	0x00f5
                           0000BD   478 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   479 _I2C0SLAD	=	0x00bd
                           0000B9   480 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   481 _I2C0STAT	=	0x00b9
                           0000A8   482 G$IE$0$0 == 0x00a8
                           0000A8   483 _IE	=	0x00a8
                           0000B8   484 G$IP$0$0 == 0x00b8
                           0000B8   485 _IP	=	0x00b8
                           0000F2   486 G$IPH$0$0 == 0x00f2
                           0000F2   487 _IPH	=	0x00f2
                           0000E4   488 G$IT01CF$0$0 == 0x00e4
                           0000E4   489 _IT01CF	=	0x00e4
                           0000B1   490 G$LFO0CN$0$0 == 0x00b1
                           0000B1   491 _LFO0CN	=	0x00b1
                           000080   492 G$P0$0$0 == 0x0080
                           000080   493 _P0	=	0x0080
                           0000FE   494 G$P0MASK$0$0 == 0x00fe
                           0000FE   495 _P0MASK	=	0x00fe
                           0000FD   496 G$P0MAT$0$0 == 0x00fd
                           0000FD   497 _P0MAT	=	0x00fd
                           0000F1   498 G$P0MDIN$0$0 == 0x00f1
                           0000F1   499 _P0MDIN	=	0x00f1
                           0000A4   500 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   501 _P0MDOUT	=	0x00a4
                           0000D4   502 G$P0SKIP$0$0 == 0x00d4
                           0000D4   503 _P0SKIP	=	0x00d4
                           000090   504 G$P1$0$0 == 0x0090
                           000090   505 _P1	=	0x0090
                           0000EE   506 G$P1MASK$0$0 == 0x00ee
                           0000EE   507 _P1MASK	=	0x00ee
                           0000ED   508 G$P1MAT$0$0 == 0x00ed
                           0000ED   509 _P1MAT	=	0x00ed
                           0000F2   510 G$P1MDIN$0$0 == 0x00f2
                           0000F2   511 _P1MDIN	=	0x00f2
                           0000A5   512 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   513 _P1MDOUT	=	0x00a5
                           0000D5   514 G$P1SKIP$0$0 == 0x00d5
                           0000D5   515 _P1SKIP	=	0x00d5
                           0000A0   516 G$P2$0$0 == 0x00a0
                           0000A0   517 _P2	=	0x00a0
                           0000FC   518 G$P2MASK$0$0 == 0x00fc
                           0000FC   519 _P2MASK	=	0x00fc
                           0000FB   520 G$P2MAT$0$0 == 0x00fb
                           0000FB   521 _P2MAT	=	0x00fb
                           0000F3   522 G$P2MDIN$0$0 == 0x00f3
                           0000F3   523 _P2MDIN	=	0x00f3
                           0000A6   524 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   525 _P2MDOUT	=	0x00a6
                           0000CC   526 G$P2SKIP$0$0 == 0x00cc
                           0000CC   527 _P2SKIP	=	0x00cc
                           0000B0   528 G$P3$0$0 == 0x00b0
                           0000B0   529 _P3	=	0x00b0
                           0000F4   530 G$P3MDIN$0$0 == 0x00f4
                           0000F4   531 _P3MDIN	=	0x00f4
                           00009C   532 G$P3MDOUT$0$0 == 0x009c
                           00009C   533 _P3MDOUT	=	0x009c
                           00009E   534 G$PCA0CENT$0$0 == 0x009e
                           00009E   535 _PCA0CENT	=	0x009e
                           00009C   536 G$PCA0CLR$0$0 == 0x009c
                           00009C   537 _PCA0CLR	=	0x009c
                           0000D8   538 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   539 _PCA0CN0	=	0x00d8
                           0000FC   540 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   541 _PCA0CPH0	=	0x00fc
                           0000EA   542 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   543 _PCA0CPH1	=	0x00ea
                           0000EC   544 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   545 _PCA0CPH2	=	0x00ec
                           0000FB   546 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   547 _PCA0CPL0	=	0x00fb
                           0000E9   548 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   549 _PCA0CPL1	=	0x00e9
                           0000EB   550 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   551 _PCA0CPL2	=	0x00eb
                           0000DA   552 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   553 _PCA0CPM0	=	0x00da
                           0000DB   554 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   555 _PCA0CPM1	=	0x00db
                           0000DC   556 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   557 _PCA0CPM2	=	0x00dc
                           0000FA   558 G$PCA0H$0$0 == 0x00fa
                           0000FA   559 _PCA0H	=	0x00fa
                           0000F9   560 G$PCA0L$0$0 == 0x00f9
                           0000F9   561 _PCA0L	=	0x00f9
                           0000D9   562 G$PCA0MD$0$0 == 0x00d9
                           0000D9   563 _PCA0MD	=	0x00d9
                           000096   564 G$PCA0POL$0$0 == 0x0096
                           000096   565 _PCA0POL	=	0x0096
                           0000F7   566 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   567 _PCA0PWM	=	0x00f7
                           000087   568 G$PCON0$0$0 == 0x0087
                           000087   569 _PCON0	=	0x0087
                           00009A   570 G$PCON1$0$0 == 0x009a
                           00009A   571 _PCON1	=	0x009a
                           0000C1   572 G$PFE0CN$0$0 == 0x00c1
                           0000C1   573 _PFE0CN	=	0x00c1
                           0000F6   574 G$PRTDRV$0$0 == 0x00f6
                           0000F6   575 _PRTDRV	=	0x00f6
                           00008F   576 G$PSCTL$0$0 == 0x008f
                           00008F   577 _PSCTL	=	0x008f
                           0000D0   578 G$PSW$0$0 == 0x00d0
                           0000D0   579 _PSW	=	0x00d0
                           0000D1   580 G$REF0CN$0$0 == 0x00d1
                           0000D1   581 _REF0CN	=	0x00d1
                           0000C9   582 G$REG0CN$0$0 == 0x00c9
                           0000C9   583 _REG0CN	=	0x00c9
                           0000C6   584 G$REG1CN$0$0 == 0x00c6
                           0000C6   585 _REG1CN	=	0x00c6
                           0000B6   586 G$REVID$0$0 == 0x00b6
                           0000B6   587 _REVID	=	0x00b6
                           0000EF   588 G$RSTSRC$0$0 == 0x00ef
                           0000EF   589 _RSTSRC	=	0x00ef
                           000094   590 G$SBCON1$0$0 == 0x0094
                           000094   591 _SBCON1	=	0x0094
                           000096   592 G$SBRLH1$0$0 == 0x0096
                           000096   593 _SBRLH1	=	0x0096
                           000095   594 G$SBRLL1$0$0 == 0x0095
                           000095   595 _SBRLL1	=	0x0095
                           000099   596 G$SBUF0$0$0 == 0x0099
                           000099   597 _SBUF0	=	0x0099
                           000092   598 G$SBUF1$0$0 == 0x0092
                           000092   599 _SBUF1	=	0x0092
                           000098   600 G$SCON0$0$0 == 0x0098
                           000098   601 _SCON0	=	0x0098
                           0000C8   602 G$SCON1$0$0 == 0x00c8
                           0000C8   603 _SCON1	=	0x00c8
                           0000A7   604 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   605 _SFRPAGE	=	0x00a7
                           0000CF   606 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   607 _SFRPGCN	=	0x00cf
                           0000D7   608 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   609 _SFRSTACK	=	0x00d7
                           0000D6   610 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   611 _SMB0ADM	=	0x00d6
                           0000D7   612 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   613 _SMB0ADR	=	0x00d7
                           0000C1   614 G$SMB0CF$0$0 == 0x00c1
                           0000C1   615 _SMB0CF	=	0x00c1
                           0000C0   616 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   617 _SMB0CN0	=	0x00c0
                           0000C2   618 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   619 _SMB0DAT	=	0x00c2
                           0000C3   620 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   621 _SMB0FCN0	=	0x00c3
                           0000C4   622 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   623 _SMB0FCN1	=	0x00c4
                           0000EF   624 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   625 _SMB0FCT	=	0x00ef
                           0000C5   626 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   627 _SMB0RXLN	=	0x00c5
                           0000AC   628 G$SMB0TC$0$0 == 0x00ac
                           0000AC   629 _SMB0TC	=	0x00ac
                           000093   630 G$SMOD1$0$0 == 0x0093
                           000093   631 _SMOD1	=	0x0093
                           000081   632 G$SP$0$0 == 0x0081
                           000081   633 _SP	=	0x0081
                           0000A1   634 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   635 _SPI0CFG	=	0x00a1
                           0000A2   636 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   637 _SPI0CKR	=	0x00a2
                           0000F8   638 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   639 _SPI0CN0	=	0x00f8
                           0000A3   640 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   641 _SPI0DAT	=	0x00a3
                           00009A   642 G$SPI0FCN0$0$0 == 0x009a
                           00009A   643 _SPI0FCN0	=	0x009a
                           00009B   644 G$SPI0FCN1$0$0 == 0x009b
                           00009B   645 _SPI0FCN1	=	0x009b
                           0000F7   646 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   647 _SPI0FCT	=	0x00f7
                           000088   648 G$TCON$0$0 == 0x0088
                           000088   649 _TCON	=	0x0088
                           00008C   650 G$TH0$0$0 == 0x008c
                           00008C   651 _TH0	=	0x008c
                           00008D   652 G$TH1$0$0 == 0x008d
                           00008D   653 _TH1	=	0x008d
                           00008A   654 G$TL0$0$0 == 0x008a
                           00008A   655 _TL0	=	0x008a
                           00008B   656 G$TL1$0$0 == 0x008b
                           00008B   657 _TL1	=	0x008b
                           000089   658 G$TMOD$0$0 == 0x0089
                           000089   659 _TMOD	=	0x0089
                           0000C8   660 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   661 _TMR2CN0	=	0x00c8
                           0000FD   662 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   663 _TMR2CN1	=	0x00fd
                           0000CD   664 G$TMR2H$0$0 == 0x00cd
                           0000CD   665 _TMR2H	=	0x00cd
                           0000CC   666 G$TMR2L$0$0 == 0x00cc
                           0000CC   667 _TMR2L	=	0x00cc
                           0000CB   668 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   669 _TMR2RLH	=	0x00cb
                           0000CA   670 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   671 _TMR2RLL	=	0x00ca
                           000091   672 G$TMR3CN0$0$0 == 0x0091
                           000091   673 _TMR3CN0	=	0x0091
                           0000FE   674 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   675 _TMR3CN1	=	0x00fe
                           000095   676 G$TMR3H$0$0 == 0x0095
                           000095   677 _TMR3H	=	0x0095
                           000094   678 G$TMR3L$0$0 == 0x0094
                           000094   679 _TMR3L	=	0x0094
                           000093   680 G$TMR3RLH$0$0 == 0x0093
                           000093   681 _TMR3RLH	=	0x0093
                           000092   682 G$TMR3RLL$0$0 == 0x0092
                           000092   683 _TMR3RLL	=	0x0092
                           000098   684 G$TMR4CN0$0$0 == 0x0098
                           000098   685 _TMR4CN0	=	0x0098
                           0000FF   686 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   687 _TMR4CN1	=	0x00ff
                           0000A5   688 G$TMR4H$0$0 == 0x00a5
                           0000A5   689 _TMR4H	=	0x00a5
                           0000A4   690 G$TMR4L$0$0 == 0x00a4
                           0000A4   691 _TMR4L	=	0x00a4
                           0000A3   692 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   693 _TMR4RLH	=	0x00a3
                           0000A2   694 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   695 _TMR4RLL	=	0x00a2
                           00009D   696 G$UART1FCN0$0$0 == 0x009d
                           00009D   697 _UART1FCN0	=	0x009d
                           0000D8   698 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   699 _UART1FCN1	=	0x00d8
                           0000FA   700 G$UART1FCT$0$0 == 0x00fa
                           0000FA   701 _UART1FCT	=	0x00fa
                           00009E   702 G$UART1LIN$0$0 == 0x009e
                           00009E   703 _UART1LIN	=	0x009e
                           0000AE   704 G$USB0ADR$0$0 == 0x00ae
                           0000AE   705 _USB0ADR	=	0x00ae
                           0000B2   706 G$USB0AEC$0$0 == 0x00b2
                           0000B2   707 _USB0AEC	=	0x00b2
                           0000B6   708 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   709 _USB0CDCF	=	0x00b6
                           0000BE   710 G$USB0CDCN$0$0 == 0x00be
                           0000BE   711 _USB0CDCN	=	0x00be
                           0000BF   712 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   713 _USB0CDSTA	=	0x00bf
                           0000B5   714 G$USB0CF$0$0 == 0x00b5
                           0000B5   715 _USB0CF	=	0x00b5
                           0000AF   716 G$USB0DAT$0$0 == 0x00af
                           0000AF   717 _USB0DAT	=	0x00af
                           0000B3   718 G$USB0XCN$0$0 == 0x00b3
                           0000B3   719 _USB0XCN	=	0x00b3
                           0000FF   720 G$VDM0CN$0$0 == 0x00ff
                           0000FF   721 _VDM0CN	=	0x00ff
                           000097   722 G$WDTCN$0$0 == 0x0097
                           000097   723 _WDTCN	=	0x0097
                           0000E1   724 G$XBR0$0$0 == 0x00e1
                           0000E1   725 _XBR0	=	0x00e1
                           0000E2   726 G$XBR1$0$0 == 0x00e2
                           0000E2   727 _XBR1	=	0x00e2
                           0000E3   728 G$XBR2$0$0 == 0x00e3
                           0000E3   729 _XBR2	=	0x00e3
                           0000C3   730 G$ADC0GT$0$0 == 0x00c3
                           0000C3   731 _ADC0GT	=	0x00c3
                           0000BD   732 G$ADC0$0$0 == 0x00bd
                           0000BD   733 _ADC0	=	0x00bd
                           0000C5   734 G$ADC0LT$0$0 == 0x00c5
                           0000C5   735 _ADC0LT	=	0x00c5
                           000082   736 G$DP$0$0 == 0x0082
                           000082   737 _DP	=	0x0082
                           0000FB   738 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   739 _PCA0CP0	=	0x00fb
                           0000E9   740 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   741 _PCA0CP1	=	0x00e9
                           0000EB   742 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   743 _PCA0CP2	=	0x00eb
                           0000F9   744 G$PCA0$0$0 == 0x00f9
                           0000F9   745 _PCA0	=	0x00f9
                           000095   746 G$SBRL1$0$0 == 0x0095
                           000095   747 _SBRL1	=	0x0095
                           0000CC   748 G$TMR2$0$0 == 0x00cc
                           0000CC   749 _TMR2	=	0x00cc
                           0000CA   750 G$TMR2RL$0$0 == 0x00ca
                           0000CA   751 _TMR2RL	=	0x00ca
                           000094   752 G$TMR3$0$0 == 0x0094
                           000094   753 _TMR3	=	0x0094
                           000092   754 G$TMR3RL$0$0 == 0x0092
                           000092   755 _TMR3RL	=	0x0092
                           0000A4   756 G$TMR4$0$0 == 0x00a4
                           0000A4   757 _TMR4	=	0x00a4
                           0000A2   758 G$TMR4RL$0$0 == 0x00a2
                           0000A2   759 _TMR4RL	=	0x00a2
                           0000AA   760 G$_XPAGE$0$0 == 0x00aa
                           0000AA   761 __XPAGE	=	0x00aa
                                    762 ;--------------------------------------------------------
                                    763 ; special function bits
                                    764 ;--------------------------------------------------------
                                    765 	.area RSEG    (ABS,DATA)
      000000                        766 	.org 0x0000
                           0000E0   767 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   768 _ACC_ACC0	=	0x00e0
                           0000E1   769 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   770 _ACC_ACC1	=	0x00e1
                           0000E2   771 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   772 _ACC_ACC2	=	0x00e2
                           0000E3   773 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   774 _ACC_ACC3	=	0x00e3
                           0000E4   775 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   776 _ACC_ACC4	=	0x00e4
                           0000E5   777 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   778 _ACC_ACC5	=	0x00e5
                           0000E6   779 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   780 _ACC_ACC6	=	0x00e6
                           0000E7   781 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   782 _ACC_ACC7	=	0x00e7
                           0000E8   783 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   784 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   785 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   786 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   787 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   788 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   789 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   790 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   791 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   792 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   793 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   794 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   795 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   796 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   797 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   798 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   799 G$B_B0$0$0 == 0x00f0
                           0000F0   800 _B_B0	=	0x00f0
                           0000F1   801 G$B_B1$0$0 == 0x00f1
                           0000F1   802 _B_B1	=	0x00f1
                           0000F2   803 G$B_B2$0$0 == 0x00f2
                           0000F2   804 _B_B2	=	0x00f2
                           0000F3   805 G$B_B3$0$0 == 0x00f3
                           0000F3   806 _B_B3	=	0x00f3
                           0000F4   807 G$B_B4$0$0 == 0x00f4
                           0000F4   808 _B_B4	=	0x00f4
                           0000F5   809 G$B_B5$0$0 == 0x00f5
                           0000F5   810 _B_B5	=	0x00f5
                           0000F6   811 G$B_B6$0$0 == 0x00f6
                           0000F6   812 _B_B6	=	0x00f6
                           0000F7   813 G$B_B7$0$0 == 0x00f7
                           0000F7   814 _B_B7	=	0x00f7
                           0000A8   815 G$IE_EX0$0$0 == 0x00a8
                           0000A8   816 _IE_EX0	=	0x00a8
                           0000A9   817 G$IE_ET0$0$0 == 0x00a9
                           0000A9   818 _IE_ET0	=	0x00a9
                           0000AA   819 G$IE_EX1$0$0 == 0x00aa
                           0000AA   820 _IE_EX1	=	0x00aa
                           0000AB   821 G$IE_ET1$0$0 == 0x00ab
                           0000AB   822 _IE_ET1	=	0x00ab
                           0000AC   823 G$IE_ES0$0$0 == 0x00ac
                           0000AC   824 _IE_ES0	=	0x00ac
                           0000AD   825 G$IE_ET2$0$0 == 0x00ad
                           0000AD   826 _IE_ET2	=	0x00ad
                           0000AE   827 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   828 _IE_ESPI0	=	0x00ae
                           0000AF   829 G$IE_EA$0$0 == 0x00af
                           0000AF   830 _IE_EA	=	0x00af
                           0000B8   831 G$IP_PX0$0$0 == 0x00b8
                           0000B8   832 _IP_PX0	=	0x00b8
                           0000B9   833 G$IP_PT0$0$0 == 0x00b9
                           0000B9   834 _IP_PT0	=	0x00b9
                           0000BA   835 G$IP_PX1$0$0 == 0x00ba
                           0000BA   836 _IP_PX1	=	0x00ba
                           0000BB   837 G$IP_PT1$0$0 == 0x00bb
                           0000BB   838 _IP_PT1	=	0x00bb
                           0000BC   839 G$IP_PS0$0$0 == 0x00bc
                           0000BC   840 _IP_PS0	=	0x00bc
                           0000BD   841 G$IP_PT2$0$0 == 0x00bd
                           0000BD   842 _IP_PT2	=	0x00bd
                           0000BE   843 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   844 _IP_PSPI0	=	0x00be
                           000080   845 G$P0_B0$0$0 == 0x0080
                           000080   846 _P0_B0	=	0x0080
                           000081   847 G$P0_B1$0$0 == 0x0081
                           000081   848 _P0_B1	=	0x0081
                           000082   849 G$P0_B2$0$0 == 0x0082
                           000082   850 _P0_B2	=	0x0082
                           000083   851 G$P0_B3$0$0 == 0x0083
                           000083   852 _P0_B3	=	0x0083
                           000084   853 G$P0_B4$0$0 == 0x0084
                           000084   854 _P0_B4	=	0x0084
                           000085   855 G$P0_B5$0$0 == 0x0085
                           000085   856 _P0_B5	=	0x0085
                           000086   857 G$P0_B6$0$0 == 0x0086
                           000086   858 _P0_B6	=	0x0086
                           000087   859 G$P0_B7$0$0 == 0x0087
                           000087   860 _P0_B7	=	0x0087
                           000090   861 G$P1_B0$0$0 == 0x0090
                           000090   862 _P1_B0	=	0x0090
                           000091   863 G$P1_B1$0$0 == 0x0091
                           000091   864 _P1_B1	=	0x0091
                           000092   865 G$P1_B2$0$0 == 0x0092
                           000092   866 _P1_B2	=	0x0092
                           000093   867 G$P1_B3$0$0 == 0x0093
                           000093   868 _P1_B3	=	0x0093
                           000094   869 G$P1_B4$0$0 == 0x0094
                           000094   870 _P1_B4	=	0x0094
                           000095   871 G$P1_B5$0$0 == 0x0095
                           000095   872 _P1_B5	=	0x0095
                           000096   873 G$P1_B6$0$0 == 0x0096
                           000096   874 _P1_B6	=	0x0096
                           000097   875 G$P1_B7$0$0 == 0x0097
                           000097   876 _P1_B7	=	0x0097
                           0000A0   877 G$P2_B0$0$0 == 0x00a0
                           0000A0   878 _P2_B0	=	0x00a0
                           0000A1   879 G$P2_B1$0$0 == 0x00a1
                           0000A1   880 _P2_B1	=	0x00a1
                           0000A2   881 G$P2_B2$0$0 == 0x00a2
                           0000A2   882 _P2_B2	=	0x00a2
                           0000A3   883 G$P2_B3$0$0 == 0x00a3
                           0000A3   884 _P2_B3	=	0x00a3
                           0000B0   885 G$P3_B0$0$0 == 0x00b0
                           0000B0   886 _P3_B0	=	0x00b0
                           0000B1   887 G$P3_B1$0$0 == 0x00b1
                           0000B1   888 _P3_B1	=	0x00b1
                           0000D8   889 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   890 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   891 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   892 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   893 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   894 _PCA0CN0_CCF2	=	0x00da
                           0000DE   895 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   896 _PCA0CN0_CR	=	0x00de
                           0000DF   897 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   898 _PCA0CN0_CF	=	0x00df
                           0000D0   899 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   900 _PSW_PARITY	=	0x00d0
                           0000D1   901 G$PSW_F1$0$0 == 0x00d1
                           0000D1   902 _PSW_F1	=	0x00d1
                           0000D2   903 G$PSW_OV$0$0 == 0x00d2
                           0000D2   904 _PSW_OV	=	0x00d2
                           0000D3   905 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   906 _PSW_RS0	=	0x00d3
                           0000D4   907 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   908 _PSW_RS1	=	0x00d4
                           0000D5   909 G$PSW_F0$0$0 == 0x00d5
                           0000D5   910 _PSW_F0	=	0x00d5
                           0000D6   911 G$PSW_AC$0$0 == 0x00d6
                           0000D6   912 _PSW_AC	=	0x00d6
                           0000D7   913 G$PSW_CY$0$0 == 0x00d7
                           0000D7   914 _PSW_CY	=	0x00d7
                           000098   915 G$SCON0_RI$0$0 == 0x0098
                           000098   916 _SCON0_RI	=	0x0098
                           000099   917 G$SCON0_TI$0$0 == 0x0099
                           000099   918 _SCON0_TI	=	0x0099
                           00009A   919 G$SCON0_RB8$0$0 == 0x009a
                           00009A   920 _SCON0_RB8	=	0x009a
                           00009B   921 G$SCON0_TB8$0$0 == 0x009b
                           00009B   922 _SCON0_TB8	=	0x009b
                           00009C   923 G$SCON0_REN$0$0 == 0x009c
                           00009C   924 _SCON0_REN	=	0x009c
                           00009D   925 G$SCON0_MCE$0$0 == 0x009d
                           00009D   926 _SCON0_MCE	=	0x009d
                           00009F   927 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   928 _SCON0_SMODE	=	0x009f
                           0000C8   929 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   930 _SCON1_RI	=	0x00c8
                           0000C9   931 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   932 _SCON1_TI	=	0x00c9
                           0000CA   933 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   934 _SCON1_RBX	=	0x00ca
                           0000CB   935 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   936 _SCON1_TBX	=	0x00cb
                           0000CC   937 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   938 _SCON1_REN	=	0x00cc
                           0000CE   939 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   940 _SCON1_PERR	=	0x00ce
                           0000CF   941 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   942 _SCON1_OVR	=	0x00cf
                           0000C0   943 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   944 _SMB0CN0_SI	=	0x00c0
                           0000C1   945 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   946 _SMB0CN0_ACK	=	0x00c1
                           0000C2   947 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   948 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   949 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   950 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   951 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   952 _SMB0CN0_STO	=	0x00c4
                           0000C5   953 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   954 _SMB0CN0_STA	=	0x00c5
                           0000C6   955 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   956 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   957 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   958 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   959 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   960 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   961 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   962 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   963 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   964 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   965 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   966 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   967 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   968 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   969 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   970 _SPI0CN0_MODF	=	0x00fd
                           0000FE   971 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   972 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   973 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   974 _SPI0CN0_SPIF	=	0x00ff
                           000088   975 G$TCON_IT0$0$0 == 0x0088
                           000088   976 _TCON_IT0	=	0x0088
                           000089   977 G$TCON_IE0$0$0 == 0x0089
                           000089   978 _TCON_IE0	=	0x0089
                           00008A   979 G$TCON_IT1$0$0 == 0x008a
                           00008A   980 _TCON_IT1	=	0x008a
                           00008B   981 G$TCON_IE1$0$0 == 0x008b
                           00008B   982 _TCON_IE1	=	0x008b
                           00008C   983 G$TCON_TR0$0$0 == 0x008c
                           00008C   984 _TCON_TR0	=	0x008c
                           00008D   985 G$TCON_TF0$0$0 == 0x008d
                           00008D   986 _TCON_TF0	=	0x008d
                           00008E   987 G$TCON_TR1$0$0 == 0x008e
                           00008E   988 _TCON_TR1	=	0x008e
                           00008F   989 G$TCON_TF1$0$0 == 0x008f
                           00008F   990 _TCON_TF1	=	0x008f
                           0000C8   991 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   992 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   993 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   994 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   995 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   996 _TMR2CN0_TR2	=	0x00ca
                           0000CB   997 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   998 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   999 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC  1000 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD  1001 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD  1002 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE  1003 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE  1004 _TMR2CN0_TF2L	=	0x00ce
                           0000CF  1005 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF  1006 _TMR2CN0_TF2H	=	0x00cf
                           000098  1007 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1008 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1009 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1010 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1011 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1012 _TMR4CN0_TR4	=	0x009a
                           00009B  1013 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1014 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1015 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1016 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1017 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1018 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1019 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1020 _TMR4CN0_TF4L	=	0x009e
                           00009F  1021 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1022 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1023 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1024 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1025 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1026 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1027 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1028 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1029 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1030 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1031 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1032 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1033 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1034 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1035 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1036 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1037 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1038 _UART1FCN1_TFRQ	=	0x00df
                           000095  1039 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1040 _U2F_BUTTON	=	0x0095
                           000096  1041 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1042 _U2F_BUTTON_VAL	=	0x0096
                           000091  1043 G$U2F_RED$0$0 == 0x0091
                           000091  1044 _U2F_RED	=	0x0091
                           000090  1045 G$U2F_GREEN$0$0 == 0x0090
                           000090  1046 _U2F_GREEN	=	0x0090
                           000087  1047 G$U2F_BLUE$0$0 == 0x0087
                           000087  1048 _U2F_BLUE	=	0x0087
                                   1049 ;--------------------------------------------------------
                                   1050 ; overlayable register banks
                                   1051 ;--------------------------------------------------------
                                   1052 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1053 	.ds 8
                                   1054 ;--------------------------------------------------------
                                   1055 ; internal ram data
                                   1056 ;--------------------------------------------------------
                                   1057 	.area DSEG    (DATA)
                                   1058 ;--------------------------------------------------------
                                   1059 ; overlayable items in internal ram 
                                   1060 ;--------------------------------------------------------
                                   1061 ;--------------------------------------------------------
                                   1062 ; indirectly addressable internal ram data
                                   1063 ;--------------------------------------------------------
                                   1064 	.area ISEG    (DATA)
                                   1065 ;--------------------------------------------------------
                                   1066 ; absolute internal ram data
                                   1067 ;--------------------------------------------------------
                                   1068 	.area IABS    (ABS,DATA)
                                   1069 	.area IABS    (ABS,DATA)
                                   1070 ;--------------------------------------------------------
                                   1071 ; bit data
                                   1072 ;--------------------------------------------------------
                                   1073 	.area BSEG    (BIT)
                                   1074 ;--------------------------------------------------------
                                   1075 ; paged external ram data
                                   1076 ;--------------------------------------------------------
                                   1077 	.area PSEG    (PAG,XDATA)
                                   1078 ;--------------------------------------------------------
                                   1079 ; external ram data
                                   1080 ;--------------------------------------------------------
                                   1081 	.area XSEG    (XDATA)
                           000000  1082 Fu2f_hid$hid_layer$0$0==.
      00000A                       1083 _hid_layer:
      00000A                       1084 	.ds 288
                           000120  1085 Fu2f_hid$CIDS$0$0==.
      00012A                       1086 _CIDS:
      00012A                       1087 	.ds 50
                           000152  1088 Fu2f_hid$_hid_pkt$0$0==.
      00015C                       1089 __hid_pkt:
      00015C                       1090 	.ds 64
                           000192  1091 Lu2f_hid.get_new_cid$base$1$142==.
      00019C                       1092 _get_new_cid_base_1_142:
      00019C                       1093 	.ds 4
                           000196  1094 Fu2f_hid$errbuf$0$0==.
      0001A0                       1095 _errbuf:
      0001A0                       1096 	.ds 64
                           0001D6  1097 Lu2f_hid.u2f_hid_request$last_seq$1$193==.
      0001E0                       1098 _u2f_hid_request_last_seq_1_193:
      0001E0                       1099 	.ds 1
                                   1100 ;--------------------------------------------------------
                                   1101 ; absolute external ram data
                                   1102 ;--------------------------------------------------------
                                   1103 	.area XABS    (ABS,XDATA)
                                   1104 ;--------------------------------------------------------
                                   1105 ; external initialized ram data
                                   1106 ;--------------------------------------------------------
                                   1107 	.area XISEG   (XDATA)
                           000000  1108 G$_hid_lockt$0$0==.
      0002E2                       1109 __hid_lockt::
      0002E2                       1110 	.ds 4
                           000004  1111 G$_hid_lock_cid$0$0==.
      0002E6                       1112 __hid_lock_cid::
      0002E6                       1113 	.ds 4
                           000008  1114 Fu2f_hid$CID_NUM$0$0==.
      0002EA                       1115 _CID_NUM:
      0002EA                       1116 	.ds 1
                           000009  1117 Fu2f_hid$_hid_offset$0$0==.
      0002EB                       1118 __hid_offset:
      0002EB                       1119 	.ds 1
                           00000A  1120 Fu2f_hid$_hid_seq$0$0==.
      0002EC                       1121 __hid_seq:
      0002EC                       1122 	.ds 2
                           00000C  1123 Fu2f_hid$_hid_in_session$0$0==.
      0002EE                       1124 __hid_in_session:
      0002EE                       1125 	.ds 1
                                   1126 	.area HOME    (CODE)
                                   1127 	.area GSINIT0 (CODE)
                                   1128 	.area GSINIT1 (CODE)
                                   1129 	.area GSINIT2 (CODE)
                                   1130 	.area GSINIT3 (CODE)
                                   1131 	.area GSINIT4 (CODE)
                                   1132 	.area GSINIT5 (CODE)
                                   1133 	.area GSINIT  (CODE)
                                   1134 	.area GSFINAL (CODE)
                                   1135 	.area CSEG    (CODE)
                                   1136 ;--------------------------------------------------------
                                   1137 ; global & static initialisations
                                   1138 ;--------------------------------------------------------
                                   1139 	.area HOME    (CODE)
                                   1140 	.area GSINIT  (CODE)
                                   1141 	.area GSFINAL (CODE)
                                   1142 	.area GSINIT  (CODE)
                                   1143 ;------------------------------------------------------------
                                   1144 ;Allocation info for local variables in function 'get_new_cid'
                                   1145 ;------------------------------------------------------------
                                   1146 ;i                         Allocated to registers r6 r7 
                                   1147 ;sloc0                     Allocated to stack - _bp +3
                                   1148 ;sloc1                     Allocated to stack - _bp +1
                                   1149 ;base                      Allocated with name '_get_new_cid_base_1_142'
                                   1150 ;------------------------------------------------------------
                           000000  1151 	Fu2f_hid$get_new_cid$0$0 ==.
                           000000  1152 	C$u2f_hid.c$201$1$142 ==.
                                   1153 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:201: static uint32_t base = 0xcafebabe;
      00005F 90 01 9C         [24] 1154 	mov	dptr,#_get_new_cid_base_1_142
      000062 74 BE            [12] 1155 	mov	a,#0xbe
      000064 F0               [24] 1156 	movx	@dptr,a
      000065 74 BA            [12] 1157 	mov	a,#0xba
      000067 A3               [24] 1158 	inc	dptr
      000068 F0               [24] 1159 	movx	@dptr,a
      000069 74 FE            [12] 1160 	mov	a,#0xfe
      00006B A3               [24] 1161 	inc	dptr
      00006C F0               [24] 1162 	movx	@dptr,a
      00006D 74 CA            [12] 1163 	mov	a,#0xca
      00006F A3               [24] 1164 	inc	dptr
      000070 F0               [24] 1165 	movx	@dptr,a
                                   1166 ;--------------------------------------------------------
                                   1167 ; Home
                                   1168 ;--------------------------------------------------------
                                   1169 	.area HOME    (CODE)
                                   1170 	.area HOME    (CODE)
                                   1171 ;--------------------------------------------------------
                                   1172 ; code
                                   1173 ;--------------------------------------------------------
                                   1174 	.area CSEG    (CODE)
                                   1175 ;------------------------------------------------------------
                                   1176 ;Allocation info for local variables in function 'u2f_hid_init'
                                   1177 ;------------------------------------------------------------
                           000000  1178 	G$u2f_hid_init$0$0 ==.
                           000000  1179 	C$u2f_hid.c$106$0$0 ==.
                                   1180 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:106: void u2f_hid_init()
                                   1181 ;	-----------------------------------------
                                   1182 ;	 function u2f_hid_init
                                   1183 ;	-----------------------------------------
      0005C5                       1184 _u2f_hid_init:
                           000007  1185 	ar7 = 0x07
                           000006  1186 	ar6 = 0x06
                           000005  1187 	ar5 = 0x05
                           000004  1188 	ar4 = 0x04
                           000003  1189 	ar3 = 0x03
                           000002  1190 	ar2 = 0x02
                           000001  1191 	ar1 = 0x01
                           000000  1192 	ar0 = 0x00
                           000000  1193 	C$u2f_hid.c$108$1$126 ==.
                                   1194 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:108: memset(CIDS, 0, sizeof(CIDS));
      0005C5 74 32            [12] 1195 	mov	a,#0x32
      0005C7 C0 E0            [24] 1196 	push	acc
      0005C9 E4               [12] 1197 	clr	a
      0005CA C0 E0            [24] 1198 	push	acc
      0005CC C0 E0            [24] 1199 	push	acc
      0005CE 90 01 2A         [24] 1200 	mov	dptr,#_CIDS
      0005D1 75 F0 00         [24] 1201 	mov	b,#0x00
      0005D4 12 5D D4         [24] 1202 	lcall	_memset
      0005D7 15 81            [12] 1203 	dec	sp
      0005D9 15 81            [12] 1204 	dec	sp
      0005DB 15 81            [12] 1205 	dec	sp
                           000018  1206 	C$u2f_hid.c$109$1$126 ==.
                                   1207 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:109: memset(&hid_layer, 0, sizeof(hid_layer));
      0005DD 74 20            [12] 1208 	mov	a,#0x20
      0005DF C0 E0            [24] 1209 	push	acc
      0005E1 74 01            [12] 1210 	mov	a,#0x01
      0005E3 C0 E0            [24] 1211 	push	acc
      0005E5 E4               [12] 1212 	clr	a
      0005E6 C0 E0            [24] 1213 	push	acc
      0005E8 90 00 0A         [24] 1214 	mov	dptr,#_hid_layer
      0005EB 75 F0 00         [24] 1215 	mov	b,#0x00
      0005EE 12 5D D4         [24] 1216 	lcall	_memset
      0005F1 15 81            [12] 1217 	dec	sp
      0005F3 15 81            [12] 1218 	dec	sp
      0005F5 15 81            [12] 1219 	dec	sp
                           000032  1220 	C$u2f_hid.c$110$1$126 ==.
                                   1221 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:110: CID_NUM = 0;
      0005F7 90 02 EA         [24] 1222 	mov	dptr,#_CID_NUM
      0005FA E4               [12] 1223 	clr	a
      0005FB F0               [24] 1224 	movx	@dptr,a
                           000037  1225 	C$u2f_hid.c$111$1$126 ==.
                                   1226 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:111: _hid_offset = 0;
      0005FC 90 02 EB         [24] 1227 	mov	dptr,#__hid_offset
      0005FF F0               [24] 1228 	movx	@dptr,a
                           00003B  1229 	C$u2f_hid.c$112$1$126 ==.
                                   1230 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:112: _hid_seq = 0;
      000600 90 02 EC         [24] 1231 	mov	dptr,#__hid_seq
      000603 F0               [24] 1232 	movx	@dptr,a
      000604 A3               [24] 1233 	inc	dptr
      000605 F0               [24] 1234 	movx	@dptr,a
                           000041  1235 	C$u2f_hid.c$113$1$126 ==.
                                   1236 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:113: _hid_in_session = 0;
      000606 90 02 EE         [24] 1237 	mov	dptr,#__hid_in_session
      000609 F0               [24] 1238 	movx	@dptr,a
                           000045  1239 	C$u2f_hid.c$114$1$126 ==.
                           000045  1240 	XG$u2f_hid_init$0$0 ==.
      00060A 22               [24] 1241 	ret
                                   1242 ;------------------------------------------------------------
                                   1243 ;Allocation info for local variables in function 'u2f_hid_set_len'
                                   1244 ;------------------------------------------------------------
                                   1245 ;len                       Allocated to registers r6 r7 
                                   1246 ;------------------------------------------------------------
                           000046  1247 	G$u2f_hid_set_len$0$0 ==.
                           000046  1248 	C$u2f_hid.c$116$1$126 ==.
                                   1249 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:116: void u2f_hid_set_len(uint16_t len)
                                   1250 ;	-----------------------------------------
                                   1251 ;	 function u2f_hid_set_len
                                   1252 ;	-----------------------------------------
      00060B                       1253 _u2f_hid_set_len:
      00060B AE 82            [24] 1254 	mov	r6,dpl
      00060D AF 83            [24] 1255 	mov	r7,dph
                           00004A  1256 	C$u2f_hid.c$118$1$128 ==.
                                   1257 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:118: hid_layer.res_len = len;
      00060F 90 00 1A         [24] 1258 	mov	dptr,#(_hid_layer + 0x0010)
      000612 EE               [12] 1259 	mov	a,r6
      000613 F0               [24] 1260 	movx	@dptr,a
      000614 EF               [12] 1261 	mov	a,r7
      000615 A3               [24] 1262 	inc	dptr
      000616 F0               [24] 1263 	movx	@dptr,a
                           000052  1264 	C$u2f_hid.c$119$1$128 ==.
                           000052  1265 	XG$u2f_hid_set_len$0$0 ==.
      000617 22               [24] 1266 	ret
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'u2f_hid_reset_packet'
                                   1269 ;------------------------------------------------------------
                           000053  1270 	Fu2f_hid$u2f_hid_reset_packet$0$0 ==.
                           000053  1271 	C$u2f_hid.c$122$1$128 ==.
                                   1272 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:122: static void u2f_hid_reset_packet()
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function u2f_hid_reset_packet
                                   1275 ;	-----------------------------------------
      000618                       1276 _u2f_hid_reset_packet:
                           000053  1277 	C$u2f_hid.c$124$1$129 ==.
                                   1278 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:124: _hid_seq = 0;
      000618 90 02 EC         [24] 1279 	mov	dptr,#__hid_seq
      00061B E4               [12] 1280 	clr	a
      00061C F0               [24] 1281 	movx	@dptr,a
      00061D A3               [24] 1282 	inc	dptr
      00061E F0               [24] 1283 	movx	@dptr,a
                           00005A  1284 	C$u2f_hid.c$125$1$129 ==.
                                   1285 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:125: _hid_offset = 0;
      00061F 90 02 EB         [24] 1286 	mov	dptr,#__hid_offset
      000622 F0               [24] 1287 	movx	@dptr,a
                           00005E  1288 	C$u2f_hid.c$126$1$129 ==.
                                   1289 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:126: _hid_in_session = 0;
      000623 90 02 EE         [24] 1290 	mov	dptr,#__hid_in_session
      000626 F0               [24] 1291 	movx	@dptr,a
                           000062  1292 	C$u2f_hid.c$127$1$129 ==.
                                   1293 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:127: memset(&hid_layer, 0, sizeof(hid_layer));
      000627 74 20            [12] 1294 	mov	a,#0x20
      000629 C0 E0            [24] 1295 	push	acc
      00062B 74 01            [12] 1296 	mov	a,#0x01
      00062D C0 E0            [24] 1297 	push	acc
      00062F E4               [12] 1298 	clr	a
      000630 C0 E0            [24] 1299 	push	acc
      000632 90 00 0A         [24] 1300 	mov	dptr,#_hid_layer
      000635 75 F0 00         [24] 1301 	mov	b,#0x00
      000638 12 5D D4         [24] 1302 	lcall	_memset
      00063B 15 81            [12] 1303 	dec	sp
      00063D 15 81            [12] 1304 	dec	sp
      00063F 15 81            [12] 1305 	dec	sp
                           00007C  1306 	C$u2f_hid.c$128$1$129 ==.
                                   1307 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:128: memset(_hid_pkt, 0, HID_PACKET_SIZE);
      000641 74 40            [12] 1308 	mov	a,#0x40
      000643 C0 E0            [24] 1309 	push	acc
      000645 E4               [12] 1310 	clr	a
      000646 C0 E0            [24] 1311 	push	acc
      000648 C0 E0            [24] 1312 	push	acc
      00064A 90 01 5C         [24] 1313 	mov	dptr,#__hid_pkt
      00064D 75 F0 00         [24] 1314 	mov	b,#0x00
      000650 12 5D D4         [24] 1315 	lcall	_memset
      000653 15 81            [12] 1316 	dec	sp
      000655 15 81            [12] 1317 	dec	sp
      000657 15 81            [12] 1318 	dec	sp
                           000094  1319 	C$u2f_hid.c$129$1$129 ==.
                           000094  1320 	XFu2f_hid$u2f_hid_reset_packet$0$0 ==.
      000659 22               [24] 1321 	ret
                                   1322 ;------------------------------------------------------------
                                   1323 ;Allocation info for local variables in function 'u2f_hid_flush'
                                   1324 ;------------------------------------------------------------
                           000095  1325 	G$u2f_hid_flush$0$0 ==.
                           000095  1326 	C$u2f_hid.c$132$1$129 ==.
                                   1327 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:132: void u2f_hid_flush()
                                   1328 ;	-----------------------------------------
                                   1329 ;	 function u2f_hid_flush
                                   1330 ;	-----------------------------------------
      00065A                       1331 _u2f_hid_flush:
                           000095  1332 	C$u2f_hid.c$134$1$130 ==.
                                   1333 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:134: if (_hid_offset)
      00065A 90 02 EB         [24] 1334 	mov	dptr,#__hid_offset
      00065D E0               [24] 1335 	movx	a,@dptr
      00065E FF               [12] 1336 	mov	r7,a
      00065F 60 0F            [24] 1337 	jz	00102$
                           00009C  1338 	C$u2f_hid.c$136$2$131 ==.
                                   1339 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:136: usb_write(_hid_pkt, HID_PACKET_SIZE);
      000661 74 40            [12] 1340 	mov	a,#0x40
      000663 C0 E0            [24] 1341 	push	acc
      000665 90 01 5C         [24] 1342 	mov	dptr,#__hid_pkt
      000668 75 F0 00         [24] 1343 	mov	b,#0x00
      00066B 12 1E 7C         [24] 1344 	lcall	_usb_write
      00066E 15 81            [12] 1345 	dec	sp
      000670                       1346 00102$:
                           0000AB  1347 	C$u2f_hid.c$138$1$130 ==.
                                   1348 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:138: u2f_hid_reset_packet();
      000670 12 06 18         [24] 1349 	lcall	_u2f_hid_reset_packet
                           0000AE  1350 	C$u2f_hid.c$139$1$130 ==.
                           0000AE  1351 	XG$u2f_hid_flush$0$0 ==.
      000673 22               [24] 1352 	ret
                                   1353 ;------------------------------------------------------------
                                   1354 ;Allocation info for local variables in function 'u2f_hid_writeback'
                                   1355 ;------------------------------------------------------------
                                   1356 ;len                       Allocated to stack - _bp -4
                                   1357 ;payload                   Allocated to registers 
                                   1358 ;r                         Allocated to registers 
                                   1359 ;sloc0                     Allocated to stack - _bp +1
                                   1360 ;------------------------------------------------------------
                           0000AF  1361 	G$u2f_hid_writeback$0$0 ==.
                           0000AF  1362 	C$u2f_hid.c$143$1$130 ==.
                                   1363 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:143: void u2f_hid_writeback(uint8_t * payload, uint16_t len)
                                   1364 ;	-----------------------------------------
                                   1365 ;	 function u2f_hid_writeback
                                   1366 ;	-----------------------------------------
      000674                       1367 _u2f_hid_writeback:
      000674 C0 1B            [24] 1368 	push	_bp
      000676 85 81 1B         [24] 1369 	mov	_bp,sp
      000679 05 81            [12] 1370 	inc	sp
      00067B 05 81            [12] 1371 	inc	sp
      00067D AD 82            [24] 1372 	mov	r5,dpl
      00067F AE 83            [24] 1373 	mov	r6,dph
      000681 AF F0            [24] 1374 	mov	r7,b
                           0000BE  1375 	C$u2f_hid.c$146$1$133 ==.
                                   1376 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:146: struct u2f_hid_msg * r = (struct u2f_hid_msg *) _hid_pkt;
                           0000BE  1377 	C$u2f_hid.c$148$1$133 ==.
                                   1378 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:148: _hid_in_session = 1;
      000683 90 02 EE         [24] 1379 	mov	dptr,#__hid_in_session
      000686 74 01            [12] 1380 	mov	a,#0x01
      000688 F0               [24] 1381 	movx	@dptr,a
                           0000C4  1382 	C$u2f_hid.c$151$3$135 ==.
                                   1383 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:151: do
      000689 E5 1B            [12] 1384 	mov	a,_bp
      00068B 24 FC            [12] 1385 	add	a,#0xfc
      00068D F8               [12] 1386 	mov	r0,a
      00068E 86 03            [24] 1387 	mov	ar3,@r0
      000690 08               [12] 1388 	inc	r0
      000691 86 04            [24] 1389 	mov	ar4,@r0
      000693                       1390 00112$:
                           0000CE  1391 	C$u2f_hid.c$154$2$134 ==.
                                   1392 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:154: if (_hid_offset == 0)
      000693 90 02 EB         [24] 1393 	mov	dptr,#__hid_offset
      000696 E0               [24] 1394 	movx	a,@dptr
      000697 60 03            [24] 1395 	jz	00135$
      000699 02 07 56         [24] 1396 	ljmp	00107$
      00069C                       1397 00135$:
                           0000D7  1398 	C$u2f_hid.c$156$1$133 ==.
                                   1399 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:156: r->cid = hid_layer.current_cid;
      00069C C0 05            [24] 1400 	push	ar5
      00069E C0 06            [24] 1401 	push	ar6
      0006A0 C0 07            [24] 1402 	push	ar7
      0006A2 90 00 0B         [24] 1403 	mov	dptr,#(_hid_layer + 0x0001)
      0006A5 E0               [24] 1404 	movx	a,@dptr
      0006A6 FA               [12] 1405 	mov	r2,a
      0006A7 A3               [24] 1406 	inc	dptr
      0006A8 E0               [24] 1407 	movx	a,@dptr
      0006A9 FD               [12] 1408 	mov	r5,a
      0006AA A3               [24] 1409 	inc	dptr
      0006AB E0               [24] 1410 	movx	a,@dptr
      0006AC FE               [12] 1411 	mov	r6,a
      0006AD A3               [24] 1412 	inc	dptr
      0006AE E0               [24] 1413 	movx	a,@dptr
      0006AF FF               [12] 1414 	mov	r7,a
      0006B0 90 01 5C         [24] 1415 	mov	dptr,#__hid_pkt
      0006B3 EA               [12] 1416 	mov	a,r2
      0006B4 F0               [24] 1417 	movx	@dptr,a
      0006B5 ED               [12] 1418 	mov	a,r5
      0006B6 A3               [24] 1419 	inc	dptr
      0006B7 F0               [24] 1420 	movx	@dptr,a
      0006B8 EE               [12] 1421 	mov	a,r6
      0006B9 A3               [24] 1422 	inc	dptr
      0006BA F0               [24] 1423 	movx	@dptr,a
      0006BB EF               [12] 1424 	mov	a,r7
      0006BC A3               [24] 1425 	inc	dptr
      0006BD F0               [24] 1426 	movx	@dptr,a
                           0000F9  1427 	C$u2f_hid.c$157$3$135 ==.
                                   1428 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:157: if (!_hid_seq)
      0006BE 90 02 EC         [24] 1429 	mov	dptr,#__hid_seq
      0006C1 A8 1B            [24] 1430 	mov	r0,_bp
      0006C3 08               [12] 1431 	inc	r0
      0006C4 E0               [24] 1432 	movx	a,@dptr
      0006C5 F6               [12] 1433 	mov	@r0,a
      0006C6 A3               [24] 1434 	inc	dptr
      0006C7 E0               [24] 1435 	movx	a,@dptr
      0006C8 08               [12] 1436 	inc	r0
      0006C9 F6               [12] 1437 	mov	@r0,a
      0006CA D0 07            [24] 1438 	pop	ar7
      0006CC D0 06            [24] 1439 	pop	ar6
      0006CE D0 05            [24] 1440 	pop	ar5
      0006D0 90 02 EC         [24] 1441 	mov	dptr,#__hid_seq
      0006D3 E0               [24] 1442 	movx	a,@dptr
      0006D4 F5 F0            [12] 1443 	mov	b,a
      0006D6 A3               [24] 1444 	inc	dptr
      0006D7 E0               [24] 1445 	movx	a,@dptr
      0006D8 45 F0            [12] 1446 	orl	a,b
      0006DA 70 3A            [24] 1447 	jnz	00104$
                           000117  1448 	C$u2f_hid.c$159$1$133 ==.
                                   1449 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:159: r->pkt.init.cmd = hid_layer.current_cmd;
      0006DC C0 05            [24] 1450 	push	ar5
      0006DE C0 06            [24] 1451 	push	ar6
      0006E0 C0 07            [24] 1452 	push	ar7
      0006E2 90 00 0F         [24] 1453 	mov	dptr,#(_hid_layer + 0x0005)
      0006E5 E0               [24] 1454 	movx	a,@dptr
      0006E6 FA               [12] 1455 	mov	r2,a
      0006E7 90 01 60         [24] 1456 	mov	dptr,#(__hid_pkt + 0x0004)
      0006EA 75 F0 00         [24] 1457 	mov	b,#0x00
      0006ED EA               [12] 1458 	mov	a,r2
      0006EE 12 5A 48         [24] 1459 	lcall	__gptrput
                           00012C  1460 	C$u2f_hid.c$160$4$136 ==.
                                   1461 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:160: U2FHID_SET_LEN(r, hid_layer.res_len);
      0006F1 90 00 1A         [24] 1462 	mov	dptr,#(_hid_layer + 0x0010)
      0006F4 E0               [24] 1463 	movx	a,@dptr
      0006F5 FA               [12] 1464 	mov	r2,a
      0006F6 A3               [24] 1465 	inc	dptr
      0006F7 E0               [24] 1466 	movx	a,@dptr
      0006F8 FF               [12] 1467 	mov	r7,a
      0006F9 90 01 61         [24] 1468 	mov	dptr,#(__hid_pkt + 0x0005)
      0006FC 75 F0 00         [24] 1469 	mov	b,#0x00
      0006FF EA               [12] 1470 	mov	a,r2
      000700 12 5A 48         [24] 1471 	lcall	__gptrput
      000703 A3               [24] 1472 	inc	dptr
      000704 EF               [12] 1473 	mov	a,r7
      000705 12 5A 48         [24] 1474 	lcall	__gptrput
                           000143  1475 	C$u2f_hid.c$161$4$136 ==.
                                   1476 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:161: _hid_offset = 7;
      000708 90 02 EB         [24] 1477 	mov	dptr,#__hid_offset
      00070B 74 07            [12] 1478 	mov	a,#0x07
      00070D F0               [24] 1479 	movx	@dptr,a
      00070E D0 07            [24] 1480 	pop	ar7
      000710 D0 06            [24] 1481 	pop	ar6
      000712 D0 05            [24] 1482 	pop	ar5
      000714 80 40            [24] 1483 	sjmp	00107$
      000716                       1484 00104$:
                           000151  1485 	C$u2f_hid.c$165$1$133 ==.
                                   1486 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:165: r->pkt.cont.seq = (uint8_t)_hid_seq - 1;
      000716 C0 05            [24] 1487 	push	ar5
      000718 C0 06            [24] 1488 	push	ar6
      00071A C0 07            [24] 1489 	push	ar7
      00071C A8 1B            [24] 1490 	mov	r0,_bp
      00071E 08               [12] 1491 	inc	r0
      00071F 86 02            [24] 1492 	mov	ar2,@r0
      000721 1A               [12] 1493 	dec	r2
      000722 90 01 60         [24] 1494 	mov	dptr,#(__hid_pkt + 0x0004)
      000725 75 F0 00         [24] 1495 	mov	b,#0x00
      000728 EA               [12] 1496 	mov	a,r2
      000729 12 5A 48         [24] 1497 	lcall	__gptrput
                           000167  1498 	C$u2f_hid.c$166$4$137 ==.
                                   1499 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:166: _hid_offset = 5;
      00072C 90 02 EB         [24] 1500 	mov	dptr,#__hid_offset
      00072F 74 05            [12] 1501 	mov	a,#0x05
      000731 F0               [24] 1502 	movx	@dptr,a
                           00016D  1503 	C$u2f_hid.c$167$4$137 ==.
                                   1504 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:167: if (_hid_seq-1 > 127)
      000732 90 02 EC         [24] 1505 	mov	dptr,#__hid_seq
      000735 E0               [24] 1506 	movx	a,@dptr
      000736 FA               [12] 1507 	mov	r2,a
      000737 A3               [24] 1508 	inc	dptr
      000738 E0               [24] 1509 	movx	a,@dptr
      000739 FF               [12] 1510 	mov	r7,a
      00073A 1A               [12] 1511 	dec	r2
      00073B BA FF 01         [24] 1512 	cjne	r2,#0xff,00137$
      00073E 1F               [12] 1513 	dec	r7
      00073F                       1514 00137$:
      00073F C3               [12] 1515 	clr	c
      000740 74 7F            [12] 1516 	mov	a,#0x7f
      000742 9A               [12] 1517 	subb	a,r2
      000743 E4               [12] 1518 	clr	a
      000744 9F               [12] 1519 	subb	a,r7
      000745 D0 07            [24] 1520 	pop	ar7
      000747 D0 06            [24] 1521 	pop	ar6
      000749 D0 05            [24] 1522 	pop	ar5
      00074B 50 09            [24] 1523 	jnc	00107$
                           000188  1524 	C$u2f_hid.c$169$5$138 ==.
                                   1525 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:169: set_app_error(ERROR_SEQ_EXCEEDED);
      00074D 75 82 12         [24] 1526 	mov	dpl,#0x12
      000750 12 00 A4         [24] 1527 	lcall	_set_app_error
                           00018E  1528 	C$u2f_hid.c$170$5$138 ==.
                                   1529 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:170: return;
      000753 02 08 03         [24] 1530 	ljmp	00115$
      000756                       1531 00107$:
                           000191  1532 	C$u2f_hid.c$175$1$133 ==.
                                   1533 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:175: _hid_pkt[_hid_offset++] = *payload++;
      000756 C0 03            [24] 1534 	push	ar3
      000758 C0 04            [24] 1535 	push	ar4
      00075A 90 02 EB         [24] 1536 	mov	dptr,#__hid_offset
      00075D E0               [24] 1537 	movx	a,@dptr
      00075E FA               [12] 1538 	mov	r2,a
      00075F 04               [12] 1539 	inc	a
      000760 F0               [24] 1540 	movx	@dptr,a
      000761 EA               [12] 1541 	mov	a,r2
      000762 24 5C            [12] 1542 	add	a,#__hid_pkt
      000764 FA               [12] 1543 	mov	r2,a
      000765 E4               [12] 1544 	clr	a
      000766 34 01            [12] 1545 	addc	a,#(__hid_pkt >> 8)
      000768 FC               [12] 1546 	mov	r4,a
      000769 8D 82            [24] 1547 	mov	dpl,r5
      00076B 8E 83            [24] 1548 	mov	dph,r6
      00076D 8F F0            [24] 1549 	mov	b,r7
      00076F 12 5E 3E         [24] 1550 	lcall	__gptrget
      000772 FB               [12] 1551 	mov	r3,a
      000773 A3               [24] 1552 	inc	dptr
      000774 AD 82            [24] 1553 	mov	r5,dpl
      000776 AE 83            [24] 1554 	mov	r6,dph
      000778 8A 82            [24] 1555 	mov	dpl,r2
      00077A 8C 83            [24] 1556 	mov	dph,r4
      00077C EB               [12] 1557 	mov	a,r3
      00077D F0               [24] 1558 	movx	@dptr,a
                           0001B9  1559 	C$u2f_hid.c$176$2$134 ==.
                                   1560 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:176: hid_layer.bytes_written++;
      00077E 90 00 18         [24] 1561 	mov	dptr,#(_hid_layer + 0x000e)
      000781 E0               [24] 1562 	movx	a,@dptr
      000782 FB               [12] 1563 	mov	r3,a
      000783 A3               [24] 1564 	inc	dptr
      000784 E0               [24] 1565 	movx	a,@dptr
      000785 FC               [12] 1566 	mov	r4,a
      000786 0B               [12] 1567 	inc	r3
      000787 BB 00 01         [24] 1568 	cjne	r3,#0x00,00139$
      00078A 0C               [12] 1569 	inc	r4
      00078B                       1570 00139$:
      00078B 90 00 18         [24] 1571 	mov	dptr,#(_hid_layer + 0x000e)
      00078E EB               [12] 1572 	mov	a,r3
      00078F F0               [24] 1573 	movx	@dptr,a
      000790 EC               [12] 1574 	mov	a,r4
      000791 A3               [24] 1575 	inc	dptr
      000792 F0               [24] 1576 	movx	@dptr,a
                           0001CE  1577 	C$u2f_hid.c$177$2$134 ==.
                                   1578 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:177: if (_hid_offset == HID_PACKET_SIZE)
      000793 90 02 EB         [24] 1579 	mov	dptr,#__hid_offset
      000796 E0               [24] 1580 	movx	a,@dptr
      000797 FC               [12] 1581 	mov	r4,a
      000798 BC 40 02         [24] 1582 	cjne	r4,#0x40,00140$
      00079B 80 06            [24] 1583 	sjmp	00141$
      00079D                       1584 00140$:
      00079D D0 04            [24] 1585 	pop	ar4
      00079F D0 03            [24] 1586 	pop	ar3
      0007A1 80 50            [24] 1587 	sjmp	00109$
      0007A3                       1588 00141$:
      0007A3 D0 04            [24] 1589 	pop	ar4
      0007A5 D0 03            [24] 1590 	pop	ar3
                           0001E2  1591 	C$u2f_hid.c$179$3$139 ==.
                                   1592 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:179: _hid_offset = 0;
      0007A7 90 02 EB         [24] 1593 	mov	dptr,#__hid_offset
      0007AA E4               [12] 1594 	clr	a
      0007AB F0               [24] 1595 	movx	@dptr,a
                           0001E7  1596 	C$u2f_hid.c$180$3$139 ==.
                                   1597 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:180: _hid_seq++;
      0007AC 90 02 EC         [24] 1598 	mov	dptr,#__hid_seq
      0007AF E0               [24] 1599 	movx	a,@dptr
      0007B0 24 01            [12] 1600 	add	a,#0x01
      0007B2 F0               [24] 1601 	movx	@dptr,a
      0007B3 A3               [24] 1602 	inc	dptr
      0007B4 E0               [24] 1603 	movx	a,@dptr
      0007B5 34 00            [12] 1604 	addc	a,#0x00
      0007B7 F0               [24] 1605 	movx	@dptr,a
                           0001F3  1606 	C$u2f_hid.c$182$3$139 ==.
                                   1607 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:182: usb_write(_hid_pkt, HID_PACKET_SIZE);
      0007B8 C0 07            [24] 1608 	push	ar7
      0007BA C0 06            [24] 1609 	push	ar6
      0007BC C0 05            [24] 1610 	push	ar5
      0007BE C0 04            [24] 1611 	push	ar4
      0007C0 C0 03            [24] 1612 	push	ar3
      0007C2 74 40            [12] 1613 	mov	a,#0x40
      0007C4 C0 E0            [24] 1614 	push	acc
      0007C6 90 01 5C         [24] 1615 	mov	dptr,#__hid_pkt
      0007C9 75 F0 00         [24] 1616 	mov	b,#0x00
      0007CC 12 1E 7C         [24] 1617 	lcall	_usb_write
      0007CF 15 81            [12] 1618 	dec	sp
                           00020C  1619 	C$u2f_hid.c$183$3$139 ==.
                                   1620 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:183: memset(_hid_pkt, 0, HID_PACKET_SIZE);
      0007D1 74 40            [12] 1621 	mov	a,#0x40
      0007D3 C0 E0            [24] 1622 	push	acc
      0007D5 E4               [12] 1623 	clr	a
      0007D6 C0 E0            [24] 1624 	push	acc
      0007D8 C0 E0            [24] 1625 	push	acc
      0007DA 90 01 5C         [24] 1626 	mov	dptr,#__hid_pkt
      0007DD 75 F0 00         [24] 1627 	mov	b,#0x00
      0007E0 12 5D D4         [24] 1628 	lcall	_memset
      0007E3 15 81            [12] 1629 	dec	sp
      0007E5 15 81            [12] 1630 	dec	sp
      0007E7 15 81            [12] 1631 	dec	sp
      0007E9 D0 03            [24] 1632 	pop	ar3
      0007EB D0 04            [24] 1633 	pop	ar4
      0007ED D0 05            [24] 1634 	pop	ar5
      0007EF D0 06            [24] 1635 	pop	ar6
      0007F1 D0 07            [24] 1636 	pop	ar7
      0007F3                       1637 00109$:
                           00022E  1638 	C$u2f_hid.c$185$2$134 ==.
                                   1639 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:185: if (!len) break;
      0007F3 EB               [12] 1640 	mov	a,r3
      0007F4 4C               [12] 1641 	orl	a,r4
      0007F5 60 0C            [24] 1642 	jz	00115$
                           000232  1643 	C$u2f_hid.c$187$1$133 ==.
                                   1644 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:187: while(--len);
      0007F7 1B               [12] 1645 	dec	r3
      0007F8 BB FF 01         [24] 1646 	cjne	r3,#0xff,00143$
      0007FB 1C               [12] 1647 	dec	r4
      0007FC                       1648 00143$:
      0007FC EB               [12] 1649 	mov	a,r3
      0007FD 4C               [12] 1650 	orl	a,r4
      0007FE 60 03            [24] 1651 	jz	00144$
      000800 02 06 93         [24] 1652 	ljmp	00112$
      000803                       1653 00144$:
      000803                       1654 00115$:
      000803 85 1B 81         [24] 1655 	mov	sp,_bp
      000806 D0 1B            [24] 1656 	pop	_bp
                           000243  1657 	C$u2f_hid.c$189$1$133 ==.
                           000243  1658 	XG$u2f_hid_writeback$0$0 ==.
      000808 22               [24] 1659 	ret
                                   1660 ;------------------------------------------------------------
                                   1661 ;Allocation info for local variables in function 'refresh_cid'
                                   1662 ;------------------------------------------------------------
                                   1663 ;c                         Allocated to registers r5 r6 r7 
                                   1664 ;------------------------------------------------------------
                           000244  1665 	Fu2f_hid$refresh_cid$0$0 ==.
                           000244  1666 	C$u2f_hid.c$193$1$133 ==.
                                   1667 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:193: static void refresh_cid(struct CID* c)
                                   1668 ;	-----------------------------------------
                                   1669 ;	 function refresh_cid
                                   1670 ;	-----------------------------------------
      000809                       1671 _refresh_cid:
      000809 AD 82            [24] 1672 	mov	r5,dpl
      00080B AE 83            [24] 1673 	mov	r6,dph
      00080D AF F0            [24] 1674 	mov	r7,b
                           00024A  1675 	C$u2f_hid.c$195$1$141 ==.
                                   1676 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:195: c->last_used = get_ms();
      00080F 74 04            [12] 1677 	mov	a,#0x04
      000811 2D               [12] 1678 	add	a,r5
      000812 FD               [12] 1679 	mov	r5,a
      000813 E4               [12] 1680 	clr	a
      000814 3E               [12] 1681 	addc	a,r6
      000815 FE               [12] 1682 	mov	r6,a
      000816 8D 82            [24] 1683 	mov	dpl,r5
      000818 8E 83            [24] 1684 	mov	dph,r6
      00081A 8F F0            [24] 1685 	mov	b,r7
      00081C E5 08            [12] 1686 	mov	a,__MS_
      00081E 12 5A 48         [24] 1687 	lcall	__gptrput
      000821 A3               [24] 1688 	inc	dptr
      000822 E5 09            [12] 1689 	mov	a,(__MS_ + 1)
      000824 12 5A 48         [24] 1690 	lcall	__gptrput
      000827 A3               [24] 1691 	inc	dptr
      000828 E5 0A            [12] 1692 	mov	a,(__MS_ + 2)
      00082A 12 5A 48         [24] 1693 	lcall	__gptrput
      00082D A3               [24] 1694 	inc	dptr
      00082E E5 0B            [12] 1695 	mov	a,(__MS_ + 3)
      000830 12 5A 48         [24] 1696 	lcall	__gptrput
                           00026E  1697 	C$u2f_hid.c$196$1$141 ==.
                           00026E  1698 	XFu2f_hid$refresh_cid$0$0 ==.
      000833 22               [24] 1699 	ret
                                   1700 ;------------------------------------------------------------
                                   1701 ;Allocation info for local variables in function 'get_new_cid'
                                   1702 ;------------------------------------------------------------
                                   1703 ;i                         Allocated to registers r6 r7 
                                   1704 ;sloc0                     Allocated to stack - _bp +3
                                   1705 ;sloc1                     Allocated to stack - _bp +1
                                   1706 ;base                      Allocated with name '_get_new_cid_base_1_142'
                                   1707 ;------------------------------------------------------------
                           00026F  1708 	Fu2f_hid$get_new_cid$0$0 ==.
                           00026F  1709 	C$u2f_hid.c$199$1$141 ==.
                                   1710 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:199: static uint32_t get_new_cid()
                                   1711 ;	-----------------------------------------
                                   1712 ;	 function get_new_cid
                                   1713 ;	-----------------------------------------
      000834                       1714 _get_new_cid:
      000834 C0 1B            [24] 1715 	push	_bp
      000836 E5 81            [12] 1716 	mov	a,sp
      000838 F5 1B            [12] 1717 	mov	_bp,a
      00083A 24 04            [12] 1718 	add	a,#0x04
      00083C F5 81            [12] 1719 	mov	sp,a
                           000279  1720 	C$u2f_hid.c$203$1$142 ==.
                                   1721 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:203: for(i = 0; i < CID_MAX-1; i++)
      00083E 7E 00            [12] 1722 	mov	r6,#0x00
      000840 7F 00            [12] 1723 	mov	r7,#0x00
      000842 7C 00            [12] 1724 	mov	r4,#0x00
      000844 7D 00            [12] 1725 	mov	r5,#0x00
      000846 7A 00            [12] 1726 	mov	r2,#0x00
      000848 7B 00            [12] 1727 	mov	r3,#0x00
      00084A                       1728 00109$:
                           000285  1729 	C$u2f_hid.c$205$1$142 ==.
                                   1730 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:205: if (!CIDS[i].busy)
      00084A C0 06            [24] 1731 	push	ar6
      00084C C0 07            [24] 1732 	push	ar7
      00084E EA               [12] 1733 	mov	a,r2
      00084F 24 2A            [12] 1734 	add	a,#_CIDS
      000851 FE               [12] 1735 	mov	r6,a
      000852 EB               [12] 1736 	mov	a,r3
      000853 34 01            [12] 1737 	addc	a,#(_CIDS >> 8)
      000855 FF               [12] 1738 	mov	r7,a
      000856 74 08            [12] 1739 	mov	a,#0x08
      000858 2E               [12] 1740 	add	a,r6
      000859 FE               [12] 1741 	mov	r6,a
      00085A E4               [12] 1742 	clr	a
      00085B 3F               [12] 1743 	addc	a,r7
      00085C FF               [12] 1744 	mov	r7,a
      00085D 8E 82            [24] 1745 	mov	dpl,r6
      00085F 8F 83            [24] 1746 	mov	dph,r7
      000861 E0               [24] 1747 	movx	a,@dptr
      000862 D0 07            [24] 1748 	pop	ar7
      000864 D0 06            [24] 1749 	pop	ar6
      000866 60 24            [24] 1750 	jz	00116$
                           0002A3  1751 	C$u2f_hid.c$203$1$142 ==.
                                   1752 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:203: for(i = 0; i < CID_MAX-1; i++)
      000868 74 0A            [12] 1753 	mov	a,#0x0a
      00086A 2A               [12] 1754 	add	a,r2
      00086B FA               [12] 1755 	mov	r2,a
      00086C E4               [12] 1756 	clr	a
      00086D 3B               [12] 1757 	addc	a,r3
      00086E FB               [12] 1758 	mov	r3,a
      00086F 0C               [12] 1759 	inc	r4
      000870 BC 00 01         [24] 1760 	cjne	r4,#0x00,00132$
      000873 0D               [12] 1761 	inc	r5
      000874                       1762 00132$:
      000874 8C 06            [24] 1763 	mov	ar6,r4
      000876 8D 07            [24] 1764 	mov	ar7,r5
      000878 C3               [12] 1765 	clr	c
      000879 EC               [12] 1766 	mov	a,r4
      00087A 94 04            [12] 1767 	subb	a,#0x04
      00087C ED               [12] 1768 	mov	a,r5
      00087D 64 80            [12] 1769 	xrl	a,#0x80
      00087F 94 80            [12] 1770 	subb	a,#0x80
      000881 40 C7            [24] 1771 	jc	00109$
                           0002BE  1772 	C$u2f_hid.c$210$1$142 ==.
                                   1773 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:210: return 0;
      000883 90 00 00         [24] 1774 	mov	dptr,#(0x00&0x00ff)
      000886 E4               [12] 1775 	clr	a
      000887 F5 F0            [12] 1776 	mov	b,a
      000889 02 09 3D         [24] 1777 	ljmp	00111$
                           0002C7  1778 	C$u2f_hid.c$213$1$142 ==.
                                   1779 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:213: do
      00088C                       1780 00116$:
      00088C C0 06            [24] 1781 	push	ar6
      00088E C0 07            [24] 1782 	push	ar7
      000890 90 00 0A         [24] 1783 	mov	dptr,#0x000a
      000893 12 5B E5         [24] 1784 	lcall	__mulint
      000896 AE 82            [24] 1785 	mov	r6,dpl
      000898 AF 83            [24] 1786 	mov	r7,dph
      00089A 15 81            [12] 1787 	dec	sp
      00089C 15 81            [12] 1788 	dec	sp
      00089E                       1789 00106$:
                           0002D9  1790 	C$u2f_hid.c$215$2$145 ==.
                                   1791 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:215: CIDS[i].cid = base + CID_NUM++;
      00089E EE               [12] 1792 	mov	a,r6
      00089F 24 2A            [12] 1793 	add	a,#_CIDS
      0008A1 FC               [12] 1794 	mov	r4,a
      0008A2 EF               [12] 1795 	mov	a,r7
      0008A3 34 01            [12] 1796 	addc	a,#(_CIDS >> 8)
      0008A5 FD               [12] 1797 	mov	r5,a
      0008A6 90 02 EA         [24] 1798 	mov	dptr,#_CID_NUM
      0008A9 E0               [24] 1799 	movx	a,@dptr
      0008AA FB               [12] 1800 	mov	r3,a
      0008AB 04               [12] 1801 	inc	a
      0008AC F0               [24] 1802 	movx	@dptr,a
      0008AD C0 06            [24] 1803 	push	ar6
      0008AF C0 07            [24] 1804 	push	ar7
      0008B1 90 01 9C         [24] 1805 	mov	dptr,#_get_new_cid_base_1_142
      0008B4 A8 1B            [24] 1806 	mov	r0,_bp
      0008B6 08               [12] 1807 	inc	r0
      0008B7 E0               [24] 1808 	movx	a,@dptr
      0008B8 F6               [12] 1809 	mov	@r0,a
      0008B9 A3               [24] 1810 	inc	dptr
      0008BA E0               [24] 1811 	movx	a,@dptr
      0008BB 08               [12] 1812 	inc	r0
      0008BC F6               [12] 1813 	mov	@r0,a
      0008BD A3               [24] 1814 	inc	dptr
      0008BE E0               [24] 1815 	movx	a,@dptr
      0008BF 08               [12] 1816 	inc	r0
      0008C0 F6               [12] 1817 	mov	@r0,a
      0008C1 A3               [24] 1818 	inc	dptr
      0008C2 E0               [24] 1819 	movx	a,@dptr
      0008C3 08               [12] 1820 	inc	r0
      0008C4 F6               [12] 1821 	mov	@r0,a
      0008C5 8B 02            [24] 1822 	mov	ar2,r3
      0008C7 7B 00            [12] 1823 	mov	r3,#0x00
      0008C9 7E 00            [12] 1824 	mov	r6,#0x00
      0008CB 7F 00            [12] 1825 	mov	r7,#0x00
      0008CD A8 1B            [24] 1826 	mov	r0,_bp
      0008CF 08               [12] 1827 	inc	r0
      0008D0 EA               [12] 1828 	mov	a,r2
      0008D1 26               [12] 1829 	add	a,@r0
      0008D2 FA               [12] 1830 	mov	r2,a
      0008D3 EB               [12] 1831 	mov	a,r3
      0008D4 08               [12] 1832 	inc	r0
      0008D5 36               [12] 1833 	addc	a,@r0
      0008D6 FB               [12] 1834 	mov	r3,a
      0008D7 EE               [12] 1835 	mov	a,r6
      0008D8 08               [12] 1836 	inc	r0
      0008D9 36               [12] 1837 	addc	a,@r0
      0008DA FE               [12] 1838 	mov	r6,a
      0008DB EF               [12] 1839 	mov	a,r7
      0008DC 08               [12] 1840 	inc	r0
      0008DD 36               [12] 1841 	addc	a,@r0
      0008DE FF               [12] 1842 	mov	r7,a
      0008DF 8C 82            [24] 1843 	mov	dpl,r4
      0008E1 8D 83            [24] 1844 	mov	dph,r5
      0008E3 EA               [12] 1845 	mov	a,r2
      0008E4 F0               [24] 1846 	movx	@dptr,a
      0008E5 EB               [12] 1847 	mov	a,r3
      0008E6 A3               [24] 1848 	inc	dptr
      0008E7 F0               [24] 1849 	movx	@dptr,a
      0008E8 EE               [12] 1850 	mov	a,r6
      0008E9 A3               [24] 1851 	inc	dptr
      0008EA F0               [24] 1852 	movx	@dptr,a
      0008EB EF               [12] 1853 	mov	a,r7
      0008EC A3               [24] 1854 	inc	dptr
      0008ED F0               [24] 1855 	movx	@dptr,a
                           000329  1856 	C$u2f_hid.c$216$1$142 ==.
                                   1857 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:216: }while(CIDS[i].cid == 0 || CIDS[i].cid == U2FHID_BROADCAST);
      0008EE EA               [12] 1858 	mov	a,r2
      0008EF 4B               [12] 1859 	orl	a,r3
      0008F0 4E               [12] 1860 	orl	a,r6
      0008F1 4F               [12] 1861 	orl	a,r7
      0008F2 D0 07            [24] 1862 	pop	ar7
      0008F4 D0 06            [24] 1863 	pop	ar6
      0008F6 60 A6            [24] 1864 	jz	00106$
      0008F8 8C 82            [24] 1865 	mov	dpl,r4
      0008FA 8D 83            [24] 1866 	mov	dph,r5
      0008FC E0               [24] 1867 	movx	a,@dptr
      0008FD FC               [12] 1868 	mov	r4,a
      0008FE A3               [24] 1869 	inc	dptr
      0008FF E0               [24] 1870 	movx	a,@dptr
      000900 FD               [12] 1871 	mov	r5,a
      000901 A3               [24] 1872 	inc	dptr
      000902 E0               [24] 1873 	movx	a,@dptr
      000903 FB               [12] 1874 	mov	r3,a
      000904 A3               [24] 1875 	inc	dptr
      000905 E0               [24] 1876 	movx	a,@dptr
      000906 FA               [12] 1877 	mov	r2,a
      000907 BC FF 0B         [24] 1878 	cjne	r4,#0xff,00135$
      00090A BD FF 08         [24] 1879 	cjne	r5,#0xff,00135$
      00090D BB FF 05         [24] 1880 	cjne	r3,#0xff,00135$
      000910 BA FF 02         [24] 1881 	cjne	r2,#0xff,00135$
      000913 80 89            [24] 1882 	sjmp	00106$
      000915                       1883 00135$:
                           000350  1884 	C$u2f_hid.c$218$1$142 ==.
                                   1885 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:218: CIDS[i].busy = 0;
      000915 EE               [12] 1886 	mov	a,r6
      000916 24 2A            [12] 1887 	add	a,#_CIDS
      000918 FE               [12] 1888 	mov	r6,a
      000919 EF               [12] 1889 	mov	a,r7
      00091A 34 01            [12] 1890 	addc	a,#(_CIDS >> 8)
      00091C FF               [12] 1891 	mov	r7,a
      00091D 74 08            [12] 1892 	mov	a,#0x08
      00091F 2E               [12] 1893 	add	a,r6
      000920 F5 82            [12] 1894 	mov	dpl,a
      000922 E4               [12] 1895 	clr	a
      000923 3F               [12] 1896 	addc	a,r7
      000924 F5 83            [12] 1897 	mov	dph,a
      000926 E4               [12] 1898 	clr	a
      000927 F0               [24] 1899 	movx	@dptr,a
                           000363  1900 	C$u2f_hid.c$220$1$142 ==.
                                   1901 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:220: return CIDS[i].cid;
      000928 8E 82            [24] 1902 	mov	dpl,r6
      00092A 8F 83            [24] 1903 	mov	dph,r7
      00092C E0               [24] 1904 	movx	a,@dptr
      00092D FE               [12] 1905 	mov	r6,a
      00092E A3               [24] 1906 	inc	dptr
      00092F E0               [24] 1907 	movx	a,@dptr
      000930 FF               [12] 1908 	mov	r7,a
      000931 A3               [24] 1909 	inc	dptr
      000932 E0               [24] 1910 	movx	a,@dptr
      000933 FD               [12] 1911 	mov	r5,a
      000934 A3               [24] 1912 	inc	dptr
      000935 E0               [24] 1913 	movx	a,@dptr
      000936 FC               [12] 1914 	mov	r4,a
      000937 8E 82            [24] 1915 	mov	dpl,r6
      000939 8F 83            [24] 1916 	mov	dph,r7
      00093B 8D F0            [24] 1917 	mov	b,r5
      00093D                       1918 00111$:
      00093D 85 1B 81         [24] 1919 	mov	sp,_bp
      000940 D0 1B            [24] 1920 	pop	_bp
                           00037D  1921 	C$u2f_hid.c$221$1$142 ==.
                           00037D  1922 	XFu2f_hid$get_new_cid$0$0 ==.
      000942 22               [24] 1923 	ret
                                   1924 ;------------------------------------------------------------
                                   1925 ;Allocation info for local variables in function 'add_new_cid'
                                   1926 ;------------------------------------------------------------
                                   1927 ;cid                       Allocated to registers r4 r5 r6 r7 
                                   1928 ;i                         Allocated to registers r2 r3 
                                   1929 ;sloc0                     Allocated to stack - _bp +1
                                   1930 ;sloc1                     Allocated to stack - _bp +3
                                   1931 ;------------------------------------------------------------
                           00037E  1932 	Fu2f_hid$add_new_cid$0$0 ==.
                           00037E  1933 	C$u2f_hid.c$223$1$142 ==.
                                   1934 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:223: static int8_t add_new_cid(uint32_t cid)
                                   1935 ;	-----------------------------------------
                                   1936 ;	 function add_new_cid
                                   1937 ;	-----------------------------------------
      000943                       1938 _add_new_cid:
      000943 C0 1B            [24] 1939 	push	_bp
      000945 85 81 1B         [24] 1940 	mov	_bp,sp
      000948 AC 82            [24] 1941 	mov	r4,dpl
      00094A AD 83            [24] 1942 	mov	r5,dph
      00094C AE F0            [24] 1943 	mov	r6,b
      00094E FF               [12] 1944 	mov	r7,a
      00094F E5 81            [12] 1945 	mov	a,sp
      000951 24 04            [12] 1946 	add	a,#0x04
      000953 F5 81            [12] 1947 	mov	sp,a
                           000390  1948 	C$u2f_hid.c$226$2$148 ==.
                                   1949 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:226: for(i = 0; i < CID_MAX-1; i++)
      000955 E4               [12] 1950 	clr	a
      000956 FA               [12] 1951 	mov	r2,a
      000957 FB               [12] 1952 	mov	r3,a
      000958 E5 1B            [12] 1953 	mov	a,_bp
      00095A 24 03            [12] 1954 	add	a,#0x03
      00095C F8               [12] 1955 	mov	r0,a
      00095D E4               [12] 1956 	clr	a
      00095E F6               [12] 1957 	mov	@r0,a
      00095F 08               [12] 1958 	inc	r0
      000960 F6               [12] 1959 	mov	@r0,a
      000961                       1960 00104$:
                           00039C  1961 	C$u2f_hid.c$228$1$147 ==.
                                   1962 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:228: if (!CIDS[i].busy)
      000961 C0 04            [24] 1963 	push	ar4
      000963 C0 05            [24] 1964 	push	ar5
      000965 C0 06            [24] 1965 	push	ar6
      000967 C0 07            [24] 1966 	push	ar7
      000969 E5 1B            [12] 1967 	mov	a,_bp
      00096B 24 03            [12] 1968 	add	a,#0x03
      00096D F8               [12] 1969 	mov	r0,a
      00096E A9 1B            [24] 1970 	mov	r1,_bp
      000970 09               [12] 1971 	inc	r1
      000971 E6               [12] 1972 	mov	a,@r0
      000972 24 2A            [12] 1973 	add	a,#_CIDS
      000974 F7               [12] 1974 	mov	@r1,a
      000975 08               [12] 1975 	inc	r0
      000976 E6               [12] 1976 	mov	a,@r0
      000977 34 01            [12] 1977 	addc	a,#(_CIDS >> 8)
      000979 09               [12] 1978 	inc	r1
      00097A F7               [12] 1979 	mov	@r1,a
      00097B A8 1B            [24] 1980 	mov	r0,_bp
      00097D 08               [12] 1981 	inc	r0
      00097E 74 08            [12] 1982 	mov	a,#0x08
      000980 26               [12] 1983 	add	a,@r0
      000981 FE               [12] 1984 	mov	r6,a
      000982 E4               [12] 1985 	clr	a
      000983 08               [12] 1986 	inc	r0
      000984 36               [12] 1987 	addc	a,@r0
      000985 FF               [12] 1988 	mov	r7,a
      000986 8E 82            [24] 1989 	mov	dpl,r6
      000988 8F 83            [24] 1990 	mov	dph,r7
      00098A E0               [24] 1991 	movx	a,@dptr
      00098B D0 07            [24] 1992 	pop	ar7
      00098D D0 06            [24] 1993 	pop	ar6
      00098F D0 05            [24] 1994 	pop	ar5
      000991 D0 04            [24] 1995 	pop	ar4
      000993 70 18            [24] 1996 	jnz	00105$
                           0003D0  1997 	C$u2f_hid.c$230$3$149 ==.
                                   1998 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:230: CIDS[i].cid = cid;
      000995 A8 1B            [24] 1999 	mov	r0,_bp
      000997 08               [12] 2000 	inc	r0
      000998 86 82            [24] 2001 	mov	dpl,@r0
      00099A 08               [12] 2002 	inc	r0
      00099B 86 83            [24] 2003 	mov	dph,@r0
      00099D EC               [12] 2004 	mov	a,r4
      00099E F0               [24] 2005 	movx	@dptr,a
      00099F ED               [12] 2006 	mov	a,r5
      0009A0 A3               [24] 2007 	inc	dptr
      0009A1 F0               [24] 2008 	movx	@dptr,a
      0009A2 EE               [12] 2009 	mov	a,r6
      0009A3 A3               [24] 2010 	inc	dptr
      0009A4 F0               [24] 2011 	movx	@dptr,a
      0009A5 EF               [12] 2012 	mov	a,r7
      0009A6 A3               [24] 2013 	inc	dptr
      0009A7 F0               [24] 2014 	movx	@dptr,a
                           0003E3  2015 	C$u2f_hid.c$231$3$149 ==.
                                   2016 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:231: return 0;
      0009A8 75 82 00         [24] 2017 	mov	dpl,#0x00
      0009AB 80 20            [24] 2018 	sjmp	00106$
      0009AD                       2019 00105$:
                           0003E8  2020 	C$u2f_hid.c$226$1$147 ==.
                                   2021 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:226: for(i = 0; i < CID_MAX-1; i++)
      0009AD E5 1B            [12] 2022 	mov	a,_bp
      0009AF 24 03            [12] 2023 	add	a,#0x03
      0009B1 F8               [12] 2024 	mov	r0,a
      0009B2 74 0A            [12] 2025 	mov	a,#0x0a
      0009B4 26               [12] 2026 	add	a,@r0
      0009B5 F6               [12] 2027 	mov	@r0,a
      0009B6 E4               [12] 2028 	clr	a
      0009B7 08               [12] 2029 	inc	r0
      0009B8 36               [12] 2030 	addc	a,@r0
      0009B9 F6               [12] 2031 	mov	@r0,a
      0009BA 0A               [12] 2032 	inc	r2
      0009BB BA 00 01         [24] 2033 	cjne	r2,#0x00,00118$
      0009BE 0B               [12] 2034 	inc	r3
      0009BF                       2035 00118$:
      0009BF C3               [12] 2036 	clr	c
      0009C0 EA               [12] 2037 	mov	a,r2
      0009C1 94 04            [12] 2038 	subb	a,#0x04
      0009C3 EB               [12] 2039 	mov	a,r3
      0009C4 64 80            [12] 2040 	xrl	a,#0x80
      0009C6 94 80            [12] 2041 	subb	a,#0x80
      0009C8 40 97            [24] 2042 	jc	00104$
                           000405  2043 	C$u2f_hid.c$234$1$147 ==.
                                   2044 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:234: return -1;
      0009CA 75 82 FF         [24] 2045 	mov	dpl,#0xff
      0009CD                       2046 00106$:
      0009CD 85 1B 81         [24] 2047 	mov	sp,_bp
      0009D0 D0 1B            [24] 2048 	pop	_bp
                           00040D  2049 	C$u2f_hid.c$235$1$147 ==.
                           00040D  2050 	XFu2f_hid$add_new_cid$0$0 ==.
      0009D2 22               [24] 2051 	ret
                                   2052 ;------------------------------------------------------------
                                   2053 ;Allocation info for local variables in function 'get_cid'
                                   2054 ;------------------------------------------------------------
                                   2055 ;cid                       Allocated to registers r7 r6 r5 r4 
                                   2056 ;i                         Allocated to registers r3 
                                   2057 ;sloc0                     Allocated to stack - _bp +1
                                   2058 ;sloc1                     Allocated to stack - _bp +3
                                   2059 ;------------------------------------------------------------
                           00040E  2060 	Fu2f_hid$get_cid$0$0 ==.
                           00040E  2061 	C$u2f_hid.c$237$1$147 ==.
                                   2062 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:237: static struct CID* get_cid(uint32_t cid)
                                   2063 ;	-----------------------------------------
                                   2064 ;	 function get_cid
                                   2065 ;	-----------------------------------------
      0009D3                       2066 _get_cid:
      0009D3 C0 1B            [24] 2067 	push	_bp
      0009D5 85 81 1B         [24] 2068 	mov	_bp,sp
      0009D8 AF 82            [24] 2069 	mov	r7,dpl
      0009DA AE 83            [24] 2070 	mov	r6,dph
      0009DC AD F0            [24] 2071 	mov	r5,b
      0009DE FC               [12] 2072 	mov	r4,a
      0009DF E5 81            [12] 2073 	mov	a,sp
      0009E1 24 06            [12] 2074 	add	a,#0x06
      0009E3 F5 81            [12] 2075 	mov	sp,a
                           000420  2076 	C$u2f_hid.c$240$2$152 ==.
                                   2077 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:240: for(i = 0; i < CID_MAX; i++)
      0009E5 7B 00            [12] 2078 	mov	r3,#0x00
      0009E7                       2079 00104$:
                           000422  2080 	C$u2f_hid.c$242$2$152 ==.
                                   2081 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:242: if (CIDS[i].cid == cid)
      0009E7 A8 1B            [24] 2082 	mov	r0,_bp
      0009E9 08               [12] 2083 	inc	r0
      0009EA EB               [12] 2084 	mov	a,r3
      0009EB 75 F0 0A         [24] 2085 	mov	b,#0x0a
      0009EE A4               [48] 2086 	mul	ab
      0009EF F6               [12] 2087 	mov	@r0,a
      0009F0 08               [12] 2088 	inc	r0
      0009F1 A6 F0            [24] 2089 	mov	@r0,b
      0009F3 A8 1B            [24] 2090 	mov	r0,_bp
      0009F5 08               [12] 2091 	inc	r0
      0009F6 E6               [12] 2092 	mov	a,@r0
      0009F7 24 2A            [12] 2093 	add	a,#_CIDS
      0009F9 F5 82            [12] 2094 	mov	dpl,a
      0009FB 08               [12] 2095 	inc	r0
      0009FC E6               [12] 2096 	mov	a,@r0
      0009FD 34 01            [12] 2097 	addc	a,#(_CIDS >> 8)
      0009FF F5 83            [12] 2098 	mov	dph,a
      000A01 C0 03            [24] 2099 	push	ar3
      000A03 E5 1B            [12] 2100 	mov	a,_bp
      000A05 24 03            [12] 2101 	add	a,#0x03
      000A07 F8               [12] 2102 	mov	r0,a
      000A08 E0               [24] 2103 	movx	a,@dptr
      000A09 F6               [12] 2104 	mov	@r0,a
      000A0A A3               [24] 2105 	inc	dptr
      000A0B E0               [24] 2106 	movx	a,@dptr
      000A0C 08               [12] 2107 	inc	r0
      000A0D F6               [12] 2108 	mov	@r0,a
      000A0E A3               [24] 2109 	inc	dptr
      000A0F E0               [24] 2110 	movx	a,@dptr
      000A10 08               [12] 2111 	inc	r0
      000A11 F6               [12] 2112 	mov	@r0,a
      000A12 A3               [24] 2113 	inc	dptr
      000A13 E0               [24] 2114 	movx	a,@dptr
      000A14 08               [12] 2115 	inc	r0
      000A15 F6               [12] 2116 	mov	@r0,a
      000A16 E5 1B            [12] 2117 	mov	a,_bp
      000A18 24 03            [12] 2118 	add	a,#0x03
      000A1A F8               [12] 2119 	mov	r0,a
      000A1B E6               [12] 2120 	mov	a,@r0
      000A1C B5 07 11         [24] 2121 	cjne	a,ar7,00117$
      000A1F 08               [12] 2122 	inc	r0
      000A20 E6               [12] 2123 	mov	a,@r0
      000A21 B5 06 0C         [24] 2124 	cjne	a,ar6,00117$
      000A24 08               [12] 2125 	inc	r0
      000A25 E6               [12] 2126 	mov	a,@r0
      000A26 B5 05 07         [24] 2127 	cjne	a,ar5,00117$
      000A29 08               [12] 2128 	inc	r0
      000A2A E6               [12] 2129 	mov	a,@r0
      000A2B B5 04 02         [24] 2130 	cjne	a,ar4,00117$
      000A2E 80 04            [24] 2131 	sjmp	00118$
      000A30                       2132 00117$:
      000A30 D0 03            [24] 2133 	pop	ar3
      000A32 80 18            [24] 2134 	sjmp	00105$
      000A34                       2135 00118$:
      000A34 D0 03            [24] 2136 	pop	ar3
                           000471  2137 	C$u2f_hid.c$244$3$153 ==.
                                   2138 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:244: return CIDS+i;
      000A36 A8 1B            [24] 2139 	mov	r0,_bp
      000A38 08               [12] 2140 	inc	r0
      000A39 E6               [12] 2141 	mov	a,@r0
      000A3A 24 2A            [12] 2142 	add	a,#_CIDS
      000A3C FD               [12] 2143 	mov	r5,a
      000A3D 08               [12] 2144 	inc	r0
      000A3E E6               [12] 2145 	mov	a,@r0
      000A3F 34 01            [12] 2146 	addc	a,#(_CIDS >> 8)
      000A41 FE               [12] 2147 	mov	r6,a
      000A42 7C 00            [12] 2148 	mov	r4,#0x00
      000A44 8D 82            [24] 2149 	mov	dpl,r5
      000A46 8E 83            [24] 2150 	mov	dph,r6
      000A48 8C F0            [24] 2151 	mov	b,r4
      000A4A 80 0C            [24] 2152 	sjmp	00106$
      000A4C                       2153 00105$:
                           000487  2154 	C$u2f_hid.c$240$1$151 ==.
                                   2155 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:240: for(i = 0; i < CID_MAX; i++)
      000A4C 0B               [12] 2156 	inc	r3
      000A4D BB 05 00         [24] 2157 	cjne	r3,#0x05,00119$
      000A50                       2158 00119$:
      000A50 40 95            [24] 2159 	jc	00104$
                           00048D  2160 	C$u2f_hid.c$247$1$151 ==.
                                   2161 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:247: return NULL;
      000A52 90 00 00         [24] 2162 	mov	dptr,#0x0000
      000A55 75 F0 00         [24] 2163 	mov	b,#0x00
      000A58                       2164 00106$:
      000A58 85 1B 81         [24] 2165 	mov	sp,_bp
      000A5B D0 1B            [24] 2166 	pop	_bp
                           000498  2167 	C$u2f_hid.c$248$1$151 ==.
                           000498  2168 	XFu2f_hid$get_cid$0$0 ==.
      000A5D 22               [24] 2169 	ret
                                   2170 ;------------------------------------------------------------
                                   2171 ;Allocation info for local variables in function 'del_cid'
                                   2172 ;------------------------------------------------------------
                                   2173 ;cid                       Allocated to stack - _bp +1
                                   2174 ;i                         Allocated to registers r3 
                                   2175 ;sloc0                     Allocated to stack - _bp +5
                                   2176 ;sloc1                     Allocated to stack - _bp +8
                                   2177 ;------------------------------------------------------------
                           000499  2178 	Fu2f_hid$del_cid$0$0 ==.
                           000499  2179 	C$u2f_hid.c$249$1$151 ==.
                                   2180 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:249: static void del_cid(uint32_t cid)
                                   2181 ;	-----------------------------------------
                                   2182 ;	 function del_cid
                                   2183 ;	-----------------------------------------
      000A5E                       2184 _del_cid:
      000A5E C0 1B            [24] 2185 	push	_bp
      000A60 85 81 1B         [24] 2186 	mov	_bp,sp
      000A63 C0 82            [24] 2187 	push	dpl
      000A65 C0 83            [24] 2188 	push	dph
      000A67 C0 F0            [24] 2189 	push	b
      000A69 C0 E0            [24] 2190 	push	acc
      000A6B 05 81            [12] 2191 	inc	sp
      000A6D 05 81            [12] 2192 	inc	sp
                           0004AA  2193 	C$u2f_hid.c$252$2$156 ==.
                                   2194 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:252: for(i = 0; i < CID_MAX; i++)
      000A6F 7B 00            [12] 2195 	mov	r3,#0x00
      000A71                       2196 00104$:
                           0004AC  2197 	C$u2f_hid.c$254$2$156 ==.
                                   2198 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:254: if (CIDS[i].cid == cid)
      000A71 EB               [12] 2199 	mov	a,r3
      000A72 75 F0 0A         [24] 2200 	mov	b,#0x0a
      000A75 A4               [48] 2201 	mul	ab
      000A76 FD               [12] 2202 	mov	r5,a
      000A77 AC F0            [24] 2203 	mov	r4,b
      000A79 E5 1B            [12] 2204 	mov	a,_bp
      000A7B 24 05            [12] 2205 	add	a,#0x05
      000A7D F8               [12] 2206 	mov	r0,a
      000A7E ED               [12] 2207 	mov	a,r5
      000A7F 24 2A            [12] 2208 	add	a,#_CIDS
      000A81 F6               [12] 2209 	mov	@r0,a
      000A82 EC               [12] 2210 	mov	a,r4
      000A83 34 01            [12] 2211 	addc	a,#(_CIDS >> 8)
      000A85 08               [12] 2212 	inc	r0
      000A86 F6               [12] 2213 	mov	@r0,a
      000A87 C0 03            [24] 2214 	push	ar3
      000A89 E5 1B            [12] 2215 	mov	a,_bp
      000A8B 24 05            [12] 2216 	add	a,#0x05
      000A8D F8               [12] 2217 	mov	r0,a
      000A8E 86 82            [24] 2218 	mov	dpl,@r0
      000A90 08               [12] 2219 	inc	r0
      000A91 86 83            [24] 2220 	mov	dph,@r0
      000A93 E0               [24] 2221 	movx	a,@dptr
      000A94 FA               [12] 2222 	mov	r2,a
      000A95 A3               [24] 2223 	inc	dptr
      000A96 E0               [24] 2224 	movx	a,@dptr
      000A97 FB               [12] 2225 	mov	r3,a
      000A98 A3               [24] 2226 	inc	dptr
      000A99 E0               [24] 2227 	movx	a,@dptr
      000A9A FE               [12] 2228 	mov	r6,a
      000A9B A3               [24] 2229 	inc	dptr
      000A9C E0               [24] 2230 	movx	a,@dptr
      000A9D FF               [12] 2231 	mov	r7,a
      000A9E A8 1B            [24] 2232 	mov	r0,_bp
      000AA0 08               [12] 2233 	inc	r0
      000AA1 E6               [12] 2234 	mov	a,@r0
      000AA2 B5 02 11         [24] 2235 	cjne	a,ar2,00115$
      000AA5 08               [12] 2236 	inc	r0
      000AA6 E6               [12] 2237 	mov	a,@r0
      000AA7 B5 03 0C         [24] 2238 	cjne	a,ar3,00115$
      000AAA 08               [12] 2239 	inc	r0
      000AAB E6               [12] 2240 	mov	a,@r0
      000AAC B5 06 07         [24] 2241 	cjne	a,ar6,00115$
      000AAF 08               [12] 2242 	inc	r0
      000AB0 E6               [12] 2243 	mov	a,@r0
      000AB1 B5 07 02         [24] 2244 	cjne	a,ar7,00115$
      000AB4 80 04            [24] 2245 	sjmp	00116$
      000AB6                       2246 00115$:
      000AB6 D0 03            [24] 2247 	pop	ar3
      000AB8 80 27            [24] 2248 	sjmp	00105$
      000ABA                       2249 00116$:
      000ABA D0 03            [24] 2250 	pop	ar3
                           0004F7  2251 	C$u2f_hid.c$256$3$157 ==.
                                   2252 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:256: CIDS[i].cid = 0;
      000ABC E5 1B            [12] 2253 	mov	a,_bp
      000ABE 24 05            [12] 2254 	add	a,#0x05
      000AC0 F8               [12] 2255 	mov	r0,a
      000AC1 86 82            [24] 2256 	mov	dpl,@r0
      000AC3 08               [12] 2257 	inc	r0
      000AC4 86 83            [24] 2258 	mov	dph,@r0
      000AC6 E4               [12] 2259 	clr	a
      000AC7 F0               [24] 2260 	movx	@dptr,a
      000AC8 A3               [24] 2261 	inc	dptr
      000AC9 F0               [24] 2262 	movx	@dptr,a
      000ACA A3               [24] 2263 	inc	dptr
      000ACB F0               [24] 2264 	movx	@dptr,a
      000ACC A3               [24] 2265 	inc	dptr
      000ACD F0               [24] 2266 	movx	@dptr,a
                           000509  2267 	C$u2f_hid.c$257$3$157 ==.
                                   2268 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:257: CIDS[i].busy = 0;
      000ACE ED               [12] 2269 	mov	a,r5
      000ACF 24 2A            [12] 2270 	add	a,#_CIDS
      000AD1 FE               [12] 2271 	mov	r6,a
      000AD2 EC               [12] 2272 	mov	a,r4
      000AD3 34 01            [12] 2273 	addc	a,#(_CIDS >> 8)
      000AD5 FF               [12] 2274 	mov	r7,a
      000AD6 74 08            [12] 2275 	mov	a,#0x08
      000AD8 2E               [12] 2276 	add	a,r6
      000AD9 F5 82            [12] 2277 	mov	dpl,a
      000ADB E4               [12] 2278 	clr	a
      000ADC 3F               [12] 2279 	addc	a,r7
      000ADD F5 83            [12] 2280 	mov	dph,a
      000ADF E4               [12] 2281 	clr	a
      000AE0 F0               [24] 2282 	movx	@dptr,a
      000AE1                       2283 00105$:
                           00051C  2284 	C$u2f_hid.c$252$1$155 ==.
                                   2285 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:252: for(i = 0; i < CID_MAX; i++)
      000AE1 0B               [12] 2286 	inc	r3
      000AE2 BB 05 00         [24] 2287 	cjne	r3,#0x05,00117$
      000AE5                       2288 00117$:
      000AE5 40 8A            [24] 2289 	jc	00104$
      000AE7 85 1B 81         [24] 2290 	mov	sp,_bp
      000AEA D0 1B            [24] 2291 	pop	_bp
                           000527  2292 	C$u2f_hid.c$260$1$155 ==.
                           000527  2293 	XFu2f_hid$del_cid$0$0 ==.
      000AEC 22               [24] 2294 	ret
                                   2295 ;------------------------------------------------------------
                                   2296 ;Allocation info for local variables in function 'stamp_error'
                                   2297 ;------------------------------------------------------------
                                   2298 ;err                       Allocated to stack - _bp -3
                                   2299 ;cid                       Allocated to registers r4 r5 r6 r7 
                                   2300 ;res                       Allocated to registers 
                                   2301 ;------------------------------------------------------------
                           000528  2302 	Fu2f_hid$stamp_error$0$0 ==.
                           000528  2303 	C$u2f_hid.c$263$1$155 ==.
                                   2304 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:263: static void stamp_error(uint32_t cid, uint8_t err)
                                   2305 ;	-----------------------------------------
                                   2306 ;	 function stamp_error
                                   2307 ;	-----------------------------------------
      000AED                       2308 _stamp_error:
      000AED C0 1B            [24] 2309 	push	_bp
      000AEF 85 81 1B         [24] 2310 	mov	_bp,sp
      000AF2 AC 82            [24] 2311 	mov	r4,dpl
      000AF4 AD 83            [24] 2312 	mov	r5,dph
      000AF6 AE F0            [24] 2313 	mov	r6,b
      000AF8 FF               [12] 2314 	mov	r7,a
                           000534  2315 	C$u2f_hid.c$266$1$159 ==.
                                   2316 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:266: struct u2f_hid_msg * res = (struct u2f_hid_msg *)errbuf;
                           000534  2317 	C$u2f_hid.c$267$1$159 ==.
                                   2318 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:267: memset(errbuf,0,sizeof(errbuf));
      000AF9 C0 07            [24] 2319 	push	ar7
      000AFB C0 06            [24] 2320 	push	ar6
      000AFD C0 05            [24] 2321 	push	ar5
      000AFF C0 04            [24] 2322 	push	ar4
      000B01 74 40            [12] 2323 	mov	a,#0x40
      000B03 C0 E0            [24] 2324 	push	acc
      000B05 E4               [12] 2325 	clr	a
      000B06 C0 E0            [24] 2326 	push	acc
      000B08 C0 E0            [24] 2327 	push	acc
      000B0A 90 01 A0         [24] 2328 	mov	dptr,#_errbuf
      000B0D 75 F0 00         [24] 2329 	mov	b,#0x00
      000B10 12 5D D4         [24] 2330 	lcall	_memset
      000B13 15 81            [12] 2331 	dec	sp
      000B15 15 81            [12] 2332 	dec	sp
      000B17 15 81            [12] 2333 	dec	sp
      000B19 D0 04            [24] 2334 	pop	ar4
      000B1B D0 05            [24] 2335 	pop	ar5
      000B1D D0 06            [24] 2336 	pop	ar6
      000B1F D0 07            [24] 2337 	pop	ar7
                           00055C  2338 	C$u2f_hid.c$268$1$159 ==.
                                   2339 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:268: res->cid = cid;
      000B21 90 01 A0         [24] 2340 	mov	dptr,#_errbuf
      000B24 EC               [12] 2341 	mov	a,r4
      000B25 F0               [24] 2342 	movx	@dptr,a
      000B26 ED               [12] 2343 	mov	a,r5
      000B27 A3               [24] 2344 	inc	dptr
      000B28 F0               [24] 2345 	movx	@dptr,a
      000B29 EE               [12] 2346 	mov	a,r6
      000B2A A3               [24] 2347 	inc	dptr
      000B2B F0               [24] 2348 	movx	@dptr,a
      000B2C EF               [12] 2349 	mov	a,r7
      000B2D A3               [24] 2350 	inc	dptr
      000B2E F0               [24] 2351 	movx	@dptr,a
                           00056A  2352 	C$u2f_hid.c$269$1$159 ==.
                                   2353 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:269: res->pkt.init.cmd = U2FHID_ERROR;
      000B2F 90 01 A4         [24] 2354 	mov	dptr,#(_errbuf + 0x0004)
      000B32 75 F0 00         [24] 2355 	mov	b,#0x00
      000B35 74 BF            [12] 2356 	mov	a,#0xbf
      000B37 12 5A 48         [24] 2357 	lcall	__gptrput
                           000575  2358 	C$u2f_hid.c$270$1$159 ==.
                                   2359 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:270: res->pkt.init.payload[0] = err;
      000B3A 90 01 A7         [24] 2360 	mov	dptr,#(_errbuf + 0x0007)
      000B3D 75 F0 00         [24] 2361 	mov	b,#0x00
      000B40 E5 1B            [12] 2362 	mov	a,_bp
      000B42 24 FD            [12] 2363 	add	a,#0xfd
      000B44 F8               [12] 2364 	mov	r0,a
      000B45 E6               [12] 2365 	mov	a,@r0
      000B46 12 5A 48         [24] 2366 	lcall	__gptrput
                           000584  2367 	C$u2f_hid.c$271$1$159 ==.
                                   2368 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:271: res->pkt.init.bcnth = 0;
      000B49 90 01 A5         [24] 2369 	mov	dptr,#(_errbuf + 0x0005)
      000B4C E4               [12] 2370 	clr	a
      000B4D F5 F0            [12] 2371 	mov	b,a
      000B4F 12 5A 48         [24] 2372 	lcall	__gptrput
                           00058D  2373 	C$u2f_hid.c$272$1$159 ==.
                                   2374 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:272: res->pkt.init.bcntl = 1;
      000B52 90 01 A6         [24] 2375 	mov	dptr,#(_errbuf + 0x0006)
      000B55 75 F0 00         [24] 2376 	mov	b,#0x00
      000B58 04               [12] 2377 	inc	a
      000B59 12 5A 48         [24] 2378 	lcall	__gptrput
                           000597  2379 	C$u2f_hid.c$275$1$159 ==.
                                   2380 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:275: usb_write(errbuf, HID_PACKET_SIZE); //usb_write(res, HID_PACKET_SIZE);
      000B5C C0 07            [24] 2381 	push	ar7
      000B5E C0 06            [24] 2382 	push	ar6
      000B60 C0 05            [24] 2383 	push	ar5
      000B62 C0 04            [24] 2384 	push	ar4
      000B64 74 40            [12] 2385 	mov	a,#0x40
      000B66 C0 E0            [24] 2386 	push	acc
      000B68 90 01 A0         [24] 2387 	mov	dptr,#_errbuf
      000B6B 75 F0 00         [24] 2388 	mov	b,#0x00
      000B6E 12 1E 7C         [24] 2389 	lcall	_usb_write
      000B71 15 81            [12] 2390 	dec	sp
      000B73 D0 04            [24] 2391 	pop	ar4
      000B75 D0 05            [24] 2392 	pop	ar5
      000B77 D0 06            [24] 2393 	pop	ar6
      000B79 D0 07            [24] 2394 	pop	ar7
                           0005B6  2395 	C$u2f_hid.c$276$1$159 ==.
                                   2396 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:276: del_cid(cid);
      000B7B 8C 82            [24] 2397 	mov	dpl,r4
      000B7D 8D 83            [24] 2398 	mov	dph,r5
      000B7F 8E F0            [24] 2399 	mov	b,r6
      000B81 EF               [12] 2400 	mov	a,r7
      000B82 12 0A 5E         [24] 2401 	lcall	_del_cid
      000B85 D0 1B            [24] 2402 	pop	_bp
                           0005C2  2403 	C$u2f_hid.c$277$1$159 ==.
                           0005C2  2404 	XFu2f_hid$stamp_error$0$0 ==.
      000B87 22               [24] 2405 	ret
                                   2406 ;------------------------------------------------------------
                                   2407 ;Allocation info for local variables in function 'start_buffering'
                                   2408 ;------------------------------------------------------------
                                   2409 ;req                       Allocated to registers r5 r6 r7 
                                   2410 ;------------------------------------------------------------
                           0005C3  2411 	Fu2f_hid$start_buffering$0$0 ==.
                           0005C3  2412 	C$u2f_hid.c$279$1$159 ==.
                                   2413 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:279: static void start_buffering(struct u2f_hid_msg* req)
                                   2414 ;	-----------------------------------------
                                   2415 ;	 function start_buffering
                                   2416 ;	-----------------------------------------
      000B88                       2417 _start_buffering:
      000B88 AD 82            [24] 2418 	mov	r5,dpl
      000B8A AE 83            [24] 2419 	mov	r6,dph
      000B8C AF F0            [24] 2420 	mov	r7,b
                           0005C9  2421 	C$u2f_hid.c$281$1$161 ==.
                                   2422 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:281: _hid_in_session = 1;
      000B8E 90 02 EE         [24] 2423 	mov	dptr,#__hid_in_session
      000B91 74 01            [12] 2424 	mov	a,#0x01
      000B93 F0               [24] 2425 	movx	@dptr,a
                           0005CF  2426 	C$u2f_hid.c$282$1$161 ==.
                                   2427 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:282: hid_layer.bytes_buffered = U2FHID_INIT_PAYLOAD_SIZE;
      000B94 90 00 14         [24] 2428 	mov	dptr,#(_hid_layer + 0x000a)
      000B97 74 39            [12] 2429 	mov	a,#0x39
      000B99 F0               [24] 2430 	movx	@dptr,a
      000B9A E4               [12] 2431 	clr	a
      000B9B A3               [24] 2432 	inc	dptr
      000B9C F0               [24] 2433 	movx	@dptr,a
                           0005D8  2434 	C$u2f_hid.c$283$1$161 ==.
                                   2435 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:283: hid_layer.req_len = U2FHID_LEN(req);
      000B9D 74 04            [12] 2436 	mov	a,#0x04
      000B9F 2D               [12] 2437 	add	a,r5
      000BA0 FD               [12] 2438 	mov	r5,a
      000BA1 E4               [12] 2439 	clr	a
      000BA2 3E               [12] 2440 	addc	a,r6
      000BA3 FE               [12] 2441 	mov	r6,a
      000BA4 74 01            [12] 2442 	mov	a,#0x01
      000BA6 2D               [12] 2443 	add	a,r5
      000BA7 FA               [12] 2444 	mov	r2,a
      000BA8 E4               [12] 2445 	clr	a
      000BA9 3E               [12] 2446 	addc	a,r6
      000BAA FB               [12] 2447 	mov	r3,a
      000BAB 8F 04            [24] 2448 	mov	ar4,r7
      000BAD 8A 82            [24] 2449 	mov	dpl,r2
      000BAF 8B 83            [24] 2450 	mov	dph,r3
      000BB1 8C F0            [24] 2451 	mov	b,r4
      000BB3 12 5E 3E         [24] 2452 	lcall	__gptrget
      000BB6 FA               [12] 2453 	mov	r2,a
      000BB7 A3               [24] 2454 	inc	dptr
      000BB8 12 5E 3E         [24] 2455 	lcall	__gptrget
      000BBB FB               [12] 2456 	mov	r3,a
      000BBC 90 00 16         [24] 2457 	mov	dptr,#(_hid_layer + 0x000c)
      000BBF EA               [12] 2458 	mov	a,r2
      000BC0 F0               [24] 2459 	movx	@dptr,a
      000BC1 EB               [12] 2460 	mov	a,r3
      000BC2 A3               [24] 2461 	inc	dptr
      000BC3 F0               [24] 2462 	movx	@dptr,a
                           0005FF  2463 	C$u2f_hid.c$284$1$161 ==.
                                   2464 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:284: memmove(hid_layer.buffer, req->pkt.init.payload, U2FHID_INIT_PAYLOAD_SIZE);
      000BC4 74 03            [12] 2465 	mov	a,#0x03
      000BC6 2D               [12] 2466 	add	a,r5
      000BC7 FD               [12] 2467 	mov	r5,a
      000BC8 E4               [12] 2468 	clr	a
      000BC9 3E               [12] 2469 	addc	a,r6
      000BCA FE               [12] 2470 	mov	r6,a
      000BCB 74 39            [12] 2471 	mov	a,#0x39
      000BCD C0 E0            [24] 2472 	push	acc
      000BCF E4               [12] 2473 	clr	a
      000BD0 C0 E0            [24] 2474 	push	acc
      000BD2 C0 05            [24] 2475 	push	ar5
      000BD4 C0 06            [24] 2476 	push	ar6
      000BD6 C0 07            [24] 2477 	push	ar7
      000BD8 90 00 1C         [24] 2478 	mov	dptr,#(_hid_layer + 0x0012)
      000BDB 75 F0 00         [24] 2479 	mov	b,#0x00
      000BDE 12 5A 63         [24] 2480 	lcall	_memmove
      000BE1 E5 81            [12] 2481 	mov	a,sp
      000BE3 24 FB            [12] 2482 	add	a,#0xfb
      000BE5 F5 81            [12] 2483 	mov	sp,a
                           000622  2484 	C$u2f_hid.c$285$1$161 ==.
                           000622  2485 	XFu2f_hid$start_buffering$0$0 ==.
      000BE7 22               [24] 2486 	ret
                                   2487 ;------------------------------------------------------------
                                   2488 ;Allocation info for local variables in function 'buffer_request'
                                   2489 ;------------------------------------------------------------
                                   2490 ;req                       Allocated to registers r7 r5 r6 
                                   2491 ;sloc0                     Allocated to stack - _bp +1
                                   2492 ;sloc1                     Allocated to stack - _bp +3
                                   2493 ;------------------------------------------------------------
                           000623  2494 	Fu2f_hid$buffer_request$0$0 ==.
                           000623  2495 	C$u2f_hid.c$287$1$161 ==.
                                   2496 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:287: static int buffer_request(struct u2f_hid_msg* req)
                                   2497 ;	-----------------------------------------
                                   2498 ;	 function buffer_request
                                   2499 ;	-----------------------------------------
      000BE8                       2500 _buffer_request:
      000BE8 C0 1B            [24] 2501 	push	_bp
      000BEA E5 81            [12] 2502 	mov	a,sp
      000BEC F5 1B            [12] 2503 	mov	_bp,a
      000BEE 24 06            [12] 2504 	add	a,#0x06
      000BF0 F5 81            [12] 2505 	mov	sp,a
      000BF2 AF 82            [24] 2506 	mov	r7,dpl
      000BF4 AD 83            [24] 2507 	mov	r5,dph
      000BF6 AE F0            [24] 2508 	mov	r6,b
                           000633  2509 	C$u2f_hid.c$289$1$163 ==.
                                   2510 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:289: if (hid_layer.bytes_buffered + U2FHID_CONT_PAYLOAD_SIZE > BUFFER_SIZE)
      000BF8 90 00 14         [24] 2511 	mov	dptr,#(_hid_layer + 0x000a)
      000BFB E0               [24] 2512 	movx	a,@dptr
      000BFC FB               [12] 2513 	mov	r3,a
      000BFD A3               [24] 2514 	inc	dptr
      000BFE E0               [24] 2515 	movx	a,@dptr
      000BFF FC               [12] 2516 	mov	r4,a
      000C00 A8 1B            [24] 2517 	mov	r0,_bp
      000C02 08               [12] 2518 	inc	r0
      000C03 74 3B            [12] 2519 	mov	a,#0x3b
      000C05 2B               [12] 2520 	add	a,r3
      000C06 F6               [12] 2521 	mov	@r0,a
      000C07 E4               [12] 2522 	clr	a
      000C08 3C               [12] 2523 	addc	a,r4
      000C09 08               [12] 2524 	inc	r0
      000C0A F6               [12] 2525 	mov	@r0,a
      000C0B A8 1B            [24] 2526 	mov	r0,_bp
      000C0D 08               [12] 2527 	inc	r0
      000C0E C3               [12] 2528 	clr	c
      000C0F 74 0E            [12] 2529 	mov	a,#0x0e
      000C11 96               [12] 2530 	subb	a,@r0
      000C12 74 01            [12] 2531 	mov	a,#0x01
      000C14 08               [12] 2532 	inc	r0
      000C15 96               [12] 2533 	subb	a,@r0
      000C16 50 50            [24] 2534 	jnc	00102$
                           000653  2535 	C$u2f_hid.c$291$2$164 ==.
                                   2536 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:291: set_app_error(ERROR_HID_BUFFER_FULL);
      000C18 75 82 17         [24] 2537 	mov	dpl,#0x17
      000C1B C0 07            [24] 2538 	push	ar7
      000C1D C0 06            [24] 2539 	push	ar6
      000C1F C0 05            [24] 2540 	push	ar5
      000C21 12 00 A4         [24] 2541 	lcall	_set_app_error
      000C24 D0 05            [24] 2542 	pop	ar5
      000C26 D0 06            [24] 2543 	pop	ar6
      000C28 D0 07            [24] 2544 	pop	ar7
                           000665  2545 	C$u2f_hid.c$292$2$164 ==.
                                   2546 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:292: stamp_error(req->cid, ERR_OTHER);
      000C2A 8F 82            [24] 2547 	mov	dpl,r7
      000C2C 8D 83            [24] 2548 	mov	dph,r5
      000C2E 8E F0            [24] 2549 	mov	b,r6
      000C30 E5 1B            [12] 2550 	mov	a,_bp
      000C32 24 03            [12] 2551 	add	a,#0x03
      000C34 F8               [12] 2552 	mov	r0,a
      000C35 12 5E 3E         [24] 2553 	lcall	__gptrget
      000C38 F6               [12] 2554 	mov	@r0,a
      000C39 A3               [24] 2555 	inc	dptr
      000C3A 12 5E 3E         [24] 2556 	lcall	__gptrget
      000C3D 08               [12] 2557 	inc	r0
      000C3E F6               [12] 2558 	mov	@r0,a
      000C3F A3               [24] 2559 	inc	dptr
      000C40 12 5E 3E         [24] 2560 	lcall	__gptrget
      000C43 08               [12] 2561 	inc	r0
      000C44 F6               [12] 2562 	mov	@r0,a
      000C45 A3               [24] 2563 	inc	dptr
      000C46 12 5E 3E         [24] 2564 	lcall	__gptrget
      000C49 08               [12] 2565 	inc	r0
      000C4A F6               [12] 2566 	mov	@r0,a
      000C4B 74 7F            [12] 2567 	mov	a,#0x7f
      000C4D C0 E0            [24] 2568 	push	acc
      000C4F E5 1B            [12] 2569 	mov	a,_bp
      000C51 24 03            [12] 2570 	add	a,#0x03
      000C53 F8               [12] 2571 	mov	r0,a
      000C54 86 82            [24] 2572 	mov	dpl,@r0
      000C56 08               [12] 2573 	inc	r0
      000C57 86 83            [24] 2574 	mov	dph,@r0
      000C59 08               [12] 2575 	inc	r0
      000C5A 86 F0            [24] 2576 	mov	b,@r0
      000C5C 08               [12] 2577 	inc	r0
      000C5D E6               [12] 2578 	mov	a,@r0
      000C5E 12 0A ED         [24] 2579 	lcall	_stamp_error
      000C61 15 81            [12] 2580 	dec	sp
                           00069E  2581 	C$u2f_hid.c$293$2$164 ==.
                                   2582 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:293: return -1;
      000C63 90 FF FF         [24] 2583 	mov	dptr,#0xffff
      000C66 80 4E            [24] 2584 	sjmp	00103$
      000C68                       2585 00102$:
                           0006A3  2586 	C$u2f_hid.c$295$1$163 ==.
                                   2587 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:295: memmove(hid_layer.buffer + hid_layer.bytes_buffered, req->pkt.cont.payload, U2FHID_CONT_PAYLOAD_SIZE);
      000C68 74 04            [12] 2588 	mov	a,#0x04
      000C6A 2F               [12] 2589 	add	a,r7
      000C6B FA               [12] 2590 	mov	r2,a
      000C6C E4               [12] 2591 	clr	a
      000C6D 3D               [12] 2592 	addc	a,r5
      000C6E FD               [12] 2593 	mov	r5,a
      000C6F 0A               [12] 2594 	inc	r2
      000C70 BA 00 01         [24] 2595 	cjne	r2,#0x00,00109$
      000C73 0D               [12] 2596 	inc	r5
      000C74                       2597 00109$:
      000C74 8E 07            [24] 2598 	mov	ar7,r6
      000C76 EB               [12] 2599 	mov	a,r3
      000C77 24 1C            [12] 2600 	add	a,#(_hid_layer + 0x0012)
      000C79 FB               [12] 2601 	mov	r3,a
      000C7A EC               [12] 2602 	mov	a,r4
      000C7B 34 00            [12] 2603 	addc	a,#((_hid_layer + 0x0012) >> 8)
      000C7D FC               [12] 2604 	mov	r4,a
      000C7E 7E 00            [12] 2605 	mov	r6,#0x00
      000C80 74 3B            [12] 2606 	mov	a,#0x3b
      000C82 C0 E0            [24] 2607 	push	acc
      000C84 E4               [12] 2608 	clr	a
      000C85 C0 E0            [24] 2609 	push	acc
      000C87 C0 02            [24] 2610 	push	ar2
      000C89 C0 05            [24] 2611 	push	ar5
      000C8B C0 07            [24] 2612 	push	ar7
      000C8D 8B 82            [24] 2613 	mov	dpl,r3
      000C8F 8C 83            [24] 2614 	mov	dph,r4
      000C91 8E F0            [24] 2615 	mov	b,r6
      000C93 12 5A 63         [24] 2616 	lcall	_memmove
      000C96 E5 81            [12] 2617 	mov	a,sp
      000C98 24 FB            [12] 2618 	add	a,#0xfb
      000C9A F5 81            [12] 2619 	mov	sp,a
                           0006D7  2620 	C$u2f_hid.c$296$1$163 ==.
                                   2621 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:296: hid_layer.bytes_buffered += U2FHID_CONT_PAYLOAD_SIZE;
      000C9C 90 00 14         [24] 2622 	mov	dptr,#(_hid_layer + 0x000a)
      000C9F E0               [24] 2623 	movx	a,@dptr
      000CA0 FD               [12] 2624 	mov	r5,a
      000CA1 A3               [24] 2625 	inc	dptr
      000CA2 E0               [24] 2626 	movx	a,@dptr
      000CA3 FE               [12] 2627 	mov	r6,a
      000CA4 74 3B            [12] 2628 	mov	a,#0x3b
      000CA6 2D               [12] 2629 	add	a,r5
      000CA7 FD               [12] 2630 	mov	r5,a
      000CA8 E4               [12] 2631 	clr	a
      000CA9 3E               [12] 2632 	addc	a,r6
      000CAA FE               [12] 2633 	mov	r6,a
      000CAB 90 00 14         [24] 2634 	mov	dptr,#(_hid_layer + 0x000a)
      000CAE ED               [12] 2635 	mov	a,r5
      000CAF F0               [24] 2636 	movx	@dptr,a
      000CB0 EE               [12] 2637 	mov	a,r6
      000CB1 A3               [24] 2638 	inc	dptr
      000CB2 F0               [24] 2639 	movx	@dptr,a
                           0006EE  2640 	C$u2f_hid.c$297$1$163 ==.
                                   2641 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:297: return 0;
      000CB3 90 00 00         [24] 2642 	mov	dptr,#0x0000
      000CB6                       2643 00103$:
      000CB6 85 1B 81         [24] 2644 	mov	sp,_bp
      000CB9 D0 1B            [24] 2645 	pop	_bp
                           0006F6  2646 	C$u2f_hid.c$298$1$163 ==.
                           0006F6  2647 	XFu2f_hid$buffer_request$0$0 ==.
      000CBB 22               [24] 2648 	ret
                                   2649 ;------------------------------------------------------------
                                   2650 ;Allocation info for local variables in function 'hid_u2f_parse'
                                   2651 ;------------------------------------------------------------
                                   2652 ;req                       Allocated to stack - _bp +1
                                   2653 ;len                       Allocated to registers 
                                   2654 ;secs                      Allocated to registers r7 
                                   2655 ;init_res                  Allocated to registers 
                                   2656 ;sloc0                     Allocated to stack - _bp +10
                                   2657 ;sloc1                     Allocated to stack - _bp +4
                                   2658 ;sloc2                     Allocated to stack - _bp +8
                                   2659 ;------------------------------------------------------------
                           0006F7  2660 	Fu2f_hid$hid_u2f_parse$0$0 ==.
                           0006F7  2661 	C$u2f_hid.c$302$1$163 ==.
                                   2662 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:302: static uint8_t hid_u2f_parse(struct u2f_hid_msg* req)
                                   2663 ;	-----------------------------------------
                                   2664 ;	 function hid_u2f_parse
                                   2665 ;	-----------------------------------------
      000CBC                       2666 _hid_u2f_parse:
      000CBC C0 1B            [24] 2667 	push	_bp
      000CBE 85 81 1B         [24] 2668 	mov	_bp,sp
      000CC1 C0 82            [24] 2669 	push	dpl
      000CC3 C0 83            [24] 2670 	push	dph
      000CC5 C0 F0            [24] 2671 	push	b
      000CC7 E5 81            [12] 2672 	mov	a,sp
      000CC9 24 08            [12] 2673 	add	a,#0x08
      000CCB F5 81            [12] 2674 	mov	sp,a
                           000708  2675 	C$u2f_hid.c$306$1$166 ==.
                                   2676 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:306: struct u2f_hid_init_response * init_res = (struct u2f_hid_init_response *) appdata.tmp;
                           000708  2677 	C$u2f_hid.c$308$1$166 ==.
                                   2678 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:308: switch(hid_layer.current_cmd)
      000CCD 90 00 0F         [24] 2679 	mov	dptr,#(_hid_layer + 0x0005)
      000CD0 E0               [24] 2680 	movx	a,@dptr
      000CD1 FC               [12] 2681 	mov	r4,a
      000CD2 BC 81 03         [24] 2682 	cjne	r4,#0x81,00203$
      000CD5 02 0F 4B         [24] 2683 	ljmp	00119$
      000CD8                       2684 00203$:
      000CD8 BC 83 03         [24] 2685 	cjne	r4,#0x83,00204$
      000CDB 02 0E 62         [24] 2686 	ljmp	00109$
      000CDE                       2687 00204$:
      000CDE BC 84 03         [24] 2688 	cjne	r4,#0x84,00205$
      000CE1 02 10 D3         [24] 2689 	ljmp	00134$
      000CE4                       2690 00205$:
      000CE4 BC 86 02         [24] 2691 	cjne	r4,#0x86,00206$
      000CE7 80 09            [24] 2692 	sjmp	00101$
      000CE9                       2693 00206$:
      000CE9 BC 88 03         [24] 2694 	cjne	r4,#0x88,00207$
      000CEC 02 10 68         [24] 2695 	ljmp	00131$
      000CEF                       2696 00207$:
      000CEF 02 11 A8         [24] 2697 	ljmp	00141$
                           00072D  2698 	C$u2f_hid.c$310$2$167 ==.
                                   2699 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:310: case U2FHID_INIT:
      000CF2                       2700 00101$:
                           00072D  2701 	C$u2f_hid.c$311$2$167 ==.
                                   2702 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:311: if (U2FHID_LEN(req) != 8)
      000CF2 A8 1B            [24] 2703 	mov	r0,_bp
      000CF4 08               [12] 2704 	inc	r0
      000CF5 74 04            [12] 2705 	mov	a,#0x04
      000CF7 26               [12] 2706 	add	a,@r0
      000CF8 FF               [12] 2707 	mov	r7,a
      000CF9 E4               [12] 2708 	clr	a
      000CFA 08               [12] 2709 	inc	r0
      000CFB 36               [12] 2710 	addc	a,@r0
      000CFC FE               [12] 2711 	mov	r6,a
      000CFD 08               [12] 2712 	inc	r0
      000CFE 86 05            [24] 2713 	mov	ar5,@r0
      000D00 74 01            [12] 2714 	mov	a,#0x01
      000D02 2F               [12] 2715 	add	a,r7
      000D03 FA               [12] 2716 	mov	r2,a
      000D04 E4               [12] 2717 	clr	a
      000D05 3E               [12] 2718 	addc	a,r6
      000D06 FB               [12] 2719 	mov	r3,a
      000D07 8D 04            [24] 2720 	mov	ar4,r5
      000D09 8A 82            [24] 2721 	mov	dpl,r2
      000D0B 8B 83            [24] 2722 	mov	dph,r3
      000D0D 8C F0            [24] 2723 	mov	b,r4
      000D0F 12 5E 3E         [24] 2724 	lcall	__gptrget
      000D12 FA               [12] 2725 	mov	r2,a
      000D13 A3               [24] 2726 	inc	dptr
      000D14 12 5E 3E         [24] 2727 	lcall	__gptrget
      000D17 FB               [12] 2728 	mov	r3,a
      000D18 BA 08 05         [24] 2729 	cjne	r2,#0x08,00208$
      000D1B BB 00 02         [24] 2730 	cjne	r3,#0x00,00208$
      000D1E 80 31            [24] 2731 	sjmp	00103$
      000D20                       2732 00208$:
                           00075B  2733 	C$u2f_hid.c$313$3$168 ==.
                                   2734 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:313: stamp_error(hid_layer.current_cid, ERR_INVALID_LEN);
      000D20 90 00 0B         [24] 2735 	mov	dptr,#(_hid_layer + 0x0001)
      000D23 E5 1B            [12] 2736 	mov	a,_bp
      000D25 24 04            [12] 2737 	add	a,#0x04
      000D27 F8               [12] 2738 	mov	r0,a
      000D28 E0               [24] 2739 	movx	a,@dptr
      000D29 F6               [12] 2740 	mov	@r0,a
      000D2A A3               [24] 2741 	inc	dptr
      000D2B E0               [24] 2742 	movx	a,@dptr
      000D2C 08               [12] 2743 	inc	r0
      000D2D F6               [12] 2744 	mov	@r0,a
      000D2E A3               [24] 2745 	inc	dptr
      000D2F E0               [24] 2746 	movx	a,@dptr
      000D30 08               [12] 2747 	inc	r0
      000D31 F6               [12] 2748 	mov	@r0,a
      000D32 A3               [24] 2749 	inc	dptr
      000D33 E0               [24] 2750 	movx	a,@dptr
      000D34 08               [12] 2751 	inc	r0
      000D35 F6               [12] 2752 	mov	@r0,a
      000D36 74 03            [12] 2753 	mov	a,#0x03
      000D38 C0 E0            [24] 2754 	push	acc
      000D3A E5 1B            [12] 2755 	mov	a,_bp
      000D3C 24 04            [12] 2756 	add	a,#0x04
      000D3E F8               [12] 2757 	mov	r0,a
      000D3F 86 82            [24] 2758 	mov	dpl,@r0
      000D41 08               [12] 2759 	inc	r0
      000D42 86 83            [24] 2760 	mov	dph,@r0
      000D44 08               [12] 2761 	inc	r0
      000D45 86 F0            [24] 2762 	mov	b,@r0
      000D47 08               [12] 2763 	inc	r0
      000D48 E6               [12] 2764 	mov	a,@r0
      000D49 12 0A ED         [24] 2765 	lcall	_stamp_error
      000D4C 15 81            [12] 2766 	dec	sp
                           000789  2767 	C$u2f_hid.c$314$3$168 ==.
                                   2768 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:314: goto fail;
      000D4E 02 11 F9         [24] 2769 	ljmp	00143$
      000D51                       2770 00103$:
                           00078C  2771 	C$u2f_hid.c$316$2$167 ==.
                                   2772 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:316: u2f_hid_set_len(17);
      000D51 90 00 11         [24] 2773 	mov	dptr,#0x0011
      000D54 C0 07            [24] 2774 	push	ar7
      000D56 C0 06            [24] 2775 	push	ar6
      000D58 C0 05            [24] 2776 	push	ar5
      000D5A 12 06 0B         [24] 2777 	lcall	_u2f_hid_set_len
      000D5D D0 05            [24] 2778 	pop	ar5
      000D5F D0 06            [24] 2779 	pop	ar6
      000D61 D0 07            [24] 2780 	pop	ar7
                           00079E  2781 	C$u2f_hid.c$319$2$167 ==.
                                   2782 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:319: if (hid_layer.current_cid == U2FHID_BROADCAST)
      000D63 90 00 0B         [24] 2783 	mov	dptr,#(_hid_layer + 0x0001)
      000D66 E5 1B            [12] 2784 	mov	a,_bp
      000D68 24 04            [12] 2785 	add	a,#0x04
      000D6A F8               [12] 2786 	mov	r0,a
      000D6B E0               [24] 2787 	movx	a,@dptr
      000D6C F6               [12] 2788 	mov	@r0,a
      000D6D A3               [24] 2789 	inc	dptr
      000D6E E0               [24] 2790 	movx	a,@dptr
      000D6F 08               [12] 2791 	inc	r0
      000D70 F6               [12] 2792 	mov	@r0,a
      000D71 A3               [24] 2793 	inc	dptr
      000D72 E0               [24] 2794 	movx	a,@dptr
      000D73 08               [12] 2795 	inc	r0
      000D74 F6               [12] 2796 	mov	@r0,a
      000D75 A3               [24] 2797 	inc	dptr
      000D76 E0               [24] 2798 	movx	a,@dptr
      000D77 08               [12] 2799 	inc	r0
      000D78 F6               [12] 2800 	mov	@r0,a
      000D79 E5 1B            [12] 2801 	mov	a,_bp
      000D7B 24 04            [12] 2802 	add	a,#0x04
      000D7D F8               [12] 2803 	mov	r0,a
      000D7E B6 FF 54         [24] 2804 	cjne	@r0,#0xff,00107$
      000D81 08               [12] 2805 	inc	r0
      000D82 B6 FF 50         [24] 2806 	cjne	@r0,#0xff,00107$
      000D85 08               [12] 2807 	inc	r0
      000D86 B6 FF 4C         [24] 2808 	cjne	@r0,#0xff,00107$
      000D89 08               [12] 2809 	inc	r0
      000D8A B6 FF 48         [24] 2810 	cjne	@r0,#0xff,00107$
                           0007C8  2811 	C$u2f_hid.c$321$3$169 ==.
                                   2812 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:321: if (hid_layer.current_cid == 0)
      000D8D E5 1B            [12] 2813 	mov	a,_bp
      000D8F 24 04            [12] 2814 	add	a,#0x04
      000D91 F8               [12] 2815 	mov	r0,a
      000D92 E6               [12] 2816 	mov	a,@r0
      000D93 08               [12] 2817 	inc	r0
      000D94 46               [12] 2818 	orl	a,@r0
      000D95 08               [12] 2819 	inc	r0
      000D96 46               [12] 2820 	orl	a,@r0
      000D97 08               [12] 2821 	inc	r0
      000D98 46               [12] 2822 	orl	a,@r0
      000D99 70 09            [24] 2823 	jnz	00105$
                           0007D6  2824 	C$u2f_hid.c$323$4$170 ==.
                                   2825 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:323: set_app_error(ERROR_OUT_OF_CIDS);
      000D9B 75 82 20         [24] 2826 	mov	dpl,#0x20
      000D9E 12 00 A4         [24] 2827 	lcall	_set_app_error
                           0007DC  2828 	C$u2f_hid.c$324$4$170 ==.
                                   2829 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:324: goto fail;
      000DA1 02 11 F9         [24] 2830 	ljmp	00143$
      000DA4                       2831 00105$:
                           0007DF  2832 	C$u2f_hid.c$326$3$169 ==.
                                   2833 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:326: init_res->cid = get_new_cid();
      000DA4 C0 07            [24] 2834 	push	ar7
      000DA6 C0 06            [24] 2835 	push	ar6
      000DA8 C0 05            [24] 2836 	push	ar5
      000DAA 12 08 34         [24] 2837 	lcall	_get_new_cid
      000DAD C8               [12] 2838 	xch	a,r0
      000DAE E5 1B            [12] 2839 	mov	a,_bp
      000DB0 24 08            [12] 2840 	add	a,#0x08
      000DB2 C8               [12] 2841 	xch	a,r0
      000DB3 A6 82            [24] 2842 	mov	@r0,dpl
      000DB5 08               [12] 2843 	inc	r0
      000DB6 A6 83            [24] 2844 	mov	@r0,dph
      000DB8 08               [12] 2845 	inc	r0
      000DB9 A6 F0            [24] 2846 	mov	@r0,b
      000DBB 08               [12] 2847 	inc	r0
      000DBC F6               [12] 2848 	mov	@r0,a
      000DBD D0 05            [24] 2849 	pop	ar5
      000DBF D0 06            [24] 2850 	pop	ar6
      000DC1 D0 07            [24] 2851 	pop	ar7
      000DC3 E5 1B            [12] 2852 	mov	a,_bp
      000DC5 24 08            [12] 2853 	add	a,#0x08
      000DC7 F8               [12] 2854 	mov	r0,a
      000DC8 86 21            [24] 2855 	mov	(_appdata + 0),@r0
      000DCA 08               [12] 2856 	inc	r0
      000DCB 86 22            [24] 2857 	mov	(_appdata + 1),@r0
      000DCD 08               [12] 2858 	inc	r0
      000DCE 86 23            [24] 2859 	mov	(_appdata + 2),@r0
      000DD0 08               [12] 2860 	inc	r0
      000DD1 86 24            [24] 2861 	mov	(_appdata + 3),@r0
      000DD3 80 10            [24] 2862 	sjmp	00108$
      000DD5                       2863 00107$:
                           000810  2864 	C$u2f_hid.c$330$3$171 ==.
                                   2865 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:330: init_res->cid = hid_layer.current_cid;
      000DD5 E5 1B            [12] 2866 	mov	a,_bp
      000DD7 24 04            [12] 2867 	add	a,#0x04
      000DD9 F8               [12] 2868 	mov	r0,a
      000DDA 86 21            [24] 2869 	mov	(_appdata + 0),@r0
      000DDC 08               [12] 2870 	inc	r0
      000DDD 86 22            [24] 2871 	mov	(_appdata + 1),@r0
      000DDF 08               [12] 2872 	inc	r0
      000DE0 86 23            [24] 2873 	mov	(_appdata + 2),@r0
      000DE2 08               [12] 2874 	inc	r0
      000DE3 86 24            [24] 2875 	mov	(_appdata + 3),@r0
      000DE5                       2876 00108$:
                           000820  2877 	C$u2f_hid.c$332$2$167 ==.
                                   2878 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:332: init_res->version_id = 2;
      000DE5 90 00 25         [24] 2879 	mov	dptr,#(_appdata + 0x0004)
      000DE8 75 F0 40         [24] 2880 	mov	b,#0x40
      000DEB 74 02            [12] 2881 	mov	a,#0x02
      000DED 12 5A 48         [24] 2882 	lcall	__gptrput
                           00082B  2883 	C$u2f_hid.c$333$2$167 ==.
                                   2884 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:333: init_res->version_major = 2;
      000DF0 90 00 26         [24] 2885 	mov	dptr,#(_appdata + 0x0005)
      000DF3 75 F0 40         [24] 2886 	mov	b,#0x40
      000DF6 12 5A 48         [24] 2887 	lcall	__gptrput
                           000834  2888 	C$u2f_hid.c$334$2$167 ==.
                                   2889 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:334: init_res->version_minor = 0;
      000DF9 90 00 27         [24] 2890 	mov	dptr,#(_appdata + 0x0006)
      000DFC 75 F0 40         [24] 2891 	mov	b,#0x40
      000DFF E4               [12] 2892 	clr	a
      000E00 12 5A 48         [24] 2893 	lcall	__gptrput
                           00083E  2894 	C$u2f_hid.c$335$2$167 ==.
                                   2895 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:335: init_res->version_build = 0;
      000E03 90 00 28         [24] 2896 	mov	dptr,#(_appdata + 0x0007)
      000E06 75 F0 40         [24] 2897 	mov	b,#0x40
      000E09 12 5A 48         [24] 2898 	lcall	__gptrput
                           000847  2899 	C$u2f_hid.c$338$2$167 ==.
                                   2900 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:338: init_res->cflags = CAPABILITY_WINK | CAPABILITY_LOCK;
      000E0C 90 00 29         [24] 2901 	mov	dptr,#(_appdata + 0x0008)
      000E0F 75 F0 40         [24] 2902 	mov	b,#0x40
      000E12 74 03            [12] 2903 	mov	a,#0x03
      000E14 12 5A 48         [24] 2904 	lcall	__gptrput
                           000852  2905 	C$u2f_hid.c$348$2$167 ==.
                                   2906 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:348: u2f_hid_writeback(req->pkt.init.payload, 8);
      000E17 2F               [12] 2907 	add	a,r7
      000E18 FA               [12] 2908 	mov	r2,a
      000E19 E4               [12] 2909 	clr	a
      000E1A 3E               [12] 2910 	addc	a,r6
      000E1B FB               [12] 2911 	mov	r3,a
      000E1C 8D 04            [24] 2912 	mov	ar4,r5
      000E1E 74 08            [12] 2913 	mov	a,#0x08
      000E20 C0 E0            [24] 2914 	push	acc
      000E22 E4               [12] 2915 	clr	a
      000E23 C0 E0            [24] 2916 	push	acc
      000E25 8A 82            [24] 2917 	mov	dpl,r2
      000E27 8B 83            [24] 2918 	mov	dph,r3
      000E29 8C F0            [24] 2919 	mov	b,r4
      000E2B 12 06 74         [24] 2920 	lcall	_u2f_hid_writeback
      000E2E 15 81            [12] 2921 	dec	sp
      000E30 15 81            [12] 2922 	dec	sp
                           00086D  2923 	C$u2f_hid.c$349$2$167 ==.
                                   2924 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:349: u2f_hid_writeback((uint8_t *)init_res, 9);
      000E32 74 09            [12] 2925 	mov	a,#0x09
      000E34 C0 E0            [24] 2926 	push	acc
      000E36 E4               [12] 2927 	clr	a
      000E37 C0 E0            [24] 2928 	push	acc
      000E39 90 00 21         [24] 2929 	mov	dptr,#_appdata
      000E3C 75 F0 40         [24] 2930 	mov	b,#0x40
      000E3F 12 06 74         [24] 2931 	lcall	_u2f_hid_writeback
      000E42 15 81            [12] 2932 	dec	sp
      000E44 15 81            [12] 2933 	dec	sp
                           000881  2934 	C$u2f_hid.c$350$2$167 ==.
                                   2935 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:350: u2f_hid_flush();
      000E46 12 06 5A         [24] 2936 	lcall	_u2f_hid_flush
                           000884  2937 	C$u2f_hid.c$352$2$167 ==.
                                   2938 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:352: hid_layer.current_cid = init_res->cid;
      000E49 AF 21            [24] 2939 	mov	r7,(_appdata + 0)
      000E4B AE 22            [24] 2940 	mov	r6,(_appdata + 1)
      000E4D AD 23            [24] 2941 	mov	r5,(_appdata + 2)
      000E4F AC 24            [24] 2942 	mov	r4,(_appdata + 3)
      000E51 90 00 0B         [24] 2943 	mov	dptr,#(_hid_layer + 0x0001)
      000E54 EF               [12] 2944 	mov	a,r7
      000E55 F0               [24] 2945 	movx	@dptr,a
      000E56 EE               [12] 2946 	mov	a,r6
      000E57 A3               [24] 2947 	inc	dptr
      000E58 F0               [24] 2948 	movx	@dptr,a
      000E59 ED               [12] 2949 	mov	a,r5
      000E5A A3               [24] 2950 	inc	dptr
      000E5B F0               [24] 2951 	movx	@dptr,a
      000E5C EC               [12] 2952 	mov	a,r4
      000E5D A3               [24] 2953 	inc	dptr
      000E5E F0               [24] 2954 	movx	@dptr,a
                           00089A  2955 	C$u2f_hid.c$356$2$167 ==.
                                   2956 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:356: break;
      000E5F 02 11 F0         [24] 2957 	ljmp	00142$
                           00089D  2958 	C$u2f_hid.c$357$2$167 ==.
                                   2959 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:357: case U2FHID_MSG:
      000E62                       2960 00109$:
                           00089D  2961 	C$u2f_hid.c$359$2$167 ==.
                                   2962 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:359: if (U2FHID_LEN(req) < 4)
      000E62 A8 1B            [24] 2963 	mov	r0,_bp
      000E64 08               [12] 2964 	inc	r0
      000E65 74 04            [12] 2965 	mov	a,#0x04
      000E67 26               [12] 2966 	add	a,@r0
      000E68 FA               [12] 2967 	mov	r2,a
      000E69 E4               [12] 2968 	clr	a
      000E6A 08               [12] 2969 	inc	r0
      000E6B 36               [12] 2970 	addc	a,@r0
      000E6C FB               [12] 2971 	mov	r3,a
      000E6D 08               [12] 2972 	inc	r0
      000E6E 86 04            [24] 2973 	mov	ar4,@r0
      000E70 0A               [12] 2974 	inc	r2
      000E71 BA 00 01         [24] 2975 	cjne	r2,#0x00,00212$
      000E74 0B               [12] 2976 	inc	r3
      000E75                       2977 00212$:
      000E75 8A 82            [24] 2978 	mov	dpl,r2
      000E77 8B 83            [24] 2979 	mov	dph,r3
      000E79 8C F0            [24] 2980 	mov	b,r4
      000E7B 12 5E 3E         [24] 2981 	lcall	__gptrget
      000E7E FA               [12] 2982 	mov	r2,a
      000E7F A3               [24] 2983 	inc	dptr
      000E80 12 5E 3E         [24] 2984 	lcall	__gptrget
      000E83 FB               [12] 2985 	mov	r3,a
      000E84 C3               [12] 2986 	clr	c
      000E85 EA               [12] 2987 	mov	a,r2
      000E86 94 04            [12] 2988 	subb	a,#0x04
      000E88 EB               [12] 2989 	mov	a,r3
      000E89 94 00            [12] 2990 	subb	a,#0x00
      000E8B 50 31            [24] 2991 	jnc	00111$
                           0008C8  2992 	C$u2f_hid.c$361$3$172 ==.
                                   2993 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:361: stamp_error(hid_layer.current_cid, ERR_INVALID_LEN);
      000E8D 90 00 0B         [24] 2994 	mov	dptr,#(_hid_layer + 0x0001)
      000E90 E5 1B            [12] 2995 	mov	a,_bp
      000E92 24 08            [12] 2996 	add	a,#0x08
      000E94 F8               [12] 2997 	mov	r0,a
      000E95 E0               [24] 2998 	movx	a,@dptr
      000E96 F6               [12] 2999 	mov	@r0,a
      000E97 A3               [24] 3000 	inc	dptr
      000E98 E0               [24] 3001 	movx	a,@dptr
      000E99 08               [12] 3002 	inc	r0
      000E9A F6               [12] 3003 	mov	@r0,a
      000E9B A3               [24] 3004 	inc	dptr
      000E9C E0               [24] 3005 	movx	a,@dptr
      000E9D 08               [12] 3006 	inc	r0
      000E9E F6               [12] 3007 	mov	@r0,a
      000E9F A3               [24] 3008 	inc	dptr
      000EA0 E0               [24] 3009 	movx	a,@dptr
      000EA1 08               [12] 3010 	inc	r0
      000EA2 F6               [12] 3011 	mov	@r0,a
      000EA3 74 03            [12] 3012 	mov	a,#0x03
      000EA5 C0 E0            [24] 3013 	push	acc
      000EA7 E5 1B            [12] 3014 	mov	a,_bp
      000EA9 24 08            [12] 3015 	add	a,#0x08
      000EAB F8               [12] 3016 	mov	r0,a
      000EAC 86 82            [24] 3017 	mov	dpl,@r0
      000EAE 08               [12] 3018 	inc	r0
      000EAF 86 83            [24] 3019 	mov	dph,@r0
      000EB1 08               [12] 3020 	inc	r0
      000EB2 86 F0            [24] 3021 	mov	b,@r0
      000EB4 08               [12] 3022 	inc	r0
      000EB5 E6               [12] 3023 	mov	a,@r0
      000EB6 12 0A ED         [24] 3024 	lcall	_stamp_error
      000EB9 15 81            [12] 3025 	dec	sp
                           0008F6  3026 	C$u2f_hid.c$362$3$172 ==.
                                   3027 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:362: goto fail;
      000EBB 02 11 F9         [24] 3028 	ljmp	00143$
      000EBE                       3029 00111$:
                           0008F9  3030 	C$u2f_hid.c$369$2$167 ==.
                                   3031 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:369: if (hid_layer.bytes_buffered == 0)
      000EBE 90 00 14         [24] 3032 	mov	dptr,#(_hid_layer + 0x000a)
      000EC1 E0               [24] 3033 	movx	a,@dptr
      000EC2 FB               [12] 3034 	mov	r3,a
      000EC3 A3               [24] 3035 	inc	dptr
      000EC4 E0               [24] 3036 	movx	a,@dptr
      000EC5 FC               [12] 3037 	mov	r4,a
      000EC6 4B               [12] 3038 	orl	a,r3
      000EC7 70 4E            [24] 3039 	jnz	00117$
                           000904  3040 	C$u2f_hid.c$371$3$173 ==.
                                   3041 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:371: start_buffering(req);
      000EC9 A8 1B            [24] 3042 	mov	r0,_bp
      000ECB 08               [12] 3043 	inc	r0
      000ECC 86 82            [24] 3044 	mov	dpl,@r0
      000ECE 08               [12] 3045 	inc	r0
      000ECF 86 83            [24] 3046 	mov	dph,@r0
      000ED1 08               [12] 3047 	inc	r0
      000ED2 86 F0            [24] 3048 	mov	b,@r0
      000ED4 12 0B 88         [24] 3049 	lcall	_start_buffering
                           000912  3050 	C$u2f_hid.c$372$3$173 ==.
                                   3051 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:372: if (hid_layer.bytes_buffered >= U2FHID_LEN(req))
      000ED7 90 00 14         [24] 3052 	mov	dptr,#(_hid_layer + 0x000a)
      000EDA E0               [24] 3053 	movx	a,@dptr
      000EDB FB               [12] 3054 	mov	r3,a
      000EDC A3               [24] 3055 	inc	dptr
      000EDD E0               [24] 3056 	movx	a,@dptr
      000EDE FC               [12] 3057 	mov	r4,a
      000EDF A8 1B            [24] 3058 	mov	r0,_bp
      000EE1 08               [12] 3059 	inc	r0
      000EE2 74 04            [12] 3060 	mov	a,#0x04
      000EE4 26               [12] 3061 	add	a,@r0
      000EE5 FA               [12] 3062 	mov	r2,a
      000EE6 E4               [12] 3063 	clr	a
      000EE7 08               [12] 3064 	inc	r0
      000EE8 36               [12] 3065 	addc	a,@r0
      000EE9 FE               [12] 3066 	mov	r6,a
      000EEA 08               [12] 3067 	inc	r0
      000EEB 86 07            [24] 3068 	mov	ar7,@r0
      000EED 0A               [12] 3069 	inc	r2
      000EEE BA 00 01         [24] 3070 	cjne	r2,#0x00,00215$
      000EF1 0E               [12] 3071 	inc	r6
      000EF2                       3072 00215$:
      000EF2 8A 82            [24] 3073 	mov	dpl,r2
      000EF4 8E 83            [24] 3074 	mov	dph,r6
      000EF6 8F F0            [24] 3075 	mov	b,r7
      000EF8 12 5E 3E         [24] 3076 	lcall	__gptrget
      000EFB FA               [12] 3077 	mov	r2,a
      000EFC A3               [24] 3078 	inc	dptr
      000EFD 12 5E 3E         [24] 3079 	lcall	__gptrget
      000F00 FE               [12] 3080 	mov	r6,a
      000F01 C3               [12] 3081 	clr	c
      000F02 EB               [12] 3082 	mov	a,r3
      000F03 9A               [12] 3083 	subb	a,r2
      000F04 EC               [12] 3084 	mov	a,r4
      000F05 9E               [12] 3085 	subb	a,r6
      000F06 50 03            [24] 3086 	jnc	00216$
      000F08 02 11 F0         [24] 3087 	ljmp	00142$
      000F0B                       3088 00216$:
                           000946  3089 	C$u2f_hid.c$374$4$174 ==.
                                   3090 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:374: u2f_request((struct u2f_request_apdu *)hid_layer.buffer);
      000F0B 90 00 1C         [24] 3091 	mov	dptr,#(_hid_layer + 0x0012)
      000F0E 75 F0 00         [24] 3092 	mov	b,#0x00
      000F11 12 46 73         [24] 3093 	lcall	_u2f_request
      000F14 02 11 F0         [24] 3094 	ljmp	00142$
      000F17                       3095 00117$:
                           000952  3096 	C$u2f_hid.c$379$3$175 ==.
                                   3097 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:379: buffer_request(req);
      000F17 A8 1B            [24] 3098 	mov	r0,_bp
      000F19 08               [12] 3099 	inc	r0
      000F1A 86 82            [24] 3100 	mov	dpl,@r0
      000F1C 08               [12] 3101 	inc	r0
      000F1D 86 83            [24] 3102 	mov	dph,@r0
      000F1F 08               [12] 3103 	inc	r0
      000F20 86 F0            [24] 3104 	mov	b,@r0
      000F22 12 0B E8         [24] 3105 	lcall	_buffer_request
                           000960  3106 	C$u2f_hid.c$380$3$175 ==.
                                   3107 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:380: if (hid_layer.bytes_buffered >= hid_layer.req_len)
      000F25 90 00 14         [24] 3108 	mov	dptr,#(_hid_layer + 0x000a)
      000F28 E0               [24] 3109 	movx	a,@dptr
      000F29 FE               [12] 3110 	mov	r6,a
      000F2A A3               [24] 3111 	inc	dptr
      000F2B E0               [24] 3112 	movx	a,@dptr
      000F2C FF               [12] 3113 	mov	r7,a
      000F2D 90 00 16         [24] 3114 	mov	dptr,#(_hid_layer + 0x000c)
      000F30 E0               [24] 3115 	movx	a,@dptr
      000F31 FC               [12] 3116 	mov	r4,a
      000F32 A3               [24] 3117 	inc	dptr
      000F33 E0               [24] 3118 	movx	a,@dptr
      000F34 FD               [12] 3119 	mov	r5,a
      000F35 C3               [12] 3120 	clr	c
      000F36 EE               [12] 3121 	mov	a,r6
      000F37 9C               [12] 3122 	subb	a,r4
      000F38 EF               [12] 3123 	mov	a,r7
      000F39 9D               [12] 3124 	subb	a,r5
      000F3A 50 03            [24] 3125 	jnc	00217$
      000F3C 02 11 F0         [24] 3126 	ljmp	00142$
      000F3F                       3127 00217$:
                           00097A  3128 	C$u2f_hid.c$382$4$176 ==.
                                   3129 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:382: u2f_request((struct u2f_request_apdu *)hid_layer.buffer);
      000F3F 90 00 1C         [24] 3130 	mov	dptr,#(_hid_layer + 0x0012)
      000F42 75 F0 00         [24] 3131 	mov	b,#0x00
      000F45 12 46 73         [24] 3132 	lcall	_u2f_request
                           000983  3133 	C$u2f_hid.c$387$2$167 ==.
                                   3134 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:387: break;
      000F48 02 11 F0         [24] 3135 	ljmp	00142$
                           000986  3136 	C$u2f_hid.c$388$2$167 ==.
                                   3137 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:388: case U2FHID_PING:
      000F4B                       3138 00119$:
                           000986  3139 	C$u2f_hid.c$391$2$167 ==.
                                   3140 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:391: if (hid_layer.bytes_buffered == 0)
      000F4B 90 00 14         [24] 3141 	mov	dptr,#(_hid_layer + 0x000a)
      000F4E E0               [24] 3142 	movx	a,@dptr
      000F4F FE               [12] 3143 	mov	r6,a
      000F50 A3               [24] 3144 	inc	dptr
      000F51 E0               [24] 3145 	movx	a,@dptr
      000F52 FF               [12] 3146 	mov	r7,a
      000F53 4E               [12] 3147 	orl	a,r6
      000F54 60 03            [24] 3148 	jz	00218$
      000F56 02 0F F0         [24] 3149 	ljmp	00129$
      000F59                       3150 00218$:
                           000994  3151 	C$u2f_hid.c$393$3$177 ==.
                                   3152 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:393: start_buffering(req);
      000F59 A8 1B            [24] 3153 	mov	r0,_bp
      000F5B 08               [12] 3154 	inc	r0
      000F5C 86 82            [24] 3155 	mov	dpl,@r0
      000F5E 08               [12] 3156 	inc	r0
      000F5F 86 83            [24] 3157 	mov	dph,@r0
      000F61 08               [12] 3158 	inc	r0
      000F62 86 F0            [24] 3159 	mov	b,@r0
      000F64 12 0B 88         [24] 3160 	lcall	_start_buffering
                           0009A2  3161 	C$u2f_hid.c$394$3$177 ==.
                                   3162 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:394: u2f_hid_set_len(U2FHID_LEN(req));
      000F67 A8 1B            [24] 3163 	mov	r0,_bp
      000F69 08               [12] 3164 	inc	r0
      000F6A 74 04            [12] 3165 	mov	a,#0x04
      000F6C 26               [12] 3166 	add	a,@r0
      000F6D FB               [12] 3167 	mov	r3,a
      000F6E E4               [12] 3168 	clr	a
      000F6F 08               [12] 3169 	inc	r0
      000F70 36               [12] 3170 	addc	a,@r0
      000F71 FC               [12] 3171 	mov	r4,a
      000F72 08               [12] 3172 	inc	r0
      000F73 86 05            [24] 3173 	mov	ar5,@r0
      000F75 E5 1B            [12] 3174 	mov	a,_bp
      000F77 24 08            [12] 3175 	add	a,#0x08
      000F79 F8               [12] 3176 	mov	r0,a
      000F7A 74 01            [12] 3177 	mov	a,#0x01
      000F7C 2B               [12] 3178 	add	a,r3
      000F7D F6               [12] 3179 	mov	@r0,a
      000F7E E4               [12] 3180 	clr	a
      000F7F 3C               [12] 3181 	addc	a,r4
      000F80 08               [12] 3182 	inc	r0
      000F81 F6               [12] 3183 	mov	@r0,a
      000F82 08               [12] 3184 	inc	r0
      000F83 A6 05            [24] 3185 	mov	@r0,ar5
      000F85 E5 1B            [12] 3186 	mov	a,_bp
      000F87 24 08            [12] 3187 	add	a,#0x08
      000F89 F8               [12] 3188 	mov	r0,a
      000F8A 86 02            [24] 3189 	mov	ar2,@r0
      000F8C 08               [12] 3190 	inc	r0
      000F8D 86 04            [24] 3191 	mov	ar4,@r0
      000F8F 08               [12] 3192 	inc	r0
      000F90 86 05            [24] 3193 	mov	ar5,@r0
      000F92 8A 82            [24] 3194 	mov	dpl,r2
      000F94 8C 83            [24] 3195 	mov	dph,r4
      000F96 8D F0            [24] 3196 	mov	b,r5
      000F98 12 5E 3E         [24] 3197 	lcall	__gptrget
      000F9B FA               [12] 3198 	mov	r2,a
      000F9C A3               [24] 3199 	inc	dptr
      000F9D 12 5E 3E         [24] 3200 	lcall	__gptrget
      000FA0 FC               [12] 3201 	mov	r4,a
      000FA1 8A 82            [24] 3202 	mov	dpl,r2
      000FA3 8C 83            [24] 3203 	mov	dph,r4
      000FA5 12 06 0B         [24] 3204 	lcall	_u2f_hid_set_len
                           0009E3  3205 	C$u2f_hid.c$395$3$177 ==.
                                   3206 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:395: if (hid_layer.bytes_buffered >= U2FHID_LEN(req))
      000FA8 90 00 14         [24] 3207 	mov	dptr,#(_hid_layer + 0x000a)
      000FAB E0               [24] 3208 	movx	a,@dptr
      000FAC FF               [12] 3209 	mov	r7,a
      000FAD A3               [24] 3210 	inc	dptr
      000FAE E0               [24] 3211 	movx	a,@dptr
      000FAF FE               [12] 3212 	mov	r6,a
      000FB0 E5 1B            [12] 3213 	mov	a,_bp
      000FB2 24 08            [12] 3214 	add	a,#0x08
      000FB4 F8               [12] 3215 	mov	r0,a
      000FB5 86 02            [24] 3216 	mov	ar2,@r0
      000FB7 08               [12] 3217 	inc	r0
      000FB8 86 03            [24] 3218 	mov	ar3,@r0
      000FBA 08               [12] 3219 	inc	r0
      000FBB 86 05            [24] 3220 	mov	ar5,@r0
      000FBD 8A 82            [24] 3221 	mov	dpl,r2
      000FBF 8B 83            [24] 3222 	mov	dph,r3
      000FC1 8D F0            [24] 3223 	mov	b,r5
      000FC3 12 5E 3E         [24] 3224 	lcall	__gptrget
      000FC6 FA               [12] 3225 	mov	r2,a
      000FC7 A3               [24] 3226 	inc	dptr
      000FC8 12 5E 3E         [24] 3227 	lcall	__gptrget
      000FCB FB               [12] 3228 	mov	r3,a
      000FCC C3               [12] 3229 	clr	c
      000FCD EF               [12] 3230 	mov	a,r7
      000FCE 9A               [12] 3231 	subb	a,r2
      000FCF EE               [12] 3232 	mov	a,r6
      000FD0 9B               [12] 3233 	subb	a,r3
      000FD1 40 17            [24] 3234 	jc	00121$
                           000A0E  3235 	C$u2f_hid.c$397$4$178 ==.
                                   3236 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:397: u2f_hid_writeback(hid_layer.buffer,hid_layer.bytes_buffered);
      000FD3 C0 07            [24] 3237 	push	ar7
      000FD5 C0 06            [24] 3238 	push	ar6
      000FD7 90 00 1C         [24] 3239 	mov	dptr,#(_hid_layer + 0x0012)
      000FDA 75 F0 00         [24] 3240 	mov	b,#0x00
      000FDD 12 06 74         [24] 3241 	lcall	_u2f_hid_writeback
      000FE0 15 81            [12] 3242 	dec	sp
      000FE2 15 81            [12] 3243 	dec	sp
                           000A1F  3244 	C$u2f_hid.c$398$4$178 ==.
                                   3245 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:398: u2f_hid_flush();
      000FE4 12 06 5A         [24] 3246 	lcall	_u2f_hid_flush
      000FE7 02 11 F0         [24] 3247 	ljmp	00142$
      000FEA                       3248 00121$:
                           000A25  3249 	C$u2f_hid.c$402$4$179 ==.
                                   3250 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:402: return 1;
      000FEA 75 82 01         [24] 3251 	mov	dpl,#0x01
      000FED 02 12 05         [24] 3252 	ljmp	00144$
      000FF0                       3253 00129$:
                           000A2B  3254 	C$u2f_hid.c$407$3$180 ==.
                                   3255 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:407: if (hid_layer.bytes_buffered + U2FHID_CONT_PAYLOAD_SIZE > BUFFER_SIZE)
      000FF0 74 3B            [12] 3256 	mov	a,#0x3b
      000FF2 2E               [12] 3257 	add	a,r6
      000FF3 FC               [12] 3258 	mov	r4,a
      000FF4 E4               [12] 3259 	clr	a
      000FF5 3F               [12] 3260 	addc	a,r7
      000FF6 FD               [12] 3261 	mov	r5,a
      000FF7 C3               [12] 3262 	clr	c
      000FF8 74 0E            [12] 3263 	mov	a,#0x0e
      000FFA 9C               [12] 3264 	subb	a,r4
      000FFB 74 01            [12] 3265 	mov	a,#0x01
      000FFD 9D               [12] 3266 	subb	a,r5
      000FFE 50 18            [24] 3267 	jnc	00124$
                           000A3B  3268 	C$u2f_hid.c$409$4$181 ==.
                                   3269 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:409: u2f_hid_writeback(hid_layer.buffer,hid_layer.bytes_buffered);
      001000 C0 06            [24] 3270 	push	ar6
      001002 C0 07            [24] 3271 	push	ar7
      001004 90 00 1C         [24] 3272 	mov	dptr,#(_hid_layer + 0x0012)
      001007 75 F0 00         [24] 3273 	mov	b,#0x00
      00100A 12 06 74         [24] 3274 	lcall	_u2f_hid_writeback
      00100D 15 81            [12] 3275 	dec	sp
      00100F 15 81            [12] 3276 	dec	sp
                           000A4C  3277 	C$u2f_hid.c$410$4$181 ==.
                                   3278 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:410: hid_layer.bytes_buffered = 0;
      001011 90 00 14         [24] 3279 	mov	dptr,#(_hid_layer + 0x000a)
      001014 E4               [12] 3280 	clr	a
      001015 F0               [24] 3281 	movx	@dptr,a
      001016 A3               [24] 3282 	inc	dptr
      001017 F0               [24] 3283 	movx	@dptr,a
      001018                       3284 00124$:
                           000A53  3285 	C$u2f_hid.c$414$3$180 ==.
                                   3286 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:414: buffer_request(req);
      001018 A8 1B            [24] 3287 	mov	r0,_bp
      00101A 08               [12] 3288 	inc	r0
      00101B 86 82            [24] 3289 	mov	dpl,@r0
      00101D 08               [12] 3290 	inc	r0
      00101E 86 83            [24] 3291 	mov	dph,@r0
      001020 08               [12] 3292 	inc	r0
      001021 86 F0            [24] 3293 	mov	b,@r0
      001023 12 0B E8         [24] 3294 	lcall	_buffer_request
                           000A61  3295 	C$u2f_hid.c$415$3$180 ==.
                                   3296 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:415: if (hid_layer.bytes_buffered + hid_layer.bytes_written >= hid_layer.req_len)
      001026 90 00 14         [24] 3297 	mov	dptr,#(_hid_layer + 0x000a)
      001029 E0               [24] 3298 	movx	a,@dptr
      00102A FE               [12] 3299 	mov	r6,a
      00102B A3               [24] 3300 	inc	dptr
      00102C E0               [24] 3301 	movx	a,@dptr
      00102D FF               [12] 3302 	mov	r7,a
      00102E 90 00 18         [24] 3303 	mov	dptr,#(_hid_layer + 0x000e)
      001031 E0               [24] 3304 	movx	a,@dptr
      001032 FC               [12] 3305 	mov	r4,a
      001033 A3               [24] 3306 	inc	dptr
      001034 E0               [24] 3307 	movx	a,@dptr
      001035 FD               [12] 3308 	mov	r5,a
      001036 EC               [12] 3309 	mov	a,r4
      001037 2E               [12] 3310 	add	a,r6
      001038 FC               [12] 3311 	mov	r4,a
      001039 ED               [12] 3312 	mov	a,r5
      00103A 3F               [12] 3313 	addc	a,r7
      00103B FD               [12] 3314 	mov	r5,a
      00103C 90 00 16         [24] 3315 	mov	dptr,#(_hid_layer + 0x000c)
      00103F E0               [24] 3316 	movx	a,@dptr
      001040 FA               [12] 3317 	mov	r2,a
      001041 A3               [24] 3318 	inc	dptr
      001042 E0               [24] 3319 	movx	a,@dptr
      001043 FB               [12] 3320 	mov	r3,a
      001044 C3               [12] 3321 	clr	c
      001045 EC               [12] 3322 	mov	a,r4
      001046 9A               [12] 3323 	subb	a,r2
      001047 ED               [12] 3324 	mov	a,r5
      001048 9B               [12] 3325 	subb	a,r3
      001049 40 17            [24] 3326 	jc	00126$
                           000A86  3327 	C$u2f_hid.c$417$4$182 ==.
                                   3328 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:417: u2f_hid_writeback(hid_layer.buffer,hid_layer.bytes_buffered);
      00104B C0 06            [24] 3329 	push	ar6
      00104D C0 07            [24] 3330 	push	ar7
      00104F 90 00 1C         [24] 3331 	mov	dptr,#(_hid_layer + 0x0012)
      001052 75 F0 00         [24] 3332 	mov	b,#0x00
      001055 12 06 74         [24] 3333 	lcall	_u2f_hid_writeback
      001058 15 81            [12] 3334 	dec	sp
      00105A 15 81            [12] 3335 	dec	sp
                           000A97  3336 	C$u2f_hid.c$418$4$182 ==.
                                   3337 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:418: u2f_hid_flush();
      00105C 12 06 5A         [24] 3338 	lcall	_u2f_hid_flush
      00105F 02 11 F0         [24] 3339 	ljmp	00142$
      001062                       3340 00126$:
                           000A9D  3341 	C$u2f_hid.c$422$4$183 ==.
                                   3342 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:422: return 1;
      001062 75 82 01         [24] 3343 	mov	dpl,#0x01
      001065 02 12 05         [24] 3344 	ljmp	00144$
                           000AA3  3345 	C$u2f_hid.c$429$2$167 ==.
                                   3346 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:429: case U2FHID_WINK:
      001068                       3347 00131$:
                           000AA3  3348 	C$u2f_hid.c$430$2$167 ==.
                                   3349 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:430: if (U2FHID_LEN(req) != 0)
      001068 A8 1B            [24] 3350 	mov	r0,_bp
      00106A 08               [12] 3351 	inc	r0
      00106B 74 04            [12] 3352 	mov	a,#0x04
      00106D 26               [12] 3353 	add	a,@r0
      00106E FD               [12] 3354 	mov	r5,a
      00106F E4               [12] 3355 	clr	a
      001070 08               [12] 3356 	inc	r0
      001071 36               [12] 3357 	addc	a,@r0
      001072 FE               [12] 3358 	mov	r6,a
      001073 08               [12] 3359 	inc	r0
      001074 86 07            [24] 3360 	mov	ar7,@r0
      001076 0D               [12] 3361 	inc	r5
      001077 BD 00 01         [24] 3362 	cjne	r5,#0x00,00222$
      00107A 0E               [12] 3363 	inc	r6
      00107B                       3364 00222$:
      00107B 8D 82            [24] 3365 	mov	dpl,r5
      00107D 8E 83            [24] 3366 	mov	dph,r6
      00107F 8F F0            [24] 3367 	mov	b,r7
      001081 12 5E 3E         [24] 3368 	lcall	__gptrget
      001084 FD               [12] 3369 	mov	r5,a
      001085 A3               [24] 3370 	inc	dptr
      001086 12 5E 3E         [24] 3371 	lcall	__gptrget
      001089 FE               [12] 3372 	mov	r6,a
      00108A 4D               [12] 3373 	orl	a,r5
      00108B 60 1E            [24] 3374 	jz	00133$
                           000AC8  3375 	C$u2f_hid.c$433$3$184 ==.
                                   3376 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:433: stamp_error(hid_layer.current_cid, ERR_INVALID_LEN);
      00108D 90 00 0B         [24] 3377 	mov	dptr,#(_hid_layer + 0x0001)
      001090 E0               [24] 3378 	movx	a,@dptr
      001091 FC               [12] 3379 	mov	r4,a
      001092 A3               [24] 3380 	inc	dptr
      001093 E0               [24] 3381 	movx	a,@dptr
      001094 FD               [12] 3382 	mov	r5,a
      001095 A3               [24] 3383 	inc	dptr
      001096 E0               [24] 3384 	movx	a,@dptr
      001097 FE               [12] 3385 	mov	r6,a
      001098 A3               [24] 3386 	inc	dptr
      001099 E0               [24] 3387 	movx	a,@dptr
      00109A FF               [12] 3388 	mov	r7,a
      00109B 74 03            [12] 3389 	mov	a,#0x03
      00109D C0 E0            [24] 3390 	push	acc
      00109F 8C 82            [24] 3391 	mov	dpl,r4
      0010A1 8D 83            [24] 3392 	mov	dph,r5
      0010A3 8E F0            [24] 3393 	mov	b,r6
      0010A5 EF               [12] 3394 	mov	a,r7
      0010A6 12 0A ED         [24] 3395 	lcall	_stamp_error
      0010A9 15 81            [12] 3396 	dec	sp
      0010AB                       3397 00133$:
                           000AE6  3398 	C$u2f_hid.c$435$2$167 ==.
                                   3399 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:435: u2f_hid_set_len(0);
      0010AB 90 00 00         [24] 3400 	mov	dptr,#0x0000
      0010AE 12 06 0B         [24] 3401 	lcall	_u2f_hid_set_len
                           000AEC  3402 	C$u2f_hid.c$436$2$167 ==.
                                   3403 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:436: u2f_hid_writeback(NULL, 0);
      0010B1 E4               [12] 3404 	clr	a
      0010B2 C0 E0            [24] 3405 	push	acc
      0010B4 C0 E0            [24] 3406 	push	acc
      0010B6 90 00 00         [24] 3407 	mov	dptr,#0x0000
      0010B9 75 F0 00         [24] 3408 	mov	b,#0x00
      0010BC 12 06 74         [24] 3409 	lcall	_u2f_hid_writeback
      0010BF 15 81            [12] 3410 	dec	sp
      0010C1 15 81            [12] 3411 	dec	sp
                           000AFE  3412 	C$u2f_hid.c$437$2$167 ==.
                                   3413 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:437: u2f_hid_flush();
      0010C3 12 06 5A         [24] 3414 	lcall	_u2f_hid_flush
                           000B01  3415 	C$u2f_hid.c$438$2$167 ==.
                                   3416 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:438: app_wink(U2F_COLOR_WINK);
      0010C6 90 00 00         [24] 3417 	mov	dptr,#0x0000
      0010C9 75 F0 12         [24] 3418 	mov	b,#0x12
      0010CC E4               [12] 3419 	clr	a
      0010CD 12 00 C0         [24] 3420 	lcall	_app_wink
                           000B0B  3421 	C$u2f_hid.c$439$2$167 ==.
                                   3422 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:439: break;
      0010D0 02 11 F0         [24] 3423 	ljmp	00142$
                           000B0E  3424 	C$u2f_hid.c$442$2$167 ==.
                                   3425 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:442: case U2FHID_LOCK:
      0010D3                       3426 00134$:
                           000B0E  3427 	C$u2f_hid.c$444$2$167 ==.
                                   3428 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:444: secs = req->pkt.init.payload[0];
      0010D3 A8 1B            [24] 3429 	mov	r0,_bp
      0010D5 08               [12] 3430 	inc	r0
      0010D6 74 04            [12] 3431 	mov	a,#0x04
      0010D8 26               [12] 3432 	add	a,@r0
      0010D9 FD               [12] 3433 	mov	r5,a
      0010DA E4               [12] 3434 	clr	a
      0010DB 08               [12] 3435 	inc	r0
      0010DC 36               [12] 3436 	addc	a,@r0
      0010DD FE               [12] 3437 	mov	r6,a
      0010DE 08               [12] 3438 	inc	r0
      0010DF 86 07            [24] 3439 	mov	ar7,@r0
      0010E1 74 03            [12] 3440 	mov	a,#0x03
      0010E3 2D               [12] 3441 	add	a,r5
      0010E4 FD               [12] 3442 	mov	r5,a
      0010E5 E4               [12] 3443 	clr	a
      0010E6 3E               [12] 3444 	addc	a,r6
      0010E7 FE               [12] 3445 	mov	r6,a
      0010E8 8D 82            [24] 3446 	mov	dpl,r5
      0010EA 8E 83            [24] 3447 	mov	dph,r6
      0010EC 8F F0            [24] 3448 	mov	b,r7
      0010EE 12 5E 3E         [24] 3449 	lcall	__gptrget
                           000B2C  3450 	C$u2f_hid.c$445$2$167 ==.
                                   3451 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:445: if (secs > 10)
      0010F1 FF               [12] 3452 	mov  r7,a
      0010F2 24 F5            [12] 3453 	add	a,#0xff - 0x0a
      0010F4 50 21            [24] 3454 	jnc	00139$
                           000B31  3455 	C$u2f_hid.c$447$3$185 ==.
                                   3456 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:447: stamp_error(hid_layer.current_cid, ERR_INVALID_PAR);
      0010F6 90 00 0B         [24] 3457 	mov	dptr,#(_hid_layer + 0x0001)
      0010F9 E0               [24] 3458 	movx	a,@dptr
      0010FA FB               [12] 3459 	mov	r3,a
      0010FB A3               [24] 3460 	inc	dptr
      0010FC E0               [24] 3461 	movx	a,@dptr
      0010FD FC               [12] 3462 	mov	r4,a
      0010FE A3               [24] 3463 	inc	dptr
      0010FF E0               [24] 3464 	movx	a,@dptr
      001100 FD               [12] 3465 	mov	r5,a
      001101 A3               [24] 3466 	inc	dptr
      001102 E0               [24] 3467 	movx	a,@dptr
      001103 FE               [12] 3468 	mov	r6,a
      001104 74 02            [12] 3469 	mov	a,#0x02
      001106 C0 E0            [24] 3470 	push	acc
      001108 8B 82            [24] 3471 	mov	dpl,r3
      00110A 8C 83            [24] 3472 	mov	dph,r4
      00110C 8D F0            [24] 3473 	mov	b,r5
      00110E EE               [12] 3474 	mov	a,r6
      00110F 12 0A ED         [24] 3475 	lcall	_stamp_error
      001112 15 81            [12] 3476 	dec	sp
      001114 02 11 F0         [24] 3477 	ljmp	00142$
      001117                       3478 00139$:
                           000B52  3479 	C$u2f_hid.c$451$3$186 ==.
                                   3480 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:451: if (secs)
      001117 EF               [12] 3481 	mov	a,r7
      001118 60 4E            [24] 3482 	jz	00136$
                           000B55  3483 	C$u2f_hid.c$453$4$187 ==.
                                   3484 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:453: _hid_lock_cid = hid_layer.current_cid;
      00111A 90 00 0B         [24] 3485 	mov	dptr,#(_hid_layer + 0x0001)
      00111D E0               [24] 3486 	movx	a,@dptr
      00111E FB               [12] 3487 	mov	r3,a
      00111F A3               [24] 3488 	inc	dptr
      001120 E0               [24] 3489 	movx	a,@dptr
      001121 FC               [12] 3490 	mov	r4,a
      001122 A3               [24] 3491 	inc	dptr
      001123 E0               [24] 3492 	movx	a,@dptr
      001124 FD               [12] 3493 	mov	r5,a
      001125 A3               [24] 3494 	inc	dptr
      001126 E0               [24] 3495 	movx	a,@dptr
      001127 FE               [12] 3496 	mov	r6,a
      001128 90 02 E6         [24] 3497 	mov	dptr,#__hid_lock_cid
      00112B EB               [12] 3498 	mov	a,r3
      00112C F0               [24] 3499 	movx	@dptr,a
      00112D EC               [12] 3500 	mov	a,r4
      00112E A3               [24] 3501 	inc	dptr
      00112F F0               [24] 3502 	movx	@dptr,a
      001130 ED               [12] 3503 	mov	a,r5
      001131 A3               [24] 3504 	inc	dptr
      001132 F0               [24] 3505 	movx	@dptr,a
      001133 EE               [12] 3506 	mov	a,r6
      001134 A3               [24] 3507 	inc	dptr
      001135 F0               [24] 3508 	movx	@dptr,a
                           000B71  3509 	C$u2f_hid.c$454$4$187 ==.
                                   3510 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:454: _hid_lockt = get_ms() + 1000 * secs;
      001136 7E 00            [12] 3511 	mov	r6,#0x00
      001138 C0 07            [24] 3512 	push	ar7
      00113A C0 06            [24] 3513 	push	ar6
      00113C 90 03 E8         [24] 3514 	mov	dptr,#0x03e8
      00113F 12 5B E5         [24] 3515 	lcall	__mulint
      001142 AE 82            [24] 3516 	mov	r6,dpl
      001144 AF 83            [24] 3517 	mov	r7,dph
      001146 15 81            [12] 3518 	dec	sp
      001148 15 81            [12] 3519 	dec	sp
      00114A EF               [12] 3520 	mov	a,r7
      00114B 33               [12] 3521 	rlc	a
      00114C 95 E0            [12] 3522 	subb	a,acc
      00114E FD               [12] 3523 	mov	r5,a
      00114F FC               [12] 3524 	mov	r4,a
      001150 90 02 E2         [24] 3525 	mov	dptr,#__hid_lockt
      001153 EE               [12] 3526 	mov	a,r6
      001154 25 08            [12] 3527 	add	a,__MS_
      001156 F0               [24] 3528 	movx	@dptr,a
      001157 EF               [12] 3529 	mov	a,r7
      001158 35 09            [12] 3530 	addc	a,(__MS_ + 1)
      00115A A3               [24] 3531 	inc	dptr
      00115B F0               [24] 3532 	movx	@dptr,a
      00115C ED               [12] 3533 	mov	a,r5
      00115D 35 0A            [12] 3534 	addc	a,(__MS_ + 2)
      00115F A3               [24] 3535 	inc	dptr
      001160 F0               [24] 3536 	movx	@dptr,a
      001161 EC               [12] 3537 	mov	a,r4
      001162 35 0B            [12] 3538 	addc	a,(__MS_ + 3)
      001164 A3               [24] 3539 	inc	dptr
      001165 F0               [24] 3540 	movx	@dptr,a
      001166 80 1D            [24] 3541 	sjmp	00137$
      001168                       3542 00136$:
                           000BA3  3543 	C$u2f_hid.c$459$4$188 ==.
                                   3544 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:459: _hid_lockt = get_ms();
      001168 90 02 E2         [24] 3545 	mov	dptr,#__hid_lockt
      00116B E5 08            [12] 3546 	mov	a,__MS_
      00116D F0               [24] 3547 	movx	@dptr,a
      00116E E5 09            [12] 3548 	mov	a,(__MS_ + 1)
      001170 A3               [24] 3549 	inc	dptr
      001171 F0               [24] 3550 	movx	@dptr,a
      001172 E5 0A            [12] 3551 	mov	a,(__MS_ + 2)
      001174 A3               [24] 3552 	inc	dptr
      001175 F0               [24] 3553 	movx	@dptr,a
      001176 E5 0B            [12] 3554 	mov	a,(__MS_ + 3)
      001178 A3               [24] 3555 	inc	dptr
      001179 F0               [24] 3556 	movx	@dptr,a
                           000BB5  3557 	C$u2f_hid.c$460$4$188 ==.
                                   3558 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:460: _hid_lock_cid = 0;
      00117A 90 02 E6         [24] 3559 	mov	dptr,#__hid_lock_cid
      00117D E4               [12] 3560 	clr	a
      00117E F0               [24] 3561 	movx	@dptr,a
      00117F A3               [24] 3562 	inc	dptr
      001180 F0               [24] 3563 	movx	@dptr,a
      001181 A3               [24] 3564 	inc	dptr
      001182 F0               [24] 3565 	movx	@dptr,a
      001183 A3               [24] 3566 	inc	dptr
      001184 F0               [24] 3567 	movx	@dptr,a
      001185                       3568 00137$:
                           000BC0  3569 	C$u2f_hid.c$462$3$186 ==.
                                   3570 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:462: hid_layer.current_cmd = U2FHID_LOCK;
      001185 90 00 0F         [24] 3571 	mov	dptr,#(_hid_layer + 0x0005)
      001188 74 84            [12] 3572 	mov	a,#0x84
      00118A F0               [24] 3573 	movx	@dptr,a
                           000BC6  3574 	C$u2f_hid.c$463$3$186 ==.
                                   3575 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:463: u2f_hid_set_len(0);
      00118B 90 00 00         [24] 3576 	mov	dptr,#0x0000
      00118E 12 06 0B         [24] 3577 	lcall	_u2f_hid_set_len
                           000BCC  3578 	C$u2f_hid.c$464$3$186 ==.
                                   3579 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:464: u2f_hid_writeback(NULL, 0);
      001191 E4               [12] 3580 	clr	a
      001192 C0 E0            [24] 3581 	push	acc
      001194 C0 E0            [24] 3582 	push	acc
      001196 90 00 00         [24] 3583 	mov	dptr,#0x0000
      001199 75 F0 00         [24] 3584 	mov	b,#0x00
      00119C 12 06 74         [24] 3585 	lcall	_u2f_hid_writeback
      00119F 15 81            [12] 3586 	dec	sp
      0011A1 15 81            [12] 3587 	dec	sp
                           000BDE  3588 	C$u2f_hid.c$465$3$186 ==.
                                   3589 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:465: u2f_hid_flush();
      0011A3 12 06 5A         [24] 3590 	lcall	_u2f_hid_flush
                           000BE1  3591 	C$u2f_hid.c$467$2$167 ==.
                                   3592 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:467: break;
                           000BE1  3593 	C$u2f_hid.c$469$2$167 ==.
                                   3594 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:469: default:
      0011A6 80 48            [24] 3595 	sjmp	00142$
      0011A8                       3596 00141$:
                           000BE3  3597 	C$u2f_hid.c$470$2$167 ==.
                                   3598 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:470: set_app_error(ERROR_HID_INVALID_CMD);
      0011A8 75 82 18         [24] 3599 	mov	dpl,#0x18
      0011AB 12 00 A4         [24] 3600 	lcall	_set_app_error
                           000BE9  3601 	C$u2f_hid.c$471$2$167 ==.
                                   3602 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:471: stamp_error(hid_layer.current_cid, ERR_INVALID_CMD);
      0011AE 90 00 0B         [24] 3603 	mov	dptr,#(_hid_layer + 0x0001)
      0011B1 E0               [24] 3604 	movx	a,@dptr
      0011B2 FC               [12] 3605 	mov	r4,a
      0011B3 A3               [24] 3606 	inc	dptr
      0011B4 E0               [24] 3607 	movx	a,@dptr
      0011B5 FD               [12] 3608 	mov	r5,a
      0011B6 A3               [24] 3609 	inc	dptr
      0011B7 E0               [24] 3610 	movx	a,@dptr
      0011B8 FE               [12] 3611 	mov	r6,a
      0011B9 A3               [24] 3612 	inc	dptr
      0011BA E0               [24] 3613 	movx	a,@dptr
      0011BB FF               [12] 3614 	mov	r7,a
      0011BC 74 01            [12] 3615 	mov	a,#0x01
      0011BE C0 E0            [24] 3616 	push	acc
      0011C0 8C 82            [24] 3617 	mov	dpl,r4
      0011C2 8D 83            [24] 3618 	mov	dph,r5
      0011C4 8E F0            [24] 3619 	mov	b,r6
      0011C6 EF               [12] 3620 	mov	a,r7
      0011C7 12 0A ED         [24] 3621 	lcall	_stamp_error
      0011CA 15 81            [12] 3622 	dec	sp
                           000C07  3623 	C$u2f_hid.c$472$2$167 ==.
                                   3624 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:472: u2f_printb("invalid cmd: ",1,hid_layer.current_cmd);
      0011CC 90 00 0F         [24] 3625 	mov	dptr,#(_hid_layer + 0x0005)
      0011CF E0               [24] 3626 	movx	a,@dptr
      0011D0 FF               [12] 3627 	mov	r7,a
      0011D1 7E 00            [12] 3628 	mov	r6,#0x00
      0011D3 C0 07            [24] 3629 	push	ar7
      0011D5 C0 06            [24] 3630 	push	ar6
      0011D7 74 01            [12] 3631 	mov	a,#0x01
      0011D9 C0 E0            [24] 3632 	push	acc
      0011DB 74 71            [12] 3633 	mov	a,#___str_0
      0011DD C0 E0            [24] 3634 	push	acc
      0011DF 74 5E            [12] 3635 	mov	a,#(___str_0 >> 8)
      0011E1 C0 E0            [24] 3636 	push	acc
      0011E3 74 80            [12] 3637 	mov	a,#0x80
      0011E5 C0 E0            [24] 3638 	push	acc
      0011E7 12 23 A8         [24] 3639 	lcall	_u2f_printb
      0011EA E5 81            [12] 3640 	mov	a,sp
      0011EC 24 FA            [12] 3641 	add	a,#0xfa
      0011EE F5 81            [12] 3642 	mov	sp,a
                           000C2B  3643 	C$u2f_hid.c$473$1$166 ==.
                                   3644 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:473: }
      0011F0                       3645 00142$:
                           000C2B  3646 	C$u2f_hid.c$475$1$166 ==.
                                   3647 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:475: return u2f_hid_busy();
      0011F0 90 02 EE         [24] 3648 	mov	dptr,#__hid_in_session
      0011F3 E0               [24] 3649 	movx	a,@dptr
      0011F4 FF               [12] 3650 	mov	r7,a
      0011F5 F5 82            [12] 3651 	mov	dpl,a
                           000C32  3652 	C$u2f_hid.c$477$1$166 ==.
                                   3653 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:477: fail:
      0011F7 80 0C            [24] 3654 	sjmp	00144$
      0011F9                       3655 00143$:
                           000C34  3656 	C$u2f_hid.c$478$1$166 ==.
                                   3657 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:478: u2f_prints("U2F HID FAIL\r\n");
      0011F9 90 5E 7F         [24] 3658 	mov	dptr,#___str_1
      0011FC 75 F0 80         [24] 3659 	mov	b,#0x80
      0011FF 12 1F 7C         [24] 3660 	lcall	_u2f_prints
                           000C3D  3661 	C$u2f_hid.c$479$1$166 ==.
                                   3662 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:479: return 0;
      001202 75 82 00         [24] 3663 	mov	dpl,#0x00
      001205                       3664 00144$:
      001205 85 1B 81         [24] 3665 	mov	sp,_bp
      001208 D0 1B            [24] 3666 	pop	_bp
                           000C45  3667 	C$u2f_hid.c$480$1$166 ==.
                           000C45  3668 	XFu2f_hid$hid_u2f_parse$0$0 ==.
      00120A 22               [24] 3669 	ret
                                   3670 ;------------------------------------------------------------
                                   3671 ;Allocation info for local variables in function 'u2f_hid_check_timeouts'
                                   3672 ;------------------------------------------------------------
                                   3673 ;i                         Allocated to registers r7 
                                   3674 ;------------------------------------------------------------
                           000C46  3675 	G$u2f_hid_check_timeouts$0$0 ==.
                           000C46  3676 	C$u2f_hid.c$482$1$166 ==.
                                   3677 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:482: void u2f_hid_check_timeouts()
                                   3678 ;	-----------------------------------------
                                   3679 ;	 function u2f_hid_check_timeouts
                                   3680 ;	-----------------------------------------
      00120B                       3681 _u2f_hid_check_timeouts:
                           000C46  3682 	C$u2f_hid.c$485$3$191 ==.
                                   3683 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:485: for(i = 0; i < CID_MAX; i++)
      00120B 7F 00            [12] 3684 	mov	r7,#0x00
      00120D                       3685 00105$:
                           000C48  3686 	C$u2f_hid.c$487$2$190 ==.
                                   3687 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:487: if (CIDS[i].busy && ((get_ms() - CIDS[i].last_used) >= 750))
      00120D EF               [12] 3688 	mov	a,r7
      00120E 75 F0 0A         [24] 3689 	mov	b,#0x0a
      001211 A4               [48] 3690 	mul	ab
      001212 24 2A            [12] 3691 	add	a,#_CIDS
      001214 FD               [12] 3692 	mov	r5,a
      001215 74 01            [12] 3693 	mov	a,#(_CIDS >> 8)
      001217 35 F0            [12] 3694 	addc	a,b
      001219 FE               [12] 3695 	mov	r6,a
      00121A 74 08            [12] 3696 	mov	a,#0x08
      00121C 2D               [12] 3697 	add	a,r5
      00121D FB               [12] 3698 	mov	r3,a
      00121E E4               [12] 3699 	clr	a
      00121F 3E               [12] 3700 	addc	a,r6
      001220 FC               [12] 3701 	mov	r4,a
      001221 8B 82            [24] 3702 	mov	dpl,r3
      001223 8C 83            [24] 3703 	mov	dph,r4
      001225 E0               [24] 3704 	movx	a,@dptr
      001226 70 03            [24] 3705 	jnz	00119$
      001228 02 12 E6         [24] 3706 	ljmp	00106$
      00122B                       3707 00119$:
      00122B 8D 82            [24] 3708 	mov	dpl,r5
      00122D 8E 83            [24] 3709 	mov	dph,r6
      00122F A3               [24] 3710 	inc	dptr
      001230 A3               [24] 3711 	inc	dptr
      001231 A3               [24] 3712 	inc	dptr
      001232 A3               [24] 3713 	inc	dptr
      001233 E0               [24] 3714 	movx	a,@dptr
      001234 F9               [12] 3715 	mov	r1,a
      001235 A3               [24] 3716 	inc	dptr
      001236 E0               [24] 3717 	movx	a,@dptr
      001237 FA               [12] 3718 	mov	r2,a
      001238 A3               [24] 3719 	inc	dptr
      001239 E0               [24] 3720 	movx	a,@dptr
      00123A FB               [12] 3721 	mov	r3,a
      00123B A3               [24] 3722 	inc	dptr
      00123C E0               [24] 3723 	movx	a,@dptr
      00123D FC               [12] 3724 	mov	r4,a
      00123E E5 08            [12] 3725 	mov	a,__MS_
      001240 C3               [12] 3726 	clr	c
      001241 99               [12] 3727 	subb	a,r1
      001242 F9               [12] 3728 	mov	r1,a
      001243 E5 09            [12] 3729 	mov	a,(__MS_ + 1)
      001245 9A               [12] 3730 	subb	a,r2
      001246 FA               [12] 3731 	mov	r2,a
      001247 E5 0A            [12] 3732 	mov	a,(__MS_ + 2)
      001249 9B               [12] 3733 	subb	a,r3
      00124A FB               [12] 3734 	mov	r3,a
      00124B E5 0B            [12] 3735 	mov	a,(__MS_ + 3)
      00124D 9C               [12] 3736 	subb	a,r4
      00124E FC               [12] 3737 	mov	r4,a
      00124F C3               [12] 3738 	clr	c
      001250 E9               [12] 3739 	mov	a,r1
      001251 94 EE            [12] 3740 	subb	a,#0xee
      001253 EA               [12] 3741 	mov	a,r2
      001254 94 02            [12] 3742 	subb	a,#0x02
      001256 EB               [12] 3743 	mov	a,r3
      001257 94 00            [12] 3744 	subb	a,#0x00
      001259 EC               [12] 3745 	mov	a,r4
      00125A 94 00            [12] 3746 	subb	a,#0x00
      00125C 50 03            [24] 3747 	jnc	00120$
      00125E 02 12 E6         [24] 3748 	ljmp	00106$
      001261                       3749 00120$:
                           000C9C  3750 	C$u2f_hid.c$489$3$191 ==.
                                   3751 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:489: u2f_printlx("timeout cid ",2,CIDS[i].cid,get_ms());
      001261 8D 82            [24] 3752 	mov	dpl,r5
      001263 8E 83            [24] 3753 	mov	dph,r6
      001265 E0               [24] 3754 	movx	a,@dptr
      001266 F9               [12] 3755 	mov	r1,a
      001267 A3               [24] 3756 	inc	dptr
      001268 E0               [24] 3757 	movx	a,@dptr
      001269 FA               [12] 3758 	mov	r2,a
      00126A A3               [24] 3759 	inc	dptr
      00126B E0               [24] 3760 	movx	a,@dptr
      00126C FB               [12] 3761 	mov	r3,a
      00126D A3               [24] 3762 	inc	dptr
      00126E E0               [24] 3763 	movx	a,@dptr
      00126F FC               [12] 3764 	mov	r4,a
      001270 C0 07            [24] 3765 	push	ar7
      001272 C0 06            [24] 3766 	push	ar6
      001274 C0 05            [24] 3767 	push	ar5
      001276 C0 08            [24] 3768 	push	__MS_
      001278 C0 09            [24] 3769 	push	(__MS_ + 1)
      00127A C0 0A            [24] 3770 	push	(__MS_ + 2)
      00127C C0 0B            [24] 3771 	push	(__MS_ + 3)
      00127E C0 01            [24] 3772 	push	ar1
      001280 C0 02            [24] 3773 	push	ar2
      001282 C0 03            [24] 3774 	push	ar3
      001284 C0 04            [24] 3775 	push	ar4
      001286 74 02            [12] 3776 	mov	a,#0x02
      001288 C0 E0            [24] 3777 	push	acc
      00128A 74 8E            [12] 3778 	mov	a,#___str_2
      00128C C0 E0            [24] 3779 	push	acc
      00128E 74 5E            [12] 3780 	mov	a,#(___str_2 >> 8)
      001290 C0 E0            [24] 3781 	push	acc
      001292 74 80            [12] 3782 	mov	a,#0x80
      001294 C0 E0            [24] 3783 	push	acc
      001296 12 24 06         [24] 3784 	lcall	_u2f_printlx
      001299 E5 81            [12] 3785 	mov	a,sp
      00129B 24 F4            [12] 3786 	add	a,#0xf4
      00129D F5 81            [12] 3787 	mov	sp,a
      00129F D0 05            [24] 3788 	pop	ar5
      0012A1 D0 06            [24] 3789 	pop	ar6
                           000CDE  3790 	C$u2f_hid.c$490$3$191 ==.
                                   3791 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:490: stamp_error(CIDS[i].cid, ERR_MSG_TIMEOUT);
      0012A3 8D 82            [24] 3792 	mov	dpl,r5
      0012A5 8E 83            [24] 3793 	mov	dph,r6
      0012A7 E0               [24] 3794 	movx	a,@dptr
      0012A8 F9               [12] 3795 	mov	r1,a
      0012A9 A3               [24] 3796 	inc	dptr
      0012AA E0               [24] 3797 	movx	a,@dptr
      0012AB FA               [12] 3798 	mov	r2,a
      0012AC A3               [24] 3799 	inc	dptr
      0012AD E0               [24] 3800 	movx	a,@dptr
      0012AE FB               [12] 3801 	mov	r3,a
      0012AF A3               [24] 3802 	inc	dptr
      0012B0 E0               [24] 3803 	movx	a,@dptr
      0012B1 FC               [12] 3804 	mov	r4,a
      0012B2 C0 06            [24] 3805 	push	ar6
      0012B4 C0 05            [24] 3806 	push	ar5
      0012B6 74 05            [12] 3807 	mov	a,#0x05
      0012B8 C0 E0            [24] 3808 	push	acc
      0012BA 89 82            [24] 3809 	mov	dpl,r1
      0012BC 8A 83            [24] 3810 	mov	dph,r2
      0012BE 8B F0            [24] 3811 	mov	b,r3
      0012C0 EC               [12] 3812 	mov	a,r4
      0012C1 12 0A ED         [24] 3813 	lcall	_stamp_error
      0012C4 15 81            [12] 3814 	dec	sp
      0012C6 D0 05            [24] 3815 	pop	ar5
      0012C8 D0 06            [24] 3816 	pop	ar6
                           000D05  3817 	C$u2f_hid.c$491$3$191 ==.
                                   3818 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:491: del_cid(CIDS[i].cid);
      0012CA 8D 82            [24] 3819 	mov	dpl,r5
      0012CC 8E 83            [24] 3820 	mov	dph,r6
      0012CE E0               [24] 3821 	movx	a,@dptr
      0012CF FD               [12] 3822 	mov	r5,a
      0012D0 A3               [24] 3823 	inc	dptr
      0012D1 E0               [24] 3824 	movx	a,@dptr
      0012D2 FE               [12] 3825 	mov	r6,a
      0012D3 A3               [24] 3826 	inc	dptr
      0012D4 E0               [24] 3827 	movx	a,@dptr
      0012D5 FC               [12] 3828 	mov	r4,a
      0012D6 A3               [24] 3829 	inc	dptr
      0012D7 E0               [24] 3830 	movx	a,@dptr
      0012D8 8D 82            [24] 3831 	mov	dpl,r5
      0012DA 8E 83            [24] 3832 	mov	dph,r6
      0012DC 8C F0            [24] 3833 	mov	b,r4
      0012DE 12 0A 5E         [24] 3834 	lcall	_del_cid
                           000D1C  3835 	C$u2f_hid.c$492$3$191 ==.
                                   3836 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:492: u2f_hid_reset_packet();
      0012E1 12 06 18         [24] 3837 	lcall	_u2f_hid_reset_packet
      0012E4 D0 07            [24] 3838 	pop	ar7
      0012E6                       3839 00106$:
                           000D21  3840 	C$u2f_hid.c$485$1$189 ==.
                                   3841 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:485: for(i = 0; i < CID_MAX; i++)
      0012E6 0F               [12] 3842 	inc	r7
      0012E7 BF 05 00         [24] 3843 	cjne	r7,#0x05,00121$
      0012EA                       3844 00121$:
      0012EA 50 03            [24] 3845 	jnc	00122$
      0012EC 02 12 0D         [24] 3846 	ljmp	00105$
      0012EF                       3847 00122$:
                           000D2A  3848 	C$u2f_hid.c$496$1$189 ==.
                           000D2A  3849 	XG$u2f_hid_check_timeouts$0$0 ==.
      0012EF 22               [24] 3850 	ret
                                   3851 ;------------------------------------------------------------
                                   3852 ;Allocation info for local variables in function 'u2f_hid_request'
                                   3853 ;------------------------------------------------------------
                                   3854 ;req                       Allocated to stack - _bp +1
                                   3855 ;cid                       Allocated to stack - _bp +8
                                   3856 ;sloc0                     Allocated to stack - _bp +4
                                   3857 ;last_seq                  Allocated with name '_u2f_hid_request_last_seq_1_193'
                                   3858 ;------------------------------------------------------------
                           000D2B  3859 	G$u2f_hid_request$0$0 ==.
                           000D2B  3860 	C$u2f_hid.c$499$1$189 ==.
                                   3861 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:499: void u2f_hid_request(struct u2f_hid_msg* req)
                                   3862 ;	-----------------------------------------
                                   3863 ;	 function u2f_hid_request
                                   3864 ;	-----------------------------------------
      0012F0                       3865 _u2f_hid_request:
      0012F0 C0 1B            [24] 3866 	push	_bp
      0012F2 85 81 1B         [24] 3867 	mov	_bp,sp
      0012F5 C0 82            [24] 3868 	push	dpl
      0012F7 C0 83            [24] 3869 	push	dph
      0012F9 C0 F0            [24] 3870 	push	b
      0012FB E5 81            [12] 3871 	mov	a,sp
      0012FD 24 07            [12] 3872 	add	a,#0x07
      0012FF F5 81            [12] 3873 	mov	sp,a
                           000D3C  3874 	C$u2f_hid.c$504$1$193 ==.
                                   3875 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:504: cid = get_cid(req->cid);
      001301 A8 1B            [24] 3876 	mov	r0,_bp
      001303 08               [12] 3877 	inc	r0
      001304 86 82            [24] 3878 	mov	dpl,@r0
      001306 08               [12] 3879 	inc	r0
      001307 86 83            [24] 3880 	mov	dph,@r0
      001309 08               [12] 3881 	inc	r0
      00130A 86 F0            [24] 3882 	mov	b,@r0
      00130C 12 5E 3E         [24] 3883 	lcall	__gptrget
      00130F FA               [12] 3884 	mov	r2,a
      001310 A3               [24] 3885 	inc	dptr
      001311 12 5E 3E         [24] 3886 	lcall	__gptrget
      001314 FB               [12] 3887 	mov	r3,a
      001315 A3               [24] 3888 	inc	dptr
      001316 12 5E 3E         [24] 3889 	lcall	__gptrget
      001319 FC               [12] 3890 	mov	r4,a
      00131A A3               [24] 3891 	inc	dptr
      00131B 12 5E 3E         [24] 3892 	lcall	__gptrget
      00131E 8A 82            [24] 3893 	mov	dpl,r2
      001320 8B 83            [24] 3894 	mov	dph,r3
      001322 8C F0            [24] 3895 	mov	b,r4
      001324 12 09 D3         [24] 3896 	lcall	_get_cid
      001327 AD 82            [24] 3897 	mov	r5,dpl
      001329 AE 83            [24] 3898 	mov	r6,dph
      00132B AF F0            [24] 3899 	mov	r7,b
      00132D E5 1B            [12] 3900 	mov	a,_bp
      00132F 24 08            [12] 3901 	add	a,#0x08
      001331 F8               [12] 3902 	mov	r0,a
      001332 A6 05            [24] 3903 	mov	@r0,ar5
      001334 08               [12] 3904 	inc	r0
      001335 A6 06            [24] 3905 	mov	@r0,ar6
      001337 08               [12] 3906 	inc	r0
      001338 A6 07            [24] 3907 	mov	@r0,ar7
                           000D75  3908 	C$u2f_hid.c$507$1$193 ==.
                                   3909 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:507: if ((U2FHID_IS_INIT(req->pkt.init.cmd)))
      00133A A8 1B            [24] 3910 	mov	r0,_bp
      00133C 08               [12] 3911 	inc	r0
      00133D 74 04            [12] 3912 	mov	a,#0x04
      00133F 26               [12] 3913 	add	a,@r0
      001340 FA               [12] 3914 	mov	r2,a
      001341 E4               [12] 3915 	clr	a
      001342 08               [12] 3916 	inc	r0
      001343 36               [12] 3917 	addc	a,@r0
      001344 FB               [12] 3918 	mov	r3,a
      001345 08               [12] 3919 	inc	r0
      001346 86 04            [24] 3920 	mov	ar4,@r0
      001348 8A 82            [24] 3921 	mov	dpl,r2
      00134A 8B 83            [24] 3922 	mov	dph,r3
      00134C 8C F0            [24] 3923 	mov	b,r4
      00134E 12 5E 3E         [24] 3924 	lcall	__gptrget
      001351 FF               [12] 3925 	mov	r7,a
      001352 20 E7 03         [24] 3926 	jb	acc.7,00197$
      001355 02 14 3B         [24] 3927 	ljmp	00111$
      001358                       3928 00197$:
                           000D93  3929 	C$u2f_hid.c$509$2$194 ==.
                                   3930 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:509: if (U2FHID_LEN(req) > 7609)
      001358 74 01            [12] 3931 	mov	a,#0x01
      00135A 2A               [12] 3932 	add	a,r2
      00135B FD               [12] 3933 	mov	r5,a
      00135C E4               [12] 3934 	clr	a
      00135D 3B               [12] 3935 	addc	a,r3
      00135E FE               [12] 3936 	mov	r6,a
      00135F 8C 07            [24] 3937 	mov	ar7,r4
      001361 8D 82            [24] 3938 	mov	dpl,r5
      001363 8E 83            [24] 3939 	mov	dph,r6
      001365 8F F0            [24] 3940 	mov	b,r7
      001367 12 5E 3E         [24] 3941 	lcall	__gptrget
      00136A FD               [12] 3942 	mov	r5,a
      00136B A3               [24] 3943 	inc	dptr
      00136C 12 5E 3E         [24] 3944 	lcall	__gptrget
      00136F FE               [12] 3945 	mov	r6,a
      001370 C3               [12] 3946 	clr	c
      001371 74 B9            [12] 3947 	mov	a,#0xb9
      001373 9D               [12] 3948 	subb	a,r5
      001374 74 1D            [12] 3949 	mov	a,#0x1d
      001376 9E               [12] 3950 	subb	a,r6
      001377 50 31            [24] 3951 	jnc	00102$
                           000DB4  3952 	C$u2f_hid.c$511$3$195 ==.
                                   3953 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:511: stamp_error(req->cid, ERR_INVALID_LEN);
      001379 A8 1B            [24] 3954 	mov	r0,_bp
      00137B 08               [12] 3955 	inc	r0
      00137C 86 82            [24] 3956 	mov	dpl,@r0
      00137E 08               [12] 3957 	inc	r0
      00137F 86 83            [24] 3958 	mov	dph,@r0
      001381 08               [12] 3959 	inc	r0
      001382 86 F0            [24] 3960 	mov	b,@r0
      001384 12 5E 3E         [24] 3961 	lcall	__gptrget
      001387 FF               [12] 3962 	mov	r7,a
      001388 A3               [24] 3963 	inc	dptr
      001389 12 5E 3E         [24] 3964 	lcall	__gptrget
      00138C FE               [12] 3965 	mov	r6,a
      00138D A3               [24] 3966 	inc	dptr
      00138E 12 5E 3E         [24] 3967 	lcall	__gptrget
      001391 FD               [12] 3968 	mov	r5,a
      001392 A3               [24] 3969 	inc	dptr
      001393 12 5E 3E         [24] 3970 	lcall	__gptrget
      001396 FC               [12] 3971 	mov	r4,a
      001397 74 03            [12] 3972 	mov	a,#0x03
      001399 C0 E0            [24] 3973 	push	acc
      00139B 8F 82            [24] 3974 	mov	dpl,r7
      00139D 8E 83            [24] 3975 	mov	dph,r6
      00139F 8D F0            [24] 3976 	mov	b,r5
      0013A1 EC               [12] 3977 	mov	a,r4
      0013A2 12 0A ED         [24] 3978 	lcall	_stamp_error
      0013A5 15 81            [12] 3979 	dec	sp
                           000DE2  3980 	C$u2f_hid.c$512$3$195 ==.
                                   3981 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:512: return;
      0013A7 02 18 5F         [24] 3982 	ljmp	00138$
      0013AA                       3983 00102$:
                           000DE5  3984 	C$u2f_hid.c$514$2$194 ==.
                                   3985 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:514: if (req->pkt.init.cmd != U2FHID_INIT && req->cid != hid_layer.current_cid && u2f_hid_busy())
      0013AA 8A 82            [24] 3986 	mov	dpl,r2
      0013AC 8B 83            [24] 3987 	mov	dph,r3
      0013AE 8C F0            [24] 3988 	mov	b,r4
      0013B0 12 5E 3E         [24] 3989 	lcall	__gptrget
      0013B3 FF               [12] 3990 	mov	r7,a
      0013B4 BF 86 03         [24] 3991 	cjne	r7,#0x86,00199$
      0013B7 02 14 63         [24] 3992 	ljmp	00112$
      0013BA                       3993 00199$:
      0013BA C0 02            [24] 3994 	push	ar2
      0013BC C0 03            [24] 3995 	push	ar3
      0013BE C0 04            [24] 3996 	push	ar4
      0013C0 A8 1B            [24] 3997 	mov	r0,_bp
      0013C2 08               [12] 3998 	inc	r0
      0013C3 86 82            [24] 3999 	mov	dpl,@r0
      0013C5 08               [12] 4000 	inc	r0
      0013C6 86 83            [24] 4001 	mov	dph,@r0
      0013C8 08               [12] 4002 	inc	r0
      0013C9 86 F0            [24] 4003 	mov	b,@r0
      0013CB E5 1B            [12] 4004 	mov	a,_bp
      0013CD 24 04            [12] 4005 	add	a,#0x04
      0013CF F9               [12] 4006 	mov	r1,a
      0013D0 12 5E 3E         [24] 4007 	lcall	__gptrget
      0013D3 F7               [12] 4008 	mov	@r1,a
      0013D4 A3               [24] 4009 	inc	dptr
      0013D5 12 5E 3E         [24] 4010 	lcall	__gptrget
      0013D8 09               [12] 4011 	inc	r1
      0013D9 F7               [12] 4012 	mov	@r1,a
      0013DA A3               [24] 4013 	inc	dptr
      0013DB 12 5E 3E         [24] 4014 	lcall	__gptrget
      0013DE 09               [12] 4015 	inc	r1
      0013DF F7               [12] 4016 	mov	@r1,a
      0013E0 A3               [24] 4017 	inc	dptr
      0013E1 12 5E 3E         [24] 4018 	lcall	__gptrget
      0013E4 09               [12] 4019 	inc	r1
      0013E5 F7               [12] 4020 	mov	@r1,a
      0013E6 90 00 0B         [24] 4021 	mov	dptr,#(_hid_layer + 0x0001)
      0013E9 E0               [24] 4022 	movx	a,@dptr
      0013EA FC               [12] 4023 	mov	r4,a
      0013EB A3               [24] 4024 	inc	dptr
      0013EC E0               [24] 4025 	movx	a,@dptr
      0013ED FD               [12] 4026 	mov	r5,a
      0013EE A3               [24] 4027 	inc	dptr
      0013EF E0               [24] 4028 	movx	a,@dptr
      0013F0 FE               [12] 4029 	mov	r6,a
      0013F1 A3               [24] 4030 	inc	dptr
      0013F2 E0               [24] 4031 	movx	a,@dptr
      0013F3 FF               [12] 4032 	mov	r7,a
      0013F4 E5 1B            [12] 4033 	mov	a,_bp
      0013F6 24 04            [12] 4034 	add	a,#0x04
      0013F8 F8               [12] 4035 	mov	r0,a
      0013F9 E6               [12] 4036 	mov	a,@r0
      0013FA B5 04 17         [24] 4037 	cjne	a,ar4,00200$
      0013FD 08               [12] 4038 	inc	r0
      0013FE E6               [12] 4039 	mov	a,@r0
      0013FF B5 05 12         [24] 4040 	cjne	a,ar5,00200$
      001402 08               [12] 4041 	inc	r0
      001403 E6               [12] 4042 	mov	a,@r0
      001404 B5 06 0D         [24] 4043 	cjne	a,ar6,00200$
      001407 08               [12] 4044 	inc	r0
      001408 E6               [12] 4045 	mov	a,@r0
      001409 B5 07 08         [24] 4046 	cjne	a,ar7,00200$
      00140C D0 04            [24] 4047 	pop	ar4
      00140E D0 03            [24] 4048 	pop	ar3
      001410 D0 02            [24] 4049 	pop	ar2
      001412 80 4F            [24] 4050 	sjmp	00112$
      001414                       4051 00200$:
      001414 D0 04            [24] 4052 	pop	ar4
      001416 D0 03            [24] 4053 	pop	ar3
      001418 D0 02            [24] 4054 	pop	ar2
      00141A 90 02 EE         [24] 4055 	mov	dptr,#__hid_in_session
      00141D E0               [24] 4056 	movx	a,@dptr
      00141E 60 43            [24] 4057 	jz	00112$
                           000E5B  4058 	C$u2f_hid.c$516$3$196 ==.
                                   4059 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:516: stamp_error(req->cid, ERR_CHANNEL_BUSY);
      001420 74 06            [12] 4060 	mov	a,#0x06
      001422 C0 E0            [24] 4061 	push	acc
      001424 E5 1B            [12] 4062 	mov	a,_bp
      001426 24 04            [12] 4063 	add	a,#0x04
      001428 F8               [12] 4064 	mov	r0,a
      001429 86 82            [24] 4065 	mov	dpl,@r0
      00142B 08               [12] 4066 	inc	r0
      00142C 86 83            [24] 4067 	mov	dph,@r0
      00142E 08               [12] 4068 	inc	r0
      00142F 86 F0            [24] 4069 	mov	b,@r0
      001431 08               [12] 4070 	inc	r0
      001432 E6               [12] 4071 	mov	a,@r0
      001433 12 0A ED         [24] 4072 	lcall	_stamp_error
      001436 15 81            [12] 4073 	dec	sp
                           000E73  4074 	C$u2f_hid.c$517$3$196 ==.
                                   4075 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:517: return;
      001438 02 18 5F         [24] 4076 	ljmp	00138$
      00143B                       4077 00111$:
                           000E76  4078 	C$u2f_hid.c$520$1$193 ==.
                                   4079 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:520: else if (cid == NULL || !cid->busy)
      00143B E5 1B            [12] 4080 	mov	a,_bp
      00143D 24 08            [12] 4081 	add	a,#0x08
      00143F F8               [12] 4082 	mov	r0,a
      001440 E6               [12] 4083 	mov	a,@r0
      001441 08               [12] 4084 	inc	r0
      001442 46               [12] 4085 	orl	a,@r0
      001443 60 1B            [24] 4086 	jz	00107$
      001445 E5 1B            [12] 4087 	mov	a,_bp
      001447 24 08            [12] 4088 	add	a,#0x08
      001449 F8               [12] 4089 	mov	r0,a
      00144A 74 08            [12] 4090 	mov	a,#0x08
      00144C 26               [12] 4091 	add	a,@r0
      00144D FD               [12] 4092 	mov	r5,a
      00144E E4               [12] 4093 	clr	a
      00144F 08               [12] 4094 	inc	r0
      001450 36               [12] 4095 	addc	a,@r0
      001451 FE               [12] 4096 	mov	r6,a
      001452 08               [12] 4097 	inc	r0
      001453 86 07            [24] 4098 	mov	ar7,@r0
      001455 8D 82            [24] 4099 	mov	dpl,r5
      001457 8E 83            [24] 4100 	mov	dph,r6
      001459 8F F0            [24] 4101 	mov	b,r7
      00145B 12 5E 3E         [24] 4102 	lcall	__gptrget
      00145E 70 03            [24] 4103 	jnz	00112$
      001460                       4104 00107$:
                           000E9B  4105 	C$u2f_hid.c$523$2$197 ==.
                                   4106 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:523: return;
      001460 02 18 5F         [24] 4107 	ljmp	00138$
      001463                       4108 00112$:
                           000E9E  4109 	C$u2f_hid.c$526$1$193 ==.
                                   4110 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:526: if (!req->cid)
      001463 A8 1B            [24] 4111 	mov	r0,_bp
      001465 08               [12] 4112 	inc	r0
      001466 86 82            [24] 4113 	mov	dpl,@r0
      001468 08               [12] 4114 	inc	r0
      001469 86 83            [24] 4115 	mov	dph,@r0
      00146B 08               [12] 4116 	inc	r0
      00146C 86 F0            [24] 4117 	mov	b,@r0
      00146E E5 1B            [12] 4118 	mov	a,_bp
      001470 24 04            [12] 4119 	add	a,#0x04
      001472 F9               [12] 4120 	mov	r1,a
      001473 12 5E 3E         [24] 4121 	lcall	__gptrget
      001476 F7               [12] 4122 	mov	@r1,a
      001477 A3               [24] 4123 	inc	dptr
      001478 12 5E 3E         [24] 4124 	lcall	__gptrget
      00147B 09               [12] 4125 	inc	r1
      00147C F7               [12] 4126 	mov	@r1,a
      00147D A3               [24] 4127 	inc	dptr
      00147E 12 5E 3E         [24] 4128 	lcall	__gptrget
      001481 09               [12] 4129 	inc	r1
      001482 F7               [12] 4130 	mov	@r1,a
      001483 A3               [24] 4131 	inc	dptr
      001484 12 5E 3E         [24] 4132 	lcall	__gptrget
      001487 09               [12] 4133 	inc	r1
      001488 F7               [12] 4134 	mov	@r1,a
      001489 E5 1B            [12] 4135 	mov	a,_bp
      00148B 24 04            [12] 4136 	add	a,#0x04
      00148D F8               [12] 4137 	mov	r0,a
      00148E E6               [12] 4138 	mov	a,@r0
      00148F 08               [12] 4139 	inc	r0
      001490 46               [12] 4140 	orl	a,@r0
      001491 08               [12] 4141 	inc	r0
      001492 46               [12] 4142 	orl	a,@r0
      001493 08               [12] 4143 	inc	r0
      001494 46               [12] 4144 	orl	a,@r0
      001495 70 1B            [24] 4145 	jnz	00114$
                           000ED2  4146 	C$u2f_hid.c$528$2$198 ==.
                                   4147 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:528: stamp_error(req->cid, ERR_SYNC_FAIL);
      001497 74 0B            [12] 4148 	mov	a,#0x0b
      001499 C0 E0            [24] 4149 	push	acc
      00149B E5 1B            [12] 4150 	mov	a,_bp
      00149D 24 04            [12] 4151 	add	a,#0x04
      00149F F8               [12] 4152 	mov	r0,a
      0014A0 86 82            [24] 4153 	mov	dpl,@r0
      0014A2 08               [12] 4154 	inc	r0
      0014A3 86 83            [24] 4155 	mov	dph,@r0
      0014A5 08               [12] 4156 	inc	r0
      0014A6 86 F0            [24] 4157 	mov	b,@r0
      0014A8 08               [12] 4158 	inc	r0
      0014A9 E6               [12] 4159 	mov	a,@r0
      0014AA 12 0A ED         [24] 4160 	lcall	_stamp_error
      0014AD 15 81            [12] 4161 	dec	sp
                           000EEA  4162 	C$u2f_hid.c$529$2$198 ==.
                                   4163 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:529: return;
      0014AF 02 18 5F         [24] 4164 	ljmp	00138$
      0014B2                       4165 00114$:
                           000EED  4166 	C$u2f_hid.c$534$1$193 ==.
                                   4167 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:534: if (req->cid == U2FHID_BROADCAST)
      0014B2 E5 1B            [12] 4168 	mov	a,_bp
      0014B4 24 04            [12] 4169 	add	a,#0x04
      0014B6 F8               [12] 4170 	mov	r0,a
      0014B7 B6 FF 52         [24] 4171 	cjne	@r0,#0xff,00123$
      0014BA 08               [12] 4172 	inc	r0
      0014BB B6 FF 4E         [24] 4173 	cjne	@r0,#0xff,00123$
      0014BE 08               [12] 4174 	inc	r0
      0014BF B6 FF 4A         [24] 4175 	cjne	@r0,#0xff,00123$
      0014C2 08               [12] 4176 	inc	r0
      0014C3 B6 FF 46         [24] 4177 	cjne	@r0,#0xff,00123$
                           000F01  4178 	C$u2f_hid.c$536$2$199 ==.
                                   4179 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:536: if (!(req->pkt.init.cmd == U2FHID_INIT))
      0014C6 8A 82            [24] 4180 	mov	dpl,r2
      0014C8 8B 83            [24] 4181 	mov	dph,r3
      0014CA 8C F0            [24] 4182 	mov	b,r4
      0014CC 12 5E 3E         [24] 4183 	lcall	__gptrget
      0014CF FF               [12] 4184 	mov	r7,a
      0014D0 BF 86 02         [24] 4185 	cjne	r7,#0x86,00207$
      0014D3 80 1B            [24] 4186 	sjmp	00116$
      0014D5                       4187 00207$:
                           000F10  4188 	C$u2f_hid.c$538$3$200 ==.
                                   4189 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:538: stamp_error(req->cid, ERR_SYNC_FAIL);
      0014D5 74 0B            [12] 4190 	mov	a,#0x0b
      0014D7 C0 E0            [24] 4191 	push	acc
      0014D9 E5 1B            [12] 4192 	mov	a,_bp
      0014DB 24 04            [12] 4193 	add	a,#0x04
      0014DD F8               [12] 4194 	mov	r0,a
      0014DE 86 82            [24] 4195 	mov	dpl,@r0
      0014E0 08               [12] 4196 	inc	r0
      0014E1 86 83            [24] 4197 	mov	dph,@r0
      0014E3 08               [12] 4198 	inc	r0
      0014E4 86 F0            [24] 4199 	mov	b,@r0
      0014E6 08               [12] 4200 	inc	r0
      0014E7 E6               [12] 4201 	mov	a,@r0
      0014E8 12 0A ED         [24] 4202 	lcall	_stamp_error
      0014EB 15 81            [12] 4203 	dec	sp
                           000F28  4204 	C$u2f_hid.c$539$3$200 ==.
                                   4205 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:539: return;
      0014ED 02 18 5F         [24] 4206 	ljmp	00138$
      0014F0                       4207 00116$:
                           000F2B  4208 	C$u2f_hid.c$541$2$199 ==.
                                   4209 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:541: cid = &BROADCAST_CID;
      0014F0 E5 1B            [12] 4210 	mov	a,_bp
      0014F2 24 08            [12] 4211 	add	a,#0x08
      0014F4 F8               [12] 4212 	mov	r0,a
      0014F5 76 52            [12] 4213 	mov	@r0,#(_CIDS + 0x0028)
      0014F7 08               [12] 4214 	inc	r0
      0014F8 76 01            [12] 4215 	mov	@r0,#((_CIDS + 0x0028) >> 8)
      0014FA 08               [12] 4216 	inc	r0
      0014FB 76 00            [12] 4217 	mov	@r0,#0x00
                           000F38  4218 	C$u2f_hid.c$542$2$199 ==.
                                   4219 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:542: BROADCAST_CID.cid = U2FHID_BROADCAST;
      0014FD 90 01 52         [24] 4220 	mov	dptr,#(_CIDS + 0x0028)
      001500 74 FF            [12] 4221 	mov	a,#0xff
      001502 F0               [24] 4222 	movx	@dptr,a
      001503 A3               [24] 4223 	inc	dptr
      001504 F0               [24] 4224 	movx	@dptr,a
      001505 A3               [24] 4225 	inc	dptr
      001506 F0               [24] 4226 	movx	@dptr,a
      001507 A3               [24] 4227 	inc	dptr
      001508 F0               [24] 4228 	movx	@dptr,a
      001509 02 15 BF         [24] 4229 	ljmp	00124$
      00150C                       4230 00123$:
                           000F47  4231 	C$u2f_hid.c$544$1$193 ==.
                                   4232 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:544: else if (U2FHID_IS_INIT(req->pkt.init.cmd) && cid == NULL)
      00150C 8A 82            [24] 4233 	mov	dpl,r2
      00150E 8B 83            [24] 4234 	mov	dph,r3
      001510 8C F0            [24] 4235 	mov	b,r4
      001512 12 5E 3E         [24] 4236 	lcall	__gptrget
      001515 FF               [12] 4237 	mov	r7,a
      001516 20 E7 03         [24] 4238 	jb	acc.7,00208$
      001519 02 15 BF         [24] 4239 	ljmp	00124$
      00151C                       4240 00208$:
      00151C E5 1B            [12] 4241 	mov	a,_bp
      00151E 24 08            [12] 4242 	add	a,#0x08
      001520 F8               [12] 4243 	mov	r0,a
      001521 E6               [12] 4244 	mov	a,@r0
      001522 08               [12] 4245 	inc	r0
      001523 46               [12] 4246 	orl	a,@r0
      001524 60 03            [24] 4247 	jz	00209$
      001526 02 15 BF         [24] 4248 	ljmp	00124$
      001529                       4249 00209$:
                           000F64  4250 	C$u2f_hid.c$546$1$193 ==.
                                   4251 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:546: add_new_cid(req->cid);
      001529 C0 02            [24] 4252 	push	ar2
      00152B C0 03            [24] 4253 	push	ar3
      00152D C0 04            [24] 4254 	push	ar4
      00152F E5 1B            [12] 4255 	mov	a,_bp
      001531 24 04            [12] 4256 	add	a,#0x04
      001533 F8               [12] 4257 	mov	r0,a
      001534 86 82            [24] 4258 	mov	dpl,@r0
      001536 08               [12] 4259 	inc	r0
      001537 86 83            [24] 4260 	mov	dph,@r0
      001539 08               [12] 4261 	inc	r0
      00153A 86 F0            [24] 4262 	mov	b,@r0
      00153C 08               [12] 4263 	inc	r0
      00153D E6               [12] 4264 	mov	a,@r0
      00153E C0 04            [24] 4265 	push	ar4
      001540 C0 03            [24] 4266 	push	ar3
      001542 C0 02            [24] 4267 	push	ar2
      001544 12 09 43         [24] 4268 	lcall	_add_new_cid
      001547 D0 02            [24] 4269 	pop	ar2
      001549 D0 03            [24] 4270 	pop	ar3
      00154B D0 04            [24] 4271 	pop	ar4
                           000F88  4272 	C$u2f_hid.c$547$2$201 ==.
                                   4273 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:547: cid = get_cid(req->cid);
      00154D A8 1B            [24] 4274 	mov	r0,_bp
      00154F 08               [12] 4275 	inc	r0
      001550 86 82            [24] 4276 	mov	dpl,@r0
      001552 08               [12] 4277 	inc	r0
      001553 86 83            [24] 4278 	mov	dph,@r0
      001555 08               [12] 4279 	inc	r0
      001556 86 F0            [24] 4280 	mov	b,@r0
      001558 12 5E 3E         [24] 4281 	lcall	__gptrget
      00155B FC               [12] 4282 	mov	r4,a
      00155C A3               [24] 4283 	inc	dptr
      00155D 12 5E 3E         [24] 4284 	lcall	__gptrget
      001560 FD               [12] 4285 	mov	r5,a
      001561 A3               [24] 4286 	inc	dptr
      001562 12 5E 3E         [24] 4287 	lcall	__gptrget
      001565 FE               [12] 4288 	mov	r6,a
      001566 A3               [24] 4289 	inc	dptr
      001567 12 5E 3E         [24] 4290 	lcall	__gptrget
      00156A 8C 82            [24] 4291 	mov	dpl,r4
      00156C 8D 83            [24] 4292 	mov	dph,r5
      00156E 8E F0            [24] 4293 	mov	b,r6
      001570 C0 04            [24] 4294 	push	ar4
      001572 C0 03            [24] 4295 	push	ar3
      001574 C0 02            [24] 4296 	push	ar2
      001576 12 09 D3         [24] 4297 	lcall	_get_cid
      001579 AD 82            [24] 4298 	mov	r5,dpl
      00157B AE 83            [24] 4299 	mov	r6,dph
      00157D AF F0            [24] 4300 	mov	r7,b
      00157F D0 02            [24] 4301 	pop	ar2
      001581 D0 03            [24] 4302 	pop	ar3
      001583 D0 04            [24] 4303 	pop	ar4
      001585 E5 1B            [12] 4304 	mov	a,_bp
      001587 24 08            [12] 4305 	add	a,#0x08
      001589 F8               [12] 4306 	mov	r0,a
      00158A A6 05            [24] 4307 	mov	@r0,ar5
      00158C 08               [12] 4308 	inc	r0
      00158D A6 06            [24] 4309 	mov	@r0,ar6
      00158F 08               [12] 4310 	inc	r0
      001590 A6 07            [24] 4311 	mov	@r0,ar7
                           000FCD  4312 	C$u2f_hid.c$548$1$193 ==.
                                   4313 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:548: if (cid == NULL)
      001592 D0 04            [24] 4314 	pop	ar4
      001594 D0 03            [24] 4315 	pop	ar3
      001596 D0 02            [24] 4316 	pop	ar2
      001598 E5 1B            [12] 4317 	mov	a,_bp
      00159A 24 08            [12] 4318 	add	a,#0x08
      00159C F8               [12] 4319 	mov	r0,a
      00159D E6               [12] 4320 	mov	a,@r0
      00159E 08               [12] 4321 	inc	r0
      00159F 46               [12] 4322 	orl	a,@r0
      0015A0 70 03            [24] 4323 	jnz	00118$
                           000FDD  4324 	C$u2f_hid.c$550$3$202 ==.
                                   4325 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:550: return;
      0015A2 02 18 5F         [24] 4326 	ljmp	00138$
      0015A5                       4327 00118$:
                           000FE0  4328 	C$u2f_hid.c$552$2$201 ==.
                                   4329 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:552: cid->busy = 0;
      0015A5 E5 1B            [12] 4330 	mov	a,_bp
      0015A7 24 08            [12] 4331 	add	a,#0x08
      0015A9 F8               [12] 4332 	mov	r0,a
      0015AA 74 08            [12] 4333 	mov	a,#0x08
      0015AC 26               [12] 4334 	add	a,@r0
      0015AD FD               [12] 4335 	mov	r5,a
      0015AE E4               [12] 4336 	clr	a
      0015AF 08               [12] 4337 	inc	r0
      0015B0 36               [12] 4338 	addc	a,@r0
      0015B1 FE               [12] 4339 	mov	r6,a
      0015B2 08               [12] 4340 	inc	r0
      0015B3 86 07            [24] 4341 	mov	ar7,@r0
      0015B5 8D 82            [24] 4342 	mov	dpl,r5
      0015B7 8E 83            [24] 4343 	mov	dph,r6
      0015B9 8F F0            [24] 4344 	mov	b,r7
      0015BB E4               [12] 4345 	clr	a
      0015BC 12 5A 48         [24] 4346 	lcall	__gptrput
      0015BF                       4347 00124$:
                           000FFA  4348 	C$u2f_hid.c$559$1$193 ==.
                                   4349 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:559: if (req->pkt.init.cmd == U2FHID_INIT)
      0015BF 8A 82            [24] 4350 	mov	dpl,r2
      0015C1 8B 83            [24] 4351 	mov	dph,r3
      0015C3 8C F0            [24] 4352 	mov	b,r4
      0015C5 12 5E 3E         [24] 4353 	lcall	__gptrget
      0015C8 FF               [12] 4354 	mov	r7,a
      0015C9 BF 86 1A         [24] 4355 	cjne	r7,#0x86,00126$
                           001007  4356 	C$u2f_hid.c$561$2$203 ==.
                                   4357 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:561: cid->busy = 0;
      0015CC E5 1B            [12] 4358 	mov	a,_bp
      0015CE 24 08            [12] 4359 	add	a,#0x08
      0015D0 F8               [12] 4360 	mov	r0,a
      0015D1 74 08            [12] 4361 	mov	a,#0x08
      0015D3 26               [12] 4362 	add	a,@r0
      0015D4 FD               [12] 4363 	mov	r5,a
      0015D5 E4               [12] 4364 	clr	a
      0015D6 08               [12] 4365 	inc	r0
      0015D7 36               [12] 4366 	addc	a,@r0
      0015D8 FE               [12] 4367 	mov	r6,a
      0015D9 08               [12] 4368 	inc	r0
      0015DA 86 07            [24] 4369 	mov	ar7,@r0
      0015DC 8D 82            [24] 4370 	mov	dpl,r5
      0015DE 8E 83            [24] 4371 	mov	dph,r6
      0015E0 8F F0            [24] 4372 	mov	b,r7
      0015E2 E4               [12] 4373 	clr	a
      0015E3 12 5A 48         [24] 4374 	lcall	__gptrput
      0015E6                       4375 00126$:
                           001021  4376 	C$u2f_hid.c$564$1$193 ==.
                                   4377 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:564: hid_layer.current_cid = req->cid;
      0015E6 C0 02            [24] 4378 	push	ar2
      0015E8 C0 03            [24] 4379 	push	ar3
      0015EA C0 04            [24] 4380 	push	ar4
      0015EC A8 1B            [24] 4381 	mov	r0,_bp
      0015EE 08               [12] 4382 	inc	r0
      0015EF 86 82            [24] 4383 	mov	dpl,@r0
      0015F1 08               [12] 4384 	inc	r0
      0015F2 86 83            [24] 4385 	mov	dph,@r0
      0015F4 08               [12] 4386 	inc	r0
      0015F5 86 F0            [24] 4387 	mov	b,@r0
      0015F7 12 5E 3E         [24] 4388 	lcall	__gptrget
      0015FA FC               [12] 4389 	mov	r4,a
      0015FB A3               [24] 4390 	inc	dptr
      0015FC 12 5E 3E         [24] 4391 	lcall	__gptrget
      0015FF FD               [12] 4392 	mov	r5,a
      001600 A3               [24] 4393 	inc	dptr
      001601 12 5E 3E         [24] 4394 	lcall	__gptrget
      001604 FE               [12] 4395 	mov	r6,a
      001605 A3               [24] 4396 	inc	dptr
      001606 12 5E 3E         [24] 4397 	lcall	__gptrget
      001609 FF               [12] 4398 	mov	r7,a
      00160A 90 00 0B         [24] 4399 	mov	dptr,#(_hid_layer + 0x0001)
      00160D EC               [12] 4400 	mov	a,r4
      00160E F0               [24] 4401 	movx	@dptr,a
      00160F ED               [12] 4402 	mov	a,r5
      001610 A3               [24] 4403 	inc	dptr
      001611 F0               [24] 4404 	movx	@dptr,a
      001612 EE               [12] 4405 	mov	a,r6
      001613 A3               [24] 4406 	inc	dptr
      001614 F0               [24] 4407 	movx	@dptr,a
      001615 EF               [12] 4408 	mov	a,r7
      001616 A3               [24] 4409 	inc	dptr
      001617 F0               [24] 4410 	movx	@dptr,a
                           001053  4411 	C$u2f_hid.c$565$1$193 ==.
                                   4412 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:565: hid_layer.last_buffered = get_ms();
      001618 90 00 10         [24] 4413 	mov	dptr,#(_hid_layer + 0x0006)
      00161B E5 08            [12] 4414 	mov	a,__MS_
      00161D F0               [24] 4415 	movx	@dptr,a
      00161E E5 09            [12] 4416 	mov	a,(__MS_ + 1)
      001620 A3               [24] 4417 	inc	dptr
      001621 F0               [24] 4418 	movx	@dptr,a
      001622 E5 0A            [12] 4419 	mov	a,(__MS_ + 2)
      001624 A3               [24] 4420 	inc	dptr
      001625 F0               [24] 4421 	movx	@dptr,a
      001626 E5 0B            [12] 4422 	mov	a,(__MS_ + 3)
      001628 A3               [24] 4423 	inc	dptr
      001629 F0               [24] 4424 	movx	@dptr,a
                           001065  4425 	C$u2f_hid.c$567$1$193 ==.
                                   4426 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:567: cid->last_used = get_ms();
      00162A E5 1B            [12] 4427 	mov	a,_bp
      00162C 24 08            [12] 4428 	add	a,#0x08
      00162E F8               [12] 4429 	mov	r0,a
      00162F 74 04            [12] 4430 	mov	a,#0x04
      001631 26               [12] 4431 	add	a,@r0
      001632 FD               [12] 4432 	mov	r5,a
      001633 E4               [12] 4433 	clr	a
      001634 08               [12] 4434 	inc	r0
      001635 36               [12] 4435 	addc	a,@r0
      001636 FE               [12] 4436 	mov	r6,a
      001637 08               [12] 4437 	inc	r0
      001638 86 07            [24] 4438 	mov	ar7,@r0
      00163A 8D 82            [24] 4439 	mov	dpl,r5
      00163C 8E 83            [24] 4440 	mov	dph,r6
      00163E 8F F0            [24] 4441 	mov	b,r7
      001640 E5 08            [12] 4442 	mov	a,__MS_
      001642 12 5A 48         [24] 4443 	lcall	__gptrput
      001645 A3               [24] 4444 	inc	dptr
      001646 E5 09            [12] 4445 	mov	a,(__MS_ + 1)
      001648 12 5A 48         [24] 4446 	lcall	__gptrput
      00164B A3               [24] 4447 	inc	dptr
      00164C E5 0A            [12] 4448 	mov	a,(__MS_ + 2)
      00164E 12 5A 48         [24] 4449 	lcall	__gptrput
      001651 A3               [24] 4450 	inc	dptr
      001652 E5 0B            [12] 4451 	mov	a,(__MS_ + 3)
      001654 12 5A 48         [24] 4452 	lcall	__gptrput
                           001092  4453 	C$u2f_hid.c$572$1$193 ==.
                                   4454 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:572: if(hid_is_locked() && req->pkt.init.cmd != U2FHID_INIT)
      001657 90 02 E2         [24] 4455 	mov	dptr,#__hid_lockt
      00165A E0               [24] 4456 	movx	a,@dptr
      00165B FC               [12] 4457 	mov	r4,a
      00165C A3               [24] 4458 	inc	dptr
      00165D E0               [24] 4459 	movx	a,@dptr
      00165E FD               [12] 4460 	mov	r5,a
      00165F A3               [24] 4461 	inc	dptr
      001660 E0               [24] 4462 	movx	a,@dptr
      001661 FE               [12] 4463 	mov	r6,a
      001662 A3               [24] 4464 	inc	dptr
      001663 E0               [24] 4465 	movx	a,@dptr
      001664 FF               [12] 4466 	mov	r7,a
      001665 C3               [12] 4467 	clr	c
      001666 E5 08            [12] 4468 	mov	a,__MS_
      001668 9C               [12] 4469 	subb	a,r4
      001669 E5 09            [12] 4470 	mov	a,(__MS_ + 1)
      00166B 9D               [12] 4471 	subb	a,r5
      00166C E5 0A            [12] 4472 	mov	a,(__MS_ + 2)
      00166E 9E               [12] 4473 	subb	a,r6
      00166F E5 0B            [12] 4474 	mov	a,(__MS_ + 3)
      001671 9F               [12] 4475 	subb	a,r7
      001672 D0 04            [24] 4476 	pop	ar4
      001674 D0 03            [24] 4477 	pop	ar3
      001676 D0 02            [24] 4478 	pop	ar2
      001678 40 03            [24] 4479 	jc	00213$
      00167A 02 17 07         [24] 4480 	ljmp	00130$
      00167D                       4481 00213$:
      00167D 8A 82            [24] 4482 	mov	dpl,r2
      00167F 8B 83            [24] 4483 	mov	dph,r3
      001681 8C F0            [24] 4484 	mov	b,r4
      001683 12 5E 3E         [24] 4485 	lcall	__gptrget
      001686 FF               [12] 4486 	mov	r7,a
      001687 BF 86 02         [24] 4487 	cjne	r7,#0x86,00214$
      00168A 80 7B            [24] 4488 	sjmp	00130$
      00168C                       4489 00214$:
                           0010C7  4490 	C$u2f_hid.c$574$1$193 ==.
                                   4491 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:574: if (!hid_is_lock_cid(req->cid))
      00168C C0 02            [24] 4492 	push	ar2
      00168E C0 03            [24] 4493 	push	ar3
      001690 C0 04            [24] 4494 	push	ar4
      001692 A8 1B            [24] 4495 	mov	r0,_bp
      001694 08               [12] 4496 	inc	r0
      001695 86 82            [24] 4497 	mov	dpl,@r0
      001697 08               [12] 4498 	inc	r0
      001698 86 83            [24] 4499 	mov	dph,@r0
      00169A 08               [12] 4500 	inc	r0
      00169B 86 F0            [24] 4501 	mov	b,@r0
      00169D E5 1B            [12] 4502 	mov	a,_bp
      00169F 24 04            [12] 4503 	add	a,#0x04
      0016A1 F9               [12] 4504 	mov	r1,a
      0016A2 12 5E 3E         [24] 4505 	lcall	__gptrget
      0016A5 F7               [12] 4506 	mov	@r1,a
      0016A6 A3               [24] 4507 	inc	dptr
      0016A7 12 5E 3E         [24] 4508 	lcall	__gptrget
      0016AA 09               [12] 4509 	inc	r1
      0016AB F7               [12] 4510 	mov	@r1,a
      0016AC A3               [24] 4511 	inc	dptr
      0016AD 12 5E 3E         [24] 4512 	lcall	__gptrget
      0016B0 09               [12] 4513 	inc	r1
      0016B1 F7               [12] 4514 	mov	@r1,a
      0016B2 A3               [24] 4515 	inc	dptr
      0016B3 12 5E 3E         [24] 4516 	lcall	__gptrget
      0016B6 09               [12] 4517 	inc	r1
      0016B7 F7               [12] 4518 	mov	@r1,a
      0016B8 90 02 E6         [24] 4519 	mov	dptr,#__hid_lock_cid
      0016BB E0               [24] 4520 	movx	a,@dptr
      0016BC FC               [12] 4521 	mov	r4,a
      0016BD A3               [24] 4522 	inc	dptr
      0016BE E0               [24] 4523 	movx	a,@dptr
      0016BF FD               [12] 4524 	mov	r5,a
      0016C0 A3               [24] 4525 	inc	dptr
      0016C1 E0               [24] 4526 	movx	a,@dptr
      0016C2 FE               [12] 4527 	mov	r6,a
      0016C3 A3               [24] 4528 	inc	dptr
      0016C4 E0               [24] 4529 	movx	a,@dptr
      0016C5 FF               [12] 4530 	mov	r7,a
      0016C6 E5 1B            [12] 4531 	mov	a,_bp
      0016C8 24 04            [12] 4532 	add	a,#0x04
      0016CA F8               [12] 4533 	mov	r0,a
      0016CB E6               [12] 4534 	mov	a,@r0
      0016CC B5 04 17         [24] 4535 	cjne	a,ar4,00215$
      0016CF 08               [12] 4536 	inc	r0
      0016D0 E6               [12] 4537 	mov	a,@r0
      0016D1 B5 05 12         [24] 4538 	cjne	a,ar5,00215$
      0016D4 08               [12] 4539 	inc	r0
      0016D5 E6               [12] 4540 	mov	a,@r0
      0016D6 B5 06 0D         [24] 4541 	cjne	a,ar6,00215$
      0016D9 08               [12] 4542 	inc	r0
      0016DA E6               [12] 4543 	mov	a,@r0
      0016DB B5 07 08         [24] 4544 	cjne	a,ar7,00215$
      0016DE D0 04            [24] 4545 	pop	ar4
      0016E0 D0 03            [24] 4546 	pop	ar3
      0016E2 D0 02            [24] 4547 	pop	ar2
      0016E4 80 21            [24] 4548 	sjmp	00130$
      0016E6                       4549 00215$:
      0016E6 D0 04            [24] 4550 	pop	ar4
      0016E8 D0 03            [24] 4551 	pop	ar3
      0016EA D0 02            [24] 4552 	pop	ar2
                           001127  4553 	C$u2f_hid.c$576$3$205 ==.
                                   4554 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:576: stamp_error(req->cid, ERR_CHANNEL_BUSY);
      0016EC 74 06            [12] 4555 	mov	a,#0x06
      0016EE C0 E0            [24] 4556 	push	acc
      0016F0 E5 1B            [12] 4557 	mov	a,_bp
      0016F2 24 04            [12] 4558 	add	a,#0x04
      0016F4 F8               [12] 4559 	mov	r0,a
      0016F5 86 82            [24] 4560 	mov	dpl,@r0
      0016F7 08               [12] 4561 	inc	r0
      0016F8 86 83            [24] 4562 	mov	dph,@r0
      0016FA 08               [12] 4563 	inc	r0
      0016FB 86 F0            [24] 4564 	mov	b,@r0
      0016FD 08               [12] 4565 	inc	r0
      0016FE E6               [12] 4566 	mov	a,@r0
      0016FF 12 0A ED         [24] 4567 	lcall	_stamp_error
      001702 15 81            [12] 4568 	dec	sp
                           00113F  4569 	C$u2f_hid.c$577$3$205 ==.
                                   4570 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:577: return;
      001704 02 18 5F         [24] 4571 	ljmp	00138$
      001707                       4572 00130$:
                           001142  4573 	C$u2f_hid.c$582$1$193 ==.
                                   4574 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:582: if ((req->pkt.init.cmd & TYPE_INIT) && !cid->busy)
      001707 8A 82            [24] 4575 	mov	dpl,r2
      001709 8B 83            [24] 4576 	mov	dph,r3
      00170B 8C F0            [24] 4577 	mov	b,r4
      00170D 12 5E 3E         [24] 4578 	lcall	__gptrget
      001710 FF               [12] 4579 	mov	r7,a
      001711 30 E7 64         [24] 4580 	jnb	acc.7,00135$
      001714 E5 1B            [12] 4581 	mov	a,_bp
      001716 24 08            [12] 4582 	add	a,#0x08
      001718 F8               [12] 4583 	mov	r0,a
      001719 74 08            [12] 4584 	mov	a,#0x08
      00171B 26               [12] 4585 	add	a,@r0
      00171C FD               [12] 4586 	mov	r5,a
      00171D E4               [12] 4587 	clr	a
      00171E 08               [12] 4588 	inc	r0
      00171F 36               [12] 4589 	addc	a,@r0
      001720 FE               [12] 4590 	mov	r6,a
      001721 08               [12] 4591 	inc	r0
      001722 86 07            [24] 4592 	mov	ar7,@r0
      001724 8D 82            [24] 4593 	mov	dpl,r5
      001726 8E 83            [24] 4594 	mov	dph,r6
      001728 8F F0            [24] 4595 	mov	b,r7
      00172A 12 5E 3E         [24] 4596 	lcall	__gptrget
      00172D 70 49            [24] 4597 	jnz	00135$
                           00116A  4598 	C$u2f_hid.c$584$2$206 ==.
                                   4599 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:584: cid->last_cmd = req->pkt.init.cmd;
      00172F E5 1B            [12] 4600 	mov	a,_bp
      001731 24 08            [12] 4601 	add	a,#0x08
      001733 F8               [12] 4602 	mov	r0,a
      001734 E5 1B            [12] 4603 	mov	a,_bp
      001736 24 04            [12] 4604 	add	a,#0x04
      001738 F9               [12] 4605 	mov	r1,a
      001739 74 09            [12] 4606 	mov	a,#0x09
      00173B 26               [12] 4607 	add	a,@r0
      00173C F7               [12] 4608 	mov	@r1,a
      00173D E4               [12] 4609 	clr	a
      00173E 08               [12] 4610 	inc	r0
      00173F 36               [12] 4611 	addc	a,@r0
      001740 09               [12] 4612 	inc	r1
      001741 F7               [12] 4613 	mov	@r1,a
      001742 08               [12] 4614 	inc	r0
      001743 09               [12] 4615 	inc	r1
      001744 E6               [12] 4616 	mov	a,@r0
      001745 F7               [12] 4617 	mov	@r1,a
      001746 8A 82            [24] 4618 	mov	dpl,r2
      001748 8B 83            [24] 4619 	mov	dph,r3
      00174A 8C F0            [24] 4620 	mov	b,r4
      00174C 12 5E 3E         [24] 4621 	lcall	__gptrget
      00174F FF               [12] 4622 	mov	r7,a
      001750 E5 1B            [12] 4623 	mov	a,_bp
      001752 24 04            [12] 4624 	add	a,#0x04
      001754 F8               [12] 4625 	mov	r0,a
      001755 86 82            [24] 4626 	mov	dpl,@r0
      001757 08               [12] 4627 	inc	r0
      001758 86 83            [24] 4628 	mov	dph,@r0
      00175A 08               [12] 4629 	inc	r0
      00175B 86 F0            [24] 4630 	mov	b,@r0
      00175D EF               [12] 4631 	mov	a,r7
      00175E 12 5A 48         [24] 4632 	lcall	__gptrput
                           00119C  4633 	C$u2f_hid.c$585$2$206 ==.
                                   4634 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:585: hid_layer.current_cmd = req->pkt.init.cmd;
      001761 8A 82            [24] 4635 	mov	dpl,r2
      001763 8B 83            [24] 4636 	mov	dph,r3
      001765 8C F0            [24] 4637 	mov	b,r4
      001767 12 5E 3E         [24] 4638 	lcall	__gptrget
      00176A FA               [12] 4639 	mov	r2,a
      00176B 90 00 0F         [24] 4640 	mov	dptr,#(_hid_layer + 0x0005)
      00176E F0               [24] 4641 	movx	@dptr,a
                           0011AA  4642 	C$u2f_hid.c$586$2$206 ==.
                                   4643 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:586: last_seq = -1;
      00176F 90 01 E0         [24] 4644 	mov	dptr,#_u2f_hid_request_last_seq_1_193
      001772 74 FF            [12] 4645 	mov	a,#0xff
      001774 F0               [24] 4646 	movx	@dptr,a
      001775 02 18 29         [24] 4647 	ljmp	00136$
      001778                       4648 00135$:
                           0011B3  4649 	C$u2f_hid.c$594$2$207 ==.
                                   4650 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:594: hid_layer.last_buffered = get_ms();
      001778 90 00 10         [24] 4651 	mov	dptr,#(_hid_layer + 0x0006)
      00177B E5 08            [12] 4652 	mov	a,__MS_
      00177D F0               [24] 4653 	movx	@dptr,a
      00177E E5 09            [12] 4654 	mov	a,(__MS_ + 1)
      001780 A3               [24] 4655 	inc	dptr
      001781 F0               [24] 4656 	movx	@dptr,a
      001782 E5 0A            [12] 4657 	mov	a,(__MS_ + 2)
      001784 A3               [24] 4658 	inc	dptr
      001785 F0               [24] 4659 	movx	@dptr,a
      001786 E5 0B            [12] 4660 	mov	a,(__MS_ + 3)
      001788 A3               [24] 4661 	inc	dptr
      001789 F0               [24] 4662 	movx	@dptr,a
                           0011C5  4663 	C$u2f_hid.c$595$2$207 ==.
                                   4664 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:595: if (last_seq + 1 != req->pkt.cont.seq)
      00178A 90 01 E0         [24] 4665 	mov	dptr,#_u2f_hid_request_last_seq_1_193
      00178D E0               [24] 4666 	movx	a,@dptr
      00178E FF               [12] 4667 	mov	r7,a
      00178F 33               [12] 4668 	rlc	a
      001790 95 E0            [12] 4669 	subb	a,acc
      001792 FE               [12] 4670 	mov	r6,a
      001793 E5 1B            [12] 4671 	mov	a,_bp
      001795 24 04            [12] 4672 	add	a,#0x04
      001797 F8               [12] 4673 	mov	r0,a
      001798 74 01            [12] 4674 	mov	a,#0x01
      00179A 2F               [12] 4675 	add	a,r7
      00179B F6               [12] 4676 	mov	@r0,a
      00179C E4               [12] 4677 	clr	a
      00179D 3E               [12] 4678 	addc	a,r6
      00179E 08               [12] 4679 	inc	r0
      00179F F6               [12] 4680 	mov	@r0,a
      0017A0 A8 1B            [24] 4681 	mov	r0,_bp
      0017A2 08               [12] 4682 	inc	r0
      0017A3 74 04            [12] 4683 	mov	a,#0x04
      0017A5 26               [12] 4684 	add	a,@r0
      0017A6 FB               [12] 4685 	mov	r3,a
      0017A7 E4               [12] 4686 	clr	a
      0017A8 08               [12] 4687 	inc	r0
      0017A9 36               [12] 4688 	addc	a,@r0
      0017AA FC               [12] 4689 	mov	r4,a
      0017AB 08               [12] 4690 	inc	r0
      0017AC 86 05            [24] 4691 	mov	ar5,@r0
      0017AE 8B 82            [24] 4692 	mov	dpl,r3
      0017B0 8C 83            [24] 4693 	mov	dph,r4
      0017B2 8D F0            [24] 4694 	mov	b,r5
      0017B4 12 5E 3E         [24] 4695 	lcall	__gptrget
      0017B7 FA               [12] 4696 	mov	r2,a
      0017B8 7F 00            [12] 4697 	mov	r7,#0x00
      0017BA E5 1B            [12] 4698 	mov	a,_bp
      0017BC 24 04            [12] 4699 	add	a,#0x04
      0017BE F8               [12] 4700 	mov	r0,a
      0017BF E6               [12] 4701 	mov	a,@r0
      0017C0 B5 02 07         [24] 4702 	cjne	a,ar2,00218$
      0017C3 08               [12] 4703 	inc	r0
      0017C4 E6               [12] 4704 	mov	a,@r0
      0017C5 B5 07 02         [24] 4705 	cjne	a,ar7,00218$
      0017C8 80 33            [24] 4706 	sjmp	00133$
      0017CA                       4707 00218$:
                           001205  4708 	C$u2f_hid.c$597$3$208 ==.
                                   4709 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:597: stamp_error(hid_layer.current_cid, ERR_INVALID_SEQ);
      0017CA 90 00 0B         [24] 4710 	mov	dptr,#(_hid_layer + 0x0001)
      0017CD E5 1B            [12] 4711 	mov	a,_bp
      0017CF 24 04            [12] 4712 	add	a,#0x04
      0017D1 F8               [12] 4713 	mov	r0,a
      0017D2 E0               [24] 4714 	movx	a,@dptr
      0017D3 F6               [12] 4715 	mov	@r0,a
      0017D4 A3               [24] 4716 	inc	dptr
      0017D5 E0               [24] 4717 	movx	a,@dptr
      0017D6 08               [12] 4718 	inc	r0
      0017D7 F6               [12] 4719 	mov	@r0,a
      0017D8 A3               [24] 4720 	inc	dptr
      0017D9 E0               [24] 4721 	movx	a,@dptr
      0017DA 08               [12] 4722 	inc	r0
      0017DB F6               [12] 4723 	mov	@r0,a
      0017DC A3               [24] 4724 	inc	dptr
      0017DD E0               [24] 4725 	movx	a,@dptr
      0017DE 08               [12] 4726 	inc	r0
      0017DF F6               [12] 4727 	mov	@r0,a
      0017E0 74 04            [12] 4728 	mov	a,#0x04
      0017E2 C0 E0            [24] 4729 	push	acc
      0017E4 E5 1B            [12] 4730 	mov	a,_bp
      0017E6 24 04            [12] 4731 	add	a,#0x04
      0017E8 F8               [12] 4732 	mov	r0,a
      0017E9 86 82            [24] 4733 	mov	dpl,@r0
      0017EB 08               [12] 4734 	inc	r0
      0017EC 86 83            [24] 4735 	mov	dph,@r0
      0017EE 08               [12] 4736 	inc	r0
      0017EF 86 F0            [24] 4737 	mov	b,@r0
      0017F1 08               [12] 4738 	inc	r0
      0017F2 E6               [12] 4739 	mov	a,@r0
      0017F3 12 0A ED         [24] 4740 	lcall	_stamp_error
      0017F6 15 81            [12] 4741 	dec	sp
                           001233  4742 	C$u2f_hid.c$598$3$208 ==.
                                   4743 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:598: u2f_hid_reset_packet();
      0017F8 12 06 18         [24] 4744 	lcall	_u2f_hid_reset_packet
                           001236  4745 	C$u2f_hid.c$599$3$208 ==.
                                   4746 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:599: return;
      0017FB 80 62            [24] 4747 	sjmp	00138$
      0017FD                       4748 00133$:
                           001238  4749 	C$u2f_hid.c$601$2$207 ==.
                                   4750 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:601: last_seq = req->pkt.cont.seq;
      0017FD 8B 82            [24] 4751 	mov	dpl,r3
      0017FF 8C 83            [24] 4752 	mov	dph,r4
      001801 8D F0            [24] 4753 	mov	b,r5
      001803 12 5E 3E         [24] 4754 	lcall	__gptrget
      001806 FB               [12] 4755 	mov	r3,a
      001807 90 01 E0         [24] 4756 	mov	dptr,#_u2f_hid_request_last_seq_1_193
      00180A F0               [24] 4757 	movx	@dptr,a
                           001246  4758 	C$u2f_hid.c$603$2$207 ==.
                                   4759 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:603: hid_layer.current_cmd = cid->last_cmd;
      00180B E5 1B            [12] 4760 	mov	a,_bp
      00180D 24 08            [12] 4761 	add	a,#0x08
      00180F F8               [12] 4762 	mov	r0,a
      001810 74 09            [12] 4763 	mov	a,#0x09
      001812 26               [12] 4764 	add	a,@r0
      001813 FD               [12] 4765 	mov	r5,a
      001814 E4               [12] 4766 	clr	a
      001815 08               [12] 4767 	inc	r0
      001816 36               [12] 4768 	addc	a,@r0
      001817 FE               [12] 4769 	mov	r6,a
      001818 08               [12] 4770 	inc	r0
      001819 86 07            [24] 4771 	mov	ar7,@r0
      00181B 8D 82            [24] 4772 	mov	dpl,r5
      00181D 8E 83            [24] 4773 	mov	dph,r6
      00181F 8F F0            [24] 4774 	mov	b,r7
      001821 12 5E 3E         [24] 4775 	lcall	__gptrget
      001824 FD               [12] 4776 	mov	r5,a
      001825 90 00 0F         [24] 4777 	mov	dptr,#(_hid_layer + 0x0005)
      001828 F0               [24] 4778 	movx	@dptr,a
      001829                       4779 00136$:
                           001264  4780 	C$u2f_hid.c$607$1$193 ==.
                                   4781 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:607: cid->busy = hid_u2f_parse(req);
      001829 E5 1B            [12] 4782 	mov	a,_bp
      00182B 24 08            [12] 4783 	add	a,#0x08
      00182D F8               [12] 4784 	mov	r0,a
      00182E 74 08            [12] 4785 	mov	a,#0x08
      001830 26               [12] 4786 	add	a,@r0
      001831 FD               [12] 4787 	mov	r5,a
      001832 E4               [12] 4788 	clr	a
      001833 08               [12] 4789 	inc	r0
      001834 36               [12] 4790 	addc	a,@r0
      001835 FE               [12] 4791 	mov	r6,a
      001836 08               [12] 4792 	inc	r0
      001837 86 07            [24] 4793 	mov	ar7,@r0
      001839 A8 1B            [24] 4794 	mov	r0,_bp
      00183B 08               [12] 4795 	inc	r0
      00183C 86 82            [24] 4796 	mov	dpl,@r0
      00183E 08               [12] 4797 	inc	r0
      00183F 86 83            [24] 4798 	mov	dph,@r0
      001841 08               [12] 4799 	inc	r0
      001842 86 F0            [24] 4800 	mov	b,@r0
      001844 C0 07            [24] 4801 	push	ar7
      001846 C0 06            [24] 4802 	push	ar6
      001848 C0 05            [24] 4803 	push	ar5
      00184A 12 0C BC         [24] 4804 	lcall	_hid_u2f_parse
      00184D AC 82            [24] 4805 	mov	r4,dpl
      00184F D0 05            [24] 4806 	pop	ar5
      001851 D0 06            [24] 4807 	pop	ar6
      001853 D0 07            [24] 4808 	pop	ar7
      001855 8D 82            [24] 4809 	mov	dpl,r5
      001857 8E 83            [24] 4810 	mov	dph,r6
      001859 8F F0            [24] 4811 	mov	b,r7
      00185B EC               [12] 4812 	mov	a,r4
      00185C 12 5A 48         [24] 4813 	lcall	__gptrput
      00185F                       4814 00138$:
      00185F 85 1B 81         [24] 4815 	mov	sp,_bp
      001862 D0 1B            [24] 4816 	pop	_bp
                           00129F  4817 	C$u2f_hid.c$609$1$193 ==.
                           00129F  4818 	XG$u2f_hid_request$0$0 ==.
      001864 22               [24] 4819 	ret
                                   4820 	.area CSEG    (CODE)
                                   4821 	.area CONST   (CODE)
                           000000  4822 Fu2f_hid$__str_0$0$0 == .
      005E71                       4823 ___str_0:
      005E71 69 6E 76 61 6C 69 64  4824 	.ascii "invalid cmd: "
             20 63 6D 64 3A 20
      005E7E 00                    4825 	.db 0x00
                           00000E  4826 Fu2f_hid$__str_1$0$0 == .
      005E7F                       4827 ___str_1:
      005E7F 55 32 46 20 48 49 44  4828 	.ascii "U2F HID FAIL"
             20 46 41 49 4C
      005E8B 0D                    4829 	.db 0x0d
      005E8C 0A                    4830 	.db 0x0a
      005E8D 00                    4831 	.db 0x00
                           00001D  4832 Fu2f_hid$__str_2$0$0 == .
      005E8E                       4833 ___str_2:
      005E8E 74 69 6D 65 6F 75 74  4834 	.ascii "timeout cid "
             20 63 69 64 20
      005E9A 00                    4835 	.db 0x00
                                   4836 	.area XINIT   (CODE)
                           000000  4837 Fu2f_hid$__xinit__hid_lockt$0$0 == .
      00616D                       4838 __xinit___hid_lockt:
      00616D 00 00 00 00           4839 	.byte #0x00,#0x00,#0x00,#0x00	; 0
                           000004  4840 Fu2f_hid$__xinit__hid_lock_cid$0$0 == .
      006171                       4841 __xinit___hid_lock_cid:
      006171 00 00 00 00           4842 	.byte #0x00,#0x00,#0x00,#0x00	; 0
                           000008  4843 Fu2f_hid$__xinit_CID_NUM$0$0 == .
      006175                       4844 __xinit__CID_NUM:
      006175 00                    4845 	.db #0x00	; 0
                           000009  4846 Fu2f_hid$__xinit__hid_offset$0$0 == .
      006176                       4847 __xinit___hid_offset:
      006176 00                    4848 	.db #0x00	; 0
                           00000A  4849 Fu2f_hid$__xinit__hid_seq$0$0 == .
      006177                       4850 __xinit___hid_seq:
      006177 00 00                 4851 	.byte #0x00,#0x00	; 0
                           00000C  4852 Fu2f_hid$__xinit__hid_in_session$0$0 == .
      006179                       4853 __xinit___hid_in_session:
      006179 00                    4854 	.db #0x00	; 0
                                   4855 	.area CABS    (ABS,CODE)
