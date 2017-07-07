                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module u2f
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _u2f_count
                                     12 	.globl _u2f_get_attestation_cert
                                     13 	.globl _u2f_load_key
                                     14 	.globl _u2f_new_keypair
                                     15 	.globl _u2f_ecdsa_sign
                                     16 	.globl _u2f_sha256_finish
                                     17 	.globl _u2f_sha256_update
                                     18 	.globl _u2f_sha256_start
                                     19 	.globl _u2f_get_user_feedback
                                     20 	.globl _u2f_response_start
                                     21 	.globl _u2f_response_flush
                                     22 	.globl _u2f_response_writeback
                                     23 	.globl _u2f_attestation_cert_size
                                     24 	.globl _u2f_hid_set_len
                                     25 	.globl _U2F_BLUE
                                     26 	.globl _U2F_GREEN
                                     27 	.globl _U2F_RED
                                     28 	.globl _U2F_BUTTON_VAL
                                     29 	.globl _U2F_BUTTON
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
                                    362 	.globl _u2f_request
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
                                   1115 ;Allocation info for local variables in function 'u2f_request'
                                   1116 ;------------------------------------------------------------
                                   1117 ;req                       Allocated to stack - _bp +1
                                   1118 ;rcode                     Allocated to stack - _bp +8
                                   1119 ;len                       Allocated to registers r4 r7 r6 r5 
                                   1120 ;sloc0                     Allocated to stack - _bp +4
                                   1121 ;sloc1                     Allocated to stack - _bp +15
                                   1122 ;------------------------------------------------------------
                           000000  1123 	G$u2f_request$0$0 ==.
                           000000  1124 	C$u2f.c$47$0$0 ==.
                                   1125 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:47: void u2f_request(struct u2f_request_apdu * req)
                                   1126 ;	-----------------------------------------
                                   1127 ;	 function u2f_request
                                   1128 ;	-----------------------------------------
      004673                       1129 _u2f_request:
                           000007  1130 	ar7 = 0x07
                           000006  1131 	ar6 = 0x06
                           000005  1132 	ar5 = 0x05
                           000004  1133 	ar4 = 0x04
                           000003  1134 	ar3 = 0x03
                           000002  1135 	ar2 = 0x02
                           000001  1136 	ar1 = 0x01
                           000000  1137 	ar0 = 0x00
      004673 C0 1B            [24] 1138 	push	_bp
      004675 85 81 1B         [24] 1139 	mov	_bp,sp
      004678 C0 82            [24] 1140 	push	dpl
      00467A C0 83            [24] 1141 	push	dph
      00467C C0 F0            [24] 1142 	push	b
      00467E E5 81            [12] 1143 	mov	a,sp
      004680 24 07            [12] 1144 	add	a,#0x07
      004682 F5 81            [12] 1145 	mov	sp,a
                           000011  1146 	C$u2f.c$49$1$129 ==.
                                   1147 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:49: uint16_t * rcode = (uint16_t *)req;
      004684 A8 1B            [24] 1148 	mov	r0,_bp
      004686 08               [12] 1149 	inc	r0
      004687 E5 1B            [12] 1150 	mov	a,_bp
      004689 24 08            [12] 1151 	add	a,#0x08
      00468B F9               [12] 1152 	mov	r1,a
      00468C E6               [12] 1153 	mov	a,@r0
      00468D F7               [12] 1154 	mov	@r1,a
      00468E 08               [12] 1155 	inc	r0
      00468F 09               [12] 1156 	inc	r1
      004690 E6               [12] 1157 	mov	a,@r0
      004691 F7               [12] 1158 	mov	@r1,a
      004692 08               [12] 1159 	inc	r0
      004693 09               [12] 1160 	inc	r1
      004694 E6               [12] 1161 	mov	a,@r0
      004695 F7               [12] 1162 	mov	@r1,a
                           000023  1163 	C$u2f.c$50$1$129 ==.
                                   1164 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:50: uint32_t len = ((req->LC3) | ((uint32_t)req->LC2 << 8) | ((uint32_t)req->LC1 << 16));
      004696 A8 1B            [24] 1165 	mov	r0,_bp
      004698 08               [12] 1166 	inc	r0
      004699 74 06            [12] 1167 	mov	a,#0x06
      00469B 26               [12] 1168 	add	a,@r0
      00469C FA               [12] 1169 	mov	r2,a
      00469D E4               [12] 1170 	clr	a
      00469E 08               [12] 1171 	inc	r0
      00469F 36               [12] 1172 	addc	a,@r0
      0046A0 FB               [12] 1173 	mov	r3,a
      0046A1 08               [12] 1174 	inc	r0
      0046A2 86 04            [24] 1175 	mov	ar4,@r0
      0046A4 8A 82            [24] 1176 	mov	dpl,r2
      0046A6 8B 83            [24] 1177 	mov	dph,r3
      0046A8 8C F0            [24] 1178 	mov	b,r4
      0046AA 12 5E 3E         [24] 1179 	lcall	__gptrget
      0046AD FA               [12] 1180 	mov	r2,a
      0046AE A8 1B            [24] 1181 	mov	r0,_bp
      0046B0 08               [12] 1182 	inc	r0
      0046B1 74 05            [12] 1183 	mov	a,#0x05
      0046B3 26               [12] 1184 	add	a,@r0
      0046B4 FB               [12] 1185 	mov	r3,a
      0046B5 E4               [12] 1186 	clr	a
      0046B6 08               [12] 1187 	inc	r0
      0046B7 36               [12] 1188 	addc	a,@r0
      0046B8 FC               [12] 1189 	mov	r4,a
      0046B9 08               [12] 1190 	inc	r0
      0046BA 86 07            [24] 1191 	mov	ar7,@r0
      0046BC 8B 82            [24] 1192 	mov	dpl,r3
      0046BE 8C 83            [24] 1193 	mov	dph,r4
      0046C0 8F F0            [24] 1194 	mov	b,r7
      0046C2 12 5E 3E         [24] 1195 	lcall	__gptrget
      0046C5 FB               [12] 1196 	mov	r3,a
      0046C6 E4               [12] 1197 	clr	a
      0046C7 FF               [12] 1198 	mov	r7,a
      0046C8 FE               [12] 1199 	mov	r6,a
      0046C9 E5 1B            [12] 1200 	mov	a,_bp
      0046CB 24 04            [12] 1201 	add	a,#0x04
      0046CD F8               [12] 1202 	mov	r0,a
      0046CE 08               [12] 1203 	inc	r0
      0046CF 08               [12] 1204 	inc	r0
      0046D0 08               [12] 1205 	inc	r0
      0046D1 A6 06            [24] 1206 	mov	@r0,ar6
      0046D3 18               [12] 1207 	dec	r0
      0046D4 A6 07            [24] 1208 	mov	@r0,ar7
      0046D6 18               [12] 1209 	dec	r0
      0046D7 A6 03            [24] 1210 	mov	@r0,ar3
      0046D9 18               [12] 1211 	dec	r0
      0046DA 76 00            [12] 1212 	mov	@r0,#0x00
      0046DC E4               [12] 1213 	clr	a
      0046DD FC               [12] 1214 	mov	r4,a
      0046DE FE               [12] 1215 	mov	r6,a
      0046DF FF               [12] 1216 	mov	r7,a
      0046E0 E5 1B            [12] 1217 	mov	a,_bp
      0046E2 24 04            [12] 1218 	add	a,#0x04
      0046E4 F8               [12] 1219 	mov	r0,a
      0046E5 EA               [12] 1220 	mov	a,r2
      0046E6 46               [12] 1221 	orl	a,@r0
      0046E7 F6               [12] 1222 	mov	@r0,a
      0046E8 EC               [12] 1223 	mov	a,r4
      0046E9 08               [12] 1224 	inc	r0
      0046EA 46               [12] 1225 	orl	a,@r0
      0046EB F6               [12] 1226 	mov	@r0,a
      0046EC EE               [12] 1227 	mov	a,r6
      0046ED 08               [12] 1228 	inc	r0
      0046EE 46               [12] 1229 	orl	a,@r0
      0046EF F6               [12] 1230 	mov	@r0,a
      0046F0 EF               [12] 1231 	mov	a,r7
      0046F1 08               [12] 1232 	inc	r0
      0046F2 46               [12] 1233 	orl	a,@r0
      0046F3 F6               [12] 1234 	mov	@r0,a
      0046F4 A8 1B            [24] 1235 	mov	r0,_bp
      0046F6 08               [12] 1236 	inc	r0
      0046F7 74 04            [12] 1237 	mov	a,#0x04
      0046F9 26               [12] 1238 	add	a,@r0
      0046FA FB               [12] 1239 	mov	r3,a
      0046FB E4               [12] 1240 	clr	a
      0046FC 08               [12] 1241 	inc	r0
      0046FD 36               [12] 1242 	addc	a,@r0
      0046FE FD               [12] 1243 	mov	r5,a
      0046FF 08               [12] 1244 	inc	r0
      004700 86 07            [24] 1245 	mov	ar7,@r0
      004702 8B 82            [24] 1246 	mov	dpl,r3
      004704 8D 83            [24] 1247 	mov	dph,r5
      004706 8F F0            [24] 1248 	mov	b,r7
      004708 12 5E 3E         [24] 1249 	lcall	__gptrget
      00470B FB               [12] 1250 	mov	r3,a
      00470C 7F 00            [12] 1251 	mov	r7,#0x00
      00470E 8F 05            [24] 1252 	mov	ar5,r7
      004710 8B 06            [24] 1253 	mov	ar6,r3
      004712 E4               [12] 1254 	clr	a
      004713 FF               [12] 1255 	mov	r7,a
      004714 FB               [12] 1256 	mov	r3,a
      004715 E5 1B            [12] 1257 	mov	a,_bp
      004717 24 04            [12] 1258 	add	a,#0x04
      004719 F8               [12] 1259 	mov	r0,a
      00471A E6               [12] 1260 	mov	a,@r0
      00471B 42 03            [12] 1261 	orl	ar3,a
      00471D 08               [12] 1262 	inc	r0
      00471E E6               [12] 1263 	mov	a,@r0
      00471F 42 07            [12] 1264 	orl	ar7,a
      004721 08               [12] 1265 	inc	r0
      004722 E6               [12] 1266 	mov	a,@r0
      004723 42 06            [12] 1267 	orl	ar6,a
      004725 08               [12] 1268 	inc	r0
      004726 E6               [12] 1269 	mov	a,@r0
      004727 42 05            [12] 1270 	orl	ar5,a
      004729 8B 04            [24] 1271 	mov	ar4,r3
                           0000B8  1272 	C$u2f.c$52$1$129 ==.
                                   1273 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:52: u2f_response_start();
      00472B C0 07            [24] 1274 	push	ar7
      00472D C0 06            [24] 1275 	push	ar6
      00472F C0 05            [24] 1276 	push	ar5
      004731 C0 04            [24] 1277 	push	ar4
      004733 12 50 80         [24] 1278 	lcall	_u2f_response_start
      004736 D0 04            [24] 1279 	pop	ar4
      004738 D0 05            [24] 1280 	pop	ar5
      00473A D0 06            [24] 1281 	pop	ar6
      00473C D0 07            [24] 1282 	pop	ar7
                           0000CB  1283 	C$u2f.c$54$1$129 ==.
                                   1284 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:54: if (req->cla != 0)
      00473E A8 1B            [24] 1285 	mov	r0,_bp
      004740 08               [12] 1286 	inc	r0
      004741 86 82            [24] 1287 	mov	dpl,@r0
      004743 08               [12] 1288 	inc	r0
      004744 86 83            [24] 1289 	mov	dph,@r0
      004746 08               [12] 1290 	inc	r0
      004747 86 F0            [24] 1291 	mov	b,@r0
      004749 12 5E 3E         [24] 1292 	lcall	__gptrget
      00474C 60 20            [24] 1293 	jz	00102$
                           0000DB  1294 	C$u2f.c$56$2$130 ==.
                                   1295 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:56: u2f_hid_set_len(2);
      00474E 90 00 02         [24] 1296 	mov	dptr,#0x0002
      004751 12 06 0B         [24] 1297 	lcall	_u2f_hid_set_len
                           0000E1  1298 	C$u2f.c$57$2$130 ==.
                                   1299 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:57: *rcode = U2F_SW_CLASS_NOT_SUPPORTED;
      004754 E5 1B            [12] 1300 	mov	a,_bp
      004756 24 08            [12] 1301 	add	a,#0x08
      004758 F8               [12] 1302 	mov	r0,a
      004759 86 82            [24] 1303 	mov	dpl,@r0
      00475B 08               [12] 1304 	inc	r0
      00475C 86 83            [24] 1305 	mov	dph,@r0
      00475E 08               [12] 1306 	inc	r0
      00475F 86 F0            [24] 1307 	mov	b,@r0
      004761 E4               [12] 1308 	clr	a
      004762 12 5A 48         [24] 1309 	lcall	__gptrput
      004765 A3               [24] 1310 	inc	dptr
      004766 74 6E            [12] 1311 	mov	a,#0x6e
      004768 12 5A 48         [24] 1312 	lcall	__gptrput
                           0000F8  1313 	C$u2f.c$58$2$130 ==.
                                   1314 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:58: goto end;
      00476B 02 48 E8         [24] 1315 	ljmp	00116$
      00476E                       1316 00102$:
                           0000FB  1317 	C$u2f.c$61$1$129 ==.
                                   1318 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:61: switch(req->ins)
      00476E C0 04            [24] 1319 	push	ar4
      004770 C0 07            [24] 1320 	push	ar7
      004772 C0 06            [24] 1321 	push	ar6
      004774 C0 05            [24] 1322 	push	ar5
      004776 A8 1B            [24] 1323 	mov	r0,_bp
      004778 08               [12] 1324 	inc	r0
      004779 74 01            [12] 1325 	mov	a,#0x01
      00477B 26               [12] 1326 	add	a,@r0
      00477C FA               [12] 1327 	mov	r2,a
      00477D E4               [12] 1328 	clr	a
      00477E 08               [12] 1329 	inc	r0
      00477F 36               [12] 1330 	addc	a,@r0
      004780 FB               [12] 1331 	mov	r3,a
      004781 08               [12] 1332 	inc	r0
      004782 86 07            [24] 1333 	mov	ar7,@r0
      004784 8A 82            [24] 1334 	mov	dpl,r2
      004786 8B 83            [24] 1335 	mov	dph,r3
      004788 8F F0            [24] 1336 	mov	b,r7
      00478A 12 5E 3E         [24] 1337 	lcall	__gptrget
      00478D FB               [12] 1338 	mov	r3,a
      00478E BB 01 0A         [24] 1339 	cjne	r3,#0x01,00144$
      004791 D0 05            [24] 1340 	pop	ar5
      004793 D0 06            [24] 1341 	pop	ar6
      004795 D0 07            [24] 1342 	pop	ar7
      004797 D0 04            [24] 1343 	pop	ar4
      004799 80 22            [24] 1344 	sjmp	00103$
      00479B                       1345 00144$:
      00479B D0 05            [24] 1346 	pop	ar5
      00479D D0 06            [24] 1347 	pop	ar6
      00479F D0 07            [24] 1348 	pop	ar7
      0047A1 D0 04            [24] 1349 	pop	ar4
      0047A3 BB 02 02         [24] 1350 	cjne	r3,#0x02,00145$
      0047A6 80 77            [24] 1351 	sjmp	00107$
      0047A8                       1352 00145$:
      0047A8 BB 03 03         [24] 1353 	cjne	r3,#0x03,00146$
      0047AB 02 48 6E         [24] 1354 	ljmp	00108$
      0047AE                       1355 00146$:
      0047AE BB C0 03         [24] 1356 	cjne	r3,#0xc0,00147$
      0047B1 02 48 B2         [24] 1357 	ljmp	00113$
      0047B4                       1358 00147$:
      0047B4 BB FF 03         [24] 1359 	cjne	r3,#0xff,00148$
      0047B7 02 48 B2         [24] 1360 	ljmp	00113$
      0047BA                       1361 00148$:
      0047BA 02 48 CB         [24] 1362 	ljmp	00114$
                           00014A  1363 	C$u2f.c$63$2$131 ==.
                                   1364 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:63: case U2F_REGISTER:
      0047BD                       1365 00103$:
                           00014A  1366 	C$u2f.c$64$2$131 ==.
                                   1367 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:64: if (len != 64)
      0047BD BC 40 0B         [24] 1368 	cjne	r4,#0x40,00149$
      0047C0 BF 00 08         [24] 1369 	cjne	r7,#0x00,00149$
      0047C3 BE 00 05         [24] 1370 	cjne	r6,#0x00,00149$
      0047C6 BD 00 02         [24] 1371 	cjne	r5,#0x00,00149$
      0047C9 80 20            [24] 1372 	sjmp	00105$
      0047CB                       1373 00149$:
                           000158  1374 	C$u2f.c$66$3$132 ==.
                                   1375 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:66: u2f_hid_set_len(2);
      0047CB 90 00 02         [24] 1376 	mov	dptr,#0x0002
      0047CE 12 06 0B         [24] 1377 	lcall	_u2f_hid_set_len
                           00015E  1378 	C$u2f.c$67$3$132 ==.
                                   1379 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:67: *rcode = U2F_SW_WRONG_LENGTH;
      0047D1 E5 1B            [12] 1380 	mov	a,_bp
      0047D3 24 08            [12] 1381 	add	a,#0x08
      0047D5 F8               [12] 1382 	mov	r0,a
      0047D6 86 82            [24] 1383 	mov	dpl,@r0
      0047D8 08               [12] 1384 	inc	r0
      0047D9 86 83            [24] 1385 	mov	dph,@r0
      0047DB 08               [12] 1386 	inc	r0
      0047DC 86 F0            [24] 1387 	mov	b,@r0
      0047DE E4               [12] 1388 	clr	a
      0047DF 12 5A 48         [24] 1389 	lcall	__gptrput
      0047E2 A3               [24] 1390 	inc	dptr
      0047E3 74 67            [12] 1391 	mov	a,#0x67
      0047E5 12 5A 48         [24] 1392 	lcall	__gptrput
      0047E8 02 48 E8         [24] 1393 	ljmp	00116$
      0047EB                       1394 00105$:
                           000178  1395 	C$u2f.c$71$3$133 ==.
                                   1396 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:71: *rcode = u2f_register((struct u2f_register_request*)req->payload);
      0047EB A8 1B            [24] 1397 	mov	r0,_bp
      0047ED 08               [12] 1398 	inc	r0
      0047EE 74 07            [12] 1399 	mov	a,#0x07
      0047F0 26               [12] 1400 	add	a,@r0
      0047F1 FF               [12] 1401 	mov	r7,a
      0047F2 E4               [12] 1402 	clr	a
      0047F3 08               [12] 1403 	inc	r0
      0047F4 36               [12] 1404 	addc	a,@r0
      0047F5 FE               [12] 1405 	mov	r6,a
      0047F6 08               [12] 1406 	inc	r0
      0047F7 86 05            [24] 1407 	mov	ar5,@r0
      0047F9 8F 82            [24] 1408 	mov	dpl,r7
      0047FB 8E 83            [24] 1409 	mov	dph,r6
      0047FD 8D F0            [24] 1410 	mov	b,r5
      0047FF 12 4C E5         [24] 1411 	lcall	_u2f_register
      004802 AA 82            [24] 1412 	mov	r2,dpl
      004804 AB 83            [24] 1413 	mov	r3,dph
      004806 E5 1B            [12] 1414 	mov	a,_bp
      004808 24 08            [12] 1415 	add	a,#0x08
      00480A F8               [12] 1416 	mov	r0,a
      00480B 86 82            [24] 1417 	mov	dpl,@r0
      00480D 08               [12] 1418 	inc	r0
      00480E 86 83            [24] 1419 	mov	dph,@r0
      004810 08               [12] 1420 	inc	r0
      004811 86 F0            [24] 1421 	mov	b,@r0
      004813 EA               [12] 1422 	mov	a,r2
      004814 12 5A 48         [24] 1423 	lcall	__gptrput
      004817 A3               [24] 1424 	inc	dptr
      004818 EB               [12] 1425 	mov	a,r3
      004819 12 5A 48         [24] 1426 	lcall	__gptrput
                           0001A9  1427 	C$u2f.c$73$2$131 ==.
                                   1428 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:73: break;
      00481C 02 48 E8         [24] 1429 	ljmp	00116$
                           0001AC  1430 	C$u2f.c$74$2$131 ==.
                                   1431 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:74: case U2F_AUTHENTICATE:
      00481F                       1432 00107$:
                           0001AC  1433 	C$u2f.c$75$2$131 ==.
                                   1434 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:75: *rcode = u2f_authenticate((struct u2f_authenticate_request*)req->payload, req->p1);
      00481F A8 1B            [24] 1435 	mov	r0,_bp
      004821 08               [12] 1436 	inc	r0
      004822 74 02            [12] 1437 	mov	a,#0x02
      004824 26               [12] 1438 	add	a,@r0
      004825 FF               [12] 1439 	mov	r7,a
      004826 E4               [12] 1440 	clr	a
      004827 08               [12] 1441 	inc	r0
      004828 36               [12] 1442 	addc	a,@r0
      004829 FE               [12] 1443 	mov	r6,a
      00482A 08               [12] 1444 	inc	r0
      00482B 86 05            [24] 1445 	mov	ar5,@r0
      00482D 8F 82            [24] 1446 	mov	dpl,r7
      00482F 8E 83            [24] 1447 	mov	dph,r6
      004831 8D F0            [24] 1448 	mov	b,r5
      004833 12 5E 3E         [24] 1449 	lcall	__gptrget
      004836 FF               [12] 1450 	mov	r7,a
      004837 A8 1B            [24] 1451 	mov	r0,_bp
      004839 08               [12] 1452 	inc	r0
      00483A 74 07            [12] 1453 	mov	a,#0x07
      00483C 26               [12] 1454 	add	a,@r0
      00483D FE               [12] 1455 	mov	r6,a
      00483E E4               [12] 1456 	clr	a
      00483F 08               [12] 1457 	inc	r0
      004840 36               [12] 1458 	addc	a,@r0
      004841 FD               [12] 1459 	mov	r5,a
      004842 08               [12] 1460 	inc	r0
      004843 86 04            [24] 1461 	mov	ar4,@r0
      004845 C0 07            [24] 1462 	push	ar7
      004847 8E 82            [24] 1463 	mov	dpl,r6
      004849 8D 83            [24] 1464 	mov	dph,r5
      00484B 8C F0            [24] 1465 	mov	b,r4
      00484D 12 4A 8D         [24] 1466 	lcall	_u2f_authenticate
      004850 AA 82            [24] 1467 	mov	r2,dpl
      004852 AB 83            [24] 1468 	mov	r3,dph
      004854 15 81            [12] 1469 	dec	sp
      004856 E5 1B            [12] 1470 	mov	a,_bp
      004858 24 08            [12] 1471 	add	a,#0x08
      00485A F8               [12] 1472 	mov	r0,a
      00485B 86 82            [24] 1473 	mov	dpl,@r0
      00485D 08               [12] 1474 	inc	r0
      00485E 86 83            [24] 1475 	mov	dph,@r0
      004860 08               [12] 1476 	inc	r0
      004861 86 F0            [24] 1477 	mov	b,@r0
      004863 EA               [12] 1478 	mov	a,r2
      004864 12 5A 48         [24] 1479 	lcall	__gptrput
      004867 A3               [24] 1480 	inc	dptr
      004868 EB               [12] 1481 	mov	a,r3
      004869 12 5A 48         [24] 1482 	lcall	__gptrput
                           0001F9  1483 	C$u2f.c$76$2$131 ==.
                                   1484 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:76: break;
                           0001F9  1485 	C$u2f.c$77$2$131 ==.
                                   1486 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:77: case U2F_VERSION:
      00486C 80 7A            [24] 1487 	sjmp	00116$
      00486E                       1488 00108$:
                           0001FB  1489 	C$u2f.c$78$2$131 ==.
                                   1490 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:78: if (len)
      00486E EC               [12] 1491 	mov	a,r4
      00486F 4F               [12] 1492 	orl	a,r7
      004870 4E               [12] 1493 	orl	a,r6
      004871 4D               [12] 1494 	orl	a,r5
      004872 60 1F            [24] 1495 	jz	00110$
                           000201  1496 	C$u2f.c$80$3$134 ==.
                                   1497 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:80: u2f_hid_set_len(2);
      004874 90 00 02         [24] 1498 	mov	dptr,#0x0002
      004877 12 06 0B         [24] 1499 	lcall	_u2f_hid_set_len
                           000207  1500 	C$u2f.c$81$3$134 ==.
                                   1501 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:81: *rcode = U2F_SW_WRONG_LENGTH;
      00487A E5 1B            [12] 1502 	mov	a,_bp
      00487C 24 08            [12] 1503 	add	a,#0x08
      00487E F8               [12] 1504 	mov	r0,a
      00487F 86 82            [24] 1505 	mov	dpl,@r0
      004881 08               [12] 1506 	inc	r0
      004882 86 83            [24] 1507 	mov	dph,@r0
      004884 08               [12] 1508 	inc	r0
      004885 86 F0            [24] 1509 	mov	b,@r0
      004887 E4               [12] 1510 	clr	a
      004888 12 5A 48         [24] 1511 	lcall	__gptrput
      00488B A3               [24] 1512 	inc	dptr
      00488C 74 67            [12] 1513 	mov	a,#0x67
      00488E 12 5A 48         [24] 1514 	lcall	__gptrput
      004891 80 55            [24] 1515 	sjmp	00116$
      004893                       1516 00110$:
                           000220  1517 	C$u2f.c$85$3$135 ==.
                                   1518 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:85: *rcode = u2f_version();
      004893 12 4F F2         [24] 1519 	lcall	_u2f_version
      004896 AE 82            [24] 1520 	mov	r6,dpl
      004898 AF 83            [24] 1521 	mov	r7,dph
      00489A E5 1B            [12] 1522 	mov	a,_bp
      00489C 24 08            [12] 1523 	add	a,#0x08
      00489E F8               [12] 1524 	mov	r0,a
      00489F 86 82            [24] 1525 	mov	dpl,@r0
      0048A1 08               [12] 1526 	inc	r0
      0048A2 86 83            [24] 1527 	mov	dph,@r0
      0048A4 08               [12] 1528 	inc	r0
      0048A5 86 F0            [24] 1529 	mov	b,@r0
      0048A7 EE               [12] 1530 	mov	a,r6
      0048A8 12 5A 48         [24] 1531 	lcall	__gptrput
      0048AB A3               [24] 1532 	inc	dptr
      0048AC EF               [12] 1533 	mov	a,r7
      0048AD 12 5A 48         [24] 1534 	lcall	__gptrput
                           00023D  1535 	C$u2f.c$87$2$131 ==.
                                   1536 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:87: break;
                           00023D  1537 	C$u2f.c$89$2$131 ==.
                                   1538 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:89: case U2F_VENDOR_LAST:
      0048B0 80 36            [24] 1539 	sjmp	00116$
      0048B2                       1540 00113$:
                           00023F  1541 	C$u2f.c$90$2$131 ==.
                                   1542 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:90: *rcode = U2F_SW_NO_ERROR;
      0048B2 E5 1B            [12] 1543 	mov	a,_bp
      0048B4 24 08            [12] 1544 	add	a,#0x08
      0048B6 F8               [12] 1545 	mov	r0,a
      0048B7 86 82            [24] 1546 	mov	dpl,@r0
      0048B9 08               [12] 1547 	inc	r0
      0048BA 86 83            [24] 1548 	mov	dph,@r0
      0048BC 08               [12] 1549 	inc	r0
      0048BD 86 F0            [24] 1550 	mov	b,@r0
      0048BF E4               [12] 1551 	clr	a
      0048C0 12 5A 48         [24] 1552 	lcall	__gptrput
      0048C3 A3               [24] 1553 	inc	dptr
      0048C4 74 90            [12] 1554 	mov	a,#0x90
      0048C6 12 5A 48         [24] 1555 	lcall	__gptrput
                           000256  1556 	C$u2f.c$91$2$131 ==.
                                   1557 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:91: break;
                           000256  1558 	C$u2f.c$92$2$131 ==.
                                   1559 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:92: default:
      0048C9 80 1D            [24] 1560 	sjmp	00116$
      0048CB                       1561 00114$:
                           000258  1562 	C$u2f.c$93$2$131 ==.
                                   1563 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:93: u2f_hid_set_len(2);
      0048CB 90 00 02         [24] 1564 	mov	dptr,#0x0002
      0048CE 12 06 0B         [24] 1565 	lcall	_u2f_hid_set_len
                           00025E  1566 	C$u2f.c$94$2$131 ==.
                                   1567 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:94: *rcode = U2F_SW_INS_NOT_SUPPORTED;
      0048D1 E5 1B            [12] 1568 	mov	a,_bp
      0048D3 24 08            [12] 1569 	add	a,#0x08
      0048D5 F8               [12] 1570 	mov	r0,a
      0048D6 86 82            [24] 1571 	mov	dpl,@r0
      0048D8 08               [12] 1572 	inc	r0
      0048D9 86 83            [24] 1573 	mov	dph,@r0
      0048DB 08               [12] 1574 	inc	r0
      0048DC 86 F0            [24] 1575 	mov	b,@r0
      0048DE E4               [12] 1576 	clr	a
      0048DF 12 5A 48         [24] 1577 	lcall	__gptrput
      0048E2 A3               [24] 1578 	inc	dptr
      0048E3 74 6D            [12] 1579 	mov	a,#0x6d
      0048E5 12 5A 48         [24] 1580 	lcall	__gptrput
                           000275  1581 	C$u2f.c$98$1$129 ==.
                                   1582 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:98: end:
      0048E8                       1583 00116$:
                           000275  1584 	C$u2f.c$99$1$129 ==.
                                   1585 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:99: u2f_response_writeback((uint8_t*)rcode,2);
      0048E8 E5 1B            [12] 1586 	mov	a,_bp
      0048EA 24 08            [12] 1587 	add	a,#0x08
      0048EC F8               [12] 1588 	mov	r0,a
      0048ED 86 02            [24] 1589 	mov	ar2,@r0
      0048EF 08               [12] 1590 	inc	r0
      0048F0 86 03            [24] 1591 	mov	ar3,@r0
      0048F2 08               [12] 1592 	inc	r0
      0048F3 86 04            [24] 1593 	mov	ar4,@r0
      0048F5 74 02            [12] 1594 	mov	a,#0x02
      0048F7 C0 E0            [24] 1595 	push	acc
      0048F9 E4               [12] 1596 	clr	a
      0048FA C0 E0            [24] 1597 	push	acc
      0048FC 8A 82            [24] 1598 	mov	dpl,r2
      0048FE 8B 83            [24] 1599 	mov	dph,r3
      004900 8C F0            [24] 1600 	mov	b,r4
      004902 12 50 52         [24] 1601 	lcall	_u2f_response_writeback
      004905 15 81            [12] 1602 	dec	sp
      004907 15 81            [12] 1603 	dec	sp
                           000296  1604 	C$u2f.c$100$1$129 ==.
                                   1605 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:100: u2f_response_flush();
      004909 12 50 79         [24] 1606 	lcall	_u2f_response_flush
      00490C 85 1B 81         [24] 1607 	mov	sp,_bp
      00490F D0 1B            [24] 1608 	pop	_bp
                           00029E  1609 	C$u2f.c$101$1$129 ==.
                           00029E  1610 	XG$u2f_request$0$0 ==.
      004911 22               [24] 1611 	ret
                                   1612 ;------------------------------------------------------------
                                   1613 ;Allocation info for local variables in function 'get_signature_length'
                                   1614 ;------------------------------------------------------------
                                   1615 ;sig                       Allocated to registers r5 r6 r7 
                                   1616 ;------------------------------------------------------------
                           00029F  1617 	Fu2f$get_signature_length$0$0 ==.
                           00029F  1618 	C$u2f.c$103$1$129 ==.
                                   1619 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:103: static uint8_t get_signature_length(uint8_t * sig)
                                   1620 ;	-----------------------------------------
                                   1621 ;	 function get_signature_length
                                   1622 ;	-----------------------------------------
      004912                       1623 _get_signature_length:
      004912 AD 82            [24] 1624 	mov	r5,dpl
      004914 AE 83            [24] 1625 	mov	r6,dph
      004916 AF F0            [24] 1626 	mov	r7,b
                           0002A5  1627 	C$u2f.c$105$1$137 ==.
                                   1628 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:105: return 0x46 + ((sig[32] & 0x80) == 0x80) + ((sig[0] & 0x80) == 0x80);
      004918 74 20            [12] 1629 	mov	a,#0x20
      00491A 2D               [12] 1630 	add	a,r5
      00491B FA               [12] 1631 	mov	r2,a
      00491C E4               [12] 1632 	clr	a
      00491D 3E               [12] 1633 	addc	a,r6
      00491E FB               [12] 1634 	mov	r3,a
      00491F 8F 04            [24] 1635 	mov	ar4,r7
      004921 8A 82            [24] 1636 	mov	dpl,r2
      004923 8B 83            [24] 1637 	mov	dph,r3
      004925 8C F0            [24] 1638 	mov	b,r4
      004927 12 5E 3E         [24] 1639 	lcall	__gptrget
      00492A FA               [12] 1640 	mov	r2,a
      00492B 53 02 80         [24] 1641 	anl	ar2,#0x80
      00492E E4               [12] 1642 	clr	a
      00492F BA 80 01         [24] 1643 	cjne	r2,#0x80,00103$
      004932 04               [12] 1644 	inc	a
      004933                       1645 00103$:
      004933 24 46            [12] 1646 	add	a,#0x46
      004935 FC               [12] 1647 	mov	r4,a
      004936 8D 82            [24] 1648 	mov	dpl,r5
      004938 8E 83            [24] 1649 	mov	dph,r6
      00493A 8F F0            [24] 1650 	mov	b,r7
      00493C 12 5E 3E         [24] 1651 	lcall	__gptrget
      00493F FD               [12] 1652 	mov	r5,a
      004940 53 05 80         [24] 1653 	anl	ar5,#0x80
      004943 E4               [12] 1654 	clr	a
      004944 BD 80 01         [24] 1655 	cjne	r5,#0x80,00105$
      004947 04               [12] 1656 	inc	a
      004948                       1657 00105$:
      004948 2C               [12] 1658 	add	a,r4
                           0002D6  1659 	C$u2f.c$106$1$137 ==.
                           0002D6  1660 	XFu2f$get_signature_length$0$0 ==.
      004949 F5 82            [12] 1661 	mov	dpl,a
      00494B 22               [24] 1662 	ret
                                   1663 ;------------------------------------------------------------
                                   1664 ;Allocation info for local variables in function 'dump_signature_der'
                                   1665 ;------------------------------------------------------------
                                   1666 ;sig                       Allocated to stack - _bp +1
                                   1667 ;pad_s                     Allocated to registers r5 
                                   1668 ;pad_r                     Allocated to registers r7 
                                   1669 ;i                         Allocated to stack - _bp +4
                                   1670 ;------------------------------------------------------------
                           0002D9  1671 	Fu2f$dump_signature_der$0$0 ==.
                           0002D9  1672 	C$u2f.c$108$1$137 ==.
                                   1673 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:108: static void dump_signature_der(uint8_t * sig)
                                   1674 ;	-----------------------------------------
                                   1675 ;	 function dump_signature_der
                                   1676 ;	-----------------------------------------
      00494C                       1677 _dump_signature_der:
      00494C C0 1B            [24] 1678 	push	_bp
      00494E 85 81 1B         [24] 1679 	mov	_bp,sp
      004951 C0 82            [24] 1680 	push	dpl
      004953 C0 83            [24] 1681 	push	dph
      004955 C0 F0            [24] 1682 	push	b
      004957 05 81            [12] 1683 	inc	sp
      004959 05 81            [12] 1684 	inc	sp
                           0002E8  1685 	C$u2f.c$110$1$139 ==.
                                   1686 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:110: uint8_t pad_s = (sig[32] & 0x80) == 0x80;
      00495B A8 1B            [24] 1687 	mov	r0,_bp
      00495D 08               [12] 1688 	inc	r0
      00495E 74 20            [12] 1689 	mov	a,#0x20
      004960 26               [12] 1690 	add	a,@r0
      004961 FA               [12] 1691 	mov	r2,a
      004962 E4               [12] 1692 	clr	a
      004963 08               [12] 1693 	inc	r0
      004964 36               [12] 1694 	addc	a,@r0
      004965 FB               [12] 1695 	mov	r3,a
      004966 08               [12] 1696 	inc	r0
      004967 86 04            [24] 1697 	mov	ar4,@r0
      004969 8A 82            [24] 1698 	mov	dpl,r2
      00496B 8B 83            [24] 1699 	mov	dph,r3
      00496D 8C F0            [24] 1700 	mov	b,r4
      00496F 12 5E 3E         [24] 1701 	lcall	__gptrget
      004972 FA               [12] 1702 	mov	r2,a
      004973 53 02 80         [24] 1703 	anl	ar2,#0x80
      004976 E4               [12] 1704 	clr	a
      004977 BA 80 01         [24] 1705 	cjne	r2,#0x80,00103$
      00497A 04               [12] 1706 	inc	a
      00497B                       1707 00103$:
      00497B FD               [12] 1708 	mov	r5,a
                           000309  1709 	C$u2f.c$111$1$139 ==.
                                   1710 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:111: uint8_t pad_r = (sig[0] & 0x80) == 0x80;
      00497C A8 1B            [24] 1711 	mov	r0,_bp
      00497E 08               [12] 1712 	inc	r0
      00497F 86 82            [24] 1713 	mov	dpl,@r0
      004981 08               [12] 1714 	inc	r0
      004982 86 83            [24] 1715 	mov	dph,@r0
      004984 08               [12] 1716 	inc	r0
      004985 86 F0            [24] 1717 	mov	b,@r0
      004987 12 5E 3E         [24] 1718 	lcall	__gptrget
      00498A FC               [12] 1719 	mov	r4,a
      00498B 53 04 80         [24] 1720 	anl	ar4,#0x80
      00498E E4               [12] 1721 	clr	a
      00498F BC 80 01         [24] 1722 	cjne	r4,#0x80,00105$
      004992 04               [12] 1723 	inc	a
      004993                       1724 00105$:
      004993 FF               [12] 1725 	mov	r7,a
                           000321  1726 	C$u2f.c$112$1$139 ==.
                                   1727 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:112: uint8_t i[] = {0x30, 0x44};
      004994 E5 1B            [12] 1728 	mov	a,_bp
      004996 24 04            [12] 1729 	add	a,#0x04
      004998 F9               [12] 1730 	mov	r1,a
      004999 77 30            [12] 1731 	mov	@r1,#0x30
      00499B E9               [12] 1732 	mov	a,r1
      00499C 04               [12] 1733 	inc	a
      00499D F8               [12] 1734 	mov	r0,a
      00499E 76 44            [12] 1735 	mov	@r0,#0x44
                           00032D  1736 	C$u2f.c$113$1$139 ==.
                                   1737 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:113: i[1] += (pad_s + pad_r);
      0049A0 86 03            [24] 1738 	mov	ar3,@r0
      0049A2 EF               [12] 1739 	mov	a,r7
      0049A3 2D               [12] 1740 	add	a,r5
      0049A4 2B               [12] 1741 	add	a,r3
      0049A5 F6               [12] 1742 	mov	@r0,a
                           000333  1743 	C$u2f.c$119$1$139 ==.
                                   1744 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:119: u2f_response_writeback(i,2);
      0049A6 89 04            [24] 1745 	mov	ar4,r1
      0049A8 8C 02            [24] 1746 	mov	ar2,r4
      0049AA 7B 00            [12] 1747 	mov	r3,#0x00
      0049AC 7C 40            [12] 1748 	mov	r4,#0x40
      0049AE C0 07            [24] 1749 	push	ar7
      0049B0 C0 05            [24] 1750 	push	ar5
      0049B2 C0 01            [24] 1751 	push	ar1
      0049B4 C0 00            [24] 1752 	push	ar0
      0049B6 74 02            [12] 1753 	mov	a,#0x02
      0049B8 C0 E0            [24] 1754 	push	acc
      0049BA E4               [12] 1755 	clr	a
      0049BB C0 E0            [24] 1756 	push	acc
      0049BD 8A 82            [24] 1757 	mov	dpl,r2
      0049BF 8B 83            [24] 1758 	mov	dph,r3
      0049C1 8C F0            [24] 1759 	mov	b,r4
      0049C3 12 50 52         [24] 1760 	lcall	_u2f_response_writeback
      0049C6 15 81            [12] 1761 	dec	sp
      0049C8 15 81            [12] 1762 	dec	sp
      0049CA D0 00            [24] 1763 	pop	ar0
                           000359  1764 	C$u2f.c$120$1$139 ==.
                                   1765 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:120: i[1] = 0;
      0049CC 76 00            [12] 1766 	mov	@r0,#0x00
                           00035B  1767 	C$u2f.c$123$1$139 ==.
                                   1768 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:123: u2f_response_writeback("\x02",1);
      0049CE 74 01            [12] 1769 	mov	a,#0x01
      0049D0 C0 E0            [24] 1770 	push	acc
      0049D2 E4               [12] 1771 	clr	a
      0049D3 C0 E0            [24] 1772 	push	acc
      0049D5 90 5F 60         [24] 1773 	mov	dptr,#___str_0
      0049D8 75 F0 80         [24] 1774 	mov	b,#0x80
      0049DB 12 50 52         [24] 1775 	lcall	_u2f_response_writeback
      0049DE 15 81            [12] 1776 	dec	sp
      0049E0 15 81            [12] 1777 	dec	sp
      0049E2 D0 01            [24] 1778 	pop	ar1
      0049E4 D0 05            [24] 1779 	pop	ar5
      0049E6 D0 07            [24] 1780 	pop	ar7
                           000375  1781 	C$u2f.c$124$1$139 ==.
                                   1782 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:124: i[0] = 0x20 + pad_r;
      0049E8 74 20            [12] 1783 	mov	a,#0x20
      0049EA 2F               [12] 1784 	add	a,r7
      0049EB F7               [12] 1785 	mov	@r1,a
                           000379  1786 	C$u2f.c$125$1$139 ==.
                                   1787 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:125: u2f_response_writeback(i,1 + pad_r);
      0049EC 8F 03            [24] 1788 	mov	ar3,r7
      0049EE 7C 00            [12] 1789 	mov	r4,#0x00
      0049F0 0B               [12] 1790 	inc	r3
      0049F1 BB 00 01         [24] 1791 	cjne	r3,#0x00,00107$
      0049F4 0C               [12] 1792 	inc	r4
      0049F5                       1793 00107$:
      0049F5 89 02            [24] 1794 	mov	ar2,r1
      0049F7 7E 00            [12] 1795 	mov	r6,#0x00
      0049F9 7F 40            [12] 1796 	mov	r7,#0x40
      0049FB C0 05            [24] 1797 	push	ar5
      0049FD C0 01            [24] 1798 	push	ar1
      0049FF C0 03            [24] 1799 	push	ar3
      004A01 C0 04            [24] 1800 	push	ar4
      004A03 8A 82            [24] 1801 	mov	dpl,r2
      004A05 8E 83            [24] 1802 	mov	dph,r6
      004A07 8F F0            [24] 1803 	mov	b,r7
      004A09 12 50 52         [24] 1804 	lcall	_u2f_response_writeback
      004A0C 15 81            [12] 1805 	dec	sp
      004A0E 15 81            [12] 1806 	dec	sp
                           00039D  1807 	C$u2f.c$128$1$139 ==.
                                   1808 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:128: u2f_response_writeback(sig, 32);
      004A10 74 20            [12] 1809 	mov	a,#0x20
      004A12 C0 E0            [24] 1810 	push	acc
      004A14 E4               [12] 1811 	clr	a
      004A15 C0 E0            [24] 1812 	push	acc
      004A17 A8 1B            [24] 1813 	mov	r0,_bp
      004A19 08               [12] 1814 	inc	r0
      004A1A 86 82            [24] 1815 	mov	dpl,@r0
      004A1C 08               [12] 1816 	inc	r0
      004A1D 86 83            [24] 1817 	mov	dph,@r0
      004A1F 08               [12] 1818 	inc	r0
      004A20 86 F0            [24] 1819 	mov	b,@r0
      004A22 12 50 52         [24] 1820 	lcall	_u2f_response_writeback
      004A25 15 81            [12] 1821 	dec	sp
      004A27 15 81            [12] 1822 	dec	sp
                           0003B6  1823 	C$u2f.c$131$1$139 ==.
                                   1824 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:131: u2f_response_writeback("\x02",1);
      004A29 74 01            [12] 1825 	mov	a,#0x01
      004A2B C0 E0            [24] 1826 	push	acc
      004A2D E4               [12] 1827 	clr	a
      004A2E C0 E0            [24] 1828 	push	acc
      004A30 90 5F 60         [24] 1829 	mov	dptr,#___str_0
      004A33 75 F0 80         [24] 1830 	mov	b,#0x80
      004A36 12 50 52         [24] 1831 	lcall	_u2f_response_writeback
      004A39 15 81            [12] 1832 	dec	sp
      004A3B 15 81            [12] 1833 	dec	sp
      004A3D D0 01            [24] 1834 	pop	ar1
      004A3F D0 05            [24] 1835 	pop	ar5
                           0003CE  1836 	C$u2f.c$132$1$139 ==.
                                   1837 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:132: i[0] = 0x20 + pad_s;
      004A41 74 20            [12] 1838 	mov	a,#0x20
      004A43 2D               [12] 1839 	add	a,r5
      004A44 F7               [12] 1840 	mov	@r1,a
                           0003D2  1841 	C$u2f.c$133$1$139 ==.
                                   1842 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:133: u2f_response_writeback(i,1 + pad_s);
      004A45 8D 02            [24] 1843 	mov	ar2,r5
      004A47 7F 00            [12] 1844 	mov	r7,#0x00
      004A49 0A               [12] 1845 	inc	r2
      004A4A BA 00 01         [24] 1846 	cjne	r2,#0x00,00108$
      004A4D 0F               [12] 1847 	inc	r7
      004A4E                       1848 00108$:
      004A4E 89 06            [24] 1849 	mov	ar6,r1
      004A50 7D 00            [12] 1850 	mov	r5,#0x00
      004A52 7C 40            [12] 1851 	mov	r4,#0x40
      004A54 C0 02            [24] 1852 	push	ar2
      004A56 C0 07            [24] 1853 	push	ar7
      004A58 8E 82            [24] 1854 	mov	dpl,r6
      004A5A 8D 83            [24] 1855 	mov	dph,r5
      004A5C 8C F0            [24] 1856 	mov	b,r4
      004A5E 12 50 52         [24] 1857 	lcall	_u2f_response_writeback
      004A61 15 81            [12] 1858 	dec	sp
      004A63 15 81            [12] 1859 	dec	sp
                           0003F2  1860 	C$u2f.c$136$1$139 ==.
                                   1861 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:136: u2f_response_writeback(sig+32, 32);
      004A65 A8 1B            [24] 1862 	mov	r0,_bp
      004A67 08               [12] 1863 	inc	r0
      004A68 74 20            [12] 1864 	mov	a,#0x20
      004A6A 26               [12] 1865 	add	a,@r0
      004A6B FD               [12] 1866 	mov	r5,a
      004A6C E4               [12] 1867 	clr	a
      004A6D 08               [12] 1868 	inc	r0
      004A6E 36               [12] 1869 	addc	a,@r0
      004A6F FE               [12] 1870 	mov	r6,a
      004A70 08               [12] 1871 	inc	r0
      004A71 86 07            [24] 1872 	mov	ar7,@r0
      004A73 74 20            [12] 1873 	mov	a,#0x20
      004A75 C0 E0            [24] 1874 	push	acc
      004A77 E4               [12] 1875 	clr	a
      004A78 C0 E0            [24] 1876 	push	acc
      004A7A 8D 82            [24] 1877 	mov	dpl,r5
      004A7C 8E 83            [24] 1878 	mov	dph,r6
      004A7E 8F F0            [24] 1879 	mov	b,r7
      004A80 12 50 52         [24] 1880 	lcall	_u2f_response_writeback
      004A83 15 81            [12] 1881 	dec	sp
      004A85 15 81            [12] 1882 	dec	sp
      004A87 85 1B 81         [24] 1883 	mov	sp,_bp
      004A8A D0 1B            [24] 1884 	pop	_bp
                           000419  1885 	C$u2f.c$137$1$139 ==.
                           000419  1886 	XFu2f$dump_signature_der$0$0 ==.
      004A8C 22               [24] 1887 	ret
                                   1888 ;------------------------------------------------------------
                                   1889 ;Allocation info for local variables in function 'u2f_authenticate'
                                   1890 ;------------------------------------------------------------
                                   1891 ;control                   Allocated to stack - _bp -3
                                   1892 ;req                       Allocated to stack - _bp +1
                                   1893 ;up                        Allocated to stack - _bp +10
                                   1894 ;count                     Allocated to stack - _bp +11
                                   1895 ;sloc0                     Allocated to stack - _bp +4
                                   1896 ;sloc1                     Allocated to stack - _bp +7
                                   1897 ;------------------------------------------------------------
                           00041A  1898 	Fu2f$u2f_authenticate$0$0 ==.
                           00041A  1899 	C$u2f.c$140$1$139 ==.
                                   1900 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:140: static int16_t u2f_authenticate(struct u2f_authenticate_request * req, uint8_t control)
                                   1901 ;	-----------------------------------------
                                   1902 ;	 function u2f_authenticate
                                   1903 ;	-----------------------------------------
      004A8D                       1904 _u2f_authenticate:
      004A8D C0 1B            [24] 1905 	push	_bp
      004A8F 85 81 1B         [24] 1906 	mov	_bp,sp
      004A92 C0 82            [24] 1907 	push	dpl
      004A94 C0 83            [24] 1908 	push	dph
      004A96 C0 F0            [24] 1909 	push	b
      004A98 E5 81            [12] 1910 	mov	a,sp
      004A9A 24 0B            [12] 1911 	add	a,#0x0b
      004A9C F5 81            [12] 1912 	mov	sp,a
                           00042B  1913 	C$u2f.c$143$1$139 ==.
                                   1914 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:143: uint8_t up = 1;
      004A9E E5 1B            [12] 1915 	mov	a,_bp
      004AA0 24 0A            [12] 1916 	add	a,#0x0a
      004AA2 F8               [12] 1917 	mov	r0,a
      004AA3 76 01            [12] 1918 	mov	@r0,#0x01
                           000432  1919 	C$u2f.c$146$1$141 ==.
                                   1920 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:146: if (control == U2F_AUTHENTICATE_CHECK)
      004AA5 E5 1B            [12] 1921 	mov	a,_bp
      004AA7 24 FD            [12] 1922 	add	a,#0xfd
      004AA9 F8               [12] 1923 	mov	r0,a
      004AAA B6 07 48         [24] 1924 	cjne	@r0,#0x07,00105$
                           00043A  1925 	C$u2f.c$148$2$142 ==.
                                   1926 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:148: u2f_hid_set_len(2);
      004AAD 90 00 02         [24] 1927 	mov	dptr,#0x0002
      004AB0 12 06 0B         [24] 1928 	lcall	_u2f_hid_set_len
                           000440  1929 	C$u2f.c$149$2$142 ==.
                                   1930 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:149: if (u2f_load_key(req->kh,req->app) == 0 )//&& u2f_appid_eq(req->kh, req->app) == 0)
      004AB3 A8 1B            [24] 1931 	mov	r0,_bp
      004AB5 08               [12] 1932 	inc	r0
      004AB6 74 20            [12] 1933 	mov	a,#0x20
      004AB8 26               [12] 1934 	add	a,@r0
      004AB9 FA               [12] 1935 	mov	r2,a
      004ABA E4               [12] 1936 	clr	a
      004ABB 08               [12] 1937 	inc	r0
      004ABC 36               [12] 1938 	addc	a,@r0
      004ABD FB               [12] 1939 	mov	r3,a
      004ABE 08               [12] 1940 	inc	r0
      004ABF 86 04            [24] 1941 	mov	ar4,@r0
      004AC1 A8 1B            [24] 1942 	mov	r0,_bp
      004AC3 08               [12] 1943 	inc	r0
      004AC4 74 41            [12] 1944 	mov	a,#0x41
      004AC6 26               [12] 1945 	add	a,@r0
      004AC7 FD               [12] 1946 	mov	r5,a
      004AC8 E4               [12] 1947 	clr	a
      004AC9 08               [12] 1948 	inc	r0
      004ACA 36               [12] 1949 	addc	a,@r0
      004ACB FE               [12] 1950 	mov	r6,a
      004ACC 08               [12] 1951 	inc	r0
      004ACD 86 07            [24] 1952 	mov	ar7,@r0
      004ACF C0 02            [24] 1953 	push	ar2
      004AD1 C0 03            [24] 1954 	push	ar3
      004AD3 C0 04            [24] 1955 	push	ar4
      004AD5 8D 82            [24] 1956 	mov	dpl,r5
      004AD7 8E 83            [24] 1957 	mov	dph,r6
      004AD9 8F F0            [24] 1958 	mov	b,r7
      004ADB 12 58 84         [24] 1959 	lcall	_u2f_load_key
      004ADE AF 82            [24] 1960 	mov	r7,dpl
      004AE0 15 81            [12] 1961 	dec	sp
      004AE2 15 81            [12] 1962 	dec	sp
      004AE4 15 81            [12] 1963 	dec	sp
      004AE6 EF               [12] 1964 	mov	a,r7
      004AE7 70 06            [24] 1965 	jnz	00102$
                           000476  1966 	C$u2f.c$151$3$143 ==.
                                   1967 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:151: return U2F_SW_CONDITIONS_NOT_SATISFIED;
      004AE9 90 69 85         [24] 1968 	mov	dptr,#0x6985
      004AEC 02 4C DF         [24] 1969 	ljmp	00114$
      004AEF                       1970 00102$:
                           00047C  1971 	C$u2f.c$155$3$144 ==.
                                   1972 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:155: return U2F_SW_WRONG_DATA;
      004AEF 90 69 84         [24] 1973 	mov	dptr,#0x6984
      004AF2 02 4C DF         [24] 1974 	ljmp	00114$
      004AF5                       1975 00105$:
                           000482  1976 	C$u2f.c$159$1$141 ==.
                                   1977 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:159: control != U2F_AUTHENTICATE_SIGN ||
      004AF5 E5 1B            [12] 1978 	mov	a,_bp
      004AF7 24 FD            [12] 1979 	add	a,#0xfd
      004AF9 F8               [12] 1980 	mov	r0,a
      004AFA B6 03 51         [24] 1981 	cjne	@r0,#0x03,00106$
                           00048A  1982 	C$u2f.c$160$1$141 ==.
                                   1983 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:160: req->khl != U2F_KEY_HANDLE_SIZE  ||
      004AFD A8 1B            [24] 1984 	mov	r0,_bp
      004AFF 08               [12] 1985 	inc	r0
      004B00 74 40            [12] 1986 	mov	a,#0x40
      004B02 26               [12] 1987 	add	a,@r0
      004B03 FD               [12] 1988 	mov	r5,a
      004B04 E4               [12] 1989 	clr	a
      004B05 08               [12] 1990 	inc	r0
      004B06 36               [12] 1991 	addc	a,@r0
      004B07 FE               [12] 1992 	mov	r6,a
      004B08 08               [12] 1993 	inc	r0
      004B09 86 07            [24] 1994 	mov	ar7,@r0
      004B0B 8D 82            [24] 1995 	mov	dpl,r5
      004B0D 8E 83            [24] 1996 	mov	dph,r6
      004B0F 8F F0            [24] 1997 	mov	b,r7
      004B11 12 5E 3E         [24] 1998 	lcall	__gptrget
      004B14 FD               [12] 1999 	mov	r5,a
      004B15 BD 24 36         [24] 2000 	cjne	r5,#0x24,00106$
                           0004A5  2001 	C$u2f.c$161$1$141 ==.
                                   2002 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:161: u2f_load_key(req->kh, req->app) != 0 //||
      004B18 A8 1B            [24] 2003 	mov	r0,_bp
      004B1A 08               [12] 2004 	inc	r0
      004B1B 74 20            [12] 2005 	mov	a,#0x20
      004B1D 26               [12] 2006 	add	a,@r0
      004B1E FD               [12] 2007 	mov	r5,a
      004B1F E4               [12] 2008 	clr	a
      004B20 08               [12] 2009 	inc	r0
      004B21 36               [12] 2010 	addc	a,@r0
      004B22 FE               [12] 2011 	mov	r6,a
      004B23 08               [12] 2012 	inc	r0
      004B24 86 07            [24] 2013 	mov	ar7,@r0
      004B26 A8 1B            [24] 2014 	mov	r0,_bp
      004B28 08               [12] 2015 	inc	r0
      004B29 74 41            [12] 2016 	mov	a,#0x41
      004B2B 26               [12] 2017 	add	a,@r0
      004B2C FA               [12] 2018 	mov	r2,a
      004B2D E4               [12] 2019 	clr	a
      004B2E 08               [12] 2020 	inc	r0
      004B2F 36               [12] 2021 	addc	a,@r0
      004B30 FB               [12] 2022 	mov	r3,a
      004B31 08               [12] 2023 	inc	r0
      004B32 86 04            [24] 2024 	mov	ar4,@r0
      004B34 C0 05            [24] 2025 	push	ar5
      004B36 C0 06            [24] 2026 	push	ar6
      004B38 C0 07            [24] 2027 	push	ar7
      004B3A 8A 82            [24] 2028 	mov	dpl,r2
      004B3C 8B 83            [24] 2029 	mov	dph,r3
      004B3E 8C F0            [24] 2030 	mov	b,r4
      004B40 12 58 84         [24] 2031 	lcall	_u2f_load_key
      004B43 AF 82            [24] 2032 	mov	r7,dpl
      004B45 15 81            [12] 2033 	dec	sp
      004B47 15 81            [12] 2034 	dec	sp
      004B49 15 81            [12] 2035 	dec	sp
      004B4B EF               [12] 2036 	mov	a,r7
      004B4C 60 0C            [24] 2037 	jz	00107$
      004B4E                       2038 00106$:
                           0004DB  2039 	C$u2f.c$165$2$145 ==.
                                   2040 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:165: u2f_hid_set_len(2);
      004B4E 90 00 02         [24] 2041 	mov	dptr,#0x0002
      004B51 12 06 0B         [24] 2042 	lcall	_u2f_hid_set_len
                           0004E1  2043 	C$u2f.c$166$2$145 ==.
                                   2044 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:166: return U2F_SW_WRONG_PAYLOAD;
      004B54 90 6A 80         [24] 2045 	mov	dptr,#0x6a80
      004B57 02 4C DF         [24] 2046 	ljmp	00114$
      004B5A                       2047 00107$:
                           0004E7  2048 	C$u2f.c$171$1$141 ==.
                                   2049 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:171: if (u2f_get_user_feedback())
      004B5A 12 50 84         [24] 2050 	lcall	_u2f_get_user_feedback
      004B5D E5 82            [12] 2051 	mov	a,dpl
      004B5F 60 0C            [24] 2052 	jz	00111$
                           0004EE  2053 	C$u2f.c$173$2$146 ==.
                                   2054 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:173: u2f_hid_set_len(2);
      004B61 90 00 02         [24] 2055 	mov	dptr,#0x0002
      004B64 12 06 0B         [24] 2056 	lcall	_u2f_hid_set_len
                           0004F4  2057 	C$u2f.c$174$2$146 ==.
                                   2058 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:174: return U2F_SW_CONDITIONS_NOT_SATISFIED;
      004B67 90 69 85         [24] 2059 	mov	dptr,#0x6985
      004B6A 02 4C DF         [24] 2060 	ljmp	00114$
      004B6D                       2061 00111$:
                           0004FA  2062 	C$u2f.c$177$1$141 ==.
                                   2063 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:177: count = u2f_count();
      004B6D 12 59 BA         [24] 2064 	lcall	_u2f_count
      004B70 AC 82            [24] 2065 	mov	r4,dpl
      004B72 AD 83            [24] 2066 	mov	r5,dph
      004B74 AE F0            [24] 2067 	mov	r6,b
      004B76 FF               [12] 2068 	mov	r7,a
      004B77 E5 1B            [12] 2069 	mov	a,_bp
      004B79 24 0B            [12] 2070 	add	a,#0x0b
      004B7B F8               [12] 2071 	mov	r0,a
      004B7C A6 04            [24] 2072 	mov	@r0,ar4
      004B7E 08               [12] 2073 	inc	r0
      004B7F A6 05            [24] 2074 	mov	@r0,ar5
      004B81 08               [12] 2075 	inc	r0
      004B82 A6 06            [24] 2076 	mov	@r0,ar6
      004B84 08               [12] 2077 	inc	r0
      004B85 A6 07            [24] 2078 	mov	@r0,ar7
                           000514  2079 	C$u2f.c$179$1$141 ==.
                                   2080 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:179: u2f_sha256_start();
      004B87 12 51 31         [24] 2081 	lcall	_u2f_sha256_start
                           000517  2082 	C$u2f.c$180$1$141 ==.
                                   2083 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:180: u2f_sha256_update(req->app,32);
      004B8A A8 1B            [24] 2084 	mov	r0,_bp
      004B8C 08               [12] 2085 	inc	r0
      004B8D 74 20            [12] 2086 	mov	a,#0x20
      004B8F 26               [12] 2087 	add	a,@r0
      004B90 FD               [12] 2088 	mov	r5,a
      004B91 E4               [12] 2089 	clr	a
      004B92 08               [12] 2090 	inc	r0
      004B93 36               [12] 2091 	addc	a,@r0
      004B94 FE               [12] 2092 	mov	r6,a
      004B95 08               [12] 2093 	inc	r0
      004B96 86 07            [24] 2094 	mov	ar7,@r0
      004B98 74 20            [12] 2095 	mov	a,#0x20
      004B9A C0 E0            [24] 2096 	push	acc
      004B9C 8D 82            [24] 2097 	mov	dpl,r5
      004B9E 8E 83            [24] 2098 	mov	dph,r6
      004BA0 8F F0            [24] 2099 	mov	b,r7
      004BA2 12 51 76         [24] 2100 	lcall	_u2f_sha256_update
      004BA5 15 81            [12] 2101 	dec	sp
                           000534  2102 	C$u2f.c$181$1$141 ==.
                                   2103 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:181: u2f_sha256_update(&up,1);
      004BA7 E5 1B            [12] 2104 	mov	a,_bp
      004BA9 24 0A            [12] 2105 	add	a,#0x0a
      004BAB FF               [12] 2106 	mov	r7,a
      004BAC FC               [12] 2107 	mov	r4,a
      004BAD 7D 00            [12] 2108 	mov	r5,#0x00
      004BAF 7E 40            [12] 2109 	mov	r6,#0x40
      004BB1 C0 07            [24] 2110 	push	ar7
      004BB3 74 01            [12] 2111 	mov	a,#0x01
      004BB5 C0 E0            [24] 2112 	push	acc
      004BB7 8C 82            [24] 2113 	mov	dpl,r4
      004BB9 8D 83            [24] 2114 	mov	dph,r5
      004BBB 8E F0            [24] 2115 	mov	b,r6
      004BBD 12 51 76         [24] 2116 	lcall	_u2f_sha256_update
      004BC0 15 81            [12] 2117 	dec	sp
                           00054F  2118 	C$u2f.c$182$1$141 ==.
                                   2119 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:182: u2f_sha256_update((uint8_t *)&count,4);
      004BC2 E5 1B            [12] 2120 	mov	a,_bp
      004BC4 24 0B            [12] 2121 	add	a,#0x0b
      004BC6 FE               [12] 2122 	mov	r6,a
      004BC7 FD               [12] 2123 	mov	r5,a
      004BC8 7C 00            [12] 2124 	mov	r4,#0x00
      004BCA 7B 40            [12] 2125 	mov	r3,#0x40
      004BCC C0 06            [24] 2126 	push	ar6
      004BCE 74 04            [12] 2127 	mov	a,#0x04
      004BD0 C0 E0            [24] 2128 	push	acc
      004BD2 8D 82            [24] 2129 	mov	dpl,r5
      004BD4 8C 83            [24] 2130 	mov	dph,r4
      004BD6 8B F0            [24] 2131 	mov	b,r3
      004BD8 12 51 76         [24] 2132 	lcall	_u2f_sha256_update
      004BDB 15 81            [12] 2133 	dec	sp
                           00056A  2134 	C$u2f.c$183$1$141 ==.
                                   2135 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:183: u2f_sha256_update(req->chal,32);
      004BDD 74 20            [12] 2136 	mov	a,#0x20
      004BDF C0 E0            [24] 2137 	push	acc
      004BE1 A8 1B            [24] 2138 	mov	r0,_bp
      004BE3 08               [12] 2139 	inc	r0
      004BE4 86 82            [24] 2140 	mov	dpl,@r0
      004BE6 08               [12] 2141 	inc	r0
      004BE7 86 83            [24] 2142 	mov	dph,@r0
      004BE9 08               [12] 2143 	inc	r0
      004BEA 86 F0            [24] 2144 	mov	b,@r0
      004BEC 12 51 76         [24] 2145 	lcall	_u2f_sha256_update
      004BEF 15 81            [12] 2146 	dec	sp
                           00057E  2147 	C$u2f.c$185$1$141 ==.
                                   2148 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:185: u2f_sha256_finish();
      004BF1 12 52 20         [24] 2149 	lcall	_u2f_sha256_finish
                           000581  2150 	C$u2f.c$187$1$141 ==.
                                   2151 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:187: if (u2f_ecdsa_sign((uint8_t*)req, req->kh, req->app) == -1)
      004BF4 A8 1B            [24] 2152 	mov	r0,_bp
      004BF6 08               [12] 2153 	inc	r0
      004BF7 E5 1B            [12] 2154 	mov	a,_bp
      004BF9 24 04            [12] 2155 	add	a,#0x04
      004BFB F9               [12] 2156 	mov	r1,a
      004BFC 74 20            [12] 2157 	mov	a,#0x20
      004BFE 26               [12] 2158 	add	a,@r0
      004BFF F7               [12] 2159 	mov	@r1,a
      004C00 E4               [12] 2160 	clr	a
      004C01 08               [12] 2161 	inc	r0
      004C02 36               [12] 2162 	addc	a,@r0
      004C03 09               [12] 2163 	inc	r1
      004C04 F7               [12] 2164 	mov	@r1,a
      004C05 08               [12] 2165 	inc	r0
      004C06 09               [12] 2166 	inc	r1
      004C07 E6               [12] 2167 	mov	a,@r0
      004C08 F7               [12] 2168 	mov	@r1,a
      004C09 A8 1B            [24] 2169 	mov	r0,_bp
      004C0B 08               [12] 2170 	inc	r0
      004C0C E5 1B            [12] 2171 	mov	a,_bp
      004C0E 24 07            [12] 2172 	add	a,#0x07
      004C10 F9               [12] 2173 	mov	r1,a
      004C11 74 41            [12] 2174 	mov	a,#0x41
      004C13 26               [12] 2175 	add	a,@r0
      004C14 F7               [12] 2176 	mov	@r1,a
      004C15 E4               [12] 2177 	clr	a
      004C16 08               [12] 2178 	inc	r0
      004C17 36               [12] 2179 	addc	a,@r0
      004C18 09               [12] 2180 	inc	r1
      004C19 F7               [12] 2181 	mov	@r1,a
      004C1A 08               [12] 2182 	inc	r0
      004C1B 09               [12] 2183 	inc	r1
      004C1C E6               [12] 2184 	mov	a,@r0
      004C1D F7               [12] 2185 	mov	@r1,a
      004C1E A8 1B            [24] 2186 	mov	r0,_bp
      004C20 08               [12] 2187 	inc	r0
      004C21 86 03            [24] 2188 	mov	ar3,@r0
      004C23 08               [12] 2189 	inc	r0
      004C24 86 04            [24] 2190 	mov	ar4,@r0
      004C26 08               [12] 2191 	inc	r0
      004C27 86 05            [24] 2192 	mov	ar5,@r0
      004C29 E5 1B            [12] 2193 	mov	a,_bp
      004C2B 24 04            [12] 2194 	add	a,#0x04
      004C2D F8               [12] 2195 	mov	r0,a
      004C2E E6               [12] 2196 	mov	a,@r0
      004C2F C0 E0            [24] 2197 	push	acc
      004C31 08               [12] 2198 	inc	r0
      004C32 E6               [12] 2199 	mov	a,@r0
      004C33 C0 E0            [24] 2200 	push	acc
      004C35 08               [12] 2201 	inc	r0
      004C36 E6               [12] 2202 	mov	a,@r0
      004C37 C0 E0            [24] 2203 	push	acc
      004C39 E5 1B            [12] 2204 	mov	a,_bp
      004C3B 24 07            [12] 2205 	add	a,#0x07
      004C3D F8               [12] 2206 	mov	r0,a
      004C3E E6               [12] 2207 	mov	a,@r0
      004C3F C0 E0            [24] 2208 	push	acc
      004C41 08               [12] 2209 	inc	r0
      004C42 E6               [12] 2210 	mov	a,@r0
      004C43 C0 E0            [24] 2211 	push	acc
      004C45 08               [12] 2212 	inc	r0
      004C46 E6               [12] 2213 	mov	a,@r0
      004C47 C0 E0            [24] 2214 	push	acc
      004C49 8B 82            [24] 2215 	mov	dpl,r3
      004C4B 8C 83            [24] 2216 	mov	dph,r4
      004C4D 8D F0            [24] 2217 	mov	b,r5
      004C4F 12 54 BE         [24] 2218 	lcall	_u2f_ecdsa_sign
      004C52 AD 82            [24] 2219 	mov	r5,dpl
      004C54 E5 81            [12] 2220 	mov	a,sp
      004C56 24 FA            [12] 2221 	add	a,#0xfa
      004C58 F5 81            [12] 2222 	mov	sp,a
      004C5A D0 06            [24] 2223 	pop	ar6
      004C5C D0 07            [24] 2224 	pop	ar7
      004C5E BD FF 05         [24] 2225 	cjne	r5,#0xff,00113$
                           0005EE  2226 	C$u2f.c$189$2$147 ==.
                                   2227 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:189: return U2F_SW_WRONG_DATA+0x20;
      004C61 90 69 A4         [24] 2228 	mov	dptr,#0x69a4
      004C64 80 79            [24] 2229 	sjmp	00114$
      004C66                       2230 00113$:
                           0005F3  2231 	C$u2f.c$192$1$141 ==.
                                   2232 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:192: u2f_hid_set_len(7 + get_signature_length((uint8_t*)req));
      004C66 A8 1B            [24] 2233 	mov	r0,_bp
      004C68 08               [12] 2234 	inc	r0
      004C69 86 03            [24] 2235 	mov	ar3,@r0
      004C6B 08               [12] 2236 	inc	r0
      004C6C 86 04            [24] 2237 	mov	ar4,@r0
      004C6E 08               [12] 2238 	inc	r0
      004C6F 86 05            [24] 2239 	mov	ar5,@r0
      004C71 8B 82            [24] 2240 	mov	dpl,r3
      004C73 8C 83            [24] 2241 	mov	dph,r4
      004C75 8D F0            [24] 2242 	mov	b,r5
      004C77 C0 07            [24] 2243 	push	ar7
      004C79 C0 06            [24] 2244 	push	ar6
      004C7B 12 49 12         [24] 2245 	lcall	_get_signature_length
      004C7E AD 82            [24] 2246 	mov	r5,dpl
      004C80 7C 00            [12] 2247 	mov	r4,#0x00
      004C82 74 07            [12] 2248 	mov	a,#0x07
      004C84 2D               [12] 2249 	add	a,r5
      004C85 FD               [12] 2250 	mov	r5,a
      004C86 E4               [12] 2251 	clr	a
      004C87 3C               [12] 2252 	addc	a,r4
      004C88 FC               [12] 2253 	mov	r4,a
      004C89 8D 82            [24] 2254 	mov	dpl,r5
      004C8B 8C 83            [24] 2255 	mov	dph,r4
      004C8D 12 06 0B         [24] 2256 	lcall	_u2f_hid_set_len
      004C90 D0 06            [24] 2257 	pop	ar6
      004C92 D0 07            [24] 2258 	pop	ar7
                           000621  2259 	C$u2f.c$194$1$141 ==.
                                   2260 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:194: u2f_response_writeback(&up,1);
      004C94 7D 00            [12] 2261 	mov	r5,#0x00
      004C96 7C 40            [12] 2262 	mov	r4,#0x40
      004C98 C0 06            [24] 2263 	push	ar6
      004C9A 74 01            [12] 2264 	mov	a,#0x01
      004C9C C0 E0            [24] 2265 	push	acc
      004C9E E4               [12] 2266 	clr	a
      004C9F C0 E0            [24] 2267 	push	acc
      004CA1 8F 82            [24] 2268 	mov	dpl,r7
      004CA3 8D 83            [24] 2269 	mov	dph,r5
      004CA5 8C F0            [24] 2270 	mov	b,r4
      004CA7 12 50 52         [24] 2271 	lcall	_u2f_response_writeback
      004CAA 15 81            [12] 2272 	dec	sp
      004CAC 15 81            [12] 2273 	dec	sp
      004CAE D0 06            [24] 2274 	pop	ar6
                           00063D  2275 	C$u2f.c$195$1$141 ==.
                                   2276 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:195: u2f_response_writeback((uint8_t *)&count,4);
      004CB0 7F 00            [12] 2277 	mov	r7,#0x00
      004CB2 7D 40            [12] 2278 	mov	r5,#0x40
      004CB4 74 04            [12] 2279 	mov	a,#0x04
      004CB6 C0 E0            [24] 2280 	push	acc
      004CB8 E4               [12] 2281 	clr	a
      004CB9 C0 E0            [24] 2282 	push	acc
      004CBB 8E 82            [24] 2283 	mov	dpl,r6
      004CBD 8F 83            [24] 2284 	mov	dph,r7
      004CBF 8D F0            [24] 2285 	mov	b,r5
      004CC1 12 50 52         [24] 2286 	lcall	_u2f_response_writeback
      004CC4 15 81            [12] 2287 	dec	sp
      004CC6 15 81            [12] 2288 	dec	sp
                           000655  2289 	C$u2f.c$196$1$141 ==.
                                   2290 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:196: dump_signature_der((uint8_t*)req);
      004CC8 A8 1B            [24] 2291 	mov	r0,_bp
      004CCA 08               [12] 2292 	inc	r0
      004CCB 86 05            [24] 2293 	mov	ar5,@r0
      004CCD 08               [12] 2294 	inc	r0
      004CCE 86 06            [24] 2295 	mov	ar6,@r0
      004CD0 08               [12] 2296 	inc	r0
      004CD1 86 07            [24] 2297 	mov	ar7,@r0
      004CD3 8D 82            [24] 2298 	mov	dpl,r5
      004CD5 8E 83            [24] 2299 	mov	dph,r6
      004CD7 8F F0            [24] 2300 	mov	b,r7
      004CD9 12 49 4C         [24] 2301 	lcall	_dump_signature_der
                           000669  2302 	C$u2f.c$198$1$141 ==.
                                   2303 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:198: return U2F_SW_NO_ERROR;
      004CDC 90 90 00         [24] 2304 	mov	dptr,#0x9000
      004CDF                       2305 00114$:
      004CDF 85 1B 81         [24] 2306 	mov	sp,_bp
      004CE2 D0 1B            [24] 2307 	pop	_bp
                           000671  2308 	C$u2f.c$199$1$141 ==.
                           000671  2309 	XFu2f$u2f_authenticate$0$0 ==.
      004CE4 22               [24] 2310 	ret
                                   2311 ;------------------------------------------------------------
                                   2312 ;Allocation info for local variables in function 'u2f_register'
                                   2313 ;------------------------------------------------------------
                                   2314 ;req                       Allocated to stack - _bp +1
                                   2315 ;i                         Allocated to stack - _bp +11
                                   2316 ;key_handle                Allocated to stack - _bp +13
                                   2317 ;pubkey                    Allocated to stack - _bp +49
                                   2318 ;attest_size               Allocated to registers 
                                   2319 ;sloc0                     Allocated to stack - _bp +4
                                   2320 ;sloc1                     Allocated to stack - _bp +7
                                   2321 ;sloc2                     Allocated to stack - _bp +8
                                   2322 ;------------------------------------------------------------
                           000672  2323 	Fu2f$u2f_register$0$0 ==.
                           000672  2324 	C$u2f.c$201$1$141 ==.
                                   2325 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:201: static int16_t u2f_register(struct u2f_register_request * req)
                                   2326 ;	-----------------------------------------
                                   2327 ;	 function u2f_register
                                   2328 ;	-----------------------------------------
      004CE5                       2329 _u2f_register:
      004CE5 C0 1B            [24] 2330 	push	_bp
      004CE7 85 81 1B         [24] 2331 	mov	_bp,sp
      004CEA C0 82            [24] 2332 	push	dpl
      004CEC C0 83            [24] 2333 	push	dph
      004CEE C0 F0            [24] 2334 	push	b
      004CF0 E5 81            [12] 2335 	mov	a,sp
      004CF2 24 6D            [12] 2336 	add	a,#0x6d
      004CF4 F5 81            [12] 2337 	mov	sp,a
                           000683  2338 	C$u2f.c$203$1$141 ==.
                                   2339 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:203: uint8_t i[] = {0x0,U2F_EC_FMT_UNCOMPRESSED};
      004CF6 E5 1B            [12] 2340 	mov	a,_bp
      004CF8 24 0B            [12] 2341 	add	a,#0x0b
      004CFA F9               [12] 2342 	mov	r1,a
      004CFB 77 00            [12] 2343 	mov	@r1,#0x00
      004CFD E9               [12] 2344 	mov	a,r1
      004CFE 04               [12] 2345 	inc	a
      004CFF F8               [12] 2346 	mov	r0,a
      004D00 76 04            [12] 2347 	mov	@r0,#0x04
                           00068F  2348 	C$u2f.c$209$1$149 ==.
                                   2349 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:209: const uint16_t attest_size = u2f_attestation_cert_size();
      004D02 C0 01            [24] 2350 	push	ar1
      004D04 C0 00            [24] 2351 	push	ar0
      004D06 12 5A 38         [24] 2352 	lcall	_u2f_attestation_cert_size
                           000696  2353 	C$u2f.c$211$1$149 ==.
                                   2354 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:211: if (u2f_get_user_feedback())
      004D09 12 50 84         [24] 2355 	lcall	_u2f_get_user_feedback
      004D0C E5 82            [12] 2356 	mov	a,dpl
      004D0E D0 00            [24] 2357 	pop	ar0
      004D10 D0 01            [24] 2358 	pop	ar1
      004D12 60 0C            [24] 2359 	jz	00102$
                           0006A1  2360 	C$u2f.c$213$2$150 ==.
                                   2361 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:213: u2f_hid_set_len(2);
      004D14 90 00 02         [24] 2362 	mov	dptr,#0x0002
      004D17 12 06 0B         [24] 2363 	lcall	_u2f_hid_set_len
                           0006A7  2364 	C$u2f.c$214$2$150 ==.
                                   2365 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:214: return U2F_SW_CONDITIONS_NOT_SATISFIED;
      004D1A 90 69 85         [24] 2366 	mov	dptr,#0x6985
      004D1D 02 4F EC         [24] 2367 	ljmp	00107$
      004D20                       2368 00102$:
                           0006AD  2369 	C$u2f.c$217$1$149 ==.
                                   2370 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:217: if ( u2f_new_keypair(key_handle, req->app, pubkey) == -1)
      004D20 C0 00            [24] 2371 	push	ar0
      004D22 E5 1B            [12] 2372 	mov	a,_bp
      004D24 24 31            [12] 2373 	add	a,#0x31
      004D26 FC               [12] 2374 	mov	r4,a
      004D27 C0 00            [24] 2375 	push	ar0
      004D29 E5 1B            [12] 2376 	mov	a,_bp
      004D2B 24 04            [12] 2377 	add	a,#0x04
      004D2D F8               [12] 2378 	mov	r0,a
      004D2E A6 04            [24] 2379 	mov	@r0,ar4
      004D30 08               [12] 2380 	inc	r0
      004D31 76 00            [12] 2381 	mov	@r0,#0x00
      004D33 08               [12] 2382 	inc	r0
      004D34 76 40            [12] 2383 	mov	@r0,#0x40
      004D36 A8 1B            [24] 2384 	mov	r0,_bp
      004D38 08               [12] 2385 	inc	r0
      004D39 C0 01            [24] 2386 	push	ar1
      004D3B E5 1B            [12] 2387 	mov	a,_bp
      004D3D 24 08            [12] 2388 	add	a,#0x08
      004D3F F9               [12] 2389 	mov	r1,a
      004D40 74 20            [12] 2390 	mov	a,#0x20
      004D42 26               [12] 2391 	add	a,@r0
      004D43 F7               [12] 2392 	mov	@r1,a
      004D44 E4               [12] 2393 	clr	a
      004D45 08               [12] 2394 	inc	r0
      004D46 36               [12] 2395 	addc	a,@r0
      004D47 09               [12] 2396 	inc	r1
      004D48 F7               [12] 2397 	mov	@r1,a
      004D49 08               [12] 2398 	inc	r0
      004D4A 09               [12] 2399 	inc	r1
      004D4B E6               [12] 2400 	mov	a,@r0
      004D4C F7               [12] 2401 	mov	@r1,a
      004D4D D0 01            [24] 2402 	pop	ar1
      004D4F E5 1B            [12] 2403 	mov	a,_bp
      004D51 24 07            [12] 2404 	add	a,#0x07
      004D53 F8               [12] 2405 	mov	r0,a
      004D54 E5 1B            [12] 2406 	mov	a,_bp
      004D56 24 0D            [12] 2407 	add	a,#0x0d
      004D58 F6               [12] 2408 	mov	@r0,a
      004D59 E5 1B            [12] 2409 	mov	a,_bp
      004D5B 24 07            [12] 2410 	add	a,#0x07
      004D5D F8               [12] 2411 	mov	r0,a
      004D5E 86 02            [24] 2412 	mov	ar2,@r0
      004D60 7B 00            [12] 2413 	mov	r3,#0x00
      004D62 7F 40            [12] 2414 	mov	r7,#0x40
      004D64 D0 00            [24] 2415 	pop	ar0
      004D66 C0 04            [24] 2416 	push	ar4
      004D68 C0 01            [24] 2417 	push	ar1
      004D6A C0 00            [24] 2418 	push	ar0
      004D6C 85 00 F0         [24] 2419 	mov	b,ar0
      004D6F E5 1B            [12] 2420 	mov	a,_bp
      004D71 24 04            [12] 2421 	add	a,#0x04
      004D73 F8               [12] 2422 	mov	r0,a
      004D74 E6               [12] 2423 	mov	a,@r0
      004D75 C0 E0            [24] 2424 	push	acc
      004D77 08               [12] 2425 	inc	r0
      004D78 E6               [12] 2426 	mov	a,@r0
      004D79 C0 E0            [24] 2427 	push	acc
      004D7B 08               [12] 2428 	inc	r0
      004D7C E6               [12] 2429 	mov	a,@r0
      004D7D C0 E0            [24] 2430 	push	acc
      004D7F A8 F0            [24] 2431 	mov	r0,b
      004D81 85 00 F0         [24] 2432 	mov	b,ar0
      004D84 E5 1B            [12] 2433 	mov	a,_bp
      004D86 24 08            [12] 2434 	add	a,#0x08
      004D88 F8               [12] 2435 	mov	r0,a
      004D89 E6               [12] 2436 	mov	a,@r0
      004D8A C0 E0            [24] 2437 	push	acc
      004D8C 08               [12] 2438 	inc	r0
      004D8D E6               [12] 2439 	mov	a,@r0
      004D8E C0 E0            [24] 2440 	push	acc
      004D90 08               [12] 2441 	inc	r0
      004D91 E6               [12] 2442 	mov	a,@r0
      004D92 C0 E0            [24] 2443 	push	acc
      004D94 8A 82            [24] 2444 	mov	dpl,r2
      004D96 8B 83            [24] 2445 	mov	dph,r3
      004D98 8F F0            [24] 2446 	mov	b,r7
      004D9A 12 55 6C         [24] 2447 	lcall	_u2f_new_keypair
      004D9D AF 82            [24] 2448 	mov	r7,dpl
      004D9F E5 81            [12] 2449 	mov	a,sp
      004DA1 24 FA            [12] 2450 	add	a,#0xfa
      004DA3 F5 81            [12] 2451 	mov	sp,a
      004DA5 D0 00            [24] 2452 	pop	ar0
      004DA7 D0 01            [24] 2453 	pop	ar1
      004DA9 D0 04            [24] 2454 	pop	ar4
      004DAB BF FF 02         [24] 2455 	cjne	r7,#0xff,00119$
      004DAE 80 04            [24] 2456 	sjmp	00120$
      004DB0                       2457 00119$:
      004DB0 D0 00            [24] 2458 	pop	ar0
      004DB2 80 0E            [24] 2459 	sjmp	00104$
      004DB4                       2460 00120$:
      004DB4 D0 00            [24] 2461 	pop	ar0
                           000743  2462 	C$u2f.c$219$2$151 ==.
                                   2463 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:219: u2f_hid_set_len(2);
      004DB6 90 00 02         [24] 2464 	mov	dptr,#0x0002
      004DB9 12 06 0B         [24] 2465 	lcall	_u2f_hid_set_len
                           000749  2466 	C$u2f.c$220$2$151 ==.
                                   2467 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:220: return U2F_SW_INSUFFICIENT_MEMORY;
      004DBC 90 92 10         [24] 2468 	mov	dptr,#0x9210
      004DBF 02 4F EC         [24] 2469 	ljmp	00107$
      004DC2                       2470 00104$:
                           00074F  2471 	C$u2f.c$223$1$149 ==.
                                   2472 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:223: u2f_sha256_start();
      004DC2 C0 04            [24] 2473 	push	ar4
      004DC4 C0 01            [24] 2474 	push	ar1
      004DC6 C0 00            [24] 2475 	push	ar0
      004DC8 12 51 31         [24] 2476 	lcall	_u2f_sha256_start
      004DCB D0 00            [24] 2477 	pop	ar0
      004DCD D0 01            [24] 2478 	pop	ar1
                           00075C  2479 	C$u2f.c$224$1$149 ==.
                                   2480 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:224: u2f_sha256_update(i,1);
      004DCF 89 07            [24] 2481 	mov	ar7,r1
      004DD1 7E 00            [12] 2482 	mov	r6,#0x00
      004DD3 7D 40            [12] 2483 	mov	r5,#0x40
      004DD5 C0 01            [24] 2484 	push	ar1
      004DD7 C0 00            [24] 2485 	push	ar0
      004DD9 74 01            [12] 2486 	mov	a,#0x01
      004DDB C0 E0            [24] 2487 	push	acc
      004DDD 8F 82            [24] 2488 	mov	dpl,r7
      004DDF 8E 83            [24] 2489 	mov	dph,r6
      004DE1 8D F0            [24] 2490 	mov	b,r5
      004DE3 12 51 76         [24] 2491 	lcall	_u2f_sha256_update
      004DE6 15 81            [12] 2492 	dec	sp
      004DE8 D0 00            [24] 2493 	pop	ar0
      004DEA D0 01            [24] 2494 	pop	ar1
      004DEC D0 04            [24] 2495 	pop	ar4
                           00077B  2496 	C$u2f.c$225$1$149 ==.
                                   2497 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:225: u2f_sha256_update(req->app,32);
      004DEE C0 00            [24] 2498 	push	ar0
      004DF0 A8 1B            [24] 2499 	mov	r0,_bp
      004DF2 08               [12] 2500 	inc	r0
      004DF3 74 20            [12] 2501 	mov	a,#0x20
      004DF5 26               [12] 2502 	add	a,@r0
      004DF6 FD               [12] 2503 	mov	r5,a
      004DF7 E4               [12] 2504 	clr	a
      004DF8 08               [12] 2505 	inc	r0
      004DF9 36               [12] 2506 	addc	a,@r0
      004DFA FE               [12] 2507 	mov	r6,a
      004DFB 08               [12] 2508 	inc	r0
      004DFC 86 07            [24] 2509 	mov	ar7,@r0
      004DFE D0 00            [24] 2510 	pop	ar0
      004E00 C0 04            [24] 2511 	push	ar4
      004E02 C0 01            [24] 2512 	push	ar1
      004E04 C0 00            [24] 2513 	push	ar0
      004E06 74 20            [12] 2514 	mov	a,#0x20
      004E08 C0 E0            [24] 2515 	push	acc
      004E0A 8D 82            [24] 2516 	mov	dpl,r5
      004E0C 8E 83            [24] 2517 	mov	dph,r6
      004E0E 8F F0            [24] 2518 	mov	b,r7
      004E10 12 51 76         [24] 2519 	lcall	_u2f_sha256_update
      004E13 15 81            [12] 2520 	dec	sp
      004E15 D0 00            [24] 2521 	pop	ar0
                           0007A4  2522 	C$u2f.c$227$1$149 ==.
                                   2523 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:227: u2f_sha256_update(req->chal,32);
      004E17 C0 00            [24] 2524 	push	ar0
      004E19 74 20            [12] 2525 	mov	a,#0x20
      004E1B C0 E0            [24] 2526 	push	acc
      004E1D C0 00            [24] 2527 	push	ar0
      004E1F A8 1B            [24] 2528 	mov	r0,_bp
      004E21 08               [12] 2529 	inc	r0
      004E22 86 82            [24] 2530 	mov	dpl,@r0
      004E24 08               [12] 2531 	inc	r0
      004E25 86 83            [24] 2532 	mov	dph,@r0
      004E27 08               [12] 2533 	inc	r0
      004E28 86 F0            [24] 2534 	mov	b,@r0
      004E2A D0 00            [24] 2535 	pop	ar0
      004E2C 12 51 76         [24] 2536 	lcall	_u2f_sha256_update
      004E2F 15 81            [12] 2537 	dec	sp
      004E31 D0 00            [24] 2538 	pop	ar0
      004E33 D0 01            [24] 2539 	pop	ar1
      004E35 D0 04            [24] 2540 	pop	ar4
                           0007C4  2541 	C$u2f.c$229$1$149 ==.
                                   2542 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:229: u2f_sha256_update(key_handle,U2F_KEY_HANDLE_SIZE);
      004E37 C0 00            [24] 2543 	push	ar0
      004E39 E5 1B            [12] 2544 	mov	a,_bp
      004E3B 24 07            [12] 2545 	add	a,#0x07
      004E3D F8               [12] 2546 	mov	r0,a
      004E3E 86 07            [24] 2547 	mov	ar7,@r0
      004E40 D0 00            [24] 2548 	pop	ar0
      004E42 7E 00            [12] 2549 	mov	r6,#0x00
      004E44 7D 40            [12] 2550 	mov	r5,#0x40
      004E46 C0 04            [24] 2551 	push	ar4
      004E48 C0 01            [24] 2552 	push	ar1
      004E4A C0 00            [24] 2553 	push	ar0
      004E4C 74 24            [12] 2554 	mov	a,#0x24
      004E4E C0 E0            [24] 2555 	push	acc
      004E50 8F 82            [24] 2556 	mov	dpl,r7
      004E52 8E 83            [24] 2557 	mov	dph,r6
      004E54 8D F0            [24] 2558 	mov	b,r5
      004E56 12 51 76         [24] 2559 	lcall	_u2f_sha256_update
      004E59 15 81            [12] 2560 	dec	sp
      004E5B D0 00            [24] 2561 	pop	ar0
                           0007EA  2562 	C$u2f.c$230$1$149 ==.
                                   2563 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:230: u2f_sha256_update(i+1,1);
      004E5D 88 07            [24] 2564 	mov	ar7,r0
      004E5F 7E 00            [12] 2565 	mov	r6,#0x00
      004E61 7D 40            [12] 2566 	mov	r5,#0x40
      004E63 74 01            [12] 2567 	mov	a,#0x01
      004E65 C0 E0            [24] 2568 	push	acc
      004E67 8F 82            [24] 2569 	mov	dpl,r7
      004E69 8E 83            [24] 2570 	mov	dph,r6
      004E6B 8D F0            [24] 2571 	mov	b,r5
      004E6D 12 51 76         [24] 2572 	lcall	_u2f_sha256_update
      004E70 15 81            [12] 2573 	dec	sp
      004E72 D0 01            [24] 2574 	pop	ar1
      004E74 D0 04            [24] 2575 	pop	ar4
                           000803  2576 	C$u2f.c$231$1$149 ==.
                                   2577 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:231: u2f_sha256_update(pubkey,64);
      004E76 8C 07            [24] 2578 	mov	ar7,r4
      004E78 7E 00            [12] 2579 	mov	r6,#0x00
      004E7A 7D 40            [12] 2580 	mov	r5,#0x40
      004E7C C0 04            [24] 2581 	push	ar4
      004E7E C0 01            [24] 2582 	push	ar1
      004E80 ED               [12] 2583 	mov	a,r5
      004E81 C0 E0            [24] 2584 	push	acc
      004E83 8F 82            [24] 2585 	mov	dpl,r7
      004E85 8E 83            [24] 2586 	mov	dph,r6
      004E87 8D F0            [24] 2587 	mov	b,r5
      004E89 12 51 76         [24] 2588 	lcall	_u2f_sha256_update
      004E8C 15 81            [12] 2589 	dec	sp
                           00081B  2590 	C$u2f.c$232$1$149 ==.
                                   2591 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:232: u2f_sha256_finish();
      004E8E 12 52 20         [24] 2592 	lcall	_u2f_sha256_finish
      004E91 D0 01            [24] 2593 	pop	ar1
                           000820  2594 	C$u2f.c$234$1$149 ==.
                                   2595 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:234: if (u2f_ecdsa_sign((uint8_t*)req, U2F_ATTESTATION_HANDLE, req->app) == -1)
      004E93 A8 1B            [24] 2596 	mov	r0,_bp
      004E95 08               [12] 2597 	inc	r0
      004E96 74 20            [12] 2598 	mov	a,#0x20
      004E98 26               [12] 2599 	add	a,@r0
      004E99 FD               [12] 2600 	mov	r5,a
      004E9A E4               [12] 2601 	clr	a
      004E9B 08               [12] 2602 	inc	r0
      004E9C 36               [12] 2603 	addc	a,@r0
      004E9D FE               [12] 2604 	mov	r6,a
      004E9E 08               [12] 2605 	inc	r0
      004E9F 86 07            [24] 2606 	mov	ar7,@r0
      004EA1 A8 1B            [24] 2607 	mov	r0,_bp
      004EA3 08               [12] 2608 	inc	r0
      004EA4 86 02            [24] 2609 	mov	ar2,@r0
      004EA6 08               [12] 2610 	inc	r0
      004EA7 86 03            [24] 2611 	mov	ar3,@r0
      004EA9 08               [12] 2612 	inc	r0
      004EAA 86 04            [24] 2613 	mov	ar4,@r0
      004EAC C0 04            [24] 2614 	push	ar4
      004EAE C0 01            [24] 2615 	push	ar1
      004EB0 C0 05            [24] 2616 	push	ar5
      004EB2 C0 06            [24] 2617 	push	ar6
      004EB4 C0 07            [24] 2618 	push	ar7
      004EB6 E4               [12] 2619 	clr	a
      004EB7 C0 E0            [24] 2620 	push	acc
      004EB9 C0 E0            [24] 2621 	push	acc
      004EBB C0 E0            [24] 2622 	push	acc
      004EBD 8A 82            [24] 2623 	mov	dpl,r2
      004EBF 8B 83            [24] 2624 	mov	dph,r3
      004EC1 8C F0            [24] 2625 	mov	b,r4
      004EC3 12 54 BE         [24] 2626 	lcall	_u2f_ecdsa_sign
      004EC6 AF 82            [24] 2627 	mov	r7,dpl
      004EC8 E5 81            [12] 2628 	mov	a,sp
      004ECA 24 FA            [12] 2629 	add	a,#0xfa
      004ECC F5 81            [12] 2630 	mov	sp,a
      004ECE D0 01            [24] 2631 	pop	ar1
      004ED0 D0 04            [24] 2632 	pop	ar4
      004ED2 BF FF 02         [24] 2633 	cjne	r7,#0xff,00121$
      004ED5 80 04            [24] 2634 	sjmp	00122$
      004ED7                       2635 00121$:
      004ED7 D0 04            [24] 2636 	pop	ar4
      004ED9 80 08            [24] 2637 	sjmp	00106$
      004EDB                       2638 00122$:
      004EDB D0 04            [24] 2639 	pop	ar4
                           00086A  2640 	C$u2f.c$236$2$152 ==.
                                   2641 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:236: return U2F_SW_WRONG_DATA;
      004EDD 90 69 84         [24] 2642 	mov	dptr,#0x6984
      004EE0 02 4F EC         [24] 2643 	ljmp	00107$
      004EE3                       2644 00106$:
                           000870  2645 	C$u2f.c$239$1$149 ==.
                                   2646 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:239: u2f_hid_set_len(69 + get_signature_length((uint8_t*)req) + U2F_KEY_HANDLE_SIZE + u2f_attestation_cert_size());
      004EE3 A8 1B            [24] 2647 	mov	r0,_bp
      004EE5 08               [12] 2648 	inc	r0
      004EE6 86 05            [24] 2649 	mov	ar5,@r0
      004EE8 08               [12] 2650 	inc	r0
      004EE9 86 06            [24] 2651 	mov	ar6,@r0
      004EEB 08               [12] 2652 	inc	r0
      004EEC 86 07            [24] 2653 	mov	ar7,@r0
      004EEE 8D 82            [24] 2654 	mov	dpl,r5
      004EF0 8E 83            [24] 2655 	mov	dph,r6
      004EF2 8F F0            [24] 2656 	mov	b,r7
      004EF4 C0 04            [24] 2657 	push	ar4
      004EF6 C0 01            [24] 2658 	push	ar1
      004EF8 12 49 12         [24] 2659 	lcall	_get_signature_length
      004EFB AF 82            [24] 2660 	mov	r7,dpl
      004EFD D0 01            [24] 2661 	pop	ar1
      004EFF D0 04            [24] 2662 	pop	ar4
      004F01 7E 00            [12] 2663 	mov	r6,#0x00
      004F03 74 69            [12] 2664 	mov	a,#0x69
      004F05 2F               [12] 2665 	add	a,r7
      004F06 FF               [12] 2666 	mov	r7,a
      004F07 E4               [12] 2667 	clr	a
      004F08 3E               [12] 2668 	addc	a,r6
      004F09 FE               [12] 2669 	mov	r6,a
      004F0A C0 07            [24] 2670 	push	ar7
      004F0C C0 06            [24] 2671 	push	ar6
      004F0E C0 04            [24] 2672 	push	ar4
      004F10 C0 01            [24] 2673 	push	ar1
      004F12 12 5A 38         [24] 2674 	lcall	_u2f_attestation_cert_size
      004F15 AB 82            [24] 2675 	mov	r3,dpl
      004F17 AD 83            [24] 2676 	mov	r5,dph
      004F19 D0 01            [24] 2677 	pop	ar1
      004F1B D0 04            [24] 2678 	pop	ar4
      004F1D D0 06            [24] 2679 	pop	ar6
      004F1F D0 07            [24] 2680 	pop	ar7
      004F21 EB               [12] 2681 	mov	a,r3
      004F22 2F               [12] 2682 	add	a,r7
      004F23 FB               [12] 2683 	mov	r3,a
      004F24 ED               [12] 2684 	mov	a,r5
      004F25 3E               [12] 2685 	addc	a,r6
      004F26 FD               [12] 2686 	mov	r5,a
      004F27 8B 82            [24] 2687 	mov	dpl,r3
      004F29 8D 83            [24] 2688 	mov	dph,r5
      004F2B C0 04            [24] 2689 	push	ar4
      004F2D C0 01            [24] 2690 	push	ar1
      004F2F 12 06 0B         [24] 2691 	lcall	_u2f_hid_set_len
      004F32 D0 01            [24] 2692 	pop	ar1
                           0008C1  2693 	C$u2f.c$240$1$149 ==.
                                   2694 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:240: i[0] = 0x5;
      004F34 77 05            [12] 2695 	mov	@r1,#0x05
                           0008C3  2696 	C$u2f.c$241$1$149 ==.
                                   2697 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:241: u2f_response_writeback(i,2);
      004F36 89 07            [24] 2698 	mov	ar7,r1
      004F38 7E 00            [12] 2699 	mov	r6,#0x00
      004F3A 7D 40            [12] 2700 	mov	r5,#0x40
      004F3C C0 01            [24] 2701 	push	ar1
      004F3E 74 02            [12] 2702 	mov	a,#0x02
      004F40 C0 E0            [24] 2703 	push	acc
      004F42 E4               [12] 2704 	clr	a
      004F43 C0 E0            [24] 2705 	push	acc
      004F45 8F 82            [24] 2706 	mov	dpl,r7
      004F47 8E 83            [24] 2707 	mov	dph,r6
      004F49 8D F0            [24] 2708 	mov	b,r5
      004F4B 12 50 52         [24] 2709 	lcall	_u2f_response_writeback
      004F4E 15 81            [12] 2710 	dec	sp
      004F50 15 81            [12] 2711 	dec	sp
      004F52 D0 01            [24] 2712 	pop	ar1
      004F54 D0 04            [24] 2713 	pop	ar4
                           0008E3  2714 	C$u2f.c$242$1$149 ==.
                                   2715 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:242: u2f_response_writeback(pubkey,64);
      004F56 7F 00            [12] 2716 	mov	r7,#0x00
      004F58 7E 40            [12] 2717 	mov	r6,#0x40
      004F5A C0 01            [24] 2718 	push	ar1
      004F5C EE               [12] 2719 	mov	a,r6
      004F5D C0 E0            [24] 2720 	push	acc
      004F5F E4               [12] 2721 	clr	a
      004F60 C0 E0            [24] 2722 	push	acc
      004F62 8C 82            [24] 2723 	mov	dpl,r4
      004F64 8F 83            [24] 2724 	mov	dph,r7
      004F66 8E F0            [24] 2725 	mov	b,r6
      004F68 12 50 52         [24] 2726 	lcall	_u2f_response_writeback
      004F6B 15 81            [12] 2727 	dec	sp
      004F6D 15 81            [12] 2728 	dec	sp
      004F6F D0 01            [24] 2729 	pop	ar1
                           0008FE  2730 	C$u2f.c$243$1$149 ==.
                                   2731 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:243: i[0] = U2F_KEY_HANDLE_SIZE;
      004F71 77 24            [12] 2732 	mov	@r1,#0x24
                           000900  2733 	C$u2f.c$244$1$149 ==.
                                   2734 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:244: u2f_response_writeback(i,1);
      004F73 89 07            [24] 2735 	mov	ar7,r1
      004F75 7E 00            [12] 2736 	mov	r6,#0x00
      004F77 7D 40            [12] 2737 	mov	r5,#0x40
      004F79 74 01            [12] 2738 	mov	a,#0x01
      004F7B C0 E0            [24] 2739 	push	acc
      004F7D E4               [12] 2740 	clr	a
      004F7E C0 E0            [24] 2741 	push	acc
      004F80 8F 82            [24] 2742 	mov	dpl,r7
      004F82 8E 83            [24] 2743 	mov	dph,r6
      004F84 8D F0            [24] 2744 	mov	b,r5
      004F86 12 50 52         [24] 2745 	lcall	_u2f_response_writeback
      004F89 15 81            [12] 2746 	dec	sp
      004F8B 15 81            [12] 2747 	dec	sp
                           00091A  2748 	C$u2f.c$245$1$149 ==.
                                   2749 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:245: u2f_response_writeback(key_handle,U2F_KEY_HANDLE_SIZE);
      004F8D E5 1B            [12] 2750 	mov	a,_bp
      004F8F 24 07            [12] 2751 	add	a,#0x07
      004F91 F8               [12] 2752 	mov	r0,a
      004F92 86 07            [24] 2753 	mov	ar7,@r0
      004F94 7E 00            [12] 2754 	mov	r6,#0x00
      004F96 7D 40            [12] 2755 	mov	r5,#0x40
      004F98 74 24            [12] 2756 	mov	a,#0x24
      004F9A C0 E0            [24] 2757 	push	acc
      004F9C E4               [12] 2758 	clr	a
      004F9D C0 E0            [24] 2759 	push	acc
      004F9F 8F 82            [24] 2760 	mov	dpl,r7
      004FA1 8E 83            [24] 2761 	mov	dph,r6
      004FA3 8D F0            [24] 2762 	mov	b,r5
      004FA5 12 50 52         [24] 2763 	lcall	_u2f_response_writeback
      004FA8 15 81            [12] 2764 	dec	sp
      004FAA 15 81            [12] 2765 	dec	sp
                           000939  2766 	C$u2f.c$247$1$149 ==.
                                   2767 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:247: u2f_response_writeback(u2f_get_attestation_cert(),u2f_attestation_cert_size());
      004FAC 12 5A 38         [24] 2768 	lcall	_u2f_attestation_cert_size
      004FAF AE 82            [24] 2769 	mov	r6,dpl
      004FB1 AF 83            [24] 2770 	mov	r7,dph
      004FB3 C0 07            [24] 2771 	push	ar7
      004FB5 C0 06            [24] 2772 	push	ar6
      004FB7 12 5A 31         [24] 2773 	lcall	_u2f_get_attestation_cert
      004FBA AB 82            [24] 2774 	mov	r3,dpl
      004FBC AC 83            [24] 2775 	mov	r4,dph
      004FBE AD F0            [24] 2776 	mov	r5,b
      004FC0 D0 06            [24] 2777 	pop	ar6
      004FC2 D0 07            [24] 2778 	pop	ar7
      004FC4 C0 06            [24] 2779 	push	ar6
      004FC6 C0 07            [24] 2780 	push	ar7
      004FC8 8B 82            [24] 2781 	mov	dpl,r3
      004FCA 8C 83            [24] 2782 	mov	dph,r4
      004FCC 8D F0            [24] 2783 	mov	b,r5
      004FCE 12 50 52         [24] 2784 	lcall	_u2f_response_writeback
      004FD1 15 81            [12] 2785 	dec	sp
      004FD3 15 81            [12] 2786 	dec	sp
                           000962  2787 	C$u2f.c$249$1$149 ==.
                                   2788 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:249: dump_signature_der((uint8_t*)req);
      004FD5 A8 1B            [24] 2789 	mov	r0,_bp
      004FD7 08               [12] 2790 	inc	r0
      004FD8 86 05            [24] 2791 	mov	ar5,@r0
      004FDA 08               [12] 2792 	inc	r0
      004FDB 86 06            [24] 2793 	mov	ar6,@r0
      004FDD 08               [12] 2794 	inc	r0
      004FDE 86 07            [24] 2795 	mov	ar7,@r0
      004FE0 8D 82            [24] 2796 	mov	dpl,r5
      004FE2 8E 83            [24] 2797 	mov	dph,r6
      004FE4 8F F0            [24] 2798 	mov	b,r7
      004FE6 12 49 4C         [24] 2799 	lcall	_dump_signature_der
                           000976  2800 	C$u2f.c$252$1$149 ==.
                                   2801 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:252: return U2F_SW_NO_ERROR;
      004FE9 90 90 00         [24] 2802 	mov	dptr,#0x9000
      004FEC                       2803 00107$:
      004FEC 85 1B 81         [24] 2804 	mov	sp,_bp
      004FEF D0 1B            [24] 2805 	pop	_bp
                           00097E  2806 	C$u2f.c$253$1$149 ==.
                           00097E  2807 	XFu2f$u2f_register$0$0 ==.
      004FF1 22               [24] 2808 	ret
                                   2809 ;------------------------------------------------------------
                                   2810 ;Allocation info for local variables in function 'u2f_version'
                                   2811 ;------------------------------------------------------------
                                   2812 ;version                   Allocated to stack - _bp +1
                                   2813 ;------------------------------------------------------------
                           00097F  2814 	Fu2f$u2f_version$0$0 ==.
                           00097F  2815 	C$u2f.c$255$1$149 ==.
                                   2816 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:255: static int16_t u2f_version()
                                   2817 ;	-----------------------------------------
                                   2818 ;	 function u2f_version
                                   2819 ;	-----------------------------------------
      004FF2                       2820 _u2f_version:
      004FF2 C0 1B            [24] 2821 	push	_bp
      004FF4 E5 81            [12] 2822 	mov	a,sp
      004FF6 F5 1B            [12] 2823 	mov	_bp,a
      004FF8 24 07            [12] 2824 	add	a,#0x07
      004FFA F5 81            [12] 2825 	mov	sp,a
                           000989  2826 	C$u2f.c$257$1$149 ==.
                                   2827 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:257: const char version[] = "U2F_V2";
      004FFC A9 1B            [24] 2828 	mov	r1,_bp
      004FFE 09               [12] 2829 	inc	r1
      004FFF 77 55            [12] 2830 	mov	@r1,#0x55
      005001 E9               [12] 2831 	mov	a,r1
      005002 04               [12] 2832 	inc	a
      005003 F8               [12] 2833 	mov	r0,a
      005004 76 32            [12] 2834 	mov	@r0,#0x32
      005006 74 02            [12] 2835 	mov	a,#0x02
      005008 29               [12] 2836 	add	a,r1
      005009 F8               [12] 2837 	mov	r0,a
      00500A 76 46            [12] 2838 	mov	@r0,#0x46
      00500C 74 03            [12] 2839 	mov	a,#0x03
      00500E 29               [12] 2840 	add	a,r1
      00500F F8               [12] 2841 	mov	r0,a
      005010 76 5F            [12] 2842 	mov	@r0,#0x5f
      005012 74 04            [12] 2843 	mov	a,#0x04
      005014 29               [12] 2844 	add	a,r1
      005015 F8               [12] 2845 	mov	r0,a
      005016 76 56            [12] 2846 	mov	@r0,#0x56
      005018 74 05            [12] 2847 	mov	a,#0x05
      00501A 29               [12] 2848 	add	a,r1
      00501B F8               [12] 2849 	mov	r0,a
      00501C 76 32            [12] 2850 	mov	@r0,#0x32
      00501E 74 06            [12] 2851 	mov	a,#0x06
      005020 29               [12] 2852 	add	a,r1
      005021 F8               [12] 2853 	mov	r0,a
      005022 76 00            [12] 2854 	mov	@r0,#0x00
                           0009B1  2855 	C$u2f.c$258$1$153 ==.
                                   2856 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:258: u2f_hid_set_len(2 + sizeof(version)-1);
      005024 90 00 08         [24] 2857 	mov	dptr,#0x0008
      005027 C0 01            [24] 2858 	push	ar1
      005029 12 06 0B         [24] 2859 	lcall	_u2f_hid_set_len
      00502C D0 01            [24] 2860 	pop	ar1
                           0009BB  2861 	C$u2f.c$259$1$153 ==.
                                   2862 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:259: u2f_response_writeback(version, sizeof(version)-1);
      00502E 89 07            [24] 2863 	mov	ar7,r1
      005030 7E 00            [12] 2864 	mov	r6,#0x00
      005032 7D 40            [12] 2865 	mov	r5,#0x40
      005034 74 06            [12] 2866 	mov	a,#0x06
      005036 C0 E0            [24] 2867 	push	acc
      005038 E4               [12] 2868 	clr	a
      005039 C0 E0            [24] 2869 	push	acc
      00503B 8F 82            [24] 2870 	mov	dpl,r7
      00503D 8E 83            [24] 2871 	mov	dph,r6
      00503F 8D F0            [24] 2872 	mov	b,r5
      005041 12 50 52         [24] 2873 	lcall	_u2f_response_writeback
      005044 15 81            [12] 2874 	dec	sp
      005046 15 81            [12] 2875 	dec	sp
                           0009D5  2876 	C$u2f.c$260$1$153 ==.
                                   2877 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:260: return U2F_SW_NO_ERROR;
      005048 90 90 00         [24] 2878 	mov	dptr,#0x9000
      00504B 85 1B 81         [24] 2879 	mov	sp,_bp
      00504E D0 1B            [24] 2880 	pop	_bp
                           0009DD  2881 	C$u2f.c$261$1$153 ==.
                           0009DD  2882 	XFu2f$u2f_version$0$0 ==.
      005050 22               [24] 2883 	ret
                                   2884 	.area CSEG    (CODE)
                                   2885 	.area CONST   (CODE)
                           000000  2886 Fu2f$__str_0$0$0 == .
      005F60                       2887 ___str_0:
      005F60 02                    2888 	.db 0x02
      005F61 00                    2889 	.db 0x00
                                   2890 	.area XINIT   (CODE)
                                   2891 	.area CABS    (ABS,CODE)
