                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module atecc508a
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _u2f_delay
                                     12 	.globl _smb_set_ext_write
                                     13 	.globl _smb_write
                                     14 	.globl _smb_read
                                     15 	.globl _get_app_error
                                     16 	.globl _set_app_error
                                     17 	.globl _U2F_BLUE
                                     18 	.globl _U2F_GREEN
                                     19 	.globl _U2F_RED
                                     20 	.globl _U2F_BUTTON_VAL
                                     21 	.globl _U2F_BUTTON
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
                                    354 	.globl _atecc_send
                                    355 	.globl _atecc_idle
                                    356 	.globl _atecc_sleep
                                    357 	.globl _atecc_wake
                                    358 	.globl _atecc_recv
                                    359 	.globl _atecc_send_recv
                                    360 ;--------------------------------------------------------
                                    361 ; special function registers
                                    362 ;--------------------------------------------------------
                                    363 	.area RSEG    (ABS,DATA)
      000000                        364 	.org 0x0000
                           0000E0   365 G$ACC$0$0 == 0x00e0
                           0000E0   366 _ACC	=	0x00e0
                           0000B3   367 G$ADC0AC$0$0 == 0x00b3
                           0000B3   368 _ADC0AC	=	0x00b3
                           0000BC   369 G$ADC0CF$0$0 == 0x00bc
                           0000BC   370 _ADC0CF	=	0x00bc
                           0000E8   371 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   372 _ADC0CN0	=	0x00e8
                           0000B2   373 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   374 _ADC0CN1	=	0x00b2
                           0000C4   375 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   376 _ADC0GTH	=	0x00c4
                           0000C3   377 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   378 _ADC0GTL	=	0x00c3
                           0000BE   379 G$ADC0H$0$0 == 0x00be
                           0000BE   380 _ADC0H	=	0x00be
                           0000BD   381 G$ADC0L$0$0 == 0x00bd
                           0000BD   382 _ADC0L	=	0x00bd
                           0000C6   383 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   384 _ADC0LTH	=	0x00c6
                           0000C5   385 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   386 _ADC0LTL	=	0x00c5
                           0000BB   387 G$ADC0MX$0$0 == 0x00bb
                           0000BB   388 _ADC0MX	=	0x00bb
                           0000DF   389 G$ADC0PWR$0$0 == 0x00df
                           0000DF   390 _ADC0PWR	=	0x00df
                           0000B9   391 G$ADC0TK$0$0 == 0x00b9
                           0000B9   392 _ADC0TK	=	0x00b9
                           0000F0   393 G$B$0$0 == 0x00f0
                           0000F0   394 _B	=	0x00f0
                           00008E   395 G$CKCON0$0$0 == 0x008e
                           00008E   396 _CKCON0	=	0x008e
                           0000A6   397 G$CKCON1$0$0 == 0x00a6
                           0000A6   398 _CKCON1	=	0x00a6
                           0000A9   399 G$CLKSEL$0$0 == 0x00a9
                           0000A9   400 _CLKSEL	=	0x00a9
                           00009B   401 G$CMP0CN0$0$0 == 0x009b
                           00009B   402 _CMP0CN0	=	0x009b
                           000099   403 G$CMP0CN1$0$0 == 0x0099
                           000099   404 _CMP0CN1	=	0x0099
                           00009D   405 G$CMP0MD$0$0 == 0x009d
                           00009D   406 _CMP0MD	=	0x009d
                           00009F   407 G$CMP0MX$0$0 == 0x009f
                           00009F   408 _CMP0MX	=	0x009f
                           0000BF   409 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   410 _CMP1CN0	=	0x00bf
                           0000AC   411 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   412 _CMP1CN1	=	0x00ac
                           0000AB   413 G$CMP1MD$0$0 == 0x00ab
                           0000AB   414 _CMP1MD	=	0x00ab
                           0000AA   415 G$CMP1MX$0$0 == 0x00aa
                           0000AA   416 _CMP1MX	=	0x00aa
                           0000CE   417 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   418 _CRC0CN0	=	0x00ce
                           000086   419 G$CRC0CN1$0$0 == 0x0086
                           000086   420 _CRC0CN1	=	0x0086
                           0000D3   421 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   422 _CRC0CNT	=	0x00d3
                           0000DE   423 G$CRC0DAT$0$0 == 0x00de
                           0000DE   424 _CRC0DAT	=	0x00de
                           0000CF   425 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   426 _CRC0FLIP	=	0x00cf
                           0000DD   427 G$CRC0IN$0$0 == 0x00dd
                           0000DD   428 _CRC0IN	=	0x00dd
                           0000D2   429 G$CRC0ST$0$0 == 0x00d2
                           0000D2   430 _CRC0ST	=	0x00d2
                           0000AD   431 G$DERIVID$0$0 == 0x00ad
                           0000AD   432 _DERIVID	=	0x00ad
                           0000B5   433 G$DEVICEID$0$0 == 0x00b5
                           0000B5   434 _DEVICEID	=	0x00b5
                           000083   435 G$DPH$0$0 == 0x0083
                           000083   436 _DPH	=	0x0083
                           000082   437 G$DPL$0$0 == 0x0082
                           000082   438 _DPL	=	0x0082
                           0000E6   439 G$EIE1$0$0 == 0x00e6
                           0000E6   440 _EIE1	=	0x00e6
                           0000CE   441 G$EIE2$0$0 == 0x00ce
                           0000CE   442 _EIE2	=	0x00ce
                           0000F3   443 G$EIP1$0$0 == 0x00f3
                           0000F3   444 _EIP1	=	0x00f3
                           0000F5   445 G$EIP1H$0$0 == 0x00f5
                           0000F5   446 _EIP1H	=	0x00f5
                           0000F4   447 G$EIP2$0$0 == 0x00f4
                           0000F4   448 _EIP2	=	0x00f4
                           0000F6   449 G$EIP2H$0$0 == 0x00f6
                           0000F6   450 _EIP2H	=	0x00f6
                           0000E7   451 G$EMI0CN$0$0 == 0x00e7
                           0000E7   452 _EMI0CN	=	0x00e7
                           0000B7   453 G$FLKEY$0$0 == 0x00b7
                           0000B7   454 _FLKEY	=	0x00b7
                           0000C7   455 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   456 _HFO0CAL	=	0x00c7
                           0000D6   457 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   458 _HFO1CAL	=	0x00d6
                           0000EF   459 G$HFOCN$0$0 == 0x00ef
                           0000EF   460 _HFOCN	=	0x00ef
                           0000BA   461 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   462 _I2C0CN0	=	0x00ba
                           0000BC   463 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   464 _I2C0DIN	=	0x00bc
                           0000BB   465 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   466 _I2C0DOUT	=	0x00bb
                           0000AD   467 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   468 _I2C0FCN0	=	0x00ad
                           0000AB   469 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   470 _I2C0FCN1	=	0x00ab
                           0000F5   471 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   472 _I2C0FCT	=	0x00f5
                           0000BD   473 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   474 _I2C0SLAD	=	0x00bd
                           0000B9   475 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   476 _I2C0STAT	=	0x00b9
                           0000A8   477 G$IE$0$0 == 0x00a8
                           0000A8   478 _IE	=	0x00a8
                           0000B8   479 G$IP$0$0 == 0x00b8
                           0000B8   480 _IP	=	0x00b8
                           0000F2   481 G$IPH$0$0 == 0x00f2
                           0000F2   482 _IPH	=	0x00f2
                           0000E4   483 G$IT01CF$0$0 == 0x00e4
                           0000E4   484 _IT01CF	=	0x00e4
                           0000B1   485 G$LFO0CN$0$0 == 0x00b1
                           0000B1   486 _LFO0CN	=	0x00b1
                           000080   487 G$P0$0$0 == 0x0080
                           000080   488 _P0	=	0x0080
                           0000FE   489 G$P0MASK$0$0 == 0x00fe
                           0000FE   490 _P0MASK	=	0x00fe
                           0000FD   491 G$P0MAT$0$0 == 0x00fd
                           0000FD   492 _P0MAT	=	0x00fd
                           0000F1   493 G$P0MDIN$0$0 == 0x00f1
                           0000F1   494 _P0MDIN	=	0x00f1
                           0000A4   495 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   496 _P0MDOUT	=	0x00a4
                           0000D4   497 G$P0SKIP$0$0 == 0x00d4
                           0000D4   498 _P0SKIP	=	0x00d4
                           000090   499 G$P1$0$0 == 0x0090
                           000090   500 _P1	=	0x0090
                           0000EE   501 G$P1MASK$0$0 == 0x00ee
                           0000EE   502 _P1MASK	=	0x00ee
                           0000ED   503 G$P1MAT$0$0 == 0x00ed
                           0000ED   504 _P1MAT	=	0x00ed
                           0000F2   505 G$P1MDIN$0$0 == 0x00f2
                           0000F2   506 _P1MDIN	=	0x00f2
                           0000A5   507 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   508 _P1MDOUT	=	0x00a5
                           0000D5   509 G$P1SKIP$0$0 == 0x00d5
                           0000D5   510 _P1SKIP	=	0x00d5
                           0000A0   511 G$P2$0$0 == 0x00a0
                           0000A0   512 _P2	=	0x00a0
                           0000FC   513 G$P2MASK$0$0 == 0x00fc
                           0000FC   514 _P2MASK	=	0x00fc
                           0000FB   515 G$P2MAT$0$0 == 0x00fb
                           0000FB   516 _P2MAT	=	0x00fb
                           0000F3   517 G$P2MDIN$0$0 == 0x00f3
                           0000F3   518 _P2MDIN	=	0x00f3
                           0000A6   519 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   520 _P2MDOUT	=	0x00a6
                           0000CC   521 G$P2SKIP$0$0 == 0x00cc
                           0000CC   522 _P2SKIP	=	0x00cc
                           0000B0   523 G$P3$0$0 == 0x00b0
                           0000B0   524 _P3	=	0x00b0
                           0000F4   525 G$P3MDIN$0$0 == 0x00f4
                           0000F4   526 _P3MDIN	=	0x00f4
                           00009C   527 G$P3MDOUT$0$0 == 0x009c
                           00009C   528 _P3MDOUT	=	0x009c
                           00009E   529 G$PCA0CENT$0$0 == 0x009e
                           00009E   530 _PCA0CENT	=	0x009e
                           00009C   531 G$PCA0CLR$0$0 == 0x009c
                           00009C   532 _PCA0CLR	=	0x009c
                           0000D8   533 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   534 _PCA0CN0	=	0x00d8
                           0000FC   535 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   536 _PCA0CPH0	=	0x00fc
                           0000EA   537 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   538 _PCA0CPH1	=	0x00ea
                           0000EC   539 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   540 _PCA0CPH2	=	0x00ec
                           0000FB   541 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   542 _PCA0CPL0	=	0x00fb
                           0000E9   543 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   544 _PCA0CPL1	=	0x00e9
                           0000EB   545 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   546 _PCA0CPL2	=	0x00eb
                           0000DA   547 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   548 _PCA0CPM0	=	0x00da
                           0000DB   549 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   550 _PCA0CPM1	=	0x00db
                           0000DC   551 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   552 _PCA0CPM2	=	0x00dc
                           0000FA   553 G$PCA0H$0$0 == 0x00fa
                           0000FA   554 _PCA0H	=	0x00fa
                           0000F9   555 G$PCA0L$0$0 == 0x00f9
                           0000F9   556 _PCA0L	=	0x00f9
                           0000D9   557 G$PCA0MD$0$0 == 0x00d9
                           0000D9   558 _PCA0MD	=	0x00d9
                           000096   559 G$PCA0POL$0$0 == 0x0096
                           000096   560 _PCA0POL	=	0x0096
                           0000F7   561 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   562 _PCA0PWM	=	0x00f7
                           000087   563 G$PCON0$0$0 == 0x0087
                           000087   564 _PCON0	=	0x0087
                           00009A   565 G$PCON1$0$0 == 0x009a
                           00009A   566 _PCON1	=	0x009a
                           0000C1   567 G$PFE0CN$0$0 == 0x00c1
                           0000C1   568 _PFE0CN	=	0x00c1
                           0000F6   569 G$PRTDRV$0$0 == 0x00f6
                           0000F6   570 _PRTDRV	=	0x00f6
                           00008F   571 G$PSCTL$0$0 == 0x008f
                           00008F   572 _PSCTL	=	0x008f
                           0000D0   573 G$PSW$0$0 == 0x00d0
                           0000D0   574 _PSW	=	0x00d0
                           0000D1   575 G$REF0CN$0$0 == 0x00d1
                           0000D1   576 _REF0CN	=	0x00d1
                           0000C9   577 G$REG0CN$0$0 == 0x00c9
                           0000C9   578 _REG0CN	=	0x00c9
                           0000C6   579 G$REG1CN$0$0 == 0x00c6
                           0000C6   580 _REG1CN	=	0x00c6
                           0000B6   581 G$REVID$0$0 == 0x00b6
                           0000B6   582 _REVID	=	0x00b6
                           0000EF   583 G$RSTSRC$0$0 == 0x00ef
                           0000EF   584 _RSTSRC	=	0x00ef
                           000094   585 G$SBCON1$0$0 == 0x0094
                           000094   586 _SBCON1	=	0x0094
                           000096   587 G$SBRLH1$0$0 == 0x0096
                           000096   588 _SBRLH1	=	0x0096
                           000095   589 G$SBRLL1$0$0 == 0x0095
                           000095   590 _SBRLL1	=	0x0095
                           000099   591 G$SBUF0$0$0 == 0x0099
                           000099   592 _SBUF0	=	0x0099
                           000092   593 G$SBUF1$0$0 == 0x0092
                           000092   594 _SBUF1	=	0x0092
                           000098   595 G$SCON0$0$0 == 0x0098
                           000098   596 _SCON0	=	0x0098
                           0000C8   597 G$SCON1$0$0 == 0x00c8
                           0000C8   598 _SCON1	=	0x00c8
                           0000A7   599 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   600 _SFRPAGE	=	0x00a7
                           0000CF   601 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   602 _SFRPGCN	=	0x00cf
                           0000D7   603 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   604 _SFRSTACK	=	0x00d7
                           0000D6   605 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   606 _SMB0ADM	=	0x00d6
                           0000D7   607 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   608 _SMB0ADR	=	0x00d7
                           0000C1   609 G$SMB0CF$0$0 == 0x00c1
                           0000C1   610 _SMB0CF	=	0x00c1
                           0000C0   611 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   612 _SMB0CN0	=	0x00c0
                           0000C2   613 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   614 _SMB0DAT	=	0x00c2
                           0000C3   615 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   616 _SMB0FCN0	=	0x00c3
                           0000C4   617 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   618 _SMB0FCN1	=	0x00c4
                           0000EF   619 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   620 _SMB0FCT	=	0x00ef
                           0000C5   621 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   622 _SMB0RXLN	=	0x00c5
                           0000AC   623 G$SMB0TC$0$0 == 0x00ac
                           0000AC   624 _SMB0TC	=	0x00ac
                           000093   625 G$SMOD1$0$0 == 0x0093
                           000093   626 _SMOD1	=	0x0093
                           000081   627 G$SP$0$0 == 0x0081
                           000081   628 _SP	=	0x0081
                           0000A1   629 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   630 _SPI0CFG	=	0x00a1
                           0000A2   631 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   632 _SPI0CKR	=	0x00a2
                           0000F8   633 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   634 _SPI0CN0	=	0x00f8
                           0000A3   635 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   636 _SPI0DAT	=	0x00a3
                           00009A   637 G$SPI0FCN0$0$0 == 0x009a
                           00009A   638 _SPI0FCN0	=	0x009a
                           00009B   639 G$SPI0FCN1$0$0 == 0x009b
                           00009B   640 _SPI0FCN1	=	0x009b
                           0000F7   641 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   642 _SPI0FCT	=	0x00f7
                           000088   643 G$TCON$0$0 == 0x0088
                           000088   644 _TCON	=	0x0088
                           00008C   645 G$TH0$0$0 == 0x008c
                           00008C   646 _TH0	=	0x008c
                           00008D   647 G$TH1$0$0 == 0x008d
                           00008D   648 _TH1	=	0x008d
                           00008A   649 G$TL0$0$0 == 0x008a
                           00008A   650 _TL0	=	0x008a
                           00008B   651 G$TL1$0$0 == 0x008b
                           00008B   652 _TL1	=	0x008b
                           000089   653 G$TMOD$0$0 == 0x0089
                           000089   654 _TMOD	=	0x0089
                           0000C8   655 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   656 _TMR2CN0	=	0x00c8
                           0000FD   657 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   658 _TMR2CN1	=	0x00fd
                           0000CD   659 G$TMR2H$0$0 == 0x00cd
                           0000CD   660 _TMR2H	=	0x00cd
                           0000CC   661 G$TMR2L$0$0 == 0x00cc
                           0000CC   662 _TMR2L	=	0x00cc
                           0000CB   663 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   664 _TMR2RLH	=	0x00cb
                           0000CA   665 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   666 _TMR2RLL	=	0x00ca
                           000091   667 G$TMR3CN0$0$0 == 0x0091
                           000091   668 _TMR3CN0	=	0x0091
                           0000FE   669 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   670 _TMR3CN1	=	0x00fe
                           000095   671 G$TMR3H$0$0 == 0x0095
                           000095   672 _TMR3H	=	0x0095
                           000094   673 G$TMR3L$0$0 == 0x0094
                           000094   674 _TMR3L	=	0x0094
                           000093   675 G$TMR3RLH$0$0 == 0x0093
                           000093   676 _TMR3RLH	=	0x0093
                           000092   677 G$TMR3RLL$0$0 == 0x0092
                           000092   678 _TMR3RLL	=	0x0092
                           000098   679 G$TMR4CN0$0$0 == 0x0098
                           000098   680 _TMR4CN0	=	0x0098
                           0000FF   681 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   682 _TMR4CN1	=	0x00ff
                           0000A5   683 G$TMR4H$0$0 == 0x00a5
                           0000A5   684 _TMR4H	=	0x00a5
                           0000A4   685 G$TMR4L$0$0 == 0x00a4
                           0000A4   686 _TMR4L	=	0x00a4
                           0000A3   687 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   688 _TMR4RLH	=	0x00a3
                           0000A2   689 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   690 _TMR4RLL	=	0x00a2
                           00009D   691 G$UART1FCN0$0$0 == 0x009d
                           00009D   692 _UART1FCN0	=	0x009d
                           0000D8   693 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   694 _UART1FCN1	=	0x00d8
                           0000FA   695 G$UART1FCT$0$0 == 0x00fa
                           0000FA   696 _UART1FCT	=	0x00fa
                           00009E   697 G$UART1LIN$0$0 == 0x009e
                           00009E   698 _UART1LIN	=	0x009e
                           0000AE   699 G$USB0ADR$0$0 == 0x00ae
                           0000AE   700 _USB0ADR	=	0x00ae
                           0000B2   701 G$USB0AEC$0$0 == 0x00b2
                           0000B2   702 _USB0AEC	=	0x00b2
                           0000B6   703 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   704 _USB0CDCF	=	0x00b6
                           0000BE   705 G$USB0CDCN$0$0 == 0x00be
                           0000BE   706 _USB0CDCN	=	0x00be
                           0000BF   707 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   708 _USB0CDSTA	=	0x00bf
                           0000B5   709 G$USB0CF$0$0 == 0x00b5
                           0000B5   710 _USB0CF	=	0x00b5
                           0000AF   711 G$USB0DAT$0$0 == 0x00af
                           0000AF   712 _USB0DAT	=	0x00af
                           0000B3   713 G$USB0XCN$0$0 == 0x00b3
                           0000B3   714 _USB0XCN	=	0x00b3
                           0000FF   715 G$VDM0CN$0$0 == 0x00ff
                           0000FF   716 _VDM0CN	=	0x00ff
                           000097   717 G$WDTCN$0$0 == 0x0097
                           000097   718 _WDTCN	=	0x0097
                           0000E1   719 G$XBR0$0$0 == 0x00e1
                           0000E1   720 _XBR0	=	0x00e1
                           0000E2   721 G$XBR1$0$0 == 0x00e2
                           0000E2   722 _XBR1	=	0x00e2
                           0000E3   723 G$XBR2$0$0 == 0x00e3
                           0000E3   724 _XBR2	=	0x00e3
                           0000C3   725 G$ADC0GT$0$0 == 0x00c3
                           0000C3   726 _ADC0GT	=	0x00c3
                           0000BD   727 G$ADC0$0$0 == 0x00bd
                           0000BD   728 _ADC0	=	0x00bd
                           0000C5   729 G$ADC0LT$0$0 == 0x00c5
                           0000C5   730 _ADC0LT	=	0x00c5
                           000082   731 G$DP$0$0 == 0x0082
                           000082   732 _DP	=	0x0082
                           0000FB   733 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   734 _PCA0CP0	=	0x00fb
                           0000E9   735 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   736 _PCA0CP1	=	0x00e9
                           0000EB   737 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   738 _PCA0CP2	=	0x00eb
                           0000F9   739 G$PCA0$0$0 == 0x00f9
                           0000F9   740 _PCA0	=	0x00f9
                           000095   741 G$SBRL1$0$0 == 0x0095
                           000095   742 _SBRL1	=	0x0095
                           0000CC   743 G$TMR2$0$0 == 0x00cc
                           0000CC   744 _TMR2	=	0x00cc
                           0000CA   745 G$TMR2RL$0$0 == 0x00ca
                           0000CA   746 _TMR2RL	=	0x00ca
                           000094   747 G$TMR3$0$0 == 0x0094
                           000094   748 _TMR3	=	0x0094
                           000092   749 G$TMR3RL$0$0 == 0x0092
                           000092   750 _TMR3RL	=	0x0092
                           0000A4   751 G$TMR4$0$0 == 0x00a4
                           0000A4   752 _TMR4	=	0x00a4
                           0000A2   753 G$TMR4RL$0$0 == 0x00a2
                           0000A2   754 _TMR4RL	=	0x00a2
                           0000AA   755 G$_XPAGE$0$0 == 0x00aa
                           0000AA   756 __XPAGE	=	0x00aa
                                    757 ;--------------------------------------------------------
                                    758 ; special function bits
                                    759 ;--------------------------------------------------------
                                    760 	.area RSEG    (ABS,DATA)
      000000                        761 	.org 0x0000
                           0000E0   762 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   763 _ACC_ACC0	=	0x00e0
                           0000E1   764 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   765 _ACC_ACC1	=	0x00e1
                           0000E2   766 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   767 _ACC_ACC2	=	0x00e2
                           0000E3   768 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   769 _ACC_ACC3	=	0x00e3
                           0000E4   770 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   771 _ACC_ACC4	=	0x00e4
                           0000E5   772 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   773 _ACC_ACC5	=	0x00e5
                           0000E6   774 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   775 _ACC_ACC6	=	0x00e6
                           0000E7   776 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   777 _ACC_ACC7	=	0x00e7
                           0000E8   778 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   779 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   780 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   781 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   782 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   783 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   784 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   785 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   786 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   787 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   788 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   789 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   790 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   791 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   792 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   793 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   794 G$B_B0$0$0 == 0x00f0
                           0000F0   795 _B_B0	=	0x00f0
                           0000F1   796 G$B_B1$0$0 == 0x00f1
                           0000F1   797 _B_B1	=	0x00f1
                           0000F2   798 G$B_B2$0$0 == 0x00f2
                           0000F2   799 _B_B2	=	0x00f2
                           0000F3   800 G$B_B3$0$0 == 0x00f3
                           0000F3   801 _B_B3	=	0x00f3
                           0000F4   802 G$B_B4$0$0 == 0x00f4
                           0000F4   803 _B_B4	=	0x00f4
                           0000F5   804 G$B_B5$0$0 == 0x00f5
                           0000F5   805 _B_B5	=	0x00f5
                           0000F6   806 G$B_B6$0$0 == 0x00f6
                           0000F6   807 _B_B6	=	0x00f6
                           0000F7   808 G$B_B7$0$0 == 0x00f7
                           0000F7   809 _B_B7	=	0x00f7
                           0000A8   810 G$IE_EX0$0$0 == 0x00a8
                           0000A8   811 _IE_EX0	=	0x00a8
                           0000A9   812 G$IE_ET0$0$0 == 0x00a9
                           0000A9   813 _IE_ET0	=	0x00a9
                           0000AA   814 G$IE_EX1$0$0 == 0x00aa
                           0000AA   815 _IE_EX1	=	0x00aa
                           0000AB   816 G$IE_ET1$0$0 == 0x00ab
                           0000AB   817 _IE_ET1	=	0x00ab
                           0000AC   818 G$IE_ES0$0$0 == 0x00ac
                           0000AC   819 _IE_ES0	=	0x00ac
                           0000AD   820 G$IE_ET2$0$0 == 0x00ad
                           0000AD   821 _IE_ET2	=	0x00ad
                           0000AE   822 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   823 _IE_ESPI0	=	0x00ae
                           0000AF   824 G$IE_EA$0$0 == 0x00af
                           0000AF   825 _IE_EA	=	0x00af
                           0000B8   826 G$IP_PX0$0$0 == 0x00b8
                           0000B8   827 _IP_PX0	=	0x00b8
                           0000B9   828 G$IP_PT0$0$0 == 0x00b9
                           0000B9   829 _IP_PT0	=	0x00b9
                           0000BA   830 G$IP_PX1$0$0 == 0x00ba
                           0000BA   831 _IP_PX1	=	0x00ba
                           0000BB   832 G$IP_PT1$0$0 == 0x00bb
                           0000BB   833 _IP_PT1	=	0x00bb
                           0000BC   834 G$IP_PS0$0$0 == 0x00bc
                           0000BC   835 _IP_PS0	=	0x00bc
                           0000BD   836 G$IP_PT2$0$0 == 0x00bd
                           0000BD   837 _IP_PT2	=	0x00bd
                           0000BE   838 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   839 _IP_PSPI0	=	0x00be
                           000080   840 G$P0_B0$0$0 == 0x0080
                           000080   841 _P0_B0	=	0x0080
                           000081   842 G$P0_B1$0$0 == 0x0081
                           000081   843 _P0_B1	=	0x0081
                           000082   844 G$P0_B2$0$0 == 0x0082
                           000082   845 _P0_B2	=	0x0082
                           000083   846 G$P0_B3$0$0 == 0x0083
                           000083   847 _P0_B3	=	0x0083
                           000084   848 G$P0_B4$0$0 == 0x0084
                           000084   849 _P0_B4	=	0x0084
                           000085   850 G$P0_B5$0$0 == 0x0085
                           000085   851 _P0_B5	=	0x0085
                           000086   852 G$P0_B6$0$0 == 0x0086
                           000086   853 _P0_B6	=	0x0086
                           000087   854 G$P0_B7$0$0 == 0x0087
                           000087   855 _P0_B7	=	0x0087
                           000090   856 G$P1_B0$0$0 == 0x0090
                           000090   857 _P1_B0	=	0x0090
                           000091   858 G$P1_B1$0$0 == 0x0091
                           000091   859 _P1_B1	=	0x0091
                           000092   860 G$P1_B2$0$0 == 0x0092
                           000092   861 _P1_B2	=	0x0092
                           000093   862 G$P1_B3$0$0 == 0x0093
                           000093   863 _P1_B3	=	0x0093
                           000094   864 G$P1_B4$0$0 == 0x0094
                           000094   865 _P1_B4	=	0x0094
                           000095   866 G$P1_B5$0$0 == 0x0095
                           000095   867 _P1_B5	=	0x0095
                           000096   868 G$P1_B6$0$0 == 0x0096
                           000096   869 _P1_B6	=	0x0096
                           000097   870 G$P1_B7$0$0 == 0x0097
                           000097   871 _P1_B7	=	0x0097
                           0000A0   872 G$P2_B0$0$0 == 0x00a0
                           0000A0   873 _P2_B0	=	0x00a0
                           0000A1   874 G$P2_B1$0$0 == 0x00a1
                           0000A1   875 _P2_B1	=	0x00a1
                           0000A2   876 G$P2_B2$0$0 == 0x00a2
                           0000A2   877 _P2_B2	=	0x00a2
                           0000A3   878 G$P2_B3$0$0 == 0x00a3
                           0000A3   879 _P2_B3	=	0x00a3
                           0000B0   880 G$P3_B0$0$0 == 0x00b0
                           0000B0   881 _P3_B0	=	0x00b0
                           0000B1   882 G$P3_B1$0$0 == 0x00b1
                           0000B1   883 _P3_B1	=	0x00b1
                           0000D8   884 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   885 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   886 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   887 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   888 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   889 _PCA0CN0_CCF2	=	0x00da
                           0000DE   890 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   891 _PCA0CN0_CR	=	0x00de
                           0000DF   892 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   893 _PCA0CN0_CF	=	0x00df
                           0000D0   894 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   895 _PSW_PARITY	=	0x00d0
                           0000D1   896 G$PSW_F1$0$0 == 0x00d1
                           0000D1   897 _PSW_F1	=	0x00d1
                           0000D2   898 G$PSW_OV$0$0 == 0x00d2
                           0000D2   899 _PSW_OV	=	0x00d2
                           0000D3   900 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   901 _PSW_RS0	=	0x00d3
                           0000D4   902 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   903 _PSW_RS1	=	0x00d4
                           0000D5   904 G$PSW_F0$0$0 == 0x00d5
                           0000D5   905 _PSW_F0	=	0x00d5
                           0000D6   906 G$PSW_AC$0$0 == 0x00d6
                           0000D6   907 _PSW_AC	=	0x00d6
                           0000D7   908 G$PSW_CY$0$0 == 0x00d7
                           0000D7   909 _PSW_CY	=	0x00d7
                           000098   910 G$SCON0_RI$0$0 == 0x0098
                           000098   911 _SCON0_RI	=	0x0098
                           000099   912 G$SCON0_TI$0$0 == 0x0099
                           000099   913 _SCON0_TI	=	0x0099
                           00009A   914 G$SCON0_RB8$0$0 == 0x009a
                           00009A   915 _SCON0_RB8	=	0x009a
                           00009B   916 G$SCON0_TB8$0$0 == 0x009b
                           00009B   917 _SCON0_TB8	=	0x009b
                           00009C   918 G$SCON0_REN$0$0 == 0x009c
                           00009C   919 _SCON0_REN	=	0x009c
                           00009D   920 G$SCON0_MCE$0$0 == 0x009d
                           00009D   921 _SCON0_MCE	=	0x009d
                           00009F   922 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   923 _SCON0_SMODE	=	0x009f
                           0000C8   924 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   925 _SCON1_RI	=	0x00c8
                           0000C9   926 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   927 _SCON1_TI	=	0x00c9
                           0000CA   928 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   929 _SCON1_RBX	=	0x00ca
                           0000CB   930 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   931 _SCON1_TBX	=	0x00cb
                           0000CC   932 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   933 _SCON1_REN	=	0x00cc
                           0000CE   934 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   935 _SCON1_PERR	=	0x00ce
                           0000CF   936 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   937 _SCON1_OVR	=	0x00cf
                           0000C0   938 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   939 _SMB0CN0_SI	=	0x00c0
                           0000C1   940 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   941 _SMB0CN0_ACK	=	0x00c1
                           0000C2   942 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   943 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   944 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   945 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   946 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   947 _SMB0CN0_STO	=	0x00c4
                           0000C5   948 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   949 _SMB0CN0_STA	=	0x00c5
                           0000C6   950 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   951 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   952 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   953 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   954 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   955 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   956 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   957 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   958 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   959 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   960 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   961 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   962 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   963 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   964 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   965 _SPI0CN0_MODF	=	0x00fd
                           0000FE   966 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   967 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   968 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   969 _SPI0CN0_SPIF	=	0x00ff
                           000088   970 G$TCON_IT0$0$0 == 0x0088
                           000088   971 _TCON_IT0	=	0x0088
                           000089   972 G$TCON_IE0$0$0 == 0x0089
                           000089   973 _TCON_IE0	=	0x0089
                           00008A   974 G$TCON_IT1$0$0 == 0x008a
                           00008A   975 _TCON_IT1	=	0x008a
                           00008B   976 G$TCON_IE1$0$0 == 0x008b
                           00008B   977 _TCON_IE1	=	0x008b
                           00008C   978 G$TCON_TR0$0$0 == 0x008c
                           00008C   979 _TCON_TR0	=	0x008c
                           00008D   980 G$TCON_TF0$0$0 == 0x008d
                           00008D   981 _TCON_TF0	=	0x008d
                           00008E   982 G$TCON_TR1$0$0 == 0x008e
                           00008E   983 _TCON_TR1	=	0x008e
                           00008F   984 G$TCON_TF1$0$0 == 0x008f
                           00008F   985 _TCON_TF1	=	0x008f
                           0000C8   986 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   987 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   988 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   989 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   990 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   991 _TMR2CN0_TR2	=	0x00ca
                           0000CB   992 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   993 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   994 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   995 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   996 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   997 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   998 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE   999 _TMR2CN0_TF2L	=	0x00ce
                           0000CF  1000 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF  1001 _TMR2CN0_TF2H	=	0x00cf
                           000098  1002 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1003 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1004 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1005 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1006 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1007 _TMR4CN0_TR4	=	0x009a
                           00009B  1008 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1009 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1010 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1011 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1012 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1013 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1014 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1015 _TMR4CN0_TF4L	=	0x009e
                           00009F  1016 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1017 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1018 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1019 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1020 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1021 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1022 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1023 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1024 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1025 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1026 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1027 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1028 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1029 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1030 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1031 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1032 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1033 _UART1FCN1_TFRQ	=	0x00df
                           000095  1034 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1035 _U2F_BUTTON	=	0x0095
                           000096  1036 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1037 _U2F_BUTTON_VAL	=	0x0096
                           000091  1038 G$U2F_RED$0$0 == 0x0091
                           000091  1039 _U2F_RED	=	0x0091
                           000090  1040 G$U2F_GREEN$0$0 == 0x0090
                           000090  1041 _U2F_GREEN	=	0x0090
                           000087  1042 G$U2F_BLUE$0$0 == 0x0087
                           000087  1043 _U2F_BLUE	=	0x0087
                                   1044 ;--------------------------------------------------------
                                   1045 ; overlayable register banks
                                   1046 ;--------------------------------------------------------
                                   1047 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1048 	.ds 8
                                   1049 ;--------------------------------------------------------
                                   1050 ; internal ram data
                                   1051 ;--------------------------------------------------------
                                   1052 	.area DSEG    (DATA)
                           000000  1053 Latecc508a.atecc_send$params$1$130==.
      000015                       1054 _atecc_send_params_1_130:
      000015                       1055 	.ds 6
                                   1056 ;--------------------------------------------------------
                                   1057 ; overlayable items in internal ram 
                                   1058 ;--------------------------------------------------------
                                   1059 ;--------------------------------------------------------
                                   1060 ; indirectly addressable internal ram data
                                   1061 ;--------------------------------------------------------
                                   1062 	.area ISEG    (DATA)
                                   1063 ;--------------------------------------------------------
                                   1064 ; absolute internal ram data
                                   1065 ;--------------------------------------------------------
                                   1066 	.area IABS    (ABS,DATA)
                                   1067 	.area IABS    (ABS,DATA)
                                   1068 ;--------------------------------------------------------
                                   1069 ; bit data
                                   1070 ;--------------------------------------------------------
                                   1071 	.area BSEG    (BIT)
                                   1072 ;--------------------------------------------------------
                                   1073 ; paged external ram data
                                   1074 ;--------------------------------------------------------
                                   1075 	.area PSEG    (PAG,XDATA)
                                   1076 ;--------------------------------------------------------
                                   1077 ; external ram data
                                   1078 ;--------------------------------------------------------
                                   1079 	.area XSEG    (XDATA)
                                   1080 ;--------------------------------------------------------
                                   1081 ; absolute external ram data
                                   1082 ;--------------------------------------------------------
                                   1083 	.area XABS    (ABS,XDATA)
                                   1084 ;--------------------------------------------------------
                                   1085 ; external initialized ram data
                                   1086 ;--------------------------------------------------------
                                   1087 	.area XISEG   (XDATA)
                                   1088 	.area HOME    (CODE)
                                   1089 	.area GSINIT0 (CODE)
                                   1090 	.area GSINIT1 (CODE)
                                   1091 	.area GSINIT2 (CODE)
                                   1092 	.area GSINIT3 (CODE)
                                   1093 	.area GSINIT4 (CODE)
                                   1094 	.area GSINIT5 (CODE)
                                   1095 	.area GSINIT  (CODE)
                                   1096 	.area GSFINAL (CODE)
                                   1097 	.area CSEG    (CODE)
                                   1098 ;--------------------------------------------------------
                                   1099 ; global & static initialisations
                                   1100 ;--------------------------------------------------------
                                   1101 	.area HOME    (CODE)
                                   1102 	.area GSINIT  (CODE)
                                   1103 	.area GSFINAL (CODE)
                                   1104 	.area GSINIT  (CODE)
                                   1105 ;--------------------------------------------------------
                                   1106 ; Home
                                   1107 ;--------------------------------------------------------
                                   1108 	.area HOME    (CODE)
                                   1109 	.area HOME    (CODE)
                                   1110 ;--------------------------------------------------------
                                   1111 ; code
                                   1112 ;--------------------------------------------------------
                                   1113 	.area CSEG    (CODE)
                                   1114 ;------------------------------------------------------------
                                   1115 ;Allocation info for local variables in function 'atecc_send'
                                   1116 ;------------------------------------------------------------
                                   1117 ;p1                        Allocated to stack - _bp -3
                                   1118 ;p2                        Allocated to stack - _bp -5
                                   1119 ;buf                       Allocated to stack - _bp -8
                                   1120 ;len                       Allocated to stack - _bp -9
                                   1121 ;cmd                       Allocated to registers r7 
                                   1122 ;params                    Allocated with name '_atecc_send_params_1_130'
                                   1123 ;------------------------------------------------------------
                           000000  1124 	G$atecc_send$0$0 ==.
                           000000  1125 	C$atecc508a.c$41$0$0 ==.
                                   1126 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:41: int8_t atecc_send(uint8_t cmd, uint8_t p1, uint16_t p2,
                                   1127 ;	-----------------------------------------
                                   1128 ;	 function atecc_send
                                   1129 ;	-----------------------------------------
      001AE8                       1130 _atecc_send:
                           000007  1131 	ar7 = 0x07
                           000006  1132 	ar6 = 0x06
                           000005  1133 	ar5 = 0x05
                           000004  1134 	ar4 = 0x04
                           000003  1135 	ar3 = 0x03
                           000002  1136 	ar2 = 0x02
                           000001  1137 	ar1 = 0x01
                           000000  1138 	ar0 = 0x00
      001AE8 C0 1B            [24] 1139 	push	_bp
      001AEA 85 81 1B         [24] 1140 	mov	_bp,sp
      001AED AF 82            [24] 1141 	mov	r7,dpl
                           000007  1142 	C$atecc508a.c$45$1$130 ==.
                                   1143 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:45: params[0] = 0x3;
      001AEF 75 15 03         [24] 1144 	mov	_atecc_send_params_1_130,#0x03
                           00000A  1145 	C$atecc508a.c$46$1$130 ==.
                                   1146 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:46: params[1] = 7+len;
      001AF2 E5 1B            [12] 1147 	mov	a,_bp
      001AF4 24 F7            [12] 1148 	add	a,#0xf7
      001AF6 F8               [12] 1149 	mov	r0,a
      001AF7 74 07            [12] 1150 	mov	a,#0x07
      001AF9 26               [12] 1151 	add	a,@r0
      001AFA F5 16            [12] 1152 	mov	(_atecc_send_params_1_130 + 0x0001),a
                           000014  1153 	C$atecc508a.c$47$1$130 ==.
                                   1154 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:47: params[2] = cmd;
      001AFC 8F 17            [24] 1155 	mov	(_atecc_send_params_1_130 + 0x0002),r7
                           000016  1156 	C$atecc508a.c$48$1$130 ==.
                                   1157 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:48: params[3] = p1;
      001AFE E5 1B            [12] 1158 	mov	a,_bp
      001B00 24 FD            [12] 1159 	add	a,#0xfd
      001B02 F8               [12] 1160 	mov	r0,a
      001B03 86 18            [24] 1161 	mov	(_atecc_send_params_1_130 + 0x0003),@r0
                           00001D  1162 	C$atecc508a.c$49$1$130 ==.
                                   1163 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:49: params[4] = ((uint8_t*)&p2)[1];
      001B05 E5 1B            [12] 1164 	mov	a,_bp
      001B07 24 FB            [12] 1165 	add	a,#0xfb
      001B09 FF               [12] 1166 	mov	r7,a
      001B0A FE               [12] 1167 	mov	r6,a
      001B0B EE               [12] 1168 	mov	a,r6
      001B0C 04               [12] 1169 	inc	a
      001B0D F9               [12] 1170 	mov	r1,a
      001B0E 87 06            [24] 1171 	mov	ar6,@r1
      001B10 8E 19            [24] 1172 	mov	(_atecc_send_params_1_130 + 0x0004),r6
                           00002A  1173 	C$atecc508a.c$50$1$130 ==.
                                   1174 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:50: params[5] = ((uint8_t* )&p2)[0];
      001B12 8F 01            [24] 1175 	mov	ar1,r7
      001B14 87 07            [24] 1176 	mov	ar7,@r1
      001B16 8F 1A            [24] 1177 	mov	(_atecc_send_params_1_130 + 0x0005),r7
                           000030  1178 	C$atecc508a.c$52$1$130 ==.
                                   1179 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:52: smb_set_ext_write(buf, len);
      001B18 E5 1B            [12] 1180 	mov	a,_bp
      001B1A 24 F7            [12] 1181 	add	a,#0xf7
      001B1C F8               [12] 1182 	mov	r0,a
      001B1D E6               [12] 1183 	mov	a,@r0
      001B1E C0 E0            [24] 1184 	push	acc
      001B20 E5 1B            [12] 1185 	mov	a,_bp
      001B22 24 F8            [12] 1186 	add	a,#0xf8
      001B24 F8               [12] 1187 	mov	r0,a
      001B25 86 82            [24] 1188 	mov	dpl,@r0
      001B27 08               [12] 1189 	inc	r0
      001B28 86 83            [24] 1190 	mov	dph,@r0
      001B2A 08               [12] 1191 	inc	r0
      001B2B 86 F0            [24] 1192 	mov	b,@r0
      001B2D 12 18 F9         [24] 1193 	lcall	_smb_set_ext_write
      001B30 15 81            [12] 1194 	dec	sp
                           00004A  1195 	C$atecc508a.c$53$1$130 ==.
                                   1196 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:53: smb_write( ATECC508A_ADDR, params, sizeof(params));
      001B32 74 06            [12] 1197 	mov	a,#0x06
      001B34 C0 E0            [24] 1198 	push	acc
      001B36 74 15            [12] 1199 	mov	a,#_atecc_send_params_1_130
      001B38 C0 E0            [24] 1200 	push	acc
      001B3A 74 00            [12] 1201 	mov	a,#(_atecc_send_params_1_130 >> 8)
      001B3C C0 E0            [24] 1202 	push	acc
      001B3E 74 40            [12] 1203 	mov	a,#0x40
      001B40 C0 E0            [24] 1204 	push	acc
      001B42 75 82 C0         [24] 1205 	mov	dpl,#0xc0
      001B45 12 18 B0         [24] 1206 	lcall	_smb_write
      001B48 E5 81            [12] 1207 	mov	a,sp
      001B4A 24 FC            [12] 1208 	add	a,#0xfc
      001B4C F5 81            [12] 1209 	mov	sp,a
                           000066  1210 	C$atecc508a.c$54$1$130 ==.
                                   1211 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:54: if (SMB_WAS_NACKED())
      001B4E E5 14            [12] 1212 	mov	a,_SMB_FLAGS
      001B50 30 E6 05         [24] 1213 	jnb	acc.6,00102$
                           00006B  1214 	C$atecc508a.c$56$2$131 ==.
                                   1215 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:56: return -1;
      001B53 75 82 FF         [24] 1216 	mov	dpl,#0xff
      001B56 80 03            [24] 1217 	sjmp	00103$
      001B58                       1218 00102$:
                           000070  1219 	C$atecc508a.c$58$1$130 ==.
                                   1220 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:58: return 0;
      001B58 75 82 00         [24] 1221 	mov	dpl,#0x00
      001B5B                       1222 00103$:
      001B5B D0 1B            [24] 1223 	pop	_bp
                           000075  1224 	C$atecc508a.c$59$1$130 ==.
                           000075  1225 	XG$atecc_send$0$0 ==.
      001B5D 22               [24] 1226 	ret
                                   1227 ;------------------------------------------------------------
                                   1228 ;Allocation info for local variables in function 'atecc_idle'
                                   1229 ;------------------------------------------------------------
                           000076  1230 	G$atecc_idle$0$0 ==.
                           000076  1231 	C$atecc508a.c$61$1$130 ==.
                                   1232 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:61: void atecc_idle()
                                   1233 ;	-----------------------------------------
                                   1234 ;	 function atecc_idle
                                   1235 ;	-----------------------------------------
      001B5E                       1236 _atecc_idle:
                           000076  1237 	C$atecc508a.c$63$1$132 ==.
                                   1238 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:63: smb_write( ATECC508A_ADDR, "\x02", 1);
      001B5E 74 01            [12] 1239 	mov	a,#0x01
      001B60 C0 E0            [24] 1240 	push	acc
      001B62 74 9B            [12] 1241 	mov	a,#___str_0
      001B64 C0 E0            [24] 1242 	push	acc
      001B66 74 5E            [12] 1243 	mov	a,#(___str_0 >> 8)
      001B68 C0 E0            [24] 1244 	push	acc
      001B6A 74 80            [12] 1245 	mov	a,#0x80
      001B6C C0 E0            [24] 1246 	push	acc
      001B6E 75 82 C0         [24] 1247 	mov	dpl,#0xc0
      001B71 12 18 B0         [24] 1248 	lcall	_smb_write
      001B74 E5 81            [12] 1249 	mov	a,sp
      001B76 24 FC            [12] 1250 	add	a,#0xfc
      001B78 F5 81            [12] 1251 	mov	sp,a
                           000092  1252 	C$atecc508a.c$64$1$132 ==.
                           000092  1253 	XG$atecc_idle$0$0 ==.
      001B7A 22               [24] 1254 	ret
                                   1255 ;------------------------------------------------------------
                                   1256 ;Allocation info for local variables in function 'atecc_sleep'
                                   1257 ;------------------------------------------------------------
                           000093  1258 	G$atecc_sleep$0$0 ==.
                           000093  1259 	C$atecc508a.c$66$1$132 ==.
                                   1260 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:66: void atecc_sleep()
                                   1261 ;	-----------------------------------------
                                   1262 ;	 function atecc_sleep
                                   1263 ;	-----------------------------------------
      001B7B                       1264 _atecc_sleep:
                           000093  1265 	C$atecc508a.c$68$1$133 ==.
                                   1266 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:68: smb_write( ATECC508A_ADDR, "\x01", 1);
      001B7B 74 01            [12] 1267 	mov	a,#0x01
      001B7D C0 E0            [24] 1268 	push	acc
      001B7F 74 9D            [12] 1269 	mov	a,#___str_1
      001B81 C0 E0            [24] 1270 	push	acc
      001B83 74 5E            [12] 1271 	mov	a,#(___str_1 >> 8)
      001B85 C0 E0            [24] 1272 	push	acc
      001B87 74 80            [12] 1273 	mov	a,#0x80
      001B89 C0 E0            [24] 1274 	push	acc
      001B8B 75 82 C0         [24] 1275 	mov	dpl,#0xc0
      001B8E 12 18 B0         [24] 1276 	lcall	_smb_write
      001B91 E5 81            [12] 1277 	mov	a,sp
      001B93 24 FC            [12] 1278 	add	a,#0xfc
      001B95 F5 81            [12] 1279 	mov	sp,a
                           0000AF  1280 	C$atecc508a.c$69$1$133 ==.
                           0000AF  1281 	XG$atecc_sleep$0$0 ==.
      001B97 22               [24] 1282 	ret
                                   1283 ;------------------------------------------------------------
                                   1284 ;Allocation info for local variables in function 'atecc_wake'
                                   1285 ;------------------------------------------------------------
                           0000B0  1286 	G$atecc_wake$0$0 ==.
                           0000B0  1287 	C$atecc508a.c$71$1$133 ==.
                                   1288 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:71: void atecc_wake()
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function atecc_wake
                                   1291 ;	-----------------------------------------
      001B98                       1292 _atecc_wake:
                           0000B0  1293 	C$atecc508a.c$73$1$134 ==.
                                   1294 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:73: smb_write( ATECC508A_ADDR, "\0\0", 2);
      001B98 74 02            [12] 1295 	mov	a,#0x02
      001B9A C0 E0            [24] 1296 	push	acc
      001B9C 74 9F            [12] 1297 	mov	a,#___str_2
      001B9E C0 E0            [24] 1298 	push	acc
      001BA0 74 5E            [12] 1299 	mov	a,#(___str_2 >> 8)
      001BA2 C0 E0            [24] 1300 	push	acc
      001BA4 74 80            [12] 1301 	mov	a,#0x80
      001BA6 C0 E0            [24] 1302 	push	acc
      001BA8 75 82 C0         [24] 1303 	mov	dpl,#0xc0
      001BAB 12 18 B0         [24] 1304 	lcall	_smb_write
      001BAE E5 81            [12] 1305 	mov	a,sp
      001BB0 24 FC            [12] 1306 	add	a,#0xfc
      001BB2 F5 81            [12] 1307 	mov	sp,a
                           0000CC  1308 	C$atecc508a.c$74$1$134 ==.
                           0000CC  1309 	XG$atecc_wake$0$0 ==.
      001BB4 22               [24] 1310 	ret
                                   1311 ;------------------------------------------------------------
                                   1312 ;Allocation info for local variables in function 'atecc_recv'
                                   1313 ;------------------------------------------------------------
                                   1314 ;buflen                    Allocated to stack - _bp -3
                                   1315 ;res                       Allocated to stack - _bp -6
                                   1316 ;buf                       Allocated to stack - _bp +1
                                   1317 ;pkt_len                   Allocated to stack - _bp +4
                                   1318 ;------------------------------------------------------------
                           0000CD  1319 	G$atecc_recv$0$0 ==.
                           0000CD  1320 	C$atecc508a.c$78$1$134 ==.
                                   1321 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:78: int8_t atecc_recv(uint8_t * buf, uint8_t buflen, struct atecc_response* res)
                                   1322 ;	-----------------------------------------
                                   1323 ;	 function atecc_recv
                                   1324 ;	-----------------------------------------
      001BB5                       1325 _atecc_recv:
      001BB5 C0 1B            [24] 1326 	push	_bp
      001BB7 85 81 1B         [24] 1327 	mov	_bp,sp
      001BBA C0 82            [24] 1328 	push	dpl
      001BBC C0 83            [24] 1329 	push	dph
      001BBE C0 F0            [24] 1330 	push	b
      001BC0 05 81            [12] 1331 	inc	sp
                           0000DA  1332 	C$atecc508a.c$81$1$136 ==.
                                   1333 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:81: pkt_len = smb_read( ATECC508A_ADDR,buf,buflen);
      001BC2 E5 1B            [12] 1334 	mov	a,_bp
      001BC4 24 FD            [12] 1335 	add	a,#0xfd
      001BC6 F8               [12] 1336 	mov	r0,a
      001BC7 E6               [12] 1337 	mov	a,@r0
      001BC8 C0 E0            [24] 1338 	push	acc
      001BCA A8 1B            [24] 1339 	mov	r0,_bp
      001BCC 08               [12] 1340 	inc	r0
      001BCD E6               [12] 1341 	mov	a,@r0
      001BCE C0 E0            [24] 1342 	push	acc
      001BD0 08               [12] 1343 	inc	r0
      001BD1 E6               [12] 1344 	mov	a,@r0
      001BD2 C0 E0            [24] 1345 	push	acc
      001BD4 08               [12] 1346 	inc	r0
      001BD5 E6               [12] 1347 	mov	a,@r0
      001BD6 C0 E0            [24] 1348 	push	acc
      001BD8 75 82 C0         [24] 1349 	mov	dpl,#0xc0
      001BDB 12 18 65         [24] 1350 	lcall	_smb_read
      001BDE AC 82            [24] 1351 	mov	r4,dpl
      001BE0 E5 81            [12] 1352 	mov	a,sp
      001BE2 24 FC            [12] 1353 	add	a,#0xfc
      001BE4 F5 81            [12] 1354 	mov	sp,a
      001BE6 E5 1B            [12] 1355 	mov	a,_bp
      001BE8 24 04            [12] 1356 	add	a,#0x04
      001BEA F8               [12] 1357 	mov	r0,a
      001BEB A6 04            [24] 1358 	mov	@r0,ar4
                           000105  1359 	C$atecc508a.c$82$1$136 ==.
                                   1360 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:82: if (SMB_WAS_NACKED())
      001BED E5 14            [12] 1361 	mov	a,_SMB_FLAGS
      001BEF 30 E6 06         [24] 1362 	jnb	acc.6,00102$
                           00010A  1363 	C$atecc508a.c$84$2$137 ==.
                                   1364 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:84: return -1;
      001BF2 75 82 FF         [24] 1365 	mov	dpl,#0xff
      001BF5 02 1C F2         [24] 1366 	ljmp	00116$
      001BF8                       1367 00102$:
                           000110  1368 	C$atecc508a.c$87$1$136 ==.
                                   1369 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:87: if (SMB_FLAGS & SMB_READ_TRUNC)
      001BF8 E5 14            [12] 1370 	mov	a,_SMB_FLAGS
      001BFA 30 E4 06         [24] 1371 	jnb	acc.4,00104$
                           000115  1372 	C$atecc508a.c$89$2$138 ==.
                                   1373 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:89: set_app_error(ERROR_READ_TRUNCATED);
      001BFD 75 82 06         [24] 1374 	mov	dpl,#0x06
      001C00 12 00 A4         [24] 1375 	lcall	_set_app_error
      001C03                       1376 00104$:
                           00011B  1377 	C$atecc508a.c$92$1$136 ==.
                                   1378 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:92: if (pkt_len <= buflen && pkt_len >= 4)
      001C03 E5 1B            [12] 1379 	mov	a,_bp
      001C05 24 04            [12] 1380 	add	a,#0x04
      001C07 F8               [12] 1381 	mov	r0,a
      001C08 E5 1B            [12] 1382 	mov	a,_bp
      001C0A 24 FD            [12] 1383 	add	a,#0xfd
      001C0C F9               [12] 1384 	mov	r1,a
      001C0D C3               [12] 1385 	clr	c
      001C0E E7               [12] 1386 	mov	a,@r1
      001C0F 96               [12] 1387 	subb	a,@r0
      001C10 40 51            [24] 1388 	jc	00108$
      001C12 E5 1B            [12] 1389 	mov	a,_bp
      001C14 24 04            [12] 1390 	add	a,#0x04
      001C16 F8               [12] 1391 	mov	r0,a
      001C17 B6 04 00         [24] 1392 	cjne	@r0,#0x04,00145$
      001C1A                       1393 00145$:
      001C1A 40 47            [24] 1394 	jc	00108$
                           000134  1395 	C$atecc508a.c$94$2$139 ==.
                                   1396 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:94: if (PKT_CRC(buf,pkt_len) != SMB_crc)
      001C1C A8 1B            [24] 1397 	mov	r0,_bp
      001C1E 08               [12] 1398 	inc	r0
      001C1F E5 1B            [12] 1399 	mov	a,_bp
      001C21 24 04            [12] 1400 	add	a,#0x04
      001C23 F9               [12] 1401 	mov	r1,a
      001C24 E7               [12] 1402 	mov	a,@r1
      001C25 26               [12] 1403 	add	a,@r0
      001C26 FA               [12] 1404 	mov	r2,a
      001C27 E4               [12] 1405 	clr	a
      001C28 08               [12] 1406 	inc	r0
      001C29 36               [12] 1407 	addc	a,@r0
      001C2A FB               [12] 1408 	mov	r3,a
      001C2B 08               [12] 1409 	inc	r0
      001C2C 86 07            [24] 1410 	mov	ar7,@r0
      001C2E EA               [12] 1411 	mov	a,r2
      001C2F 24 FE            [12] 1412 	add	a,#0xfe
      001C31 FA               [12] 1413 	mov	r2,a
      001C32 EB               [12] 1414 	mov	a,r3
      001C33 34 FF            [12] 1415 	addc	a,#0xff
      001C35 FB               [12] 1416 	mov	r3,a
      001C36 8A 82            [24] 1417 	mov	dpl,r2
      001C38 8B 83            [24] 1418 	mov	dph,r3
      001C3A 8F F0            [24] 1419 	mov	b,r7
      001C3C 12 5E 3E         [24] 1420 	lcall	__gptrget
      001C3F FA               [12] 1421 	mov	r2,a
      001C40 A3               [24] 1422 	inc	dptr
      001C41 12 5E 3E         [24] 1423 	lcall	__gptrget
      001C44 FB               [12] 1424 	mov	r3,a
      001C45 90 02 F9         [24] 1425 	mov	dptr,#_SMB_crc
      001C48 E0               [24] 1426 	movx	a,@dptr
      001C49 FE               [12] 1427 	mov	r6,a
      001C4A A3               [24] 1428 	inc	dptr
      001C4B E0               [24] 1429 	movx	a,@dptr
      001C4C FF               [12] 1430 	mov	r7,a
      001C4D EA               [12] 1431 	mov	a,r2
      001C4E B5 06 06         [24] 1432 	cjne	a,ar6,00147$
      001C51 EB               [12] 1433 	mov	a,r3
      001C52 B5 07 02         [24] 1434 	cjne	a,ar7,00147$
      001C55 80 18            [24] 1435 	sjmp	00109$
      001C57                       1436 00147$:
                           00016F  1437 	C$atecc508a.c$96$3$140 ==.
                                   1438 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:96: set_app_error(ERROR_I2C_CRC);
      001C57 75 82 15         [24] 1439 	mov	dpl,#0x15
      001C5A 12 00 A4         [24] 1440 	lcall	_set_app_error
                           000175  1441 	C$atecc508a.c$97$3$140 ==.
                                   1442 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:97: return -1;
      001C5D 75 82 FF         [24] 1443 	mov	dpl,#0xff
      001C60 02 1C F2         [24] 1444 	ljmp	00116$
      001C63                       1445 00108$:
                           00017B  1446 	C$atecc508a.c$102$2$141 ==.
                                   1447 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:102: set_app_error(ERROR_I2C_BAD_LEN);
      001C63 75 82 16         [24] 1448 	mov	dpl,#0x16
      001C66 12 00 A4         [24] 1449 	lcall	_set_app_error
                           000181  1450 	C$atecc508a.c$103$2$141 ==.
                                   1451 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:103: return -1;
      001C69 75 82 FF         [24] 1452 	mov	dpl,#0xff
      001C6C 02 1C F2         [24] 1453 	ljmp	00116$
      001C6F                       1454 00109$:
                           000187  1455 	C$atecc508a.c$106$1$136 ==.
                                   1456 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:106: if (pkt_len == 4 && buf[1] != 0)
      001C6F E5 1B            [12] 1457 	mov	a,_bp
      001C71 24 04            [12] 1458 	add	a,#0x04
      001C73 F8               [12] 1459 	mov	r0,a
      001C74 B6 04 24         [24] 1460 	cjne	@r0,#0x04,00112$
      001C77 A8 1B            [24] 1461 	mov	r0,_bp
      001C79 08               [12] 1462 	inc	r0
      001C7A 74 01            [12] 1463 	mov	a,#0x01
      001C7C 26               [12] 1464 	add	a,@r0
      001C7D FD               [12] 1465 	mov	r5,a
      001C7E E4               [12] 1466 	clr	a
      001C7F 08               [12] 1467 	inc	r0
      001C80 36               [12] 1468 	addc	a,@r0
      001C81 FE               [12] 1469 	mov	r6,a
      001C82 08               [12] 1470 	inc	r0
      001C83 86 07            [24] 1471 	mov	ar7,@r0
      001C85 8D 82            [24] 1472 	mov	dpl,r5
      001C87 8E 83            [24] 1473 	mov	dph,r6
      001C89 8F F0            [24] 1474 	mov	b,r7
      001C8B 12 5E 3E         [24] 1475 	lcall	__gptrget
      001C8E FF               [12] 1476 	mov	r7,a
      001C8F 60 0A            [24] 1477 	jz	00112$
                           0001A9  1478 	C$atecc508a.c$108$2$142 ==.
                                   1479 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:108: set_app_error(buf[1]);
      001C91 8F 82            [24] 1480 	mov	dpl,r7
      001C93 12 00 A4         [24] 1481 	lcall	_set_app_error
                           0001AE  1482 	C$atecc508a.c$109$2$142 ==.
                                   1483 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:109: return -1;
      001C96 75 82 FF         [24] 1484 	mov	dpl,#0xff
      001C99 80 57            [24] 1485 	sjmp	00116$
      001C9B                       1486 00112$:
                           0001B3  1487 	C$atecc508a.c$112$1$136 ==.
                                   1488 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:112: if (res != NULL)
      001C9B E5 1B            [12] 1489 	mov	a,_bp
      001C9D 24 FA            [12] 1490 	add	a,#0xfa
      001C9F F8               [12] 1491 	mov	r0,a
      001CA0 E6               [12] 1492 	mov	a,@r0
      001CA1 08               [12] 1493 	inc	r0
      001CA2 46               [12] 1494 	orl	a,@r0
      001CA3 60 46            [24] 1495 	jz	00115$
                           0001BD  1496 	C$atecc508a.c$114$2$143 ==.
                                   1497 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:114: res->len = pkt_len - 3;
      001CA5 E5 1B            [12] 1498 	mov	a,_bp
      001CA7 24 FA            [12] 1499 	add	a,#0xfa
      001CA9 F8               [12] 1500 	mov	r0,a
      001CAA 86 05            [24] 1501 	mov	ar5,@r0
      001CAC 08               [12] 1502 	inc	r0
      001CAD 86 06            [24] 1503 	mov	ar6,@r0
      001CAF 08               [12] 1504 	inc	r0
      001CB0 86 07            [24] 1505 	mov	ar7,@r0
      001CB2 E5 1B            [12] 1506 	mov	a,_bp
      001CB4 24 04            [12] 1507 	add	a,#0x04
      001CB6 F8               [12] 1508 	mov	r0,a
      001CB7 E6               [12] 1509 	mov	a,@r0
      001CB8 24 FD            [12] 1510 	add	a,#0xfd
      001CBA FB               [12] 1511 	mov	r3,a
      001CBB 8D 82            [24] 1512 	mov	dpl,r5
      001CBD 8E 83            [24] 1513 	mov	dph,r6
      001CBF 8F F0            [24] 1514 	mov	b,r7
      001CC1 12 5A 48         [24] 1515 	lcall	__gptrput
                           0001DC  1516 	C$atecc508a.c$115$2$143 ==.
                                   1517 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:115: res->buf = buf+1;
      001CC4 0D               [12] 1518 	inc	r5
      001CC5 BD 00 01         [24] 1519 	cjne	r5,#0x00,00152$
      001CC8 0E               [12] 1520 	inc	r6
      001CC9                       1521 00152$:
      001CC9 A8 1B            [24] 1522 	mov	r0,_bp
      001CCB 08               [12] 1523 	inc	r0
      001CCC 74 01            [12] 1524 	mov	a,#0x01
      001CCE 26               [12] 1525 	add	a,@r0
      001CCF FA               [12] 1526 	mov	r2,a
      001CD0 E4               [12] 1527 	clr	a
      001CD1 08               [12] 1528 	inc	r0
      001CD2 36               [12] 1529 	addc	a,@r0
      001CD3 FB               [12] 1530 	mov	r3,a
      001CD4 08               [12] 1531 	inc	r0
      001CD5 86 04            [24] 1532 	mov	ar4,@r0
      001CD7 8D 82            [24] 1533 	mov	dpl,r5
      001CD9 8E 83            [24] 1534 	mov	dph,r6
      001CDB 8F F0            [24] 1535 	mov	b,r7
      001CDD EA               [12] 1536 	mov	a,r2
      001CDE 12 5A 48         [24] 1537 	lcall	__gptrput
      001CE1 A3               [24] 1538 	inc	dptr
      001CE2 EB               [12] 1539 	mov	a,r3
      001CE3 12 5A 48         [24] 1540 	lcall	__gptrput
      001CE6 A3               [24] 1541 	inc	dptr
      001CE7 EC               [12] 1542 	mov	a,r4
      001CE8 12 5A 48         [24] 1543 	lcall	__gptrput
      001CEB                       1544 00115$:
                           000203  1545 	C$atecc508a.c$117$1$136 ==.
                                   1546 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:117: return pkt_len;
      001CEB E5 1B            [12] 1547 	mov	a,_bp
      001CED 24 04            [12] 1548 	add	a,#0x04
      001CEF F8               [12] 1549 	mov	r0,a
      001CF0 86 82            [24] 1550 	mov	dpl,@r0
      001CF2                       1551 00116$:
      001CF2 85 1B 81         [24] 1552 	mov	sp,_bp
      001CF5 D0 1B            [24] 1553 	pop	_bp
                           00020F  1554 	C$atecc508a.c$118$1$136 ==.
                           00020F  1555 	XG$atecc_recv$0$0 ==.
      001CF7 22               [24] 1556 	ret
                                   1557 ;------------------------------------------------------------
                                   1558 ;Allocation info for local variables in function 'delay_cmd'
                                   1559 ;------------------------------------------------------------
                                   1560 ;cmd                       Allocated to registers r7 
                                   1561 ;d                         Allocated to registers r7 
                                   1562 ;------------------------------------------------------------
                           000210  1563 	Fatecc508a$delay_cmd$0$0 ==.
                           000210  1564 	C$atecc508a.c$120$1$136 ==.
                                   1565 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:120: static void delay_cmd(uint8_t cmd)
                                   1566 ;	-----------------------------------------
                                   1567 ;	 function delay_cmd
                                   1568 ;	-----------------------------------------
      001CF8                       1569 _delay_cmd:
      001CF8 AF 82            [24] 1570 	mov	r7,dpl
                           000212  1571 	C$atecc508a.c$123$1$145 ==.
                                   1572 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:123: switch(cmd)
      001CFA BF 40 02         [24] 1573 	cjne	r7,#0x40,00113$
      001CFD 80 07            [24] 1574 	sjmp	00102$
      001CFF                       1575 00113$:
      001CFF BF 41 08         [24] 1576 	cjne	r7,#0x41,00103$
                           00021A  1577 	C$atecc508a.c$126$2$146 ==.
                                   1578 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:126: d = 50;
      001D02 7F 32            [12] 1579 	mov	r7,#0x32
                           00021C  1580 	C$atecc508a.c$127$2$146 ==.
                                   1581 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:127: break;
                           00021C  1582 	C$atecc508a.c$128$2$146 ==.
                                   1583 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:128: case ATECC_CMD_GENKEY:
      001D04 80 06            [24] 1584 	sjmp	00104$
      001D06                       1585 00102$:
                           00021E  1586 	C$atecc508a.c$129$2$146 ==.
                                   1587 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:129: d = 100;
      001D06 7F 64            [12] 1588 	mov	r7,#0x64
                           000220  1589 	C$atecc508a.c$130$2$146 ==.
                                   1590 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:130: break;
                           000220  1591 	C$atecc508a.c$131$2$146 ==.
                                   1592 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:131: default:
      001D08 80 02            [24] 1593 	sjmp	00104$
      001D0A                       1594 00103$:
                           000222  1595 	C$atecc508a.c$132$2$146 ==.
                                   1596 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:132: d = 32;
      001D0A 7F 20            [12] 1597 	mov	r7,#0x20
                           000224  1598 	C$atecc508a.c$134$1$145 ==.
                                   1599 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:134: }
      001D0C                       1600 00104$:
                           000224  1601 	C$atecc508a.c$135$1$145 ==.
                                   1602 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:135: u2f_delay(d);
      001D0C 7E 00            [12] 1603 	mov	r6,#0x00
      001D0E 7D 00            [12] 1604 	mov	r5,#0x00
      001D10 7C 00            [12] 1605 	mov	r4,#0x00
      001D12 8F 82            [24] 1606 	mov	dpl,r7
      001D14 8E 83            [24] 1607 	mov	dph,r6
      001D16 8D F0            [24] 1608 	mov	b,r5
      001D18 EC               [12] 1609 	mov	a,r4
      001D19 12 1E 24         [24] 1610 	lcall	_u2f_delay
                           000234  1611 	C$atecc508a.c$136$1$145 ==.
                           000234  1612 	XFatecc508a$delay_cmd$0$0 ==.
      001D1C 22               [24] 1613 	ret
                                   1614 ;------------------------------------------------------------
                                   1615 ;Allocation info for local variables in function 'atecc_send_recv'
                                   1616 ;------------------------------------------------------------
                                   1617 ;p1                        Allocated to stack - _bp -3
                                   1618 ;p2                        Allocated to stack - _bp -5
                                   1619 ;tx                        Allocated to stack - _bp -8
                                   1620 ;txlen                     Allocated to stack - _bp -9
                                   1621 ;rx                        Allocated to stack - _bp -12
                                   1622 ;rxlen                     Allocated to stack - _bp -13
                                   1623 ;res                       Allocated to stack - _bp -16
                                   1624 ;cmd                       Allocated to registers r7 
                                   1625 ;errors                    Allocated to registers r6 
                                   1626 ;------------------------------------------------------------
                           000235  1627 	G$atecc_send_recv$0$0 ==.
                           000235  1628 	C$atecc508a.c$138$1$145 ==.
                                   1629 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:138: int8_t atecc_send_recv(uint8_t cmd, uint8_t p1, uint16_t p2,
                                   1630 ;	-----------------------------------------
                                   1631 ;	 function atecc_send_recv
                                   1632 ;	-----------------------------------------
      001D1D                       1633 _atecc_send_recv:
      001D1D C0 1B            [24] 1634 	push	_bp
      001D1F 85 81 1B         [24] 1635 	mov	_bp,sp
      001D22 AF 82            [24] 1636 	mov	r7,dpl
                           00023C  1637 	C$atecc508a.c$142$1$145 ==.
                                   1638 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:142: uint8_t errors = 0;
      001D24 7E 00            [12] 1639 	mov	r6,#0x00
                           00023E  1640 	C$atecc508a.c$143$1$148 ==.
                                   1641 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:143: atecc_wake();
      001D26 C0 07            [24] 1642 	push	ar7
      001D28 C0 06            [24] 1643 	push	ar6
      001D2A 12 1B 98         [24] 1644 	lcall	_atecc_wake
      001D2D D0 06            [24] 1645 	pop	ar6
      001D2F D0 07            [24] 1646 	pop	ar7
                           000249  1647 	C$atecc508a.c$145$1$148 ==.
                                   1648 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:145: while(atecc_send(cmd, p1, p2, tx, txlen) == -1)
      001D31                       1649 00104$:
      001D31 C0 07            [24] 1650 	push	ar7
      001D33 C0 06            [24] 1651 	push	ar6
      001D35 E5 1B            [12] 1652 	mov	a,_bp
      001D37 24 F7            [12] 1653 	add	a,#0xf7
      001D39 F8               [12] 1654 	mov	r0,a
      001D3A E6               [12] 1655 	mov	a,@r0
      001D3B C0 E0            [24] 1656 	push	acc
      001D3D E5 1B            [12] 1657 	mov	a,_bp
      001D3F 24 F8            [12] 1658 	add	a,#0xf8
      001D41 F8               [12] 1659 	mov	r0,a
      001D42 E6               [12] 1660 	mov	a,@r0
      001D43 C0 E0            [24] 1661 	push	acc
      001D45 08               [12] 1662 	inc	r0
      001D46 E6               [12] 1663 	mov	a,@r0
      001D47 C0 E0            [24] 1664 	push	acc
      001D49 08               [12] 1665 	inc	r0
      001D4A E6               [12] 1666 	mov	a,@r0
      001D4B C0 E0            [24] 1667 	push	acc
      001D4D E5 1B            [12] 1668 	mov	a,_bp
      001D4F 24 FB            [12] 1669 	add	a,#0xfb
      001D51 F8               [12] 1670 	mov	r0,a
      001D52 E6               [12] 1671 	mov	a,@r0
      001D53 C0 E0            [24] 1672 	push	acc
      001D55 08               [12] 1673 	inc	r0
      001D56 E6               [12] 1674 	mov	a,@r0
      001D57 C0 E0            [24] 1675 	push	acc
      001D59 E5 1B            [12] 1676 	mov	a,_bp
      001D5B 24 FD            [12] 1677 	add	a,#0xfd
      001D5D F8               [12] 1678 	mov	r0,a
      001D5E E6               [12] 1679 	mov	a,@r0
      001D5F C0 E0            [24] 1680 	push	acc
      001D61 8F 82            [24] 1681 	mov	dpl,r7
      001D63 12 1A E8         [24] 1682 	lcall	_atecc_send
      001D66 AD 82            [24] 1683 	mov	r5,dpl
      001D68 E5 81            [12] 1684 	mov	a,sp
      001D6A 24 F9            [12] 1685 	add	a,#0xf9
      001D6C F5 81            [12] 1686 	mov	sp,a
      001D6E D0 06            [24] 1687 	pop	ar6
      001D70 D0 07            [24] 1688 	pop	ar7
      001D72 BD FF 1D         [24] 1689 	cjne	r5,#0xff,00123$
                           00028D  1690 	C$atecc508a.c$147$2$149 ==.
                                   1691 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:147: u2f_delay(10);
      001D75 90 00 0A         [24] 1692 	mov	dptr,#(0x0a&0x00ff)
      001D78 E4               [12] 1693 	clr	a
      001D79 F5 F0            [12] 1694 	mov	b,a
      001D7B C0 07            [24] 1695 	push	ar7
      001D7D C0 06            [24] 1696 	push	ar6
      001D7F 12 1E 24         [24] 1697 	lcall	_u2f_delay
      001D82 D0 06            [24] 1698 	pop	ar6
      001D84 D0 07            [24] 1699 	pop	ar7
                           00029E  1700 	C$atecc508a.c$148$2$149 ==.
                                   1701 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:148: errors++;
      001D86 0E               [12] 1702 	inc	r6
                           00029F  1703 	C$atecc508a.c$149$2$149 ==.
                                   1704 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:149: if (errors > 8)
      001D87 EE               [12] 1705 	mov	a,r6
      001D88 24 F7            [12] 1706 	add	a,#0xff - 0x08
      001D8A 50 A5            [24] 1707 	jnc	00104$
                           0002A4  1708 	C$atecc508a.c$151$3$150 ==.
                                   1709 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:151: return -1;
      001D8C 75 82 FF         [24] 1710 	mov	dpl,#0xff
      001D8F 02 1E 21         [24] 1711 	ljmp	00115$
                           0002AA  1712 	C$atecc508a.c$154$1$148 ==.
                                   1713 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:154: while(atecc_recv(rx,rxlen, res) == -1)
      001D92                       1714 00123$:
      001D92 8E 05            [24] 1715 	mov	ar5,r6
      001D94                       1716 00112$:
      001D94 C0 07            [24] 1717 	push	ar7
      001D96 C0 05            [24] 1718 	push	ar5
      001D98 E5 1B            [12] 1719 	mov	a,_bp
      001D9A 24 F0            [12] 1720 	add	a,#0xf0
      001D9C F8               [12] 1721 	mov	r0,a
      001D9D E6               [12] 1722 	mov	a,@r0
      001D9E C0 E0            [24] 1723 	push	acc
      001DA0 08               [12] 1724 	inc	r0
      001DA1 E6               [12] 1725 	mov	a,@r0
      001DA2 C0 E0            [24] 1726 	push	acc
      001DA4 08               [12] 1727 	inc	r0
      001DA5 E6               [12] 1728 	mov	a,@r0
      001DA6 C0 E0            [24] 1729 	push	acc
      001DA8 E5 1B            [12] 1730 	mov	a,_bp
      001DAA 24 F3            [12] 1731 	add	a,#0xf3
      001DAC F8               [12] 1732 	mov	r0,a
      001DAD E6               [12] 1733 	mov	a,@r0
      001DAE C0 E0            [24] 1734 	push	acc
      001DB0 E5 1B            [12] 1735 	mov	a,_bp
      001DB2 24 F4            [12] 1736 	add	a,#0xf4
      001DB4 F8               [12] 1737 	mov	r0,a
      001DB5 86 82            [24] 1738 	mov	dpl,@r0
      001DB7 08               [12] 1739 	inc	r0
      001DB8 86 83            [24] 1740 	mov	dph,@r0
      001DBA 08               [12] 1741 	inc	r0
      001DBB 86 F0            [24] 1742 	mov	b,@r0
      001DBD 12 1B B5         [24] 1743 	lcall	_atecc_recv
      001DC0 AC 82            [24] 1744 	mov	r4,dpl
      001DC2 E5 81            [12] 1745 	mov	a,sp
      001DC4 24 FC            [12] 1746 	add	a,#0xfc
      001DC6 F5 81            [12] 1747 	mov	sp,a
      001DC8 D0 05            [24] 1748 	pop	ar5
      001DCA D0 07            [24] 1749 	pop	ar7
      001DCC BC FF 4C         [24] 1750 	cjne	r4,#0xff,00114$
                           0002E7  1751 	C$atecc508a.c$156$2$151 ==.
                                   1752 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:156: errors++;
      001DCF 0D               [12] 1753 	inc	r5
                           0002E8  1754 	C$atecc508a.c$157$2$151 ==.
                                   1755 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:157: if (errors > 5)
      001DD0 ED               [12] 1756 	mov	a,r5
      001DD1 FE               [12] 1757 	mov	r6,a
      001DD2 24 FA            [12] 1758 	add	a,#0xff - 0x05
      001DD4 50 05            [24] 1759 	jnc	00108$
                           0002EE  1760 	C$atecc508a.c$159$3$152 ==.
                                   1761 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:159: return -2;
      001DD6 75 82 FE         [24] 1762 	mov	dpl,#0xfe
      001DD9 80 46            [24] 1763 	sjmp	00115$
      001DDB                       1764 00108$:
                           0002F3  1765 	C$atecc508a.c$161$2$151 ==.
                                   1766 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:161: switch(get_app_error())
      001DDB C0 07            [24] 1767 	push	ar7
      001DDD C0 06            [24] 1768 	push	ar6
      001DDF C0 05            [24] 1769 	push	ar5
      001DE1 12 00 AB         [24] 1770 	lcall	_get_app_error
      001DE4 AC 82            [24] 1771 	mov	r4,dpl
      001DE6 D0 05            [24] 1772 	pop	ar5
      001DE8 D0 06            [24] 1773 	pop	ar6
      001DEA D0 07            [24] 1774 	pop	ar7
      001DEC BC 00 0F         [24] 1775 	cjne	r4,#0x00,00110$
                           000307  1776 	C$atecc508a.c$164$3$153 ==.
                                   1777 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:164: delay_cmd(cmd);
      001DEF 8F 82            [24] 1778 	mov	dpl,r7
      001DF1 C0 07            [24] 1779 	push	ar7
      001DF3 C0 05            [24] 1780 	push	ar5
      001DF5 12 1C F8         [24] 1781 	lcall	_delay_cmd
      001DF8 D0 05            [24] 1782 	pop	ar5
      001DFA D0 07            [24] 1783 	pop	ar7
                           000314  1784 	C$atecc508a.c$165$3$153 ==.
                                   1785 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:165: break;
                           000314  1786 	C$atecc508a.c$166$3$153 ==.
                                   1787 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:166: default:
      001DFC 80 96            [24] 1788 	sjmp	00112$
      001DFE                       1789 00110$:
                           000316  1790 	C$atecc508a.c$167$3$153 ==.
                                   1791 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:167: u2f_delay(cmd);
      001DFE 8F 02            [24] 1792 	mov	ar2,r7
      001E00 7B 00            [12] 1793 	mov	r3,#0x00
      001E02 7C 00            [12] 1794 	mov	r4,#0x00
      001E04 7D 00            [12] 1795 	mov	r5,#0x00
      001E06 8A 82            [24] 1796 	mov	dpl,r2
      001E08 8B 83            [24] 1797 	mov	dph,r3
      001E0A 8C F0            [24] 1798 	mov	b,r4
      001E0C ED               [12] 1799 	mov	a,r5
      001E0D C0 07            [24] 1800 	push	ar7
      001E0F C0 06            [24] 1801 	push	ar6
      001E11 12 1E 24         [24] 1802 	lcall	_u2f_delay
      001E14 D0 06            [24] 1803 	pop	ar6
      001E16 D0 07            [24] 1804 	pop	ar7
                           000330  1805 	C$atecc508a.c$168$3$153 ==.
                                   1806 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:168: goto resend;
      001E18 02 1D 31         [24] 1807 	ljmp	00104$
                           000333  1808 	C$atecc508a.c$170$1$148 ==.
                                   1809 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:170: }
      001E1B                       1810 00114$:
                           000333  1811 	C$atecc508a.c$173$1$148 ==.
                                   1812 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:173: atecc_idle();
      001E1B 12 1B 5E         [24] 1813 	lcall	_atecc_idle
                           000336  1814 	C$atecc508a.c$174$1$148 ==.
                                   1815 ;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:174: return 0;
      001E1E 75 82 00         [24] 1816 	mov	dpl,#0x00
      001E21                       1817 00115$:
      001E21 D0 1B            [24] 1818 	pop	_bp
                           00033B  1819 	C$atecc508a.c$175$1$148 ==.
                           00033B  1820 	XG$atecc_send_recv$0$0 ==.
      001E23 22               [24] 1821 	ret
                                   1822 	.area CSEG    (CODE)
                                   1823 	.area CONST   (CODE)
                           000000  1824 Fatecc508a$__str_0$0$0 == .
      005E9B                       1825 ___str_0:
      005E9B 02                    1826 	.db 0x02
      005E9C 00                    1827 	.db 0x00
                           000002  1828 Fatecc508a$__str_1$0$0 == .
      005E9D                       1829 ___str_1:
      005E9D 01                    1830 	.db 0x01
      005E9E 00                    1831 	.db 0x00
                           000004  1832 Fatecc508a$__str_2$0$0 == .
      005E9F                       1833 ___str_2:
      005E9F 00                    1834 	.db 0x00
      005EA0 00                    1835 	.db 0x00
      005EA1 00                    1836 	.db 0x00
                                   1837 	.area XINIT   (CODE)
                                   1838 	.area CABS    (ABS,CODE)
