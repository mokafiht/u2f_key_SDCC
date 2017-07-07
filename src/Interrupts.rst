                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module Interrupts
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _U2F_BLUE
                                     12 	.globl _U2F_GREEN
                                     13 	.globl _U2F_RED
                                     14 	.globl _U2F_BUTTON_VAL
                                     15 	.globl _U2F_BUTTON
                                     16 	.globl _UART1FCN1_TFRQ
                                     17 	.globl _UART1FCN1_TXNF
                                     18 	.globl _UART1FCN1_TXHOLD
                                     19 	.globl _UART1FCN1_TIE
                                     20 	.globl _UART1FCN1_RFRQ
                                     21 	.globl _UART1FCN1_RXTO1
                                     22 	.globl _UART1FCN1_RXTO0
                                     23 	.globl _UART1FCN1_RIE
                                     24 	.globl _TMR4CN0_TF4H
                                     25 	.globl _TMR4CN0_TF4L
                                     26 	.globl _TMR4CN0_TF4LEN
                                     27 	.globl _TMR4CN0_TF4CEN
                                     28 	.globl _TMR4CN0_T4SPLIT
                                     29 	.globl _TMR4CN0_TR4
                                     30 	.globl _TMR4CN0_T4XCLK1
                                     31 	.globl _TMR4CN0_T4XCLK0
                                     32 	.globl _TMR2CN0_TF2H
                                     33 	.globl _TMR2CN0_TF2L
                                     34 	.globl _TMR2CN0_TF2LEN
                                     35 	.globl _TMR2CN0_TF2CEN
                                     36 	.globl _TMR2CN0_T2SPLIT
                                     37 	.globl _TMR2CN0_TR2
                                     38 	.globl _TMR2CN0_T2XCLK1
                                     39 	.globl _TMR2CN0_T2XCLK0
                                     40 	.globl _TCON_TF1
                                     41 	.globl _TCON_TR1
                                     42 	.globl _TCON_TF0
                                     43 	.globl _TCON_TR0
                                     44 	.globl _TCON_IE1
                                     45 	.globl _TCON_IT1
                                     46 	.globl _TCON_IE0
                                     47 	.globl _TCON_IT0
                                     48 	.globl _SPI0CN0_SPIF
                                     49 	.globl _SPI0CN0_WCOL
                                     50 	.globl _SPI0CN0_MODF
                                     51 	.globl _SPI0CN0_RXOVRN
                                     52 	.globl _SPI0CN0_NSSMD1
                                     53 	.globl _SPI0CN0_NSSMD0
                                     54 	.globl _SPI0CN0_TXNF
                                     55 	.globl _SPI0CN0_SPIEN
                                     56 	.globl _SMB0CN0_MASTER
                                     57 	.globl _SMB0CN0_TXMODE
                                     58 	.globl _SMB0CN0_STA
                                     59 	.globl _SMB0CN0_STO
                                     60 	.globl _SMB0CN0_ACKRQ
                                     61 	.globl _SMB0CN0_ARBLOST
                                     62 	.globl _SMB0CN0_ACK
                                     63 	.globl _SMB0CN0_SI
                                     64 	.globl _SCON1_OVR
                                     65 	.globl _SCON1_PERR
                                     66 	.globl _SCON1_REN
                                     67 	.globl _SCON1_TBX
                                     68 	.globl _SCON1_RBX
                                     69 	.globl _SCON1_TI
                                     70 	.globl _SCON1_RI
                                     71 	.globl _SCON0_SMODE
                                     72 	.globl _SCON0_MCE
                                     73 	.globl _SCON0_REN
                                     74 	.globl _SCON0_TB8
                                     75 	.globl _SCON0_RB8
                                     76 	.globl _SCON0_TI
                                     77 	.globl _SCON0_RI
                                     78 	.globl _PSW_CY
                                     79 	.globl _PSW_AC
                                     80 	.globl _PSW_F0
                                     81 	.globl _PSW_RS1
                                     82 	.globl _PSW_RS0
                                     83 	.globl _PSW_OV
                                     84 	.globl _PSW_F1
                                     85 	.globl _PSW_PARITY
                                     86 	.globl _PCA0CN0_CF
                                     87 	.globl _PCA0CN0_CR
                                     88 	.globl _PCA0CN0_CCF2
                                     89 	.globl _PCA0CN0_CCF1
                                     90 	.globl _PCA0CN0_CCF0
                                     91 	.globl _P3_B1
                                     92 	.globl _P3_B0
                                     93 	.globl _P2_B3
                                     94 	.globl _P2_B2
                                     95 	.globl _P2_B1
                                     96 	.globl _P2_B0
                                     97 	.globl _P1_B7
                                     98 	.globl _P1_B6
                                     99 	.globl _P1_B5
                                    100 	.globl _P1_B4
                                    101 	.globl _P1_B3
                                    102 	.globl _P1_B2
                                    103 	.globl _P1_B1
                                    104 	.globl _P1_B0
                                    105 	.globl _P0_B7
                                    106 	.globl _P0_B6
                                    107 	.globl _P0_B5
                                    108 	.globl _P0_B4
                                    109 	.globl _P0_B3
                                    110 	.globl _P0_B2
                                    111 	.globl _P0_B1
                                    112 	.globl _P0_B0
                                    113 	.globl _IP_PSPI0
                                    114 	.globl _IP_PT2
                                    115 	.globl _IP_PS0
                                    116 	.globl _IP_PT1
                                    117 	.globl _IP_PX1
                                    118 	.globl _IP_PT0
                                    119 	.globl _IP_PX0
                                    120 	.globl _IE_EA
                                    121 	.globl _IE_ESPI0
                                    122 	.globl _IE_ET2
                                    123 	.globl _IE_ES0
                                    124 	.globl _IE_ET1
                                    125 	.globl _IE_EX1
                                    126 	.globl _IE_ET0
                                    127 	.globl _IE_EX0
                                    128 	.globl _B_B7
                                    129 	.globl _B_B6
                                    130 	.globl _B_B5
                                    131 	.globl _B_B4
                                    132 	.globl _B_B3
                                    133 	.globl _B_B2
                                    134 	.globl _B_B1
                                    135 	.globl _B_B0
                                    136 	.globl _ADC0CN0_ADEN
                                    137 	.globl _ADC0CN0_ADBMEN
                                    138 	.globl _ADC0CN0_ADINT
                                    139 	.globl _ADC0CN0_ADBUSY
                                    140 	.globl _ADC0CN0_ADWINT
                                    141 	.globl _ADC0CN0_ADCM2
                                    142 	.globl _ADC0CN0_ADCM1
                                    143 	.globl _ADC0CN0_ADCM0
                                    144 	.globl _ACC_ACC7
                                    145 	.globl _ACC_ACC6
                                    146 	.globl _ACC_ACC5
                                    147 	.globl _ACC_ACC4
                                    148 	.globl _ACC_ACC3
                                    149 	.globl _ACC_ACC2
                                    150 	.globl _ACC_ACC1
                                    151 	.globl _ACC_ACC0
                                    152 	.globl __XPAGE
                                    153 	.globl _TMR4RL
                                    154 	.globl _TMR4
                                    155 	.globl _TMR3RL
                                    156 	.globl _TMR3
                                    157 	.globl _TMR2RL
                                    158 	.globl _TMR2
                                    159 	.globl _SBRL1
                                    160 	.globl _PCA0
                                    161 	.globl _PCA0CP2
                                    162 	.globl _PCA0CP1
                                    163 	.globl _PCA0CP0
                                    164 	.globl _DP
                                    165 	.globl _ADC0LT
                                    166 	.globl _ADC0
                                    167 	.globl _ADC0GT
                                    168 	.globl _XBR2
                                    169 	.globl _XBR1
                                    170 	.globl _XBR0
                                    171 	.globl _WDTCN
                                    172 	.globl _VDM0CN
                                    173 	.globl _USB0XCN
                                    174 	.globl _USB0DAT
                                    175 	.globl _USB0CF
                                    176 	.globl _USB0CDSTA
                                    177 	.globl _USB0CDCN
                                    178 	.globl _USB0CDCF
                                    179 	.globl _USB0AEC
                                    180 	.globl _USB0ADR
                                    181 	.globl _UART1LIN
                                    182 	.globl _UART1FCT
                                    183 	.globl _UART1FCN1
                                    184 	.globl _UART1FCN0
                                    185 	.globl _TMR4RLL
                                    186 	.globl _TMR4RLH
                                    187 	.globl _TMR4L
                                    188 	.globl _TMR4H
                                    189 	.globl _TMR4CN1
                                    190 	.globl _TMR4CN0
                                    191 	.globl _TMR3RLL
                                    192 	.globl _TMR3RLH
                                    193 	.globl _TMR3L
                                    194 	.globl _TMR3H
                                    195 	.globl _TMR3CN1
                                    196 	.globl _TMR3CN0
                                    197 	.globl _TMR2RLL
                                    198 	.globl _TMR2RLH
                                    199 	.globl _TMR2L
                                    200 	.globl _TMR2H
                                    201 	.globl _TMR2CN1
                                    202 	.globl _TMR2CN0
                                    203 	.globl _TMOD
                                    204 	.globl _TL1
                                    205 	.globl _TL0
                                    206 	.globl _TH1
                                    207 	.globl _TH0
                                    208 	.globl _TCON
                                    209 	.globl _SPI0FCT
                                    210 	.globl _SPI0FCN1
                                    211 	.globl _SPI0FCN0
                                    212 	.globl _SPI0DAT
                                    213 	.globl _SPI0CN0
                                    214 	.globl _SPI0CKR
                                    215 	.globl _SPI0CFG
                                    216 	.globl _SP
                                    217 	.globl _SMOD1
                                    218 	.globl _SMB0TC
                                    219 	.globl _SMB0RXLN
                                    220 	.globl _SMB0FCT
                                    221 	.globl _SMB0FCN1
                                    222 	.globl _SMB0FCN0
                                    223 	.globl _SMB0DAT
                                    224 	.globl _SMB0CN0
                                    225 	.globl _SMB0CF
                                    226 	.globl _SMB0ADR
                                    227 	.globl _SMB0ADM
                                    228 	.globl _SFRSTACK
                                    229 	.globl _SFRPGCN
                                    230 	.globl _SFRPAGE
                                    231 	.globl _SCON1
                                    232 	.globl _SCON0
                                    233 	.globl _SBUF1
                                    234 	.globl _SBUF0
                                    235 	.globl _SBRLL1
                                    236 	.globl _SBRLH1
                                    237 	.globl _SBCON1
                                    238 	.globl _RSTSRC
                                    239 	.globl _REVID
                                    240 	.globl _REG1CN
                                    241 	.globl _REG0CN
                                    242 	.globl _REF0CN
                                    243 	.globl _PSW
                                    244 	.globl _PSCTL
                                    245 	.globl _PRTDRV
                                    246 	.globl _PFE0CN
                                    247 	.globl _PCON1
                                    248 	.globl _PCON0
                                    249 	.globl _PCA0PWM
                                    250 	.globl _PCA0POL
                                    251 	.globl _PCA0MD
                                    252 	.globl _PCA0L
                                    253 	.globl _PCA0H
                                    254 	.globl _PCA0CPM2
                                    255 	.globl _PCA0CPM1
                                    256 	.globl _PCA0CPM0
                                    257 	.globl _PCA0CPL2
                                    258 	.globl _PCA0CPL1
                                    259 	.globl _PCA0CPL0
                                    260 	.globl _PCA0CPH2
                                    261 	.globl _PCA0CPH1
                                    262 	.globl _PCA0CPH0
                                    263 	.globl _PCA0CN0
                                    264 	.globl _PCA0CLR
                                    265 	.globl _PCA0CENT
                                    266 	.globl _P3MDOUT
                                    267 	.globl _P3MDIN
                                    268 	.globl _P3
                                    269 	.globl _P2SKIP
                                    270 	.globl _P2MDOUT
                                    271 	.globl _P2MDIN
                                    272 	.globl _P2MAT
                                    273 	.globl _P2MASK
                                    274 	.globl _P2
                                    275 	.globl _P1SKIP
                                    276 	.globl _P1MDOUT
                                    277 	.globl _P1MDIN
                                    278 	.globl _P1MAT
                                    279 	.globl _P1MASK
                                    280 	.globl _P1
                                    281 	.globl _P0SKIP
                                    282 	.globl _P0MDOUT
                                    283 	.globl _P0MDIN
                                    284 	.globl _P0MAT
                                    285 	.globl _P0MASK
                                    286 	.globl _P0
                                    287 	.globl _LFO0CN
                                    288 	.globl _IT01CF
                                    289 	.globl _IPH
                                    290 	.globl _IP
                                    291 	.globl _IE
                                    292 	.globl _I2C0STAT
                                    293 	.globl _I2C0SLAD
                                    294 	.globl _I2C0FCT
                                    295 	.globl _I2C0FCN1
                                    296 	.globl _I2C0FCN0
                                    297 	.globl _I2C0DOUT
                                    298 	.globl _I2C0DIN
                                    299 	.globl _I2C0CN0
                                    300 	.globl _HFOCN
                                    301 	.globl _HFO1CAL
                                    302 	.globl _HFO0CAL
                                    303 	.globl _FLKEY
                                    304 	.globl _EMI0CN
                                    305 	.globl _EIP2H
                                    306 	.globl _EIP2
                                    307 	.globl _EIP1H
                                    308 	.globl _EIP1
                                    309 	.globl _EIE2
                                    310 	.globl _EIE1
                                    311 	.globl _DPL
                                    312 	.globl _DPH
                                    313 	.globl _DEVICEID
                                    314 	.globl _DERIVID
                                    315 	.globl _CRC0ST
                                    316 	.globl _CRC0IN
                                    317 	.globl _CRC0FLIP
                                    318 	.globl _CRC0DAT
                                    319 	.globl _CRC0CNT
                                    320 	.globl _CRC0CN1
                                    321 	.globl _CRC0CN0
                                    322 	.globl _CMP1MX
                                    323 	.globl _CMP1MD
                                    324 	.globl _CMP1CN1
                                    325 	.globl _CMP1CN0
                                    326 	.globl _CMP0MX
                                    327 	.globl _CMP0MD
                                    328 	.globl _CMP0CN1
                                    329 	.globl _CMP0CN0
                                    330 	.globl _CLKSEL
                                    331 	.globl _CKCON1
                                    332 	.globl _CKCON0
                                    333 	.globl _B
                                    334 	.globl _ADC0TK
                                    335 	.globl _ADC0PWR
                                    336 	.globl _ADC0MX
                                    337 	.globl _ADC0LTL
                                    338 	.globl _ADC0LTH
                                    339 	.globl _ADC0L
                                    340 	.globl _ADC0H
                                    341 	.globl _ADC0GTL
                                    342 	.globl _ADC0GTH
                                    343 	.globl _ADC0CN1
                                    344 	.globl _ADC0CN0
                                    345 	.globl _ADC0CF
                                    346 	.globl _ADC0AC
                                    347 	.globl _ACC
                                    348 	.globl _SMB_crc
                                    349 	.globl _SMB_preflags
                                    350 	.globl _SMB_write_ext_buf
                                    351 	.globl _SMB_read_buf
                                    352 	.globl _SMB_write_buf
                                    353 	.globl _SMB_FLAGS
                                    354 	.globl _SMB_crc_offset
                                    355 	.globl _SMB_write_ext_offset
                                    356 	.globl _SMB_write_ext_len
                                    357 	.globl _SMB_read_offset
                                    358 	.globl _SMB_read_len
                                    359 	.globl _SMB_write_offset
                                    360 	.globl _SMB_write_len
                                    361 	.globl _SMB_addr
                                    362 	.globl __MS_
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
                           000095  1037 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1038 _U2F_BUTTON	=	0x0095
                           000096  1039 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1040 _U2F_BUTTON_VAL	=	0x0096
                           000091  1041 G$U2F_RED$0$0 == 0x0091
                           000091  1042 _U2F_RED	=	0x0091
                           000090  1043 G$U2F_GREEN$0$0 == 0x0090
                           000090  1044 _U2F_GREEN	=	0x0090
                           000087  1045 G$U2F_BLUE$0$0 == 0x0087
                           000087  1046 _U2F_BLUE	=	0x0087
                                   1047 ;--------------------------------------------------------
                                   1048 ; overlayable register banks
                                   1049 ;--------------------------------------------------------
                                   1050 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1051 	.ds 8
                                   1052 ;--------------------------------------------------------
                                   1053 ; internal ram data
                                   1054 ;--------------------------------------------------------
                                   1055 	.area DSEG    (DATA)
                           000000  1056 G$_MS_$0$0==.
      000008                       1057 __MS_::
      000008                       1058 	.ds 4
                           000004  1059 G$SMB_addr$0$0==.
      00000C                       1060 _SMB_addr::
      00000C                       1061 	.ds 1
                           000005  1062 G$SMB_write_len$0$0==.
      00000D                       1063 _SMB_write_len::
      00000D                       1064 	.ds 1
                           000006  1065 G$SMB_write_offset$0$0==.
      00000E                       1066 _SMB_write_offset::
      00000E                       1067 	.ds 1
                           000007  1068 G$SMB_read_len$0$0==.
      00000F                       1069 _SMB_read_len::
      00000F                       1070 	.ds 1
                           000008  1071 G$SMB_read_offset$0$0==.
      000010                       1072 _SMB_read_offset::
      000010                       1073 	.ds 1
                           000009  1074 G$SMB_write_ext_len$0$0==.
      000011                       1075 _SMB_write_ext_len::
      000011                       1076 	.ds 1
                           00000A  1077 G$SMB_write_ext_offset$0$0==.
      000012                       1078 _SMB_write_ext_offset::
      000012                       1079 	.ds 1
                           00000B  1080 G$SMB_crc_offset$0$0==.
      000013                       1081 _SMB_crc_offset::
      000013                       1082 	.ds 1
                           00000C  1083 G$SMB_FLAGS$0$0==.
      000014                       1084 _SMB_FLAGS::
      000014                       1085 	.ds 1
                                   1086 ;--------------------------------------------------------
                                   1087 ; overlayable items in internal ram 
                                   1088 ;--------------------------------------------------------
                                   1089 ;--------------------------------------------------------
                                   1090 ; indirectly addressable internal ram data
                                   1091 ;--------------------------------------------------------
                                   1092 	.area ISEG    (DATA)
                                   1093 ;--------------------------------------------------------
                                   1094 ; absolute internal ram data
                                   1095 ;--------------------------------------------------------
                                   1096 	.area IABS    (ABS,DATA)
                                   1097 	.area IABS    (ABS,DATA)
                                   1098 ;--------------------------------------------------------
                                   1099 ; bit data
                                   1100 ;--------------------------------------------------------
                                   1101 	.area BSEG    (BIT)
                                   1102 ;--------------------------------------------------------
                                   1103 ; paged external ram data
                                   1104 ;--------------------------------------------------------
                                   1105 	.area PSEG    (PAG,XDATA)
                                   1106 ;--------------------------------------------------------
                                   1107 ; external ram data
                                   1108 ;--------------------------------------------------------
                                   1109 	.area XSEG    (XDATA)
                                   1110 ;--------------------------------------------------------
                                   1111 ; absolute external ram data
                                   1112 ;--------------------------------------------------------
                                   1113 	.area XABS    (ABS,XDATA)
                                   1114 ;--------------------------------------------------------
                                   1115 ; external initialized ram data
                                   1116 ;--------------------------------------------------------
                                   1117 	.area XISEG   (XDATA)
                           000000  1118 G$SMB_write_buf$0$0==.
      0002EF                       1119 _SMB_write_buf::
      0002EF                       1120 	.ds 3
                           000003  1121 G$SMB_read_buf$0$0==.
      0002F2                       1122 _SMB_read_buf::
      0002F2                       1123 	.ds 3
                           000006  1124 G$SMB_write_ext_buf$0$0==.
      0002F5                       1125 _SMB_write_ext_buf::
      0002F5                       1126 	.ds 3
                           000009  1127 G$SMB_preflags$0$0==.
      0002F8                       1128 _SMB_preflags::
      0002F8                       1129 	.ds 1
                           00000A  1130 G$SMB_crc$0$0==.
      0002F9                       1131 _SMB_crc::
      0002F9                       1132 	.ds 2
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
                                   1144 ; global & static initialisations
                                   1145 ;--------------------------------------------------------
                                   1146 	.area HOME    (CODE)
                                   1147 	.area GSINIT  (CODE)
                                   1148 	.area GSFINAL (CODE)
                                   1149 	.area GSINIT  (CODE)
                           000000  1150 	C$Interrupts.c$35$0$0 ==.
                                   1151 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:35: uint32_t __data _MS_ = 0;
      000071 E4               [12] 1152 	clr	a
      000072 F5 08            [12] 1153 	mov	__MS_,a
      000074 F5 09            [12] 1154 	mov	(__MS_ + 1),a
      000076 F5 0A            [12] 1155 	mov	(__MS_ + 2),a
      000078 F5 0B            [12] 1156 	mov	(__MS_ + 3),a
                           000009  1157 	C$Interrupts.c$52$0$0 ==.
                                   1158 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:52: __data uint8_t SMB_addr 				= 0;
                                   1159 ;	1-genFromRTrack replaced	mov	_SMB_addr,#0x00
      00007A F5 0C            [12] 1160 	mov	_SMB_addr,a
                           00000B  1161 	C$Interrupts.c$54$0$0 ==.
                                   1162 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:54: __data uint8_t SMB_write_len 			= 0;
                                   1163 ;	1-genFromRTrack replaced	mov	_SMB_write_len,#0x00
      00007C F5 0D            [12] 1164 	mov	_SMB_write_len,a
                           00000D  1165 	C$Interrupts.c$55$0$0 ==.
                                   1166 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:55: __data uint8_t SMB_write_offset 		= 0;
                                   1167 ;	1-genFromRTrack replaced	mov	_SMB_write_offset,#0x00
      00007E F5 0E            [12] 1168 	mov	_SMB_write_offset,a
                           00000F  1169 	C$Interrupts.c$56$0$0 ==.
                                   1170 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:56: __data uint8_t SMB_read_len 			= 0;
                                   1171 ;	1-genFromRTrack replaced	mov	_SMB_read_len,#0x00
      000080 F5 0F            [12] 1172 	mov	_SMB_read_len,a
                           000011  1173 	C$Interrupts.c$57$0$0 ==.
                                   1174 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:57: __data uint8_t SMB_read_offset 		= 0;
                                   1175 ;	1-genFromRTrack replaced	mov	_SMB_read_offset,#0x00
      000082 F5 10            [12] 1176 	mov	_SMB_read_offset,a
                           000013  1177 	C$Interrupts.c$60$0$0 ==.
                                   1178 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:60: __data uint8_t  SMB_write_ext_len 	= 0;
                                   1179 ;	1-genFromRTrack replaced	mov	_SMB_write_ext_len,#0x00
      000084 F5 11            [12] 1180 	mov	_SMB_write_ext_len,a
                           000015  1181 	C$Interrupts.c$61$0$0 ==.
                                   1182 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:61: __data uint8_t  SMB_write_ext_offset 	= 0;
                                   1183 ;	1-genFromRTrack replaced	mov	_SMB_write_ext_offset,#0x00
      000086 F5 12            [12] 1184 	mov	_SMB_write_ext_offset,a
                           000017  1185 	C$Interrupts.c$64$0$0 ==.
                                   1186 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:64: __data uint8_t  SMB_crc_offset 		= 0;
                                   1187 ;	1-genFromRTrack replaced	mov	_SMB_crc_offset,#0x00
      000088 F5 13            [12] 1188 	mov	_SMB_crc_offset,a
                           000019  1189 	C$Interrupts.c$65$0$0 ==.
                                   1190 ;	D:\Freelancer_projects\jan333\sdcc_project\src\Interrupts.c:65: __data volatile uint8_t SMB_FLAGS 	= 0;
                                   1191 ;	1-genFromRTrack replaced	mov	_SMB_FLAGS,#0x00
      00008A F5 14            [12] 1192 	mov	_SMB_FLAGS,a
                                   1193 ;--------------------------------------------------------
                                   1194 ; Home
                                   1195 ;--------------------------------------------------------
                                   1196 	.area HOME    (CODE)
                                   1197 	.area HOME    (CODE)
                                   1198 ;--------------------------------------------------------
                                   1199 ; code
                                   1200 ;--------------------------------------------------------
                                   1201 	.area CSEG    (CODE)
                                   1202 	.area CSEG    (CODE)
                                   1203 	.area CONST   (CODE)
                                   1204 	.area XINIT   (CODE)
                           000000  1205 FInterrupts$__xinit_SMB_write_buf$0$0 == .
      00617A                       1206 __xinit__SMB_write_buf:
      00617A 00 00 00              1207 	.byte #0x00,#0x00,#0x00
                           000003  1208 FInterrupts$__xinit_SMB_read_buf$0$0 == .
      00617D                       1209 __xinit__SMB_read_buf:
      00617D 00 00 00              1210 	.byte #0x00,#0x00,#0x00
                           000006  1211 FInterrupts$__xinit_SMB_write_ext_buf$0$0 == .
      006180                       1212 __xinit__SMB_write_ext_buf:
      006180 00 00 00              1213 	.byte #0x00,#0x00,#0x00
                           000009  1214 FInterrupts$__xinit_SMB_preflags$0$0 == .
      006183                       1215 __xinit__SMB_preflags:
      006183 00                    1216 	.db #0x00	; 0
                           00000A  1217 FInterrupts$__xinit_SMB_crc$0$0 == .
      006184                       1218 __xinit__SMB_crc:
      006184 00 00                 1219 	.byte #0x00,#0x00	; 0
                                   1220 	.area CABS    (ABS,CODE)
