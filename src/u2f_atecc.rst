                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module u2f_atecc
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _atecc_send_recv
                                     12 	.globl _u2f_prints
                                     13 	.globl _u2f_delay
                                     14 	.globl _rgb
                                     15 	.globl _u2f_hid_flush
                                     16 	.globl _u2f_hid_writeback
                                     17 	.globl _u2f_hid_set_len
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
                                    357 	.globl _SHA_HMAC_KEY
                                    358 	.globl _SHA_FLAGS
                                    359 	.globl _u2f_init
                                    360 	.globl _u2f_response_writeback
                                    361 	.globl _u2f_response_flush
                                    362 	.globl _u2f_response_start
                                    363 	.globl _u2f_get_user_feedback
                                    364 	.globl _u2f_sha256_start
                                    365 	.globl _u2f_sha256_update
                                    366 	.globl _u2f_sha256_finish
                                    367 	.globl _u2f_ecdsa_sign
                                    368 	.globl _u2f_new_keypair
                                    369 	.globl _u2f_load_key
                                    370 	.globl _u2f_appid_eq
                                    371 	.globl _u2f_count
                                    372 	.globl _u2f_get_attestation_cert
                                    373 	.globl _u2f_attestation_cert_size
                                    374 	.globl _set_response_length
                                    375 ;--------------------------------------------------------
                                    376 ; special function registers
                                    377 ;--------------------------------------------------------
                                    378 	.area RSEG    (ABS,DATA)
      000000                        379 	.org 0x0000
                           0000E0   380 G$ACC$0$0 == 0x00e0
                           0000E0   381 _ACC	=	0x00e0
                           0000B3   382 G$ADC0AC$0$0 == 0x00b3
                           0000B3   383 _ADC0AC	=	0x00b3
                           0000BC   384 G$ADC0CF$0$0 == 0x00bc
                           0000BC   385 _ADC0CF	=	0x00bc
                           0000E8   386 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   387 _ADC0CN0	=	0x00e8
                           0000B2   388 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   389 _ADC0CN1	=	0x00b2
                           0000C4   390 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   391 _ADC0GTH	=	0x00c4
                           0000C3   392 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   393 _ADC0GTL	=	0x00c3
                           0000BE   394 G$ADC0H$0$0 == 0x00be
                           0000BE   395 _ADC0H	=	0x00be
                           0000BD   396 G$ADC0L$0$0 == 0x00bd
                           0000BD   397 _ADC0L	=	0x00bd
                           0000C6   398 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   399 _ADC0LTH	=	0x00c6
                           0000C5   400 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   401 _ADC0LTL	=	0x00c5
                           0000BB   402 G$ADC0MX$0$0 == 0x00bb
                           0000BB   403 _ADC0MX	=	0x00bb
                           0000DF   404 G$ADC0PWR$0$0 == 0x00df
                           0000DF   405 _ADC0PWR	=	0x00df
                           0000B9   406 G$ADC0TK$0$0 == 0x00b9
                           0000B9   407 _ADC0TK	=	0x00b9
                           0000F0   408 G$B$0$0 == 0x00f0
                           0000F0   409 _B	=	0x00f0
                           00008E   410 G$CKCON0$0$0 == 0x008e
                           00008E   411 _CKCON0	=	0x008e
                           0000A6   412 G$CKCON1$0$0 == 0x00a6
                           0000A6   413 _CKCON1	=	0x00a6
                           0000A9   414 G$CLKSEL$0$0 == 0x00a9
                           0000A9   415 _CLKSEL	=	0x00a9
                           00009B   416 G$CMP0CN0$0$0 == 0x009b
                           00009B   417 _CMP0CN0	=	0x009b
                           000099   418 G$CMP0CN1$0$0 == 0x0099
                           000099   419 _CMP0CN1	=	0x0099
                           00009D   420 G$CMP0MD$0$0 == 0x009d
                           00009D   421 _CMP0MD	=	0x009d
                           00009F   422 G$CMP0MX$0$0 == 0x009f
                           00009F   423 _CMP0MX	=	0x009f
                           0000BF   424 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   425 _CMP1CN0	=	0x00bf
                           0000AC   426 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   427 _CMP1CN1	=	0x00ac
                           0000AB   428 G$CMP1MD$0$0 == 0x00ab
                           0000AB   429 _CMP1MD	=	0x00ab
                           0000AA   430 G$CMP1MX$0$0 == 0x00aa
                           0000AA   431 _CMP1MX	=	0x00aa
                           0000CE   432 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   433 _CRC0CN0	=	0x00ce
                           000086   434 G$CRC0CN1$0$0 == 0x0086
                           000086   435 _CRC0CN1	=	0x0086
                           0000D3   436 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   437 _CRC0CNT	=	0x00d3
                           0000DE   438 G$CRC0DAT$0$0 == 0x00de
                           0000DE   439 _CRC0DAT	=	0x00de
                           0000CF   440 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   441 _CRC0FLIP	=	0x00cf
                           0000DD   442 G$CRC0IN$0$0 == 0x00dd
                           0000DD   443 _CRC0IN	=	0x00dd
                           0000D2   444 G$CRC0ST$0$0 == 0x00d2
                           0000D2   445 _CRC0ST	=	0x00d2
                           0000AD   446 G$DERIVID$0$0 == 0x00ad
                           0000AD   447 _DERIVID	=	0x00ad
                           0000B5   448 G$DEVICEID$0$0 == 0x00b5
                           0000B5   449 _DEVICEID	=	0x00b5
                           000083   450 G$DPH$0$0 == 0x0083
                           000083   451 _DPH	=	0x0083
                           000082   452 G$DPL$0$0 == 0x0082
                           000082   453 _DPL	=	0x0082
                           0000E6   454 G$EIE1$0$0 == 0x00e6
                           0000E6   455 _EIE1	=	0x00e6
                           0000CE   456 G$EIE2$0$0 == 0x00ce
                           0000CE   457 _EIE2	=	0x00ce
                           0000F3   458 G$EIP1$0$0 == 0x00f3
                           0000F3   459 _EIP1	=	0x00f3
                           0000F5   460 G$EIP1H$0$0 == 0x00f5
                           0000F5   461 _EIP1H	=	0x00f5
                           0000F4   462 G$EIP2$0$0 == 0x00f4
                           0000F4   463 _EIP2	=	0x00f4
                           0000F6   464 G$EIP2H$0$0 == 0x00f6
                           0000F6   465 _EIP2H	=	0x00f6
                           0000E7   466 G$EMI0CN$0$0 == 0x00e7
                           0000E7   467 _EMI0CN	=	0x00e7
                           0000B7   468 G$FLKEY$0$0 == 0x00b7
                           0000B7   469 _FLKEY	=	0x00b7
                           0000C7   470 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   471 _HFO0CAL	=	0x00c7
                           0000D6   472 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   473 _HFO1CAL	=	0x00d6
                           0000EF   474 G$HFOCN$0$0 == 0x00ef
                           0000EF   475 _HFOCN	=	0x00ef
                           0000BA   476 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   477 _I2C0CN0	=	0x00ba
                           0000BC   478 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   479 _I2C0DIN	=	0x00bc
                           0000BB   480 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   481 _I2C0DOUT	=	0x00bb
                           0000AD   482 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   483 _I2C0FCN0	=	0x00ad
                           0000AB   484 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   485 _I2C0FCN1	=	0x00ab
                           0000F5   486 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   487 _I2C0FCT	=	0x00f5
                           0000BD   488 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   489 _I2C0SLAD	=	0x00bd
                           0000B9   490 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   491 _I2C0STAT	=	0x00b9
                           0000A8   492 G$IE$0$0 == 0x00a8
                           0000A8   493 _IE	=	0x00a8
                           0000B8   494 G$IP$0$0 == 0x00b8
                           0000B8   495 _IP	=	0x00b8
                           0000F2   496 G$IPH$0$0 == 0x00f2
                           0000F2   497 _IPH	=	0x00f2
                           0000E4   498 G$IT01CF$0$0 == 0x00e4
                           0000E4   499 _IT01CF	=	0x00e4
                           0000B1   500 G$LFO0CN$0$0 == 0x00b1
                           0000B1   501 _LFO0CN	=	0x00b1
                           000080   502 G$P0$0$0 == 0x0080
                           000080   503 _P0	=	0x0080
                           0000FE   504 G$P0MASK$0$0 == 0x00fe
                           0000FE   505 _P0MASK	=	0x00fe
                           0000FD   506 G$P0MAT$0$0 == 0x00fd
                           0000FD   507 _P0MAT	=	0x00fd
                           0000F1   508 G$P0MDIN$0$0 == 0x00f1
                           0000F1   509 _P0MDIN	=	0x00f1
                           0000A4   510 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   511 _P0MDOUT	=	0x00a4
                           0000D4   512 G$P0SKIP$0$0 == 0x00d4
                           0000D4   513 _P0SKIP	=	0x00d4
                           000090   514 G$P1$0$0 == 0x0090
                           000090   515 _P1	=	0x0090
                           0000EE   516 G$P1MASK$0$0 == 0x00ee
                           0000EE   517 _P1MASK	=	0x00ee
                           0000ED   518 G$P1MAT$0$0 == 0x00ed
                           0000ED   519 _P1MAT	=	0x00ed
                           0000F2   520 G$P1MDIN$0$0 == 0x00f2
                           0000F2   521 _P1MDIN	=	0x00f2
                           0000A5   522 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   523 _P1MDOUT	=	0x00a5
                           0000D5   524 G$P1SKIP$0$0 == 0x00d5
                           0000D5   525 _P1SKIP	=	0x00d5
                           0000A0   526 G$P2$0$0 == 0x00a0
                           0000A0   527 _P2	=	0x00a0
                           0000FC   528 G$P2MASK$0$0 == 0x00fc
                           0000FC   529 _P2MASK	=	0x00fc
                           0000FB   530 G$P2MAT$0$0 == 0x00fb
                           0000FB   531 _P2MAT	=	0x00fb
                           0000F3   532 G$P2MDIN$0$0 == 0x00f3
                           0000F3   533 _P2MDIN	=	0x00f3
                           0000A6   534 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   535 _P2MDOUT	=	0x00a6
                           0000CC   536 G$P2SKIP$0$0 == 0x00cc
                           0000CC   537 _P2SKIP	=	0x00cc
                           0000B0   538 G$P3$0$0 == 0x00b0
                           0000B0   539 _P3	=	0x00b0
                           0000F4   540 G$P3MDIN$0$0 == 0x00f4
                           0000F4   541 _P3MDIN	=	0x00f4
                           00009C   542 G$P3MDOUT$0$0 == 0x009c
                           00009C   543 _P3MDOUT	=	0x009c
                           00009E   544 G$PCA0CENT$0$0 == 0x009e
                           00009E   545 _PCA0CENT	=	0x009e
                           00009C   546 G$PCA0CLR$0$0 == 0x009c
                           00009C   547 _PCA0CLR	=	0x009c
                           0000D8   548 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   549 _PCA0CN0	=	0x00d8
                           0000FC   550 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   551 _PCA0CPH0	=	0x00fc
                           0000EA   552 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   553 _PCA0CPH1	=	0x00ea
                           0000EC   554 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   555 _PCA0CPH2	=	0x00ec
                           0000FB   556 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   557 _PCA0CPL0	=	0x00fb
                           0000E9   558 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   559 _PCA0CPL1	=	0x00e9
                           0000EB   560 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   561 _PCA0CPL2	=	0x00eb
                           0000DA   562 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   563 _PCA0CPM0	=	0x00da
                           0000DB   564 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   565 _PCA0CPM1	=	0x00db
                           0000DC   566 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   567 _PCA0CPM2	=	0x00dc
                           0000FA   568 G$PCA0H$0$0 == 0x00fa
                           0000FA   569 _PCA0H	=	0x00fa
                           0000F9   570 G$PCA0L$0$0 == 0x00f9
                           0000F9   571 _PCA0L	=	0x00f9
                           0000D9   572 G$PCA0MD$0$0 == 0x00d9
                           0000D9   573 _PCA0MD	=	0x00d9
                           000096   574 G$PCA0POL$0$0 == 0x0096
                           000096   575 _PCA0POL	=	0x0096
                           0000F7   576 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   577 _PCA0PWM	=	0x00f7
                           000087   578 G$PCON0$0$0 == 0x0087
                           000087   579 _PCON0	=	0x0087
                           00009A   580 G$PCON1$0$0 == 0x009a
                           00009A   581 _PCON1	=	0x009a
                           0000C1   582 G$PFE0CN$0$0 == 0x00c1
                           0000C1   583 _PFE0CN	=	0x00c1
                           0000F6   584 G$PRTDRV$0$0 == 0x00f6
                           0000F6   585 _PRTDRV	=	0x00f6
                           00008F   586 G$PSCTL$0$0 == 0x008f
                           00008F   587 _PSCTL	=	0x008f
                           0000D0   588 G$PSW$0$0 == 0x00d0
                           0000D0   589 _PSW	=	0x00d0
                           0000D1   590 G$REF0CN$0$0 == 0x00d1
                           0000D1   591 _REF0CN	=	0x00d1
                           0000C9   592 G$REG0CN$0$0 == 0x00c9
                           0000C9   593 _REG0CN	=	0x00c9
                           0000C6   594 G$REG1CN$0$0 == 0x00c6
                           0000C6   595 _REG1CN	=	0x00c6
                           0000B6   596 G$REVID$0$0 == 0x00b6
                           0000B6   597 _REVID	=	0x00b6
                           0000EF   598 G$RSTSRC$0$0 == 0x00ef
                           0000EF   599 _RSTSRC	=	0x00ef
                           000094   600 G$SBCON1$0$0 == 0x0094
                           000094   601 _SBCON1	=	0x0094
                           000096   602 G$SBRLH1$0$0 == 0x0096
                           000096   603 _SBRLH1	=	0x0096
                           000095   604 G$SBRLL1$0$0 == 0x0095
                           000095   605 _SBRLL1	=	0x0095
                           000099   606 G$SBUF0$0$0 == 0x0099
                           000099   607 _SBUF0	=	0x0099
                           000092   608 G$SBUF1$0$0 == 0x0092
                           000092   609 _SBUF1	=	0x0092
                           000098   610 G$SCON0$0$0 == 0x0098
                           000098   611 _SCON0	=	0x0098
                           0000C8   612 G$SCON1$0$0 == 0x00c8
                           0000C8   613 _SCON1	=	0x00c8
                           0000A7   614 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   615 _SFRPAGE	=	0x00a7
                           0000CF   616 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   617 _SFRPGCN	=	0x00cf
                           0000D7   618 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   619 _SFRSTACK	=	0x00d7
                           0000D6   620 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   621 _SMB0ADM	=	0x00d6
                           0000D7   622 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   623 _SMB0ADR	=	0x00d7
                           0000C1   624 G$SMB0CF$0$0 == 0x00c1
                           0000C1   625 _SMB0CF	=	0x00c1
                           0000C0   626 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   627 _SMB0CN0	=	0x00c0
                           0000C2   628 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   629 _SMB0DAT	=	0x00c2
                           0000C3   630 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   631 _SMB0FCN0	=	0x00c3
                           0000C4   632 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   633 _SMB0FCN1	=	0x00c4
                           0000EF   634 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   635 _SMB0FCT	=	0x00ef
                           0000C5   636 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   637 _SMB0RXLN	=	0x00c5
                           0000AC   638 G$SMB0TC$0$0 == 0x00ac
                           0000AC   639 _SMB0TC	=	0x00ac
                           000093   640 G$SMOD1$0$0 == 0x0093
                           000093   641 _SMOD1	=	0x0093
                           000081   642 G$SP$0$0 == 0x0081
                           000081   643 _SP	=	0x0081
                           0000A1   644 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   645 _SPI0CFG	=	0x00a1
                           0000A2   646 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   647 _SPI0CKR	=	0x00a2
                           0000F8   648 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   649 _SPI0CN0	=	0x00f8
                           0000A3   650 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   651 _SPI0DAT	=	0x00a3
                           00009A   652 G$SPI0FCN0$0$0 == 0x009a
                           00009A   653 _SPI0FCN0	=	0x009a
                           00009B   654 G$SPI0FCN1$0$0 == 0x009b
                           00009B   655 _SPI0FCN1	=	0x009b
                           0000F7   656 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   657 _SPI0FCT	=	0x00f7
                           000088   658 G$TCON$0$0 == 0x0088
                           000088   659 _TCON	=	0x0088
                           00008C   660 G$TH0$0$0 == 0x008c
                           00008C   661 _TH0	=	0x008c
                           00008D   662 G$TH1$0$0 == 0x008d
                           00008D   663 _TH1	=	0x008d
                           00008A   664 G$TL0$0$0 == 0x008a
                           00008A   665 _TL0	=	0x008a
                           00008B   666 G$TL1$0$0 == 0x008b
                           00008B   667 _TL1	=	0x008b
                           000089   668 G$TMOD$0$0 == 0x0089
                           000089   669 _TMOD	=	0x0089
                           0000C8   670 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   671 _TMR2CN0	=	0x00c8
                           0000FD   672 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   673 _TMR2CN1	=	0x00fd
                           0000CD   674 G$TMR2H$0$0 == 0x00cd
                           0000CD   675 _TMR2H	=	0x00cd
                           0000CC   676 G$TMR2L$0$0 == 0x00cc
                           0000CC   677 _TMR2L	=	0x00cc
                           0000CB   678 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   679 _TMR2RLH	=	0x00cb
                           0000CA   680 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   681 _TMR2RLL	=	0x00ca
                           000091   682 G$TMR3CN0$0$0 == 0x0091
                           000091   683 _TMR3CN0	=	0x0091
                           0000FE   684 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   685 _TMR3CN1	=	0x00fe
                           000095   686 G$TMR3H$0$0 == 0x0095
                           000095   687 _TMR3H	=	0x0095
                           000094   688 G$TMR3L$0$0 == 0x0094
                           000094   689 _TMR3L	=	0x0094
                           000093   690 G$TMR3RLH$0$0 == 0x0093
                           000093   691 _TMR3RLH	=	0x0093
                           000092   692 G$TMR3RLL$0$0 == 0x0092
                           000092   693 _TMR3RLL	=	0x0092
                           000098   694 G$TMR4CN0$0$0 == 0x0098
                           000098   695 _TMR4CN0	=	0x0098
                           0000FF   696 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   697 _TMR4CN1	=	0x00ff
                           0000A5   698 G$TMR4H$0$0 == 0x00a5
                           0000A5   699 _TMR4H	=	0x00a5
                           0000A4   700 G$TMR4L$0$0 == 0x00a4
                           0000A4   701 _TMR4L	=	0x00a4
                           0000A3   702 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   703 _TMR4RLH	=	0x00a3
                           0000A2   704 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   705 _TMR4RLL	=	0x00a2
                           00009D   706 G$UART1FCN0$0$0 == 0x009d
                           00009D   707 _UART1FCN0	=	0x009d
                           0000D8   708 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   709 _UART1FCN1	=	0x00d8
                           0000FA   710 G$UART1FCT$0$0 == 0x00fa
                           0000FA   711 _UART1FCT	=	0x00fa
                           00009E   712 G$UART1LIN$0$0 == 0x009e
                           00009E   713 _UART1LIN	=	0x009e
                           0000AE   714 G$USB0ADR$0$0 == 0x00ae
                           0000AE   715 _USB0ADR	=	0x00ae
                           0000B2   716 G$USB0AEC$0$0 == 0x00b2
                           0000B2   717 _USB0AEC	=	0x00b2
                           0000B6   718 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   719 _USB0CDCF	=	0x00b6
                           0000BE   720 G$USB0CDCN$0$0 == 0x00be
                           0000BE   721 _USB0CDCN	=	0x00be
                           0000BF   722 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   723 _USB0CDSTA	=	0x00bf
                           0000B5   724 G$USB0CF$0$0 == 0x00b5
                           0000B5   725 _USB0CF	=	0x00b5
                           0000AF   726 G$USB0DAT$0$0 == 0x00af
                           0000AF   727 _USB0DAT	=	0x00af
                           0000B3   728 G$USB0XCN$0$0 == 0x00b3
                           0000B3   729 _USB0XCN	=	0x00b3
                           0000FF   730 G$VDM0CN$0$0 == 0x00ff
                           0000FF   731 _VDM0CN	=	0x00ff
                           000097   732 G$WDTCN$0$0 == 0x0097
                           000097   733 _WDTCN	=	0x0097
                           0000E1   734 G$XBR0$0$0 == 0x00e1
                           0000E1   735 _XBR0	=	0x00e1
                           0000E2   736 G$XBR1$0$0 == 0x00e2
                           0000E2   737 _XBR1	=	0x00e2
                           0000E3   738 G$XBR2$0$0 == 0x00e3
                           0000E3   739 _XBR2	=	0x00e3
                           0000C3   740 G$ADC0GT$0$0 == 0x00c3
                           0000C3   741 _ADC0GT	=	0x00c3
                           0000BD   742 G$ADC0$0$0 == 0x00bd
                           0000BD   743 _ADC0	=	0x00bd
                           0000C5   744 G$ADC0LT$0$0 == 0x00c5
                           0000C5   745 _ADC0LT	=	0x00c5
                           000082   746 G$DP$0$0 == 0x0082
                           000082   747 _DP	=	0x0082
                           0000FB   748 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   749 _PCA0CP0	=	0x00fb
                           0000E9   750 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   751 _PCA0CP1	=	0x00e9
                           0000EB   752 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   753 _PCA0CP2	=	0x00eb
                           0000F9   754 G$PCA0$0$0 == 0x00f9
                           0000F9   755 _PCA0	=	0x00f9
                           000095   756 G$SBRL1$0$0 == 0x0095
                           000095   757 _SBRL1	=	0x0095
                           0000CC   758 G$TMR2$0$0 == 0x00cc
                           0000CC   759 _TMR2	=	0x00cc
                           0000CA   760 G$TMR2RL$0$0 == 0x00ca
                           0000CA   761 _TMR2RL	=	0x00ca
                           000094   762 G$TMR3$0$0 == 0x0094
                           000094   763 _TMR3	=	0x0094
                           000092   764 G$TMR3RL$0$0 == 0x0092
                           000092   765 _TMR3RL	=	0x0092
                           0000A4   766 G$TMR4$0$0 == 0x00a4
                           0000A4   767 _TMR4	=	0x00a4
                           0000A2   768 G$TMR4RL$0$0 == 0x00a2
                           0000A2   769 _TMR4RL	=	0x00a2
                           0000AA   770 G$_XPAGE$0$0 == 0x00aa
                           0000AA   771 __XPAGE	=	0x00aa
                                    772 ;--------------------------------------------------------
                                    773 ; special function bits
                                    774 ;--------------------------------------------------------
                                    775 	.area RSEG    (ABS,DATA)
      000000                        776 	.org 0x0000
                           0000E0   777 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   778 _ACC_ACC0	=	0x00e0
                           0000E1   779 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   780 _ACC_ACC1	=	0x00e1
                           0000E2   781 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   782 _ACC_ACC2	=	0x00e2
                           0000E3   783 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   784 _ACC_ACC3	=	0x00e3
                           0000E4   785 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   786 _ACC_ACC4	=	0x00e4
                           0000E5   787 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   788 _ACC_ACC5	=	0x00e5
                           0000E6   789 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   790 _ACC_ACC6	=	0x00e6
                           0000E7   791 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   792 _ACC_ACC7	=	0x00e7
                           0000E8   793 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   794 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   795 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   796 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   797 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   798 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   799 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   800 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   801 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   802 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   803 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   804 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   805 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   806 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   807 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   808 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   809 G$B_B0$0$0 == 0x00f0
                           0000F0   810 _B_B0	=	0x00f0
                           0000F1   811 G$B_B1$0$0 == 0x00f1
                           0000F1   812 _B_B1	=	0x00f1
                           0000F2   813 G$B_B2$0$0 == 0x00f2
                           0000F2   814 _B_B2	=	0x00f2
                           0000F3   815 G$B_B3$0$0 == 0x00f3
                           0000F3   816 _B_B3	=	0x00f3
                           0000F4   817 G$B_B4$0$0 == 0x00f4
                           0000F4   818 _B_B4	=	0x00f4
                           0000F5   819 G$B_B5$0$0 == 0x00f5
                           0000F5   820 _B_B5	=	0x00f5
                           0000F6   821 G$B_B6$0$0 == 0x00f6
                           0000F6   822 _B_B6	=	0x00f6
                           0000F7   823 G$B_B7$0$0 == 0x00f7
                           0000F7   824 _B_B7	=	0x00f7
                           0000A8   825 G$IE_EX0$0$0 == 0x00a8
                           0000A8   826 _IE_EX0	=	0x00a8
                           0000A9   827 G$IE_ET0$0$0 == 0x00a9
                           0000A9   828 _IE_ET0	=	0x00a9
                           0000AA   829 G$IE_EX1$0$0 == 0x00aa
                           0000AA   830 _IE_EX1	=	0x00aa
                           0000AB   831 G$IE_ET1$0$0 == 0x00ab
                           0000AB   832 _IE_ET1	=	0x00ab
                           0000AC   833 G$IE_ES0$0$0 == 0x00ac
                           0000AC   834 _IE_ES0	=	0x00ac
                           0000AD   835 G$IE_ET2$0$0 == 0x00ad
                           0000AD   836 _IE_ET2	=	0x00ad
                           0000AE   837 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   838 _IE_ESPI0	=	0x00ae
                           0000AF   839 G$IE_EA$0$0 == 0x00af
                           0000AF   840 _IE_EA	=	0x00af
                           0000B8   841 G$IP_PX0$0$0 == 0x00b8
                           0000B8   842 _IP_PX0	=	0x00b8
                           0000B9   843 G$IP_PT0$0$0 == 0x00b9
                           0000B9   844 _IP_PT0	=	0x00b9
                           0000BA   845 G$IP_PX1$0$0 == 0x00ba
                           0000BA   846 _IP_PX1	=	0x00ba
                           0000BB   847 G$IP_PT1$0$0 == 0x00bb
                           0000BB   848 _IP_PT1	=	0x00bb
                           0000BC   849 G$IP_PS0$0$0 == 0x00bc
                           0000BC   850 _IP_PS0	=	0x00bc
                           0000BD   851 G$IP_PT2$0$0 == 0x00bd
                           0000BD   852 _IP_PT2	=	0x00bd
                           0000BE   853 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   854 _IP_PSPI0	=	0x00be
                           000080   855 G$P0_B0$0$0 == 0x0080
                           000080   856 _P0_B0	=	0x0080
                           000081   857 G$P0_B1$0$0 == 0x0081
                           000081   858 _P0_B1	=	0x0081
                           000082   859 G$P0_B2$0$0 == 0x0082
                           000082   860 _P0_B2	=	0x0082
                           000083   861 G$P0_B3$0$0 == 0x0083
                           000083   862 _P0_B3	=	0x0083
                           000084   863 G$P0_B4$0$0 == 0x0084
                           000084   864 _P0_B4	=	0x0084
                           000085   865 G$P0_B5$0$0 == 0x0085
                           000085   866 _P0_B5	=	0x0085
                           000086   867 G$P0_B6$0$0 == 0x0086
                           000086   868 _P0_B6	=	0x0086
                           000087   869 G$P0_B7$0$0 == 0x0087
                           000087   870 _P0_B7	=	0x0087
                           000090   871 G$P1_B0$0$0 == 0x0090
                           000090   872 _P1_B0	=	0x0090
                           000091   873 G$P1_B1$0$0 == 0x0091
                           000091   874 _P1_B1	=	0x0091
                           000092   875 G$P1_B2$0$0 == 0x0092
                           000092   876 _P1_B2	=	0x0092
                           000093   877 G$P1_B3$0$0 == 0x0093
                           000093   878 _P1_B3	=	0x0093
                           000094   879 G$P1_B4$0$0 == 0x0094
                           000094   880 _P1_B4	=	0x0094
                           000095   881 G$P1_B5$0$0 == 0x0095
                           000095   882 _P1_B5	=	0x0095
                           000096   883 G$P1_B6$0$0 == 0x0096
                           000096   884 _P1_B6	=	0x0096
                           000097   885 G$P1_B7$0$0 == 0x0097
                           000097   886 _P1_B7	=	0x0097
                           0000A0   887 G$P2_B0$0$0 == 0x00a0
                           0000A0   888 _P2_B0	=	0x00a0
                           0000A1   889 G$P2_B1$0$0 == 0x00a1
                           0000A1   890 _P2_B1	=	0x00a1
                           0000A2   891 G$P2_B2$0$0 == 0x00a2
                           0000A2   892 _P2_B2	=	0x00a2
                           0000A3   893 G$P2_B3$0$0 == 0x00a3
                           0000A3   894 _P2_B3	=	0x00a3
                           0000B0   895 G$P3_B0$0$0 == 0x00b0
                           0000B0   896 _P3_B0	=	0x00b0
                           0000B1   897 G$P3_B1$0$0 == 0x00b1
                           0000B1   898 _P3_B1	=	0x00b1
                           0000D8   899 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   900 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   901 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   902 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   903 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   904 _PCA0CN0_CCF2	=	0x00da
                           0000DE   905 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   906 _PCA0CN0_CR	=	0x00de
                           0000DF   907 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   908 _PCA0CN0_CF	=	0x00df
                           0000D0   909 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   910 _PSW_PARITY	=	0x00d0
                           0000D1   911 G$PSW_F1$0$0 == 0x00d1
                           0000D1   912 _PSW_F1	=	0x00d1
                           0000D2   913 G$PSW_OV$0$0 == 0x00d2
                           0000D2   914 _PSW_OV	=	0x00d2
                           0000D3   915 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   916 _PSW_RS0	=	0x00d3
                           0000D4   917 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   918 _PSW_RS1	=	0x00d4
                           0000D5   919 G$PSW_F0$0$0 == 0x00d5
                           0000D5   920 _PSW_F0	=	0x00d5
                           0000D6   921 G$PSW_AC$0$0 == 0x00d6
                           0000D6   922 _PSW_AC	=	0x00d6
                           0000D7   923 G$PSW_CY$0$0 == 0x00d7
                           0000D7   924 _PSW_CY	=	0x00d7
                           000098   925 G$SCON0_RI$0$0 == 0x0098
                           000098   926 _SCON0_RI	=	0x0098
                           000099   927 G$SCON0_TI$0$0 == 0x0099
                           000099   928 _SCON0_TI	=	0x0099
                           00009A   929 G$SCON0_RB8$0$0 == 0x009a
                           00009A   930 _SCON0_RB8	=	0x009a
                           00009B   931 G$SCON0_TB8$0$0 == 0x009b
                           00009B   932 _SCON0_TB8	=	0x009b
                           00009C   933 G$SCON0_REN$0$0 == 0x009c
                           00009C   934 _SCON0_REN	=	0x009c
                           00009D   935 G$SCON0_MCE$0$0 == 0x009d
                           00009D   936 _SCON0_MCE	=	0x009d
                           00009F   937 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   938 _SCON0_SMODE	=	0x009f
                           0000C8   939 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   940 _SCON1_RI	=	0x00c8
                           0000C9   941 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   942 _SCON1_TI	=	0x00c9
                           0000CA   943 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   944 _SCON1_RBX	=	0x00ca
                           0000CB   945 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   946 _SCON1_TBX	=	0x00cb
                           0000CC   947 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   948 _SCON1_REN	=	0x00cc
                           0000CE   949 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   950 _SCON1_PERR	=	0x00ce
                           0000CF   951 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   952 _SCON1_OVR	=	0x00cf
                           0000C0   953 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   954 _SMB0CN0_SI	=	0x00c0
                           0000C1   955 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   956 _SMB0CN0_ACK	=	0x00c1
                           0000C2   957 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   958 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   959 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   960 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   961 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   962 _SMB0CN0_STO	=	0x00c4
                           0000C5   963 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   964 _SMB0CN0_STA	=	0x00c5
                           0000C6   965 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   966 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   967 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   968 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   969 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   970 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   971 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   972 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   973 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   974 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   975 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   976 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   977 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   978 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   979 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   980 _SPI0CN0_MODF	=	0x00fd
                           0000FE   981 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   982 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   983 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   984 _SPI0CN0_SPIF	=	0x00ff
                           000088   985 G$TCON_IT0$0$0 == 0x0088
                           000088   986 _TCON_IT0	=	0x0088
                           000089   987 G$TCON_IE0$0$0 == 0x0089
                           000089   988 _TCON_IE0	=	0x0089
                           00008A   989 G$TCON_IT1$0$0 == 0x008a
                           00008A   990 _TCON_IT1	=	0x008a
                           00008B   991 G$TCON_IE1$0$0 == 0x008b
                           00008B   992 _TCON_IE1	=	0x008b
                           00008C   993 G$TCON_TR0$0$0 == 0x008c
                           00008C   994 _TCON_TR0	=	0x008c
                           00008D   995 G$TCON_TF0$0$0 == 0x008d
                           00008D   996 _TCON_TF0	=	0x008d
                           00008E   997 G$TCON_TR1$0$0 == 0x008e
                           00008E   998 _TCON_TR1	=	0x008e
                           00008F   999 G$TCON_TF1$0$0 == 0x008f
                           00008F  1000 _TCON_TF1	=	0x008f
                           0000C8  1001 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8  1002 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9  1003 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9  1004 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA  1005 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA  1006 _TMR2CN0_TR2	=	0x00ca
                           0000CB  1007 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB  1008 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC  1009 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC  1010 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD  1011 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD  1012 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE  1013 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE  1014 _TMR2CN0_TF2L	=	0x00ce
                           0000CF  1015 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF  1016 _TMR2CN0_TF2H	=	0x00cf
                           000098  1017 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098  1018 _TMR4CN0_T4XCLK0	=	0x0098
                           000099  1019 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099  1020 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1021 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1022 _TMR4CN0_TR4	=	0x009a
                           00009B  1023 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1024 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1025 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1026 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1027 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1028 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1029 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1030 _TMR4CN0_TF4L	=	0x009e
                           00009F  1031 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1032 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1033 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1034 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1035 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1036 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1037 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1038 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1039 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1040 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1041 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1042 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1043 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1044 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1045 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1046 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1047 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1048 _UART1FCN1_TFRQ	=	0x00df
                           000095  1049 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1050 _U2F_BUTTON	=	0x0095
                           000096  1051 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1052 _U2F_BUTTON_VAL	=	0x0096
                           000091  1053 G$U2F_RED$0$0 == 0x0091
                           000091  1054 _U2F_RED	=	0x0091
                           000090  1055 G$U2F_GREEN$0$0 == 0x0090
                           000090  1056 _U2F_GREEN	=	0x0090
                           000087  1057 G$U2F_BLUE$0$0 == 0x0087
                           000087  1058 _U2F_BLUE	=	0x0087
                                   1059 ;--------------------------------------------------------
                                   1060 ; overlayable register banks
                                   1061 ;--------------------------------------------------------
                                   1062 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1063 	.ds 8
                                   1064 ;--------------------------------------------------------
                                   1065 ; internal ram data
                                   1066 ;--------------------------------------------------------
                                   1067 	.area DSEG    (DATA)
                                   1068 ;--------------------------------------------------------
                                   1069 ; overlayable items in internal ram 
                                   1070 ;--------------------------------------------------------
                                   1071 ;--------------------------------------------------------
                                   1072 ; indirectly addressable internal ram data
                                   1073 ;--------------------------------------------------------
                                   1074 	.area ISEG    (DATA)
                                   1075 ;--------------------------------------------------------
                                   1076 ; absolute internal ram data
                                   1077 ;--------------------------------------------------------
                                   1078 	.area IABS    (ABS,DATA)
                                   1079 	.area IABS    (ABS,DATA)
                                   1080 ;--------------------------------------------------------
                                   1081 ; bit data
                                   1082 ;--------------------------------------------------------
                                   1083 	.area BSEG    (BIT)
                                   1084 ;--------------------------------------------------------
                                   1085 ; paged external ram data
                                   1086 ;--------------------------------------------------------
                                   1087 	.area PSEG    (PAG,XDATA)
                                   1088 ;--------------------------------------------------------
                                   1089 ; external ram data
                                   1090 ;--------------------------------------------------------
                                   1091 	.area XSEG    (XDATA)
                           000000  1092 Fu2f_atecc$res$0$0==.
      000258                       1093 _res:
      000258                       1094 	.ds 64
                           000040  1095 Fu2f_atecc$shabuf$0$0==.
      000298                       1096 _shabuf:
      000298                       1097 	.ds 70
                           000086  1098 Fu2f_atecc$res_digest$0$0==.
      0002DE                       1099 _res_digest:
      0002DE                       1100 	.ds 4
                                   1101 ;--------------------------------------------------------
                                   1102 ; absolute external ram data
                                   1103 ;--------------------------------------------------------
                                   1104 	.area XABS    (ABS,XDATA)
                                   1105 ;--------------------------------------------------------
                                   1106 ; external initialized ram data
                                   1107 ;--------------------------------------------------------
                                   1108 	.area XISEG   (XDATA)
                           000000  1109 Fu2f_atecc$resbuf$0$0==.
      000308                       1110 _resbuf:
      000308                       1111 	.ds 3
                           000003  1112 Fu2f_atecc$resseq$0$0==.
      00030B                       1113 _resseq:
      00030B                       1114 	.ds 1
                           000004  1115 Fu2f_atecc$serious$0$0==.
      00030C                       1116 _serious:
      00030C                       1117 	.ds 1
                           000005  1118 Fu2f_atecc$shaoffset$0$0==.
      00030D                       1119 _shaoffset:
      00030D                       1120 	.ds 1
                           000006  1121 G$SHA_FLAGS$0$0==.
      00030E                       1122 _SHA_FLAGS::
      00030E                       1123 	.ds 1
                           000007  1124 G$SHA_HMAC_KEY$0$0==.
      00030F                       1125 _SHA_HMAC_KEY::
      00030F                       1126 	.ds 1
                                   1127 	.area HOME    (CODE)
                                   1128 	.area GSINIT0 (CODE)
                                   1129 	.area GSINIT1 (CODE)
                                   1130 	.area GSINIT2 (CODE)
                                   1131 	.area GSINIT3 (CODE)
                                   1132 	.area GSINIT4 (CODE)
                                   1133 	.area GSINIT5 (CODE)
                                   1134 	.area GSINIT  (CODE)
                                   1135 	.area GSFINAL (CODE)
                                   1136 	.area CSEG    (CODE)
                                   1137 ;--------------------------------------------------------
                                   1138 ; global & static initialisations
                                   1139 ;--------------------------------------------------------
                                   1140 	.area HOME    (CODE)
                                   1141 	.area GSINIT  (CODE)
                                   1142 	.area GSFINAL (CODE)
                                   1143 	.area GSINIT  (CODE)
                                   1144 ;--------------------------------------------------------
                                   1145 ; Home
                                   1146 ;--------------------------------------------------------
                                   1147 	.area HOME    (CODE)
                                   1148 	.area HOME    (CODE)
                                   1149 ;--------------------------------------------------------
                                   1150 ; code
                                   1151 ;--------------------------------------------------------
                                   1152 	.area CSEG    (CODE)
                                   1153 ;------------------------------------------------------------
                                   1154 ;Allocation info for local variables in function 'u2f_init'
                                   1155 ;------------------------------------------------------------
                           000000  1156 	G$u2f_init$0$0 ==.
                           000000  1157 	C$u2f_atecc.c$48$0$0 ==.
                                   1158 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:48: void u2f_init()
                                   1159 ;	-----------------------------------------
                                   1160 ;	 function u2f_init
                                   1161 ;	-----------------------------------------
      005051                       1162 _u2f_init:
                           000007  1163 	ar7 = 0x07
                           000006  1164 	ar6 = 0x06
                           000005  1165 	ar5 = 0x05
                           000004  1166 	ar4 = 0x04
                           000003  1167 	ar3 = 0x03
                           000002  1168 	ar2 = 0x02
                           000001  1169 	ar1 = 0x01
                           000000  1170 	ar0 = 0x00
                           000000  1171 	C$u2f_atecc.c$51$0$0 ==.
                                   1172 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:51: }
                           000000  1173 	C$u2f_atecc.c$51$0$0 ==.
                           000000  1174 	XG$u2f_init$0$0 ==.
      005051 22               [24] 1175 	ret
                                   1176 ;------------------------------------------------------------
                                   1177 ;Allocation info for local variables in function 'u2f_response_writeback'
                                   1178 ;------------------------------------------------------------
                                   1179 ;len                       Allocated to stack - _bp -4
                                   1180 ;buf                       Allocated to registers r5 r6 r7 
                                   1181 ;------------------------------------------------------------
                           000001  1182 	G$u2f_response_writeback$0$0 ==.
                           000001  1183 	C$u2f_atecc.c$53$0$0 ==.
                                   1184 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:53: void u2f_response_writeback(uint8_t * buf, uint16_t len)
                                   1185 ;	-----------------------------------------
                                   1186 ;	 function u2f_response_writeback
                                   1187 ;	-----------------------------------------
      005052                       1188 _u2f_response_writeback:
      005052 C0 1B            [24] 1189 	push	_bp
      005054 85 81 1B         [24] 1190 	mov	_bp,sp
      005057 AD 82            [24] 1191 	mov	r5,dpl
      005059 AE 83            [24] 1192 	mov	r6,dph
      00505B AF F0            [24] 1193 	mov	r7,b
                           00000C  1194 	C$u2f_atecc.c$55$1$134 ==.
                                   1195 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:55: u2f_hid_writeback(buf, len);
      00505D E5 1B            [12] 1196 	mov	a,_bp
      00505F 24 FC            [12] 1197 	add	a,#0xfc
      005061 F8               [12] 1198 	mov	r0,a
      005062 E6               [12] 1199 	mov	a,@r0
      005063 C0 E0            [24] 1200 	push	acc
      005065 08               [12] 1201 	inc	r0
      005066 E6               [12] 1202 	mov	a,@r0
      005067 C0 E0            [24] 1203 	push	acc
      005069 8D 82            [24] 1204 	mov	dpl,r5
      00506B 8E 83            [24] 1205 	mov	dph,r6
      00506D 8F F0            [24] 1206 	mov	b,r7
      00506F 12 06 74         [24] 1207 	lcall	_u2f_hid_writeback
      005072 15 81            [12] 1208 	dec	sp
      005074 15 81            [12] 1209 	dec	sp
      005076 D0 1B            [24] 1210 	pop	_bp
                           000027  1211 	C$u2f_atecc.c$56$1$134 ==.
                           000027  1212 	XG$u2f_response_writeback$0$0 ==.
      005078 22               [24] 1213 	ret
                                   1214 ;------------------------------------------------------------
                                   1215 ;Allocation info for local variables in function 'u2f_response_flush'
                                   1216 ;------------------------------------------------------------
                           000028  1217 	G$u2f_response_flush$0$0 ==.
                           000028  1218 	C$u2f_atecc.c$58$1$134 ==.
                                   1219 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:58: void u2f_response_flush()
                                   1220 ;	-----------------------------------------
                                   1221 ;	 function u2f_response_flush
                                   1222 ;	-----------------------------------------
      005079                       1223 _u2f_response_flush:
                           000028  1224 	C$u2f_atecc.c$60$1$135 ==.
                                   1225 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:60: watchdog();
      005079 75 97 A5         [24] 1226 	mov	_WDTCN,#0xa5
                           00002B  1227 	C$u2f_atecc.c$61$1$135 ==.
                                   1228 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:61: u2f_hid_flush();
      00507C 12 06 5A         [24] 1229 	lcall	_u2f_hid_flush
                           00002E  1230 	C$u2f_atecc.c$62$1$135 ==.
                           00002E  1231 	XG$u2f_response_flush$0$0 ==.
      00507F 22               [24] 1232 	ret
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'u2f_response_start'
                                   1235 ;------------------------------------------------------------
                           00002F  1236 	G$u2f_response_start$0$0 ==.
                           00002F  1237 	C$u2f_atecc.c$64$1$135 ==.
                                   1238 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:64: void u2f_response_start()
                                   1239 ;	-----------------------------------------
                                   1240 ;	 function u2f_response_start
                                   1241 ;	-----------------------------------------
      005080                       1242 _u2f_response_start:
                           00002F  1243 	C$u2f_atecc.c$66$1$136 ==.
                                   1244 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:66: watchdog();
      005080 75 97 A5         [24] 1245 	mov	_WDTCN,#0xa5
                           000032  1246 	C$u2f_atecc.c$67$1$136 ==.
                           000032  1247 	XG$u2f_response_start$0$0 ==.
      005083 22               [24] 1248 	ret
                                   1249 ;------------------------------------------------------------
                                   1250 ;Allocation info for local variables in function 'u2f_get_user_feedback'
                                   1251 ;------------------------------------------------------------
                                   1252 ;t                         Allocated to stack - _bp +1
                                   1253 ;------------------------------------------------------------
                           000033  1254 	G$u2f_get_user_feedback$0$0 ==.
                           000033  1255 	C$u2f_atecc.c$69$1$136 ==.
                                   1256 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:69: int8_t u2f_get_user_feedback()
                                   1257 ;	-----------------------------------------
                                   1258 ;	 function u2f_get_user_feedback
                                   1259 ;	-----------------------------------------
      005084                       1260 _u2f_get_user_feedback:
      005084 C0 1B            [24] 1261 	push	_bp
      005086 E5 81            [12] 1262 	mov	a,sp
      005088 F5 1B            [12] 1263 	mov	_bp,a
      00508A 24 04            [12] 1264 	add	a,#0x04
      00508C F5 81            [12] 1265 	mov	sp,a
                           00003D  1266 	C$u2f_atecc.c$72$1$137 ==.
                                   1267 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:72: u2f_delay(1);
      00508E 90 00 01         [24] 1268 	mov	dptr,#(0x01&0x00ff)
      005091 E4               [12] 1269 	clr	a
      005092 F5 F0            [12] 1270 	mov	b,a
      005094 12 1E 24         [24] 1271 	lcall	_u2f_delay
                           000046  1272 	C$u2f_atecc.c$73$1$137 ==.
                                   1273 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:73: t = get_ms();
      005097 A8 1B            [24] 1274 	mov	r0,_bp
      005099 08               [12] 1275 	inc	r0
      00509A A6 08            [24] 1276 	mov	@r0,__MS_
      00509C 08               [12] 1277 	inc	r0
      00509D A6 09            [24] 1278 	mov	@r0,(__MS_ + 1)
      00509F 08               [12] 1279 	inc	r0
      0050A0 A6 0A            [24] 1280 	mov	@r0,(__MS_ + 2)
      0050A2 08               [12] 1281 	inc	r0
      0050A3 A6 0B            [24] 1282 	mov	@r0,(__MS_ + 3)
                           000054  1283 	C$u2f_atecc.c$74$1$137 ==.
                                   1284 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:74: while(U2F_BUTTON_IS_PRESSED()){}
      0050A5                       1285 00101$:
      0050A5 30 95 FD         [24] 1286 	jnb	_U2F_BUTTON,00101$
                           000057  1287 	C$u2f_atecc.c$75$1$137 ==.
                                   1288 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:75: while(!U2F_BUTTON_IS_PRESSED())
      0050A8                       1289 00109$:
      0050A8 30 95 52         [24] 1290 	jnb	_U2F_BUTTON,00111$
                           00005A  1291 	C$u2f_atecc.c$78$2$139 ==.
                                   1292 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:78: if (serious)
      0050AB 90 03 0C         [24] 1293 	mov	dptr,#_serious
      0050AE E0               [24] 1294 	movx	a,@dptr
      0050AF FB               [12] 1295 	mov	r3,a
      0050B0 60 11            [24] 1296 	jz	00105$
                           000061  1297 	C$u2f_atecc.c$80$3$140 ==.
                                   1298 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:80: rgb_hex(U2F_DEFAULT_COLOR_ERROR);
      0050B2 E4               [12] 1299 	clr	a
      0050B3 C0 E0            [24] 1300 	push	acc
      0050B5 C0 E0            [24] 1301 	push	acc
      0050B7 75 82 38         [24] 1302 	mov	dpl,#0x38
      0050BA 12 00 F4         [24] 1303 	lcall	_rgb
      0050BD 15 81            [12] 1304 	dec	sp
      0050BF 15 81            [12] 1305 	dec	sp
      0050C1 80 11            [24] 1306 	sjmp	00106$
      0050C3                       1307 00105$:
                           000072  1308 	C$u2f_atecc.c$84$3$141 ==.
                                   1309 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:84: rgb_hex(U2F_DEFAULT_COLOR_INPUT);
      0050C3 E4               [12] 1310 	clr	a
      0050C4 C0 E0            [24] 1311 	push	acc
      0050C6 74 06            [12] 1312 	mov	a,#0x06
      0050C8 C0 E0            [24] 1313 	push	acc
      0050CA 75 82 03         [24] 1314 	mov	dpl,#0x03
      0050CD 12 00 F4         [24] 1315 	lcall	_rgb
      0050D0 15 81            [12] 1316 	dec	sp
      0050D2 15 81            [12] 1317 	dec	sp
      0050D4                       1318 00106$:
                           000083  1319 	C$u2f_atecc.c$86$2$139 ==.
                                   1320 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:86: if (get_ms() - t > U2F_MS_USER_INPUT_WAIT)
      0050D4 A8 1B            [24] 1321 	mov	r0,_bp
      0050D6 08               [12] 1322 	inc	r0
      0050D7 E5 08            [12] 1323 	mov	a,__MS_
      0050D9 C3               [12] 1324 	clr	c
      0050DA 96               [12] 1325 	subb	a,@r0
      0050DB FA               [12] 1326 	mov	r2,a
      0050DC E5 09            [12] 1327 	mov	a,(__MS_ + 1)
      0050DE 08               [12] 1328 	inc	r0
      0050DF 96               [12] 1329 	subb	a,@r0
      0050E0 FB               [12] 1330 	mov	r3,a
      0050E1 E5 0A            [12] 1331 	mov	a,(__MS_ + 2)
      0050E3 08               [12] 1332 	inc	r0
      0050E4 96               [12] 1333 	subb	a,@r0
      0050E5 FE               [12] 1334 	mov	r6,a
      0050E6 E5 0B            [12] 1335 	mov	a,(__MS_ + 3)
      0050E8 08               [12] 1336 	inc	r0
      0050E9 96               [12] 1337 	subb	a,@r0
      0050EA FF               [12] 1338 	mov	r7,a
      0050EB C3               [12] 1339 	clr	c
      0050EC 74 B8            [12] 1340 	mov	a,#0xb8
      0050EE 9A               [12] 1341 	subb	a,r2
      0050EF 74 0B            [12] 1342 	mov	a,#0x0b
      0050F1 9B               [12] 1343 	subb	a,r3
      0050F2 E4               [12] 1344 	clr	a
      0050F3 9E               [12] 1345 	subb	a,r6
      0050F4 E4               [12] 1346 	clr	a
      0050F5 9F               [12] 1347 	subb	a,r7
      0050F6 40 05            [24] 1348 	jc	00111$
                           0000A7  1349 	C$u2f_atecc.c$88$2$139 ==.
                                   1350 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:88: watchdog();
      0050F8 75 97 A5         [24] 1351 	mov	_WDTCN,#0xa5
      0050FB 80 AB            [24] 1352 	sjmp	00109$
      0050FD                       1353 00111$:
                           0000AC  1354 	C$u2f_atecc.c$91$1$137 ==.
                                   1355 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:91: if (U2F_BUTTON_IS_PRESSED())
      0050FD 20 95 14         [24] 1356 	jb	_U2F_BUTTON,00113$
                           0000AF  1357 	C$u2f_atecc.c$93$2$142 ==.
                                   1358 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:93: rgb_hex(U2F_DEFAULT_COLOR_INPUT_SUCCESS);
      005100 74 25            [12] 1359 	mov	a,#0x25
      005102 C0 E0            [24] 1360 	push	acc
      005104 74 12            [12] 1361 	mov	a,#0x12
      005106 C0 E0            [24] 1362 	push	acc
      005108 75 82 00         [24] 1363 	mov	dpl,#0x00
      00510B 12 00 F4         [24] 1364 	lcall	_rgb
      00510E 15 81            [12] 1365 	dec	sp
      005110 15 81            [12] 1366 	dec	sp
      005112 80 14            [24] 1367 	sjmp	00114$
      005114                       1368 00113$:
                           0000C3  1369 	C$u2f_atecc.c$97$2$143 ==.
                                   1370 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:97: rgb_hex(U2F_DEFAULT_COLOR_ERROR);
      005114 E4               [12] 1371 	clr	a
      005115 C0 E0            [24] 1372 	push	acc
      005117 C0 E0            [24] 1373 	push	acc
      005119 75 82 38         [24] 1374 	mov	dpl,#0x38
      00511C 12 00 F4         [24] 1375 	lcall	_rgb
      00511F 15 81            [12] 1376 	dec	sp
      005121 15 81            [12] 1377 	dec	sp
                           0000D2  1378 	C$u2f_atecc.c$98$2$143 ==.
                                   1379 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:98: return 1;
      005123 75 82 01         [24] 1380 	mov	dpl,#0x01
      005126 80 03            [24] 1381 	sjmp	00115$
      005128                       1382 00114$:
                           0000D7  1383 	C$u2f_atecc.c$101$1$137 ==.
                                   1384 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:101: return 0;
      005128 75 82 00         [24] 1385 	mov	dpl,#0x00
      00512B                       1386 00115$:
      00512B 85 1B 81         [24] 1387 	mov	sp,_bp
      00512E D0 1B            [24] 1388 	pop	_bp
                           0000DF  1389 	C$u2f_atecc.c$102$1$137 ==.
                           0000DF  1390 	XG$u2f_get_user_feedback$0$0 ==.
      005130 22               [24] 1391 	ret
                                   1392 ;------------------------------------------------------------
                                   1393 ;Allocation info for local variables in function 'u2f_sha256_start'
                                   1394 ;------------------------------------------------------------
                           0000E0  1395 	G$u2f_sha256_start$0$0 ==.
                           0000E0  1396 	C$u2f_atecc.c$110$1$137 ==.
                                   1397 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:110: void u2f_sha256_start()
                                   1398 ;	-----------------------------------------
                                   1399 ;	 function u2f_sha256_start
                                   1400 ;	-----------------------------------------
      005131                       1401 _u2f_sha256_start:
                           0000E0  1402 	C$u2f_atecc.c$112$1$144 ==.
                                   1403 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:112: shaoffset = 0;
      005131 90 03 0D         [24] 1404 	mov	dptr,#_shaoffset
      005134 E4               [12] 1405 	clr	a
      005135 F0               [24] 1406 	movx	@dptr,a
                           0000E5  1407 	C$u2f_atecc.c$115$1$144 ==.
                                   1408 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:115: shabuf, sizeof(shabuf), NULL);
                           0000E5  1409 	C$u2f_atecc.c$114$1$144 ==.
                                   1410 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:114: SHA_FLAGS, SHA_HMAC_KEY,NULL,0,
      005136 90 03 0F         [24] 1411 	mov	dptr,#_SHA_HMAC_KEY
      005139 E0               [24] 1412 	movx	a,@dptr
      00513A FF               [12] 1413 	mov	r7,a
                           0000EA  1414 	C$u2f_atecc.c$113$1$144 ==.
                                   1415 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:113: atecc_send_recv(ATECC_CMD_SHA,
      00513B E4               [12] 1416 	clr	a
      00513C FE               [12] 1417 	mov	r6,a
      00513D C0 E0            [24] 1418 	push	acc
      00513F C0 E0            [24] 1419 	push	acc
      005141 C0 E0            [24] 1420 	push	acc
      005143 74 46            [12] 1421 	mov	a,#0x46
      005145 C0 E0            [24] 1422 	push	acc
      005147 74 98            [12] 1423 	mov	a,#_shabuf
      005149 C0 E0            [24] 1424 	push	acc
      00514B 74 02            [12] 1425 	mov	a,#(_shabuf >> 8)
      00514D C0 E0            [24] 1426 	push	acc
      00514F E4               [12] 1427 	clr	a
      005150 C0 E0            [24] 1428 	push	acc
      005152 C0 E0            [24] 1429 	push	acc
      005154 C0 E0            [24] 1430 	push	acc
      005156 C0 E0            [24] 1431 	push	acc
      005158 C0 E0            [24] 1432 	push	acc
      00515A C0 07            [24] 1433 	push	ar7
      00515C C0 06            [24] 1434 	push	ar6
      00515E 90 03 0E         [24] 1435 	mov	dptr,#_SHA_FLAGS
      005161 E0               [24] 1436 	movx	a,@dptr
      005162 C0 E0            [24] 1437 	push	acc
      005164 75 82 47         [24] 1438 	mov	dpl,#0x47
      005167 12 1D 1D         [24] 1439 	lcall	_atecc_send_recv
      00516A E5 81            [12] 1440 	mov	a,sp
      00516C 24 F2            [12] 1441 	add	a,#0xf2
      00516E F5 81            [12] 1442 	mov	sp,a
                           00011F  1443 	C$u2f_atecc.c$116$1$144 ==.
                                   1444 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:116: SHA_HMAC_KEY = 0;
      005170 90 03 0F         [24] 1445 	mov	dptr,#_SHA_HMAC_KEY
      005173 E4               [12] 1446 	clr	a
      005174 F0               [24] 1447 	movx	@dptr,a
                           000124  1448 	C$u2f_atecc.c$117$1$144 ==.
                           000124  1449 	XG$u2f_sha256_start$0$0 ==.
      005175 22               [24] 1450 	ret
                                   1451 ;------------------------------------------------------------
                                   1452 ;Allocation info for local variables in function 'u2f_sha256_update'
                                   1453 ;------------------------------------------------------------
                                   1454 ;len                       Allocated to stack - _bp -3
                                   1455 ;buf                       Allocated to registers r5 r6 r7 
                                   1456 ;i                         Allocated to registers 
                                   1457 ;------------------------------------------------------------
                           000125  1458 	G$u2f_sha256_update$0$0 ==.
                           000125  1459 	C$u2f_atecc.c$120$1$144 ==.
                                   1460 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:120: void u2f_sha256_update(uint8_t * buf, uint8_t len)
                                   1461 ;	-----------------------------------------
                                   1462 ;	 function u2f_sha256_update
                                   1463 ;	-----------------------------------------
      005176                       1464 _u2f_sha256_update:
      005176 C0 1B            [24] 1465 	push	_bp
      005178 85 81 1B         [24] 1466 	mov	_bp,sp
      00517B AD 82            [24] 1467 	mov	r5,dpl
      00517D AE 83            [24] 1468 	mov	r6,dph
      00517F AF F0            [24] 1469 	mov	r7,b
                           000130  1470 	C$u2f_atecc.c$123$1$146 ==.
                                   1471 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:123: watchdog();
      005181 75 97 A5         [24] 1472 	mov	_WDTCN,#0xa5
                           000133  1473 	C$u2f_atecc.c$124$2$147 ==.
                                   1474 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:124: while(len--)
      005184 E5 1B            [12] 1475 	mov	a,_bp
      005186 24 FD            [12] 1476 	add	a,#0xfd
      005188 F8               [12] 1477 	mov	r0,a
      005189 86 04            [24] 1478 	mov	ar4,@r0
      00518B                       1479 00103$:
      00518B 8C 03            [24] 1480 	mov	ar3,r4
      00518D 1C               [12] 1481 	dec	r4
      00518E EB               [12] 1482 	mov	a,r3
      00518F 70 03            [24] 1483 	jnz	00118$
      005191 02 52 1D         [24] 1484 	ljmp	00106$
      005194                       1485 00118$:
                           000143  1486 	C$u2f_atecc.c$126$1$146 ==.
                                   1487 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:126: shabuf[shaoffset++] = *buf++;
      005194 C0 04            [24] 1488 	push	ar4
      005196 90 03 0D         [24] 1489 	mov	dptr,#_shaoffset
      005199 E0               [24] 1490 	movx	a,@dptr
      00519A FB               [12] 1491 	mov	r3,a
      00519B 04               [12] 1492 	inc	a
      00519C F0               [24] 1493 	movx	@dptr,a
      00519D EB               [12] 1494 	mov	a,r3
      00519E 24 98            [12] 1495 	add	a,#_shabuf
      0051A0 FB               [12] 1496 	mov	r3,a
      0051A1 E4               [12] 1497 	clr	a
      0051A2 34 02            [12] 1498 	addc	a,#(_shabuf >> 8)
      0051A4 FA               [12] 1499 	mov	r2,a
      0051A5 8D 82            [24] 1500 	mov	dpl,r5
      0051A7 8E 83            [24] 1501 	mov	dph,r6
      0051A9 8F F0            [24] 1502 	mov	b,r7
      0051AB 12 5E 3E         [24] 1503 	lcall	__gptrget
      0051AE FC               [12] 1504 	mov	r4,a
      0051AF A3               [24] 1505 	inc	dptr
      0051B0 AD 82            [24] 1506 	mov	r5,dpl
      0051B2 AE 83            [24] 1507 	mov	r6,dph
      0051B4 8B 82            [24] 1508 	mov	dpl,r3
      0051B6 8A 83            [24] 1509 	mov	dph,r2
      0051B8 EC               [12] 1510 	mov	a,r4
      0051B9 F0               [24] 1511 	movx	@dptr,a
                           000169  1512 	C$u2f_atecc.c$127$2$147 ==.
                                   1513 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:127: if (shaoffset == 64)
      0051BA 90 03 0D         [24] 1514 	mov	dptr,#_shaoffset
      0051BD E0               [24] 1515 	movx	a,@dptr
      0051BE FC               [12] 1516 	mov	r4,a
      0051BF BC 40 02         [24] 1517 	cjne	r4,#0x40,00119$
      0051C2 80 04            [24] 1518 	sjmp	00120$
      0051C4                       1519 00119$:
      0051C4 D0 04            [24] 1520 	pop	ar4
      0051C6 80 C3            [24] 1521 	sjmp	00103$
      0051C8                       1522 00120$:
      0051C8 D0 04            [24] 1523 	pop	ar4
                           000179  1524 	C$u2f_atecc.c$131$3$148 ==.
                                   1525 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:131: shabuf, sizeof(shabuf), NULL);
                           000179  1526 	C$u2f_atecc.c$130$3$148 ==.
                                   1527 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:130: ATECC_SHA_UPDATE, 64,shabuf,64,
                           000179  1528 	C$u2f_atecc.c$129$3$148 ==.
                                   1529 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:129: atecc_send_recv(ATECC_CMD_SHA,
      0051CA C0 07            [24] 1530 	push	ar7
      0051CC C0 06            [24] 1531 	push	ar6
      0051CE C0 05            [24] 1532 	push	ar5
      0051D0 C0 04            [24] 1533 	push	ar4
      0051D2 E4               [12] 1534 	clr	a
      0051D3 C0 E0            [24] 1535 	push	acc
      0051D5 C0 E0            [24] 1536 	push	acc
      0051D7 C0 E0            [24] 1537 	push	acc
      0051D9 74 46            [12] 1538 	mov	a,#0x46
      0051DB C0 E0            [24] 1539 	push	acc
      0051DD 74 98            [12] 1540 	mov	a,#_shabuf
      0051DF C0 E0            [24] 1541 	push	acc
      0051E1 74 02            [12] 1542 	mov	a,#(_shabuf >> 8)
      0051E3 C0 E0            [24] 1543 	push	acc
      0051E5 E4               [12] 1544 	clr	a
      0051E6 C0 E0            [24] 1545 	push	acc
      0051E8 74 40            [12] 1546 	mov	a,#0x40
      0051EA C0 E0            [24] 1547 	push	acc
      0051EC 74 98            [12] 1548 	mov	a,#_shabuf
      0051EE C0 E0            [24] 1549 	push	acc
      0051F0 74 02            [12] 1550 	mov	a,#(_shabuf >> 8)
      0051F2 C0 E0            [24] 1551 	push	acc
      0051F4 E4               [12] 1552 	clr	a
      0051F5 C0 E0            [24] 1553 	push	acc
      0051F7 74 40            [12] 1554 	mov	a,#0x40
      0051F9 C0 E0            [24] 1555 	push	acc
      0051FB E4               [12] 1556 	clr	a
      0051FC C0 E0            [24] 1557 	push	acc
      0051FE 04               [12] 1558 	inc	a
      0051FF C0 E0            [24] 1559 	push	acc
      005201 75 82 47         [24] 1560 	mov	dpl,#0x47
      005204 12 1D 1D         [24] 1561 	lcall	_atecc_send_recv
      005207 E5 81            [12] 1562 	mov	a,sp
      005209 24 F2            [12] 1563 	add	a,#0xf2
      00520B F5 81            [12] 1564 	mov	sp,a
      00520D D0 04            [24] 1565 	pop	ar4
      00520F D0 05            [24] 1566 	pop	ar5
      005211 D0 06            [24] 1567 	pop	ar6
      005213 D0 07            [24] 1568 	pop	ar7
                           0001C4  1569 	C$u2f_atecc.c$132$3$148 ==.
                                   1570 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:132: shaoffset = 0;
      005215 90 03 0D         [24] 1571 	mov	dptr,#_shaoffset
      005218 E4               [12] 1572 	clr	a
      005219 F0               [24] 1573 	movx	@dptr,a
      00521A 02 51 8B         [24] 1574 	ljmp	00103$
      00521D                       1575 00106$:
      00521D D0 1B            [24] 1576 	pop	_bp
                           0001CE  1577 	C$u2f_atecc.c$135$1$146 ==.
                           0001CE  1578 	XG$u2f_sha256_update$0$0 ==.
      00521F 22               [24] 1579 	ret
                                   1580 ;------------------------------------------------------------
                                   1581 ;Allocation info for local variables in function 'u2f_sha256_finish'
                                   1582 ;------------------------------------------------------------
                           0001CF  1583 	G$u2f_sha256_finish$0$0 ==.
                           0001CF  1584 	C$u2f_atecc.c$138$1$146 ==.
                                   1585 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:138: void u2f_sha256_finish()
                                   1586 ;	-----------------------------------------
                                   1587 ;	 function u2f_sha256_finish
                                   1588 ;	-----------------------------------------
      005220                       1589 _u2f_sha256_finish:
                           0001CF  1590 	C$u2f_atecc.c$140$1$149 ==.
                                   1591 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:140: if (SHA_FLAGS == ATECC_SHA_START) SHA_FLAGS = ATECC_SHA_END;
      005220 90 03 0E         [24] 1592 	mov	dptr,#_SHA_FLAGS
      005223 E0               [24] 1593 	movx	a,@dptr
      005224 70 06            [24] 1594 	jnz	00102$
      005226 90 03 0E         [24] 1595 	mov	dptr,#_SHA_FLAGS
      005229 74 02            [12] 1596 	mov	a,#0x02
      00522B F0               [24] 1597 	movx	@dptr,a
      00522C                       1598 00102$:
                           0001DB  1599 	C$u2f_atecc.c$143$1$149 ==.
                                   1600 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:143: shabuf, sizeof(shabuf), &res_digest);
                           0001DB  1601 	C$u2f_atecc.c$142$1$149 ==.
                                   1602 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:142: SHA_FLAGS, shaoffset,shabuf,shaoffset,
      00522C 90 03 0D         [24] 1603 	mov	dptr,#_shaoffset
      00522F E0               [24] 1604 	movx	a,@dptr
      005230 FF               [12] 1605 	mov	r7,a
      005231 FD               [12] 1606 	mov	r5,a
      005232 7E 00            [12] 1607 	mov	r6,#0x00
                           0001E3  1608 	C$u2f_atecc.c$141$1$149 ==.
                                   1609 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:141: atecc_send_recv(ATECC_CMD_SHA,
      005234 74 DE            [12] 1610 	mov	a,#_res_digest
      005236 C0 E0            [24] 1611 	push	acc
      005238 74 02            [12] 1612 	mov	a,#(_res_digest >> 8)
      00523A C0 E0            [24] 1613 	push	acc
      00523C E4               [12] 1614 	clr	a
      00523D C0 E0            [24] 1615 	push	acc
      00523F 74 46            [12] 1616 	mov	a,#0x46
      005241 C0 E0            [24] 1617 	push	acc
      005243 74 98            [12] 1618 	mov	a,#_shabuf
      005245 C0 E0            [24] 1619 	push	acc
      005247 74 02            [12] 1620 	mov	a,#(_shabuf >> 8)
      005249 C0 E0            [24] 1621 	push	acc
      00524B E4               [12] 1622 	clr	a
      00524C C0 E0            [24] 1623 	push	acc
      00524E C0 07            [24] 1624 	push	ar7
      005250 74 98            [12] 1625 	mov	a,#_shabuf
      005252 C0 E0            [24] 1626 	push	acc
      005254 74 02            [12] 1627 	mov	a,#(_shabuf >> 8)
      005256 C0 E0            [24] 1628 	push	acc
      005258 E4               [12] 1629 	clr	a
      005259 C0 E0            [24] 1630 	push	acc
      00525B C0 05            [24] 1631 	push	ar5
      00525D C0 06            [24] 1632 	push	ar6
      00525F 90 03 0E         [24] 1633 	mov	dptr,#_SHA_FLAGS
      005262 E0               [24] 1634 	movx	a,@dptr
      005263 C0 E0            [24] 1635 	push	acc
      005265 75 82 47         [24] 1636 	mov	dpl,#0x47
      005268 12 1D 1D         [24] 1637 	lcall	_atecc_send_recv
      00526B E5 81            [12] 1638 	mov	a,sp
      00526D 24 F2            [12] 1639 	add	a,#0xf2
      00526F F5 81            [12] 1640 	mov	sp,a
                           000220  1641 	C$u2f_atecc.c$144$1$149 ==.
                                   1642 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:144: SHA_FLAGS = ATECC_SHA_START;
      005271 90 03 0E         [24] 1643 	mov	dptr,#_SHA_FLAGS
      005274 E4               [12] 1644 	clr	a
      005275 F0               [24] 1645 	movx	@dptr,a
                           000225  1646 	C$u2f_atecc.c$145$1$149 ==.
                           000225  1647 	XG$u2f_sha256_finish$0$0 ==.
      005276 22               [24] 1648 	ret
                                   1649 ;------------------------------------------------------------
                                   1650 ;Allocation info for local variables in function 'atecc_prep_encryption'
                                   1651 ;------------------------------------------------------------
                                   1652 ;res                       Allocated to stack - _bp +1
                                   1653 ;------------------------------------------------------------
                           000226  1654 	Fu2f_atecc$atecc_prep_encryption$0$0 ==.
                           000226  1655 	C$u2f_atecc.c$147$1$149 ==.
                                   1656 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:147: static int atecc_prep_encryption()
                                   1657 ;	-----------------------------------------
                                   1658 ;	 function atecc_prep_encryption
                                   1659 ;	-----------------------------------------
      005277                       1660 _atecc_prep_encryption:
      005277 C0 1B            [24] 1661 	push	_bp
      005279 E5 81            [12] 1662 	mov	a,sp
      00527B F5 1B            [12] 1663 	mov	_bp,a
      00527D 24 04            [12] 1664 	add	a,#0x04
      00527F F5 81            [12] 1665 	mov	sp,a
                           000230  1666 	C$u2f_atecc.c$150$1$150 ==.
                                   1667 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:150: memset(appdata.tmp,0,32);
      005281 74 20            [12] 1668 	mov	a,#0x20
      005283 C0 E0            [24] 1669 	push	acc
      005285 E4               [12] 1670 	clr	a
      005286 C0 E0            [24] 1671 	push	acc
      005288 C0 E0            [24] 1672 	push	acc
      00528A 90 00 21         [24] 1673 	mov	dptr,#_appdata
      00528D 75 F0 40         [24] 1674 	mov	b,#0x40
      005290 12 5D D4         [24] 1675 	lcall	_memset
      005293 15 81            [12] 1676 	dec	sp
      005295 15 81            [12] 1677 	dec	sp
      005297 15 81            [12] 1678 	dec	sp
                           000248  1679 	C$u2f_atecc.c$153$1$150 ==.
                                   1680 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:153: appdata.tmp, 40, &res) != 0 )
      005299 AF 1B            [24] 1681 	mov	r7,_bp
      00529B 0F               [12] 1682 	inc	r7
      00529C 8F 04            [24] 1683 	mov	ar4,r7
      00529E 7D 00            [12] 1684 	mov	r5,#0x00
      0052A0 7E 40            [12] 1685 	mov	r6,#0x40
                           000251  1686 	C$u2f_atecc.c$152$1$150 ==.
                                   1687 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:152: appdata.tmp, 32,
                           000251  1688 	C$u2f_atecc.c$151$1$150 ==.
                                   1689 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:151: if( atecc_send_recv(ATECC_CMD_NONCE,ATECC_NONCE_TEMP_UPDATE,0,
      0052A2 C0 07            [24] 1690 	push	ar7
      0052A4 C0 04            [24] 1691 	push	ar4
      0052A6 C0 05            [24] 1692 	push	ar5
      0052A8 C0 06            [24] 1693 	push	ar6
      0052AA 74 28            [12] 1694 	mov	a,#0x28
      0052AC C0 E0            [24] 1695 	push	acc
      0052AE 74 21            [12] 1696 	mov	a,#_appdata
      0052B0 C0 E0            [24] 1697 	push	acc
      0052B2 74 00            [12] 1698 	mov	a,#(_appdata >> 8)
      0052B4 C0 E0            [24] 1699 	push	acc
      0052B6 EE               [12] 1700 	mov	a,r6
      0052B7 C0 E0            [24] 1701 	push	acc
      0052B9 03               [12] 1702 	rr	a
      0052BA C0 E0            [24] 1703 	push	acc
      0052BC 74 21            [12] 1704 	mov	a,#_appdata
      0052BE C0 E0            [24] 1705 	push	acc
      0052C0 74 00            [12] 1706 	mov	a,#(_appdata >> 8)
      0052C2 C0 E0            [24] 1707 	push	acc
      0052C4 EE               [12] 1708 	mov	a,r6
      0052C5 C0 E0            [24] 1709 	push	acc
      0052C7 E4               [12] 1710 	clr	a
      0052C8 C0 E0            [24] 1711 	push	acc
      0052CA C0 E0            [24] 1712 	push	acc
      0052CC 74 03            [12] 1713 	mov	a,#0x03
      0052CE C0 E0            [24] 1714 	push	acc
      0052D0 75 82 16         [24] 1715 	mov	dpl,#0x16
      0052D3 12 1D 1D         [24] 1716 	lcall	_atecc_send_recv
      0052D6 AE 82            [24] 1717 	mov	r6,dpl
      0052D8 E5 81            [12] 1718 	mov	a,sp
      0052DA 24 F2            [12] 1719 	add	a,#0xf2
      0052DC F5 81            [12] 1720 	mov	sp,a
      0052DE D0 07            [24] 1721 	pop	ar7
      0052E0 EE               [12] 1722 	mov	a,r6
      0052E1 60 0E            [24] 1723 	jz	00102$
                           000292  1724 	C$u2f_atecc.c$155$2$151 ==.
                                   1725 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:155: u2f_prints("pass through to tempkey failed\r\n");
      0052E3 90 5F 62         [24] 1726 	mov	dptr,#___str_0
      0052E6 75 F0 80         [24] 1727 	mov	b,#0x80
      0052E9 12 1F 7C         [24] 1728 	lcall	_u2f_prints
                           00029B  1729 	C$u2f_atecc.c$156$2$151 ==.
                                   1730 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:156: return -1;
      0052EC 90 FF FF         [24] 1731 	mov	dptr,#0xffff
      0052EF 80 4E            [24] 1732 	sjmp	00105$
      0052F1                       1733 00102$:
                           0002A0  1734 	C$u2f_atecc.c$160$1$150 ==.
                                   1735 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:160: appdata.tmp, 40, &res) != 0)
      0052F1 7E 00            [12] 1736 	mov	r6,#0x00
      0052F3 7D 40            [12] 1737 	mov	r5,#0x40
                           0002A4  1738 	C$u2f_atecc.c$158$1$150 ==.
                                   1739 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:158: if( atecc_send_recv(ATECC_CMD_GENDIG,
      0052F5 C0 07            [24] 1740 	push	ar7
      0052F7 C0 06            [24] 1741 	push	ar6
      0052F9 C0 05            [24] 1742 	push	ar5
      0052FB 74 28            [12] 1743 	mov	a,#0x28
      0052FD C0 E0            [24] 1744 	push	acc
      0052FF 74 21            [12] 1745 	mov	a,#_appdata
      005301 C0 E0            [24] 1746 	push	acc
      005303 74 00            [12] 1747 	mov	a,#(_appdata >> 8)
      005305 C0 E0            [24] 1748 	push	acc
      005307 ED               [12] 1749 	mov	a,r5
      005308 C0 E0            [24] 1750 	push	acc
      00530A E4               [12] 1751 	clr	a
      00530B C0 E0            [24] 1752 	push	acc
      00530D C0 E0            [24] 1753 	push	acc
      00530F C0 E0            [24] 1754 	push	acc
      005311 C0 E0            [24] 1755 	push	acc
      005313 04               [12] 1756 	inc	a
      005314 C0 E0            [24] 1757 	push	acc
      005316 E4               [12] 1758 	clr	a
      005317 C0 E0            [24] 1759 	push	acc
      005319 74 02            [12] 1760 	mov	a,#0x02
      00531B C0 E0            [24] 1761 	push	acc
      00531D 75 82 15         [24] 1762 	mov	dpl,#0x15
      005320 12 1D 1D         [24] 1763 	lcall	_atecc_send_recv
      005323 AF 82            [24] 1764 	mov	r7,dpl
      005325 E5 81            [12] 1765 	mov	a,sp
      005327 24 F2            [12] 1766 	add	a,#0xf2
      005329 F5 81            [12] 1767 	mov	sp,a
      00532B EF               [12] 1768 	mov	a,r7
      00532C 60 0E            [24] 1769 	jz	00104$
                           0002DD  1770 	C$u2f_atecc.c$162$2$152 ==.
                                   1771 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:162: u2f_prints("GENDIG failed\r\n");
      00532E 90 5F 83         [24] 1772 	mov	dptr,#___str_1
      005331 75 F0 80         [24] 1773 	mov	b,#0x80
      005334 12 1F 7C         [24] 1774 	lcall	_u2f_prints
                           0002E6  1775 	C$u2f_atecc.c$163$2$152 ==.
                                   1776 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:163: return -1;
      005337 90 FF FF         [24] 1777 	mov	dptr,#0xffff
      00533A 80 03            [24] 1778 	sjmp	00105$
      00533C                       1779 00104$:
                           0002EB  1780 	C$u2f_atecc.c$166$1$150 ==.
                                   1781 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:166: return 0;
      00533C 90 00 00         [24] 1782 	mov	dptr,#0x0000
      00533F                       1783 00105$:
      00533F 85 1B 81         [24] 1784 	mov	sp,_bp
      005342 D0 1B            [24] 1785 	pop	_bp
                           0002F3  1786 	C$u2f_atecc.c$167$1$150 ==.
                           0002F3  1787 	XFu2f_atecc$atecc_prep_encryption$0$0 ==.
      005344 22               [24] 1788 	ret
                                   1789 ;------------------------------------------------------------
                                   1790 ;Allocation info for local variables in function 'compute_key_hash'
                                   1791 ;------------------------------------------------------------
                                   1792 ;mask                      Allocated to stack - _bp -5
                                   1793 ;key                       Allocated to registers r5 r6 r7 
                                   1794 ;------------------------------------------------------------
                           0002F4  1795 	Fu2f_atecc$compute_key_hash$0$0 ==.
                           0002F4  1796 	C$u2f_atecc.c$169$1$150 ==.
                                   1797 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:169: static void compute_key_hash(uint8_t * key, uint8_t * mask)
                                   1798 ;	-----------------------------------------
                                   1799 ;	 function compute_key_hash
                                   1800 ;	-----------------------------------------
      005345                       1801 _compute_key_hash:
      005345 C0 1B            [24] 1802 	push	_bp
      005347 85 81 1B         [24] 1803 	mov	_bp,sp
      00534A AD 82            [24] 1804 	mov	r5,dpl
      00534C AE 83            [24] 1805 	mov	r6,dph
      00534E AF F0            [24] 1806 	mov	r7,b
                           0002FF  1807 	C$u2f_atecc.c$172$1$154 ==.
                                   1808 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:172: memset(appdata.tmp,0,28);
      005350 C0 07            [24] 1809 	push	ar7
      005352 C0 06            [24] 1810 	push	ar6
      005354 C0 05            [24] 1811 	push	ar5
      005356 74 1C            [12] 1812 	mov	a,#0x1c
      005358 C0 E0            [24] 1813 	push	acc
      00535A E4               [12] 1814 	clr	a
      00535B C0 E0            [24] 1815 	push	acc
      00535D C0 E0            [24] 1816 	push	acc
      00535F 90 00 21         [24] 1817 	mov	dptr,#_appdata
      005362 75 F0 40         [24] 1818 	mov	b,#0x40
      005365 12 5D D4         [24] 1819 	lcall	_memset
      005368 15 81            [12] 1820 	dec	sp
      00536A 15 81            [12] 1821 	dec	sp
      00536C 15 81            [12] 1822 	dec	sp
      00536E D0 05            [24] 1823 	pop	ar5
      005370 D0 06            [24] 1824 	pop	ar6
      005372 D0 07            [24] 1825 	pop	ar7
                           000323  1826 	C$u2f_atecc.c$173$1$154 ==.
                                   1827 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:173: memmove(appdata.tmp + 28, key, 36);
      005374 74 24            [12] 1828 	mov	a,#0x24
      005376 C0 E0            [24] 1829 	push	acc
      005378 E4               [12] 1830 	clr	a
      005379 C0 E0            [24] 1831 	push	acc
      00537B C0 05            [24] 1832 	push	ar5
      00537D C0 06            [24] 1833 	push	ar6
      00537F C0 07            [24] 1834 	push	ar7
      005381 90 00 3D         [24] 1835 	mov	dptr,#(_appdata + 0x001c)
      005384 75 F0 40         [24] 1836 	mov	b,#0x40
      005387 12 5A 63         [24] 1837 	lcall	_memmove
      00538A E5 81            [12] 1838 	mov	a,sp
      00538C 24 FB            [12] 1839 	add	a,#0xfb
      00538E F5 81            [12] 1840 	mov	sp,a
                           00033F  1841 	C$u2f_atecc.c$175$1$154 ==.
                                   1842 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:175: u2f_sha256_start();
      005390 12 51 31         [24] 1843 	lcall	_u2f_sha256_start
                           000342  1844 	C$u2f_atecc.c$177$1$154 ==.
                                   1845 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:177: u2f_sha256_update(mask,32);
      005393 74 20            [12] 1846 	mov	a,#0x20
      005395 C0 E0            [24] 1847 	push	acc
      005397 E5 1B            [12] 1848 	mov	a,_bp
      005399 24 FB            [12] 1849 	add	a,#0xfb
      00539B F8               [12] 1850 	mov	r0,a
      00539C 86 82            [24] 1851 	mov	dpl,@r0
      00539E 08               [12] 1852 	inc	r0
      00539F 86 83            [24] 1853 	mov	dph,@r0
      0053A1 08               [12] 1854 	inc	r0
      0053A2 86 F0            [24] 1855 	mov	b,@r0
      0053A4 12 51 76         [24] 1856 	lcall	_u2f_sha256_update
      0053A7 15 81            [12] 1857 	dec	sp
                           000358  1858 	C$u2f_atecc.c$180$1$154 ==.
                                   1859 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:180: appdata.tmp[0] = ATECC_CMD_PRIVWRITE;
      0053A9 75 21 46         [24] 1860 	mov	_appdata,#0x46
                           00035B  1861 	C$u2f_atecc.c$181$1$154 ==.
                                   1862 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:181: appdata.tmp[1] = ATECC_PRIVWRITE_ENC;
      0053AC 75 22 40         [24] 1863 	mov	(_appdata + 0x0001),#0x40
                           00035E  1864 	C$u2f_atecc.c$182$1$154 ==.
                                   1865 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:182: appdata.tmp[2] = 2;
      0053AF 75 23 02         [24] 1866 	mov	(_appdata + 0x0002),#0x02
                           000361  1867 	C$u2f_atecc.c$183$1$154 ==.
                                   1868 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:183: appdata.tmp[3] = 0;
      0053B2 75 24 00         [24] 1869 	mov	(_appdata + 0x0003),#0x00
                           000364  1870 	C$u2f_atecc.c$184$1$154 ==.
                                   1871 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:184: appdata.tmp[4] = 0xee;
      0053B5 75 25 EE         [24] 1872 	mov	(_appdata + 0x0004),#0xee
                           000367  1873 	C$u2f_atecc.c$185$1$154 ==.
                                   1874 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:185: appdata.tmp[5] = 0x01;
      0053B8 75 26 01         [24] 1875 	mov	(_appdata + 0x0005),#0x01
                           00036A  1876 	C$u2f_atecc.c$186$1$154 ==.
                                   1877 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:186: appdata.tmp[6] = 0x23;
      0053BB 75 27 23         [24] 1878 	mov	(_appdata + 0x0006),#0x23
                           00036D  1879 	C$u2f_atecc.c$188$1$154 ==.
                                   1880 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:188: u2f_sha256_update(appdata.tmp,28 + 36);
      0053BE 74 40            [12] 1881 	mov	a,#0x40
      0053C0 C0 E0            [24] 1882 	push	acc
      0053C2 90 00 21         [24] 1883 	mov	dptr,#_appdata
      0053C5 75 F0 40         [24] 1884 	mov	b,#0x40
      0053C8 12 51 76         [24] 1885 	lcall	_u2f_sha256_update
      0053CB 15 81            [12] 1886 	dec	sp
                           00037C  1887 	C$u2f_atecc.c$189$1$154 ==.
                                   1888 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:189: u2f_sha256_finish();
      0053CD 12 52 20         [24] 1889 	lcall	_u2f_sha256_finish
      0053D0 D0 1B            [24] 1890 	pop	_bp
                           000381  1891 	C$u2f_atecc.c$190$1$154 ==.
                           000381  1892 	XFu2f_atecc$compute_key_hash$0$0 ==.
      0053D2 22               [24] 1893 	ret
                                   1894 ;------------------------------------------------------------
                                   1895 ;Allocation info for local variables in function 'atecc_privwrite'
                                   1896 ;------------------------------------------------------------
                                   1897 ;key                       Allocated to stack - _bp -5
                                   1898 ;mask                      Allocated to stack - _bp -8
                                   1899 ;digest                    Allocated to stack - _bp -11
                                   1900 ;keyslot                   Allocated to registers r6 r7 
                                   1901 ;res                       Allocated to stack - _bp +1
                                   1902 ;i                         Allocated to registers r5 
                                   1903 ;------------------------------------------------------------
                           000382  1904 	Fu2f_atecc$atecc_privwrite$0$0 ==.
                           000382  1905 	C$u2f_atecc.c$192$1$154 ==.
                                   1906 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:192: static int atecc_privwrite(int keyslot, uint8_t * key, uint8_t * mask, uint8_t * digest)
                                   1907 ;	-----------------------------------------
                                   1908 ;	 function atecc_privwrite
                                   1909 ;	-----------------------------------------
      0053D3                       1910 _atecc_privwrite:
      0053D3 C0 1B            [24] 1911 	push	_bp
      0053D5 E5 81            [12] 1912 	mov	a,sp
      0053D7 F5 1B            [12] 1913 	mov	_bp,a
      0053D9 24 04            [12] 1914 	add	a,#0x04
      0053DB F5 81            [12] 1915 	mov	sp,a
      0053DD AE 82            [24] 1916 	mov	r6,dpl
      0053DF AF 83            [24] 1917 	mov	r7,dph
                           000390  1918 	C$u2f_atecc.c$197$1$156 ==.
                                   1919 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:197: atecc_prep_encryption();
      0053E1 C0 07            [24] 1920 	push	ar7
      0053E3 C0 06            [24] 1921 	push	ar6
      0053E5 12 52 77         [24] 1922 	lcall	_atecc_prep_encryption
      0053E8 D0 06            [24] 1923 	pop	ar6
      0053EA D0 07            [24] 1924 	pop	ar7
                           00039B  1925 	C$u2f_atecc.c$199$2$157 ==.
                                   1926 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:199: for (i=0; i<36; i++)
      0053EC 7D 00            [12] 1927 	mov	r5,#0x00
      0053EE                       1928 00104$:
                           00039D  1929 	C$u2f_atecc.c$201$1$156 ==.
                                   1930 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:201: appdata.tmp[i] = key[i] ^ mask[i];
      0053EE C0 06            [24] 1931 	push	ar6
      0053F0 C0 07            [24] 1932 	push	ar7
      0053F2 ED               [12] 1933 	mov	a,r5
      0053F3 24 21            [12] 1934 	add	a,#_appdata
      0053F5 F9               [12] 1935 	mov	r1,a
      0053F6 E5 1B            [12] 1936 	mov	a,_bp
      0053F8 24 FB            [12] 1937 	add	a,#0xfb
      0053FA F8               [12] 1938 	mov	r0,a
      0053FB ED               [12] 1939 	mov	a,r5
      0053FC 26               [12] 1940 	add	a,@r0
      0053FD FA               [12] 1941 	mov	r2,a
      0053FE E4               [12] 1942 	clr	a
      0053FF 08               [12] 1943 	inc	r0
      005400 36               [12] 1944 	addc	a,@r0
      005401 FB               [12] 1945 	mov	r3,a
      005402 08               [12] 1946 	inc	r0
      005403 86 04            [24] 1947 	mov	ar4,@r0
      005405 8A 82            [24] 1948 	mov	dpl,r2
      005407 8B 83            [24] 1949 	mov	dph,r3
      005409 8C F0            [24] 1950 	mov	b,r4
      00540B 12 5E 3E         [24] 1951 	lcall	__gptrget
      00540E FA               [12] 1952 	mov	r2,a
      00540F E5 1B            [12] 1953 	mov	a,_bp
      005411 24 F8            [12] 1954 	add	a,#0xf8
      005413 F8               [12] 1955 	mov	r0,a
      005414 ED               [12] 1956 	mov	a,r5
      005415 26               [12] 1957 	add	a,@r0
      005416 FB               [12] 1958 	mov	r3,a
      005417 E4               [12] 1959 	clr	a
      005418 08               [12] 1960 	inc	r0
      005419 36               [12] 1961 	addc	a,@r0
      00541A FC               [12] 1962 	mov	r4,a
      00541B 08               [12] 1963 	inc	r0
      00541C 86 07            [24] 1964 	mov	ar7,@r0
      00541E 8B 82            [24] 1965 	mov	dpl,r3
      005420 8C 83            [24] 1966 	mov	dph,r4
      005422 8F F0            [24] 1967 	mov	b,r7
      005424 12 5E 3E         [24] 1968 	lcall	__gptrget
      005427 FB               [12] 1969 	mov	r3,a
      005428 6A               [12] 1970 	xrl	a,r2
      005429 F7               [12] 1971 	mov	@r1,a
                           0003D9  1972 	C$u2f_atecc.c$199$1$156 ==.
                                   1973 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:199: for (i=0; i<36; i++)
      00542A 0D               [12] 1974 	inc	r5
      00542B BD 24 00         [24] 1975 	cjne	r5,#0x24,00118$
      00542E                       1976 00118$:
      00542E D0 07            [24] 1977 	pop	ar7
      005430 D0 06            [24] 1978 	pop	ar6
      005432 40 BA            [24] 1979 	jc	00104$
                           0003E3  1980 	C$u2f_atecc.c$203$1$156 ==.
                                   1981 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:203: memmove(appdata.tmp+36, digest, 32);
      005434 E5 1B            [12] 1982 	mov	a,_bp
      005436 24 F5            [12] 1983 	add	a,#0xf5
      005438 F8               [12] 1984 	mov	r0,a
      005439 86 03            [24] 1985 	mov	ar3,@r0
      00543B 08               [12] 1986 	inc	r0
      00543C 86 04            [24] 1987 	mov	ar4,@r0
      00543E 08               [12] 1988 	inc	r0
      00543F 86 05            [24] 1989 	mov	ar5,@r0
      005441 C0 07            [24] 1990 	push	ar7
      005443 C0 06            [24] 1991 	push	ar6
      005445 74 20            [12] 1992 	mov	a,#0x20
      005447 C0 E0            [24] 1993 	push	acc
      005449 E4               [12] 1994 	clr	a
      00544A C0 E0            [24] 1995 	push	acc
      00544C C0 03            [24] 1996 	push	ar3
      00544E C0 04            [24] 1997 	push	ar4
      005450 C0 05            [24] 1998 	push	ar5
      005452 90 00 45         [24] 1999 	mov	dptr,#(_appdata + 0x0024)
      005455 75 F0 40         [24] 2000 	mov	b,#0x40
      005458 12 5A 63         [24] 2001 	lcall	_memmove
      00545B E5 81            [12] 2002 	mov	a,sp
      00545D 24 FB            [12] 2003 	add	a,#0xfb
      00545F F5 81            [12] 2004 	mov	sp,a
      005461 D0 06            [24] 2005 	pop	ar6
      005463 D0 07            [24] 2006 	pop	ar7
                           000414  2007 	C$u2f_atecc.c$207$1$156 ==.
                                   2008 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:207: appdata.tmp, 40, &res) != 0)
      005465 AD 1B            [24] 2009 	mov	r5,_bp
      005467 0D               [12] 2010 	inc	r5
      005468 7C 00            [12] 2011 	mov	r4,#0x00
      00546A 7B 40            [12] 2012 	mov	r3,#0x40
                           00041B  2013 	C$u2f_atecc.c$206$1$156 ==.
                                   2014 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:206: ATECC_PRIVWRITE_ENC, keyslot, appdata.tmp, 68,
                           00041B  2015 	C$u2f_atecc.c$205$1$156 ==.
                                   2016 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:205: if( atecc_send_recv(ATECC_CMD_PRIVWRITE,
      00546C C0 05            [24] 2017 	push	ar5
      00546E C0 04            [24] 2018 	push	ar4
      005470 C0 03            [24] 2019 	push	ar3
      005472 74 28            [12] 2020 	mov	a,#0x28
      005474 C0 E0            [24] 2021 	push	acc
      005476 74 21            [12] 2022 	mov	a,#_appdata
      005478 C0 E0            [24] 2023 	push	acc
      00547A 74 00            [12] 2024 	mov	a,#(_appdata >> 8)
      00547C C0 E0            [24] 2025 	push	acc
      00547E EB               [12] 2026 	mov	a,r3
      00547F C0 E0            [24] 2027 	push	acc
      005481 74 44            [12] 2028 	mov	a,#0x44
      005483 C0 E0            [24] 2029 	push	acc
      005485 74 21            [12] 2030 	mov	a,#_appdata
      005487 C0 E0            [24] 2031 	push	acc
      005489 74 00            [12] 2032 	mov	a,#(_appdata >> 8)
      00548B C0 E0            [24] 2033 	push	acc
      00548D EB               [12] 2034 	mov	a,r3
      00548E C0 E0            [24] 2035 	push	acc
      005490 C0 06            [24] 2036 	push	ar6
      005492 C0 07            [24] 2037 	push	ar7
      005494 C0 E0            [24] 2038 	push	acc
      005496 75 82 46         [24] 2039 	mov	dpl,#0x46
      005499 12 1D 1D         [24] 2040 	lcall	_atecc_send_recv
      00549C AF 82            [24] 2041 	mov	r7,dpl
      00549E E5 81            [12] 2042 	mov	a,sp
      0054A0 24 F2            [12] 2043 	add	a,#0xf2
      0054A2 F5 81            [12] 2044 	mov	sp,a
      0054A4 EF               [12] 2045 	mov	a,r7
      0054A5 60 0E            [24] 2046 	jz	00103$
                           000456  2047 	C$u2f_atecc.c$209$2$158 ==.
                                   2048 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:209: u2f_prints("PRIVWRITE failed\r\n");
      0054A7 90 5F 93         [24] 2049 	mov	dptr,#___str_2
      0054AA 75 F0 80         [24] 2050 	mov	b,#0x80
      0054AD 12 1F 7C         [24] 2051 	lcall	_u2f_prints
                           00045F  2052 	C$u2f_atecc.c$210$2$158 ==.
                                   2053 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:210: return -1;
      0054B0 90 FF FF         [24] 2054 	mov	dptr,#0xffff
      0054B3 80 03            [24] 2055 	sjmp	00106$
      0054B5                       2056 00103$:
                           000464  2057 	C$u2f_atecc.c$212$1$156 ==.
                                   2058 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:212: return 0;
      0054B5 90 00 00         [24] 2059 	mov	dptr,#0x0000
      0054B8                       2060 00106$:
      0054B8 85 1B 81         [24] 2061 	mov	sp,_bp
      0054BB D0 1B            [24] 2062 	pop	_bp
                           00046C  2063 	C$u2f_atecc.c$213$1$156 ==.
                           00046C  2064 	XFu2f_atecc$atecc_privwrite$0$0 ==.
      0054BD 22               [24] 2065 	ret
                                   2066 ;------------------------------------------------------------
                                   2067 ;Allocation info for local variables in function 'u2f_ecdsa_sign'
                                   2068 ;------------------------------------------------------------
                                   2069 ;handle                    Allocated to stack - _bp -5
                                   2070 ;appid                     Allocated to stack - _bp -8
                                   2071 ;dest                      Allocated to registers r5 r6 r7 
                                   2072 ;res                       Allocated to stack - _bp +1
                                   2073 ;slot                      Allocated to registers r3 r4 
                                   2074 ;------------------------------------------------------------
                           00046D  2075 	G$u2f_ecdsa_sign$0$0 ==.
                           00046D  2076 	C$u2f_atecc.c$216$1$156 ==.
                                   2077 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:216: int8_t u2f_ecdsa_sign(uint8_t * dest, uint8_t * handle, uint8_t * appid)
                                   2078 ;	-----------------------------------------
                                   2079 ;	 function u2f_ecdsa_sign
                                   2080 ;	-----------------------------------------
      0054BE                       2081 _u2f_ecdsa_sign:
      0054BE C0 1B            [24] 2082 	push	_bp
      0054C0 E5 81            [12] 2083 	mov	a,sp
      0054C2 F5 1B            [12] 2084 	mov	_bp,a
      0054C4 24 04            [12] 2085 	add	a,#0x04
      0054C6 F5 81            [12] 2086 	mov	sp,a
      0054C8 AD 82            [24] 2087 	mov	r5,dpl
      0054CA AE 83            [24] 2088 	mov	r6,dph
      0054CC AF F0            [24] 2089 	mov	r7,b
                           00047D  2090 	C$u2f_atecc.c$219$1$156 ==.
                                   2091 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:219: uint16_t slot = U2F_TEMP_KEY_SLOT;
      0054CE 7B 02            [12] 2092 	mov	r3,#0x02
      0054D0 7C 00            [12] 2093 	mov	r4,#0x00
                           000481  2094 	C$u2f_atecc.c$220$1$160 ==.
                                   2095 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:220: if (handle == U2F_ATTESTATION_HANDLE)
      0054D2 E5 1B            [12] 2096 	mov	a,_bp
      0054D4 24 FB            [12] 2097 	add	a,#0xfb
      0054D6 F8               [12] 2098 	mov	r0,a
      0054D7 E6               [12] 2099 	mov	a,@r0
      0054D8 08               [12] 2100 	inc	r0
      0054D9 46               [12] 2101 	orl	a,@r0
                           000489  2102 	C$u2f_atecc.c$222$2$161 ==.
                                   2103 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:222: slot = U2F_ATTESTATION_KEY_SLOT;
      0054DA 70 03            [24] 2104 	jnz	00102$
      0054DC 7B 0F            [12] 2105 	mov	r3,#0x0f
      0054DE FC               [12] 2106 	mov	r4,a
      0054DF                       2107 00102$:
                           00048E  2108 	C$u2f_atecc.c$227$1$160 ==.
                                   2109 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:227: appdata.tmp, 70, &res) != 0)
      0054DF C0 05            [24] 2110 	push	ar5
      0054E1 C0 06            [24] 2111 	push	ar6
      0054E3 C0 07            [24] 2112 	push	ar7
      0054E5 AA 1B            [24] 2113 	mov	r2,_bp
      0054E7 0A               [12] 2114 	inc	r2
      0054E8 8A 05            [24] 2115 	mov	ar5,r2
      0054EA 7E 00            [12] 2116 	mov	r6,#0x00
      0054EC 7F 40            [12] 2117 	mov	r7,#0x40
                           00049D  2118 	C$u2f_atecc.c$225$1$160 ==.
                                   2119 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:225: if( atecc_send_recv(ATECC_CMD_SIGN,
      0054EE C0 06            [24] 2120 	push	ar6
      0054F0 C0 05            [24] 2121 	push	ar5
      0054F2 C0 02            [24] 2122 	push	ar2
      0054F4 C0 05            [24] 2123 	push	ar5
      0054F6 C0 06            [24] 2124 	push	ar6
      0054F8 C0 07            [24] 2125 	push	ar7
      0054FA 74 46            [12] 2126 	mov	a,#0x46
      0054FC C0 E0            [24] 2127 	push	acc
      0054FE 74 21            [12] 2128 	mov	a,#_appdata
      005500 C0 E0            [24] 2129 	push	acc
      005502 74 00            [12] 2130 	mov	a,#(_appdata >> 8)
      005504 C0 E0            [24] 2131 	push	acc
      005506 EF               [12] 2132 	mov	a,r7
      005507 C0 E0            [24] 2133 	push	acc
      005509 E4               [12] 2134 	clr	a
      00550A C0 E0            [24] 2135 	push	acc
      00550C C0 E0            [24] 2136 	push	acc
      00550E C0 E0            [24] 2137 	push	acc
      005510 C0 E0            [24] 2138 	push	acc
      005512 C0 03            [24] 2139 	push	ar3
      005514 C0 04            [24] 2140 	push	ar4
      005516 74 80            [12] 2141 	mov	a,#0x80
      005518 C0 E0            [24] 2142 	push	acc
      00551A 75 82 41         [24] 2143 	mov	dpl,#0x41
      00551D 12 1D 1D         [24] 2144 	lcall	_atecc_send_recv
      005520 AF 82            [24] 2145 	mov	r7,dpl
      005522 E5 81            [12] 2146 	mov	a,sp
      005524 24 F2            [12] 2147 	add	a,#0xf2
      005526 F5 81            [12] 2148 	mov	sp,a
      005528 D0 02            [24] 2149 	pop	ar2
      00552A D0 05            [24] 2150 	pop	ar5
      00552C D0 06            [24] 2151 	pop	ar6
      00552E EF               [12] 2152 	mov	a,r7
      00552F D0 07            [24] 2153 	pop	ar7
      005531 D0 06            [24] 2154 	pop	ar6
      005533 D0 05            [24] 2155 	pop	ar5
      005535 60 05            [24] 2156 	jz	00104$
                           0004E6  2157 	C$u2f_atecc.c$229$2$162 ==.
                                   2158 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:229: return -1;
      005537 75 82 FF         [24] 2159 	mov	dpl,#0xff
      00553A 80 2A            [24] 2160 	sjmp	00105$
      00553C                       2161 00104$:
                           0004EB  2162 	C$u2f_atecc.c$231$1$160 ==.
                                   2163 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:231: memmove(dest, res.buf, 64);
      00553C EA               [12] 2164 	mov	a,r2
      00553D 04               [12] 2165 	inc	a
      00553E F9               [12] 2166 	mov	r1,a
      00553F 87 02            [24] 2167 	mov	ar2,@r1
      005541 09               [12] 2168 	inc	r1
      005542 87 03            [24] 2169 	mov	ar3,@r1
      005544 09               [12] 2170 	inc	r1
      005545 87 04            [24] 2171 	mov	ar4,@r1
      005547 74 40            [12] 2172 	mov	a,#0x40
      005549 C0 E0            [24] 2173 	push	acc
      00554B E4               [12] 2174 	clr	a
      00554C C0 E0            [24] 2175 	push	acc
      00554E C0 02            [24] 2176 	push	ar2
      005550 C0 03            [24] 2177 	push	ar3
      005552 C0 04            [24] 2178 	push	ar4
      005554 8D 82            [24] 2179 	mov	dpl,r5
      005556 8E 83            [24] 2180 	mov	dph,r6
      005558 8F F0            [24] 2181 	mov	b,r7
      00555A 12 5A 63         [24] 2182 	lcall	_memmove
      00555D E5 81            [12] 2183 	mov	a,sp
      00555F 24 FB            [12] 2184 	add	a,#0xfb
      005561 F5 81            [12] 2185 	mov	sp,a
                           000512  2186 	C$u2f_atecc.c$232$1$160 ==.
                                   2187 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:232: return 0;
      005563 75 82 00         [24] 2188 	mov	dpl,#0x00
      005566                       2189 00105$:
      005566 85 1B 81         [24] 2190 	mov	sp,_bp
      005569 D0 1B            [24] 2191 	pop	_bp
                           00051A  2192 	C$u2f_atecc.c$233$1$160 ==.
                           00051A  2193 	XG$u2f_ecdsa_sign$0$0 ==.
      00556B 22               [24] 2194 	ret
                                   2195 ;------------------------------------------------------------
                                   2196 ;Allocation info for local variables in function 'u2f_new_keypair'
                                   2197 ;------------------------------------------------------------
                                   2198 ;appid                     Allocated to stack - _bp -5
                                   2199 ;pubkey                    Allocated to stack - _bp -8
                                   2200 ;handle                    Allocated to stack - _bp +1
                                   2201 ;res                       Allocated to stack - _bp +11
                                   2202 ;private_key               Allocated to stack - _bp +15
                                   2203 ;i                         Allocated to registers r5 r3 
                                   2204 ;sloc0                     Allocated to stack - _bp +4
                                   2205 ;sloc1                     Allocated to stack - _bp +5
                                   2206 ;sloc2                     Allocated to stack - _bp +8
                                   2207 ;------------------------------------------------------------
                           00051B  2208 	G$u2f_new_keypair$0$0 ==.
                           00051B  2209 	C$u2f_atecc.c$238$1$160 ==.
                                   2210 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:238: int8_t u2f_new_keypair(uint8_t * handle, uint8_t * appid, uint8_t * pubkey)
                                   2211 ;	-----------------------------------------
                                   2212 ;	 function u2f_new_keypair
                                   2213 ;	-----------------------------------------
      00556C                       2214 _u2f_new_keypair:
      00556C C0 1B            [24] 2215 	push	_bp
      00556E 85 81 1B         [24] 2216 	mov	_bp,sp
      005571 C0 82            [24] 2217 	push	dpl
      005573 C0 83            [24] 2218 	push	dph
      005575 C0 F0            [24] 2219 	push	b
      005577 E5 81            [12] 2220 	mov	a,sp
      005579 24 2F            [12] 2221 	add	a,#0x2f
      00557B F5 81            [12] 2222 	mov	sp,a
                           00052C  2223 	C$u2f_atecc.c$244$1$164 ==.
                                   2224 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:244: watchdog();
      00557D 75 97 A5         [24] 2225 	mov	_WDTCN,#0xa5
                           00052F  2226 	C$u2f_atecc.c$249$1$164 ==.
                                   2227 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:249: sizeof(appdata.tmp), &res) != 0 )
      005580 E5 1B            [12] 2228 	mov	a,_bp
      005582 24 0B            [12] 2229 	add	a,#0x0b
      005584 FC               [12] 2230 	mov	r4,a
      005585 FA               [12] 2231 	mov	r2,a
      005586 7B 00            [12] 2232 	mov	r3,#0x00
      005588 7F 40            [12] 2233 	mov	r7,#0x40
                           000539  2234 	C$u2f_atecc.c$248$1$164 ==.
                                   2235 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:248: appdata.tmp,
                           000539  2236 	C$u2f_atecc.c$246$1$164 ==.
                                   2237 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:246: if (atecc_send_recv(ATECC_CMD_RNG,ATECC_RNG_P1,ATECC_RNG_P2,
      00558A C0 04            [24] 2238 	push	ar4
      00558C C0 02            [24] 2239 	push	ar2
      00558E C0 03            [24] 2240 	push	ar3
      005590 C0 07            [24] 2241 	push	ar7
      005592 74 46            [12] 2242 	mov	a,#0x46
      005594 C0 E0            [24] 2243 	push	acc
      005596 74 21            [12] 2244 	mov	a,#_appdata
      005598 C0 E0            [24] 2245 	push	acc
      00559A 74 00            [12] 2246 	mov	a,#(_appdata >> 8)
      00559C C0 E0            [24] 2247 	push	acc
      00559E EF               [12] 2248 	mov	a,r7
      00559F C0 E0            [24] 2249 	push	acc
      0055A1 E4               [12] 2250 	clr	a
      0055A2 C0 E0            [24] 2251 	push	acc
      0055A4 C0 E0            [24] 2252 	push	acc
      0055A6 C0 E0            [24] 2253 	push	acc
      0055A8 C0 E0            [24] 2254 	push	acc
      0055AA C0 E0            [24] 2255 	push	acc
      0055AC C0 E0            [24] 2256 	push	acc
      0055AE C0 E0            [24] 2257 	push	acc
      0055B0 75 82 1B         [24] 2258 	mov	dpl,#0x1b
      0055B3 12 1D 1D         [24] 2259 	lcall	_atecc_send_recv
      0055B6 AF 82            [24] 2260 	mov	r7,dpl
      0055B8 E5 81            [12] 2261 	mov	a,sp
      0055BA 24 F2            [12] 2262 	add	a,#0xf2
      0055BC F5 81            [12] 2263 	mov	sp,a
      0055BE D0 04            [24] 2264 	pop	ar4
      0055C0 EF               [12] 2265 	mov	a,r7
      0055C1 60 06            [24] 2266 	jz	00102$
                           000572  2267 	C$u2f_atecc.c$251$2$165 ==.
                                   2268 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:251: return -1;
      0055C3 75 82 FF         [24] 2269 	mov	dpl,#0xff
      0055C6 02 58 7E         [24] 2270 	ljmp	00110$
      0055C9                       2271 00102$:
                           000578  2272 	C$u2f_atecc.c$254$1$164 ==.
                                   2273 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:254: SHA_HMAC_KEY = U2F_MASTER_KEY_SLOT;
      0055C9 90 03 0F         [24] 2274 	mov	dptr,#_SHA_HMAC_KEY
      0055CC 74 01            [12] 2275 	mov	a,#0x01
      0055CE F0               [24] 2276 	movx	@dptr,a
                           00057E  2277 	C$u2f_atecc.c$255$1$164 ==.
                                   2278 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:255: SHA_FLAGS = ATECC_SHA_HMACSTART;
      0055CF 90 03 0E         [24] 2279 	mov	dptr,#_SHA_FLAGS
      0055D2 74 04            [12] 2280 	mov	a,#0x04
      0055D4 F0               [24] 2281 	movx	@dptr,a
                           000584  2282 	C$u2f_atecc.c$256$1$164 ==.
                                   2283 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:256: u2f_sha256_start();
      0055D5 C0 04            [24] 2284 	push	ar4
      0055D7 12 51 31         [24] 2285 	lcall	_u2f_sha256_start
                           000589  2286 	C$u2f_atecc.c$257$1$164 ==.
                                   2287 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:257: u2f_sha256_update(appid,32);
      0055DA 74 20            [12] 2288 	mov	a,#0x20
      0055DC C0 E0            [24] 2289 	push	acc
      0055DE E5 1B            [12] 2290 	mov	a,_bp
      0055E0 24 FB            [12] 2291 	add	a,#0xfb
      0055E2 F8               [12] 2292 	mov	r0,a
      0055E3 86 82            [24] 2293 	mov	dpl,@r0
      0055E5 08               [12] 2294 	inc	r0
      0055E6 86 83            [24] 2295 	mov	dph,@r0
      0055E8 08               [12] 2296 	inc	r0
      0055E9 86 F0            [24] 2297 	mov	b,@r0
      0055EB 12 51 76         [24] 2298 	lcall	_u2f_sha256_update
      0055EE 15 81            [12] 2299 	dec	sp
      0055F0 D0 04            [24] 2300 	pop	ar4
                           0005A1  2301 	C$u2f_atecc.c$258$1$164 ==.
                                   2302 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:258: u2f_sha256_update(res.buf,4);
      0055F2 EC               [12] 2303 	mov	a,r4
      0055F3 04               [12] 2304 	inc	a
      0055F4 F9               [12] 2305 	mov	r1,a
      0055F5 87 05            [24] 2306 	mov	ar5,@r1
      0055F7 09               [12] 2307 	inc	r1
      0055F8 87 06            [24] 2308 	mov	ar6,@r1
      0055FA 09               [12] 2309 	inc	r1
      0055FB 87 07            [24] 2310 	mov	ar7,@r1
      0055FD 19               [12] 2311 	dec	r1
      0055FE 19               [12] 2312 	dec	r1
      0055FF C0 04            [24] 2313 	push	ar4
      005601 C0 01            [24] 2314 	push	ar1
      005603 74 04            [12] 2315 	mov	a,#0x04
      005605 C0 E0            [24] 2316 	push	acc
      005607 8D 82            [24] 2317 	mov	dpl,r5
      005609 8E 83            [24] 2318 	mov	dph,r6
      00560B 8F F0            [24] 2319 	mov	b,r7
      00560D 12 51 76         [24] 2320 	lcall	_u2f_sha256_update
      005610 15 81            [12] 2321 	dec	sp
                           0005C1  2322 	C$u2f_atecc.c$259$1$164 ==.
                                   2323 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:259: SHA_FLAGS = ATECC_SHA_HMACEND;
      005612 90 03 0E         [24] 2324 	mov	dptr,#_SHA_FLAGS
      005615 74 05            [12] 2325 	mov	a,#0x05
      005617 F0               [24] 2326 	movx	@dptr,a
                           0005C7  2327 	C$u2f_atecc.c$260$1$164 ==.
                                   2328 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:260: u2f_sha256_finish();
      005618 12 52 20         [24] 2329 	lcall	_u2f_sha256_finish
      00561B D0 01            [24] 2330 	pop	ar1
                           0005CC  2331 	C$u2f_atecc.c$262$1$164 ==.
                                   2332 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:262: memmove(handle, res.buf, 4);  // size of key handle must be 36
      00561D 87 05            [24] 2333 	mov	ar5,@r1
      00561F 09               [12] 2334 	inc	r1
      005620 87 06            [24] 2335 	mov	ar6,@r1
      005622 09               [12] 2336 	inc	r1
      005623 87 07            [24] 2337 	mov	ar7,@r1
      005625 19               [12] 2338 	dec	r1
      005626 19               [12] 2339 	dec	r1
      005627 A8 1B            [24] 2340 	mov	r0,_bp
      005629 08               [12] 2341 	inc	r0
      00562A 86 02            [24] 2342 	mov	ar2,@r0
      00562C 08               [12] 2343 	inc	r0
      00562D 86 03            [24] 2344 	mov	ar3,@r0
      00562F 08               [12] 2345 	inc	r0
      005630 86 04            [24] 2346 	mov	ar4,@r0
      005632 C0 04            [24] 2347 	push	ar4
      005634 C0 01            [24] 2348 	push	ar1
      005636 74 04            [12] 2349 	mov	a,#0x04
      005638 C0 E0            [24] 2350 	push	acc
      00563A E4               [12] 2351 	clr	a
      00563B C0 E0            [24] 2352 	push	acc
      00563D C0 05            [24] 2353 	push	ar5
      00563F C0 06            [24] 2354 	push	ar6
      005641 C0 07            [24] 2355 	push	ar7
      005643 8A 82            [24] 2356 	mov	dpl,r2
      005645 8B 83            [24] 2357 	mov	dph,r3
      005647 8C F0            [24] 2358 	mov	b,r4
      005649 12 5A 63         [24] 2359 	lcall	_memmove
      00564C E5 81            [12] 2360 	mov	a,sp
      00564E 24 FB            [12] 2361 	add	a,#0xfb
      005650 F5 81            [12] 2362 	mov	sp,a
                           000601  2363 	C$u2f_atecc.c$264$1$164 ==.
                                   2364 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:264: memset(private_key,0,4);
      005652 E5 1B            [12] 2365 	mov	a,_bp
      005654 24 04            [12] 2366 	add	a,#0x04
      005656 F8               [12] 2367 	mov	r0,a
      005657 E5 1B            [12] 2368 	mov	a,_bp
      005659 24 0F            [12] 2369 	add	a,#0x0f
      00565B F6               [12] 2370 	mov	@r0,a
      00565C E5 1B            [12] 2371 	mov	a,_bp
      00565E 24 04            [12] 2372 	add	a,#0x04
      005660 F8               [12] 2373 	mov	r0,a
      005661 86 05            [24] 2374 	mov	ar5,@r0
      005663 7E 00            [12] 2375 	mov	r6,#0x00
      005665 7F 40            [12] 2376 	mov	r7,#0x40
      005667 74 04            [12] 2377 	mov	a,#0x04
      005669 C0 E0            [24] 2378 	push	acc
      00566B E4               [12] 2379 	clr	a
      00566C C0 E0            [24] 2380 	push	acc
      00566E C0 E0            [24] 2381 	push	acc
      005670 8D 82            [24] 2382 	mov	dpl,r5
      005672 8E 83            [24] 2383 	mov	dph,r6
      005674 8F F0            [24] 2384 	mov	b,r7
      005676 12 5D D4         [24] 2385 	lcall	_memset
      005679 15 81            [12] 2386 	dec	sp
      00567B 15 81            [12] 2387 	dec	sp
      00567D 15 81            [12] 2388 	dec	sp
      00567F D0 01            [24] 2389 	pop	ar1
      005681 D0 04            [24] 2390 	pop	ar4
                           000632  2391 	C$u2f_atecc.c$265$1$164 ==.
                                   2392 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:265: memmove(private_key+4, res_digest.buf, 32);
      005683 90 02 DF         [24] 2393 	mov	dptr,#(_res_digest + 0x0001)
      005686 E0               [24] 2394 	movx	a,@dptr
      005687 FD               [12] 2395 	mov	r5,a
      005688 A3               [24] 2396 	inc	dptr
      005689 E0               [24] 2397 	movx	a,@dptr
      00568A FE               [12] 2398 	mov	r6,a
      00568B A3               [24] 2399 	inc	dptr
      00568C E0               [24] 2400 	movx	a,@dptr
      00568D FF               [12] 2401 	mov	r7,a
      00568E E5 1B            [12] 2402 	mov	a,_bp
      005690 24 04            [12] 2403 	add	a,#0x04
      005692 F8               [12] 2404 	mov	r0,a
      005693 74 04            [12] 2405 	mov	a,#0x04
      005695 26               [12] 2406 	add	a,@r0
      005696 FC               [12] 2407 	mov	r4,a
      005697 7B 00            [12] 2408 	mov	r3,#0x00
      005699 7A 40            [12] 2409 	mov	r2,#0x40
      00569B C0 04            [24] 2410 	push	ar4
      00569D C0 01            [24] 2411 	push	ar1
      00569F 74 20            [12] 2412 	mov	a,#0x20
      0056A1 C0 E0            [24] 2413 	push	acc
      0056A3 E4               [12] 2414 	clr	a
      0056A4 C0 E0            [24] 2415 	push	acc
      0056A6 C0 05            [24] 2416 	push	ar5
      0056A8 C0 06            [24] 2417 	push	ar6
      0056AA C0 07            [24] 2418 	push	ar7
      0056AC 8C 82            [24] 2419 	mov	dpl,r4
      0056AE 8B 83            [24] 2420 	mov	dph,r3
      0056B0 8A F0            [24] 2421 	mov	b,r2
      0056B2 12 5A 63         [24] 2422 	lcall	_memmove
      0056B5 E5 81            [12] 2423 	mov	a,sp
      0056B7 24 FB            [12] 2424 	add	a,#0xfb
      0056B9 F5 81            [12] 2425 	mov	sp,a
      0056BB D0 01            [24] 2426 	pop	ar1
      0056BD D0 04            [24] 2427 	pop	ar4
                           00066E  2428 	C$u2f_atecc.c$267$2$166 ==.
                                   2429 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:267: for (i=4; i<36; i++)
      0056BF 7D 04            [12] 2430 	mov	r5,#0x04
      0056C1 7B 00            [12] 2431 	mov	r3,#0x00
                           000672  2432 	C$u2f_atecc.c$292$1$164 ==.
                                   2433 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:292: return 0;
      0056C3 D0 04            [24] 2434 	pop	ar4
                           000674  2435 	C$u2f_atecc.c$267$1$164 ==.
                                   2436 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:267: for (i=4; i<36; i++)
      0056C5                       2437 00108$:
                           000674  2438 	C$u2f_atecc.c$269$2$166 ==.
                                   2439 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:269: private_key[i] ^= RMASK[i];
      0056C5 C0 01            [24] 2440 	push	ar1
      0056C7 E5 1B            [12] 2441 	mov	a,_bp
      0056C9 24 04            [12] 2442 	add	a,#0x04
      0056CB F9               [12] 2443 	mov	r1,a
      0056CC ED               [12] 2444 	mov	a,r5
      0056CD 27               [12] 2445 	add	a,@r1
      0056CE F8               [12] 2446 	mov	r0,a
      0056CF D0 01            [24] 2447 	pop	ar1
      0056D1 86 07            [24] 2448 	mov	ar7,@r0
      0056D3 ED               [12] 2449 	mov	a,r5
      0056D4 24 4C            [12] 2450 	add	a,#_RMASK
      0056D6 F5 82            [12] 2451 	mov	dpl,a
      0056D8 EB               [12] 2452 	mov	a,r3
      0056D9 34 61            [12] 2453 	addc	a,#(_RMASK >> 8)
      0056DB F5 83            [12] 2454 	mov	dph,a
      0056DD E4               [12] 2455 	clr	a
      0056DE 93               [24] 2456 	movc	a,@a+dptr
      0056DF FE               [12] 2457 	mov	r6,a
      0056E0 6F               [12] 2458 	xrl	a,r7
      0056E1 F6               [12] 2459 	mov	@r0,a
                           000691  2460 	C$u2f_atecc.c$267$1$164 ==.
                                   2461 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:267: for (i=4; i<36; i++)
      0056E2 0D               [12] 2462 	inc	r5
      0056E3 BD 00 01         [24] 2463 	cjne	r5,#0x00,00129$
      0056E6 0B               [12] 2464 	inc	r3
      0056E7                       2465 00129$:
      0056E7 C3               [12] 2466 	clr	c
      0056E8 ED               [12] 2467 	mov	a,r5
      0056E9 94 24            [12] 2468 	subb	a,#0x24
      0056EB EB               [12] 2469 	mov	a,r3
      0056EC 64 80            [12] 2470 	xrl	a,#0x80
      0056EE 94 80            [12] 2471 	subb	a,#0x80
      0056F0 40 D3            [24] 2472 	jc	00108$
                           0006A1  2473 	C$u2f_atecc.c$271$1$164 ==.
                                   2474 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:271: watchdog();
      0056F2 C0 01            [24] 2475 	push	ar1
      0056F4 75 97 A5         [24] 2476 	mov	_WDTCN,#0xa5
                           0006A6  2477 	C$u2f_atecc.c$272$1$164 ==.
                                   2478 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:272: compute_key_hash(private_key,  WMASK);
      0056F7 E5 1B            [12] 2479 	mov	a,_bp
      0056F9 24 04            [12] 2480 	add	a,#0x04
      0056FB F8               [12] 2481 	mov	r0,a
      0056FC 86 07            [24] 2482 	mov	ar7,@r0
      0056FE 7E 00            [12] 2483 	mov	r6,#0x00
      005700 7D 40            [12] 2484 	mov	r5,#0x40
      005702 C0 04            [24] 2485 	push	ar4
      005704 C0 01            [24] 2486 	push	ar1
      005706 74 27            [12] 2487 	mov	a,#_WMASK
      005708 C0 E0            [24] 2488 	push	acc
      00570A 74 61            [12] 2489 	mov	a,#(_WMASK >> 8)
      00570C C0 E0            [24] 2490 	push	acc
      00570E 74 80            [12] 2491 	mov	a,#0x80
      005710 C0 E0            [24] 2492 	push	acc
      005712 8F 82            [24] 2493 	mov	dpl,r7
      005714 8E 83            [24] 2494 	mov	dph,r6
      005716 8D F0            [24] 2495 	mov	b,r5
      005718 12 53 45         [24] 2496 	lcall	_compute_key_hash
      00571B 15 81            [12] 2497 	dec	sp
      00571D 15 81            [12] 2498 	dec	sp
      00571F 15 81            [12] 2499 	dec	sp
      005721 D0 01            [24] 2500 	pop	ar1
      005723 D0 04            [24] 2501 	pop	ar4
                           0006D4  2502 	C$u2f_atecc.c$273$1$164 ==.
                                   2503 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:273: memmove(handle+4, res_digest.buf, 32);  // size of key handle must be 36
      005725 90 02 DF         [24] 2504 	mov	dptr,#(_res_digest + 0x0001)
      005728 E0               [24] 2505 	movx	a,@dptr
      005729 FD               [12] 2506 	mov	r5,a
      00572A A3               [24] 2507 	inc	dptr
      00572B E0               [24] 2508 	movx	a,@dptr
      00572C FE               [12] 2509 	mov	r6,a
      00572D A3               [24] 2510 	inc	dptr
      00572E E0               [24] 2511 	movx	a,@dptr
      00572F FF               [12] 2512 	mov	r7,a
      005730 E5 1B            [12] 2513 	mov	a,_bp
      005732 24 05            [12] 2514 	add	a,#0x05
      005734 F8               [12] 2515 	mov	r0,a
      005735 A6 05            [24] 2516 	mov	@r0,ar5
      005737 08               [12] 2517 	inc	r0
      005738 A6 06            [24] 2518 	mov	@r0,ar6
      00573A 08               [12] 2519 	inc	r0
      00573B A6 07            [24] 2520 	mov	@r0,ar7
      00573D A8 1B            [24] 2521 	mov	r0,_bp
      00573F 08               [12] 2522 	inc	r0
      005740 C0 01            [24] 2523 	push	ar1
      005742 E5 1B            [12] 2524 	mov	a,_bp
      005744 24 08            [12] 2525 	add	a,#0x08
      005746 F9               [12] 2526 	mov	r1,a
      005747 74 04            [12] 2527 	mov	a,#0x04
      005749 26               [12] 2528 	add	a,@r0
      00574A F7               [12] 2529 	mov	@r1,a
      00574B E4               [12] 2530 	clr	a
      00574C 08               [12] 2531 	inc	r0
      00574D 36               [12] 2532 	addc	a,@r0
      00574E 09               [12] 2533 	inc	r1
      00574F F7               [12] 2534 	mov	@r1,a
      005750 08               [12] 2535 	inc	r0
      005751 09               [12] 2536 	inc	r1
      005752 E6               [12] 2537 	mov	a,@r0
      005753 F7               [12] 2538 	mov	@r1,a
      005754 D0 01            [24] 2539 	pop	ar1
      005756 E5 1B            [12] 2540 	mov	a,_bp
      005758 24 08            [12] 2541 	add	a,#0x08
      00575A F8               [12] 2542 	mov	r0,a
      00575B 86 05            [24] 2543 	mov	ar5,@r0
      00575D 08               [12] 2544 	inc	r0
      00575E 86 06            [24] 2545 	mov	ar6,@r0
      005760 08               [12] 2546 	inc	r0
      005761 86 07            [24] 2547 	mov	ar7,@r0
      005763 C0 04            [24] 2548 	push	ar4
      005765 C0 01            [24] 2549 	push	ar1
      005767 74 20            [12] 2550 	mov	a,#0x20
      005769 C0 E0            [24] 2551 	push	acc
      00576B E4               [12] 2552 	clr	a
      00576C C0 E0            [24] 2553 	push	acc
      00576E E5 1B            [12] 2554 	mov	a,_bp
      005770 24 05            [12] 2555 	add	a,#0x05
      005772 F8               [12] 2556 	mov	r0,a
      005773 E6               [12] 2557 	mov	a,@r0
      005774 C0 E0            [24] 2558 	push	acc
      005776 08               [12] 2559 	inc	r0
      005777 E6               [12] 2560 	mov	a,@r0
      005778 C0 E0            [24] 2561 	push	acc
      00577A 08               [12] 2562 	inc	r0
      00577B E6               [12] 2563 	mov	a,@r0
      00577C C0 E0            [24] 2564 	push	acc
      00577E 8D 82            [24] 2565 	mov	dpl,r5
      005780 8E 83            [24] 2566 	mov	dph,r6
      005782 8F F0            [24] 2567 	mov	b,r7
      005784 12 5A 63         [24] 2568 	lcall	_memmove
      005787 E5 81            [12] 2569 	mov	a,sp
      005789 24 FB            [12] 2570 	add	a,#0xfb
      00578B F5 81            [12] 2571 	mov	sp,a
                           00073C  2572 	C$u2f_atecc.c$276$1$164 ==.
                                   2573 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:276: if ( atecc_privwrite(U2F_TEMP_KEY_SLOT, private_key, WMASK, handle+4) != 0)
      00578D E5 1B            [12] 2574 	mov	a,_bp
      00578F 24 04            [12] 2575 	add	a,#0x04
      005791 F8               [12] 2576 	mov	r0,a
      005792 86 07            [24] 2577 	mov	ar7,@r0
      005794 7E 00            [12] 2578 	mov	r6,#0x00
      005796 7D 40            [12] 2579 	mov	r5,#0x40
      005798 E5 1B            [12] 2580 	mov	a,_bp
      00579A 24 08            [12] 2581 	add	a,#0x08
      00579C F8               [12] 2582 	mov	r0,a
      00579D E6               [12] 2583 	mov	a,@r0
      00579E C0 E0            [24] 2584 	push	acc
      0057A0 08               [12] 2585 	inc	r0
      0057A1 E6               [12] 2586 	mov	a,@r0
      0057A2 C0 E0            [24] 2587 	push	acc
      0057A4 08               [12] 2588 	inc	r0
      0057A5 E6               [12] 2589 	mov	a,@r0
      0057A6 C0 E0            [24] 2590 	push	acc
      0057A8 74 27            [12] 2591 	mov	a,#_WMASK
      0057AA C0 E0            [24] 2592 	push	acc
      0057AC 74 61            [12] 2593 	mov	a,#(_WMASK >> 8)
      0057AE C0 E0            [24] 2594 	push	acc
      0057B0 74 80            [12] 2595 	mov	a,#0x80
      0057B2 C0 E0            [24] 2596 	push	acc
      0057B4 C0 07            [24] 2597 	push	ar7
      0057B6 C0 06            [24] 2598 	push	ar6
      0057B8 C0 05            [24] 2599 	push	ar5
      0057BA 90 00 02         [24] 2600 	mov	dptr,#0x0002
      0057BD 12 53 D3         [24] 2601 	lcall	_atecc_privwrite
      0057C0 AE 82            [24] 2602 	mov	r6,dpl
      0057C2 AF 83            [24] 2603 	mov	r7,dph
      0057C4 E5 81            [12] 2604 	mov	a,sp
      0057C6 24 F7            [12] 2605 	add	a,#0xf7
      0057C8 F5 81            [12] 2606 	mov	sp,a
      0057CA D0 01            [24] 2607 	pop	ar1
      0057CC D0 04            [24] 2608 	pop	ar4
      0057CE D0 01            [24] 2609 	pop	ar1
      0057D0 EE               [12] 2610 	mov	a,r6
      0057D1 4F               [12] 2611 	orl	a,r7
      0057D2 60 06            [24] 2612 	jz	00105$
                           000783  2613 	C$u2f_atecc.c$278$2$167 ==.
                                   2614 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:278: return -1;
      0057D4 75 82 FF         [24] 2615 	mov	dpl,#0xff
      0057D7 02 58 7E         [24] 2616 	ljmp	00110$
      0057DA                       2617 00105$:
                           000789  2618 	C$u2f_atecc.c$281$1$164 ==.
                                   2619 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:281: memset(private_key,0,36);
      0057DA E5 1B            [12] 2620 	mov	a,_bp
      0057DC 24 04            [12] 2621 	add	a,#0x04
      0057DE F8               [12] 2622 	mov	r0,a
      0057DF 86 07            [24] 2623 	mov	ar7,@r0
      0057E1 7E 00            [12] 2624 	mov	r6,#0x00
      0057E3 7D 40            [12] 2625 	mov	r5,#0x40
      0057E5 C0 04            [24] 2626 	push	ar4
      0057E7 C0 01            [24] 2627 	push	ar1
      0057E9 74 24            [12] 2628 	mov	a,#0x24
      0057EB C0 E0            [24] 2629 	push	acc
      0057ED E4               [12] 2630 	clr	a
      0057EE C0 E0            [24] 2631 	push	acc
      0057F0 C0 E0            [24] 2632 	push	acc
      0057F2 8F 82            [24] 2633 	mov	dpl,r7
      0057F4 8E 83            [24] 2634 	mov	dph,r6
      0057F6 8D F0            [24] 2635 	mov	b,r5
      0057F8 12 5D D4         [24] 2636 	lcall	_memset
      0057FB 15 81            [12] 2637 	dec	sp
      0057FD 15 81            [12] 2638 	dec	sp
      0057FF 15 81            [12] 2639 	dec	sp
      005801 D0 01            [24] 2640 	pop	ar1
      005803 D0 04            [24] 2641 	pop	ar4
                           0007B4  2642 	C$u2f_atecc.c$285$1$164 ==.
                                   2643 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:285: appdata.tmp, 70, &res) != 0)
      005805 7F 00            [12] 2644 	mov	r7,#0x00
      005807 7E 40            [12] 2645 	mov	r6,#0x40
                           0007B8  2646 	C$u2f_atecc.c$283$1$164 ==.
                                   2647 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:283: if ( atecc_send_recv(ATECC_CMD_GENKEY,
      005809 C0 01            [24] 2648 	push	ar1
      00580B C0 04            [24] 2649 	push	ar4
      00580D C0 07            [24] 2650 	push	ar7
      00580F C0 06            [24] 2651 	push	ar6
      005811 74 46            [12] 2652 	mov	a,#0x46
      005813 C0 E0            [24] 2653 	push	acc
      005815 74 21            [12] 2654 	mov	a,#_appdata
      005817 C0 E0            [24] 2655 	push	acc
      005819 74 00            [12] 2656 	mov	a,#(_appdata >> 8)
      00581B C0 E0            [24] 2657 	push	acc
      00581D EE               [12] 2658 	mov	a,r6
      00581E C0 E0            [24] 2659 	push	acc
      005820 E4               [12] 2660 	clr	a
      005821 C0 E0            [24] 2661 	push	acc
      005823 C0 E0            [24] 2662 	push	acc
      005825 C0 E0            [24] 2663 	push	acc
      005827 C0 E0            [24] 2664 	push	acc
      005829 74 02            [12] 2665 	mov	a,#0x02
      00582B C0 E0            [24] 2666 	push	acc
      00582D E4               [12] 2667 	clr	a
      00582E C0 E0            [24] 2668 	push	acc
      005830 C0 E0            [24] 2669 	push	acc
      005832 75 82 40         [24] 2670 	mov	dpl,#0x40
      005835 12 1D 1D         [24] 2671 	lcall	_atecc_send_recv
      005838 AF 82            [24] 2672 	mov	r7,dpl
      00583A E5 81            [12] 2673 	mov	a,sp
      00583C 24 F2            [12] 2674 	add	a,#0xf2
      00583E F5 81            [12] 2675 	mov	sp,a
      005840 D0 01            [24] 2676 	pop	ar1
      005842 EF               [12] 2677 	mov	a,r7
      005843 60 05            [24] 2678 	jz	00107$
                           0007F4  2679 	C$u2f_atecc.c$287$2$168 ==.
                                   2680 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:287: return -1;
      005845 75 82 FF         [24] 2681 	mov	dpl,#0xff
      005848 80 34            [24] 2682 	sjmp	00110$
      00584A                       2683 00107$:
                           0007F9  2684 	C$u2f_atecc.c$290$1$164 ==.
                                   2685 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:290: memmove(pubkey, res.buf, 64);
      00584A 87 05            [24] 2686 	mov	ar5,@r1
      00584C 09               [12] 2687 	inc	r1
      00584D 87 06            [24] 2688 	mov	ar6,@r1
      00584F 09               [12] 2689 	inc	r1
      005850 87 07            [24] 2690 	mov	ar7,@r1
      005852 E5 1B            [12] 2691 	mov	a,_bp
      005854 24 F8            [12] 2692 	add	a,#0xf8
      005856 F8               [12] 2693 	mov	r0,a
      005857 86 02            [24] 2694 	mov	ar2,@r0
      005859 08               [12] 2695 	inc	r0
      00585A 86 03            [24] 2696 	mov	ar3,@r0
      00585C 08               [12] 2697 	inc	r0
      00585D 86 04            [24] 2698 	mov	ar4,@r0
      00585F 74 40            [12] 2699 	mov	a,#0x40
      005861 C0 E0            [24] 2700 	push	acc
      005863 E4               [12] 2701 	clr	a
      005864 C0 E0            [24] 2702 	push	acc
      005866 C0 05            [24] 2703 	push	ar5
      005868 C0 06            [24] 2704 	push	ar6
      00586A C0 07            [24] 2705 	push	ar7
      00586C 8A 82            [24] 2706 	mov	dpl,r2
      00586E 8B 83            [24] 2707 	mov	dph,r3
      005870 8C F0            [24] 2708 	mov	b,r4
      005872 12 5A 63         [24] 2709 	lcall	_memmove
      005875 E5 81            [12] 2710 	mov	a,sp
      005877 24 FB            [12] 2711 	add	a,#0xfb
      005879 F5 81            [12] 2712 	mov	sp,a
                           00082A  2713 	C$u2f_atecc.c$292$1$164 ==.
                                   2714 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:292: return 0;
      00587B 75 82 00         [24] 2715 	mov	dpl,#0x00
      00587E                       2716 00110$:
      00587E 85 1B 81         [24] 2717 	mov	sp,_bp
      005881 D0 1B            [24] 2718 	pop	_bp
                           000832  2719 	C$u2f_atecc.c$293$1$164 ==.
                           000832  2720 	XG$u2f_new_keypair$0$0 ==.
      005883 22               [24] 2721 	ret
                                   2722 ;------------------------------------------------------------
                                   2723 ;Allocation info for local variables in function 'u2f_load_key'
                                   2724 ;------------------------------------------------------------
                                   2725 ;appid                     Allocated to stack - _bp -5
                                   2726 ;handle                    Allocated to stack - _bp +1
                                   2727 ;res                       Allocated to stack - _bp +7
                                   2728 ;private_key               Allocated to stack - _bp +11
                                   2729 ;i                         Allocated to registers r6 r7 
                                   2730 ;sloc0                     Allocated to stack - _bp +4
                                   2731 ;------------------------------------------------------------
                           000833  2732 	G$u2f_load_key$0$0 ==.
                           000833  2733 	C$u2f_atecc.c$295$1$164 ==.
                                   2734 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:295: int8_t u2f_load_key(uint8_t * handle, uint8_t * appid)
                                   2735 ;	-----------------------------------------
                                   2736 ;	 function u2f_load_key
                                   2737 ;	-----------------------------------------
      005884                       2738 _u2f_load_key:
      005884 C0 1B            [24] 2739 	push	_bp
      005886 85 81 1B         [24] 2740 	mov	_bp,sp
      005889 C0 82            [24] 2741 	push	dpl
      00588B C0 83            [24] 2742 	push	dph
      00588D C0 F0            [24] 2743 	push	b
      00588F E5 81            [12] 2744 	mov	a,sp
      005891 24 2B            [12] 2745 	add	a,#0x2b
      005893 F5 81            [12] 2746 	mov	sp,a
                           000844  2747 	C$u2f_atecc.c$301$1$170 ==.
                                   2748 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:301: SHA_HMAC_KEY = U2F_MASTER_KEY_SLOT;
      005895 90 03 0F         [24] 2749 	mov	dptr,#_SHA_HMAC_KEY
      005898 74 01            [12] 2750 	mov	a,#0x01
      00589A F0               [24] 2751 	movx	@dptr,a
                           00084A  2752 	C$u2f_atecc.c$302$1$170 ==.
                                   2753 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:302: SHA_FLAGS = ATECC_SHA_HMACSTART;
      00589B 90 03 0E         [24] 2754 	mov	dptr,#_SHA_FLAGS
      00589E 74 04            [12] 2755 	mov	a,#0x04
      0058A0 F0               [24] 2756 	movx	@dptr,a
                           000850  2757 	C$u2f_atecc.c$303$1$170 ==.
                                   2758 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:303: u2f_sha256_start();
      0058A1 12 51 31         [24] 2759 	lcall	_u2f_sha256_start
                           000853  2760 	C$u2f_atecc.c$304$1$170 ==.
                                   2761 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:304: u2f_sha256_update(appid,32);
      0058A4 74 20            [12] 2762 	mov	a,#0x20
      0058A6 C0 E0            [24] 2763 	push	acc
      0058A8 E5 1B            [12] 2764 	mov	a,_bp
      0058AA 24 FB            [12] 2765 	add	a,#0xfb
      0058AC F8               [12] 2766 	mov	r0,a
      0058AD 86 82            [24] 2767 	mov	dpl,@r0
      0058AF 08               [12] 2768 	inc	r0
      0058B0 86 83            [24] 2769 	mov	dph,@r0
      0058B2 08               [12] 2770 	inc	r0
      0058B3 86 F0            [24] 2771 	mov	b,@r0
      0058B5 12 51 76         [24] 2772 	lcall	_u2f_sha256_update
      0058B8 15 81            [12] 2773 	dec	sp
                           000869  2774 	C$u2f_atecc.c$305$1$170 ==.
                                   2775 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:305: u2f_sha256_update(handle,4);
      0058BA 74 04            [12] 2776 	mov	a,#0x04
      0058BC C0 E0            [24] 2777 	push	acc
      0058BE A8 1B            [24] 2778 	mov	r0,_bp
      0058C0 08               [12] 2779 	inc	r0
      0058C1 86 82            [24] 2780 	mov	dpl,@r0
      0058C3 08               [12] 2781 	inc	r0
      0058C4 86 83            [24] 2782 	mov	dph,@r0
      0058C6 08               [12] 2783 	inc	r0
      0058C7 86 F0            [24] 2784 	mov	b,@r0
      0058C9 12 51 76         [24] 2785 	lcall	_u2f_sha256_update
      0058CC 15 81            [12] 2786 	dec	sp
                           00087D  2787 	C$u2f_atecc.c$306$1$170 ==.
                                   2788 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:306: SHA_FLAGS = ATECC_SHA_HMACEND;
      0058CE 90 03 0E         [24] 2789 	mov	dptr,#_SHA_FLAGS
      0058D1 74 05            [12] 2790 	mov	a,#0x05
      0058D3 F0               [24] 2791 	movx	@dptr,a
                           000883  2792 	C$u2f_atecc.c$307$1$170 ==.
                                   2793 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:307: u2f_sha256_finish();
      0058D4 12 52 20         [24] 2794 	lcall	_u2f_sha256_finish
                           000886  2795 	C$u2f_atecc.c$309$1$170 ==.
                                   2796 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:309: memset(private_key,0,4);
      0058D7 E5 1B            [12] 2797 	mov	a,_bp
      0058D9 24 0B            [12] 2798 	add	a,#0x0b
      0058DB FC               [12] 2799 	mov	r4,a
      0058DC FA               [12] 2800 	mov	r2,a
      0058DD 7B 00            [12] 2801 	mov	r3,#0x00
      0058DF 7F 40            [12] 2802 	mov	r7,#0x40
      0058E1 C0 04            [24] 2803 	push	ar4
      0058E3 74 04            [12] 2804 	mov	a,#0x04
      0058E5 C0 E0            [24] 2805 	push	acc
      0058E7 E4               [12] 2806 	clr	a
      0058E8 C0 E0            [24] 2807 	push	acc
      0058EA C0 E0            [24] 2808 	push	acc
      0058EC 8A 82            [24] 2809 	mov	dpl,r2
      0058EE 8B 83            [24] 2810 	mov	dph,r3
      0058F0 8F F0            [24] 2811 	mov	b,r7
      0058F2 12 5D D4         [24] 2812 	lcall	_memset
      0058F5 15 81            [12] 2813 	dec	sp
      0058F7 15 81            [12] 2814 	dec	sp
      0058F9 15 81            [12] 2815 	dec	sp
      0058FB D0 04            [24] 2816 	pop	ar4
                           0008AC  2817 	C$u2f_atecc.c$310$1$170 ==.
                                   2818 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:310: memmove(private_key+4, res_digest.buf, 32);
      0058FD 90 02 DF         [24] 2819 	mov	dptr,#(_res_digest + 0x0001)
      005900 E0               [24] 2820 	movx	a,@dptr
      005901 FD               [12] 2821 	mov	r5,a
      005902 A3               [24] 2822 	inc	dptr
      005903 E0               [24] 2823 	movx	a,@dptr
      005904 FE               [12] 2824 	mov	r6,a
      005905 A3               [24] 2825 	inc	dptr
      005906 E0               [24] 2826 	movx	a,@dptr
      005907 FF               [12] 2827 	mov	r7,a
      005908 E5 1B            [12] 2828 	mov	a,_bp
      00590A 24 04            [12] 2829 	add	a,#0x04
      00590C F8               [12] 2830 	mov	r0,a
      00590D A6 05            [24] 2831 	mov	@r0,ar5
      00590F 08               [12] 2832 	inc	r0
      005910 A6 06            [24] 2833 	mov	@r0,ar6
      005912 08               [12] 2834 	inc	r0
      005913 A6 07            [24] 2835 	mov	@r0,ar7
      005915 74 04            [12] 2836 	mov	a,#0x04
      005917 2C               [12] 2837 	add	a,r4
      005918 FA               [12] 2838 	mov	r2,a
      005919 7B 00            [12] 2839 	mov	r3,#0x00
      00591B 7F 40            [12] 2840 	mov	r7,#0x40
      00591D C0 04            [24] 2841 	push	ar4
      00591F 74 20            [12] 2842 	mov	a,#0x20
      005921 C0 E0            [24] 2843 	push	acc
      005923 E4               [12] 2844 	clr	a
      005924 C0 E0            [24] 2845 	push	acc
      005926 E5 1B            [12] 2846 	mov	a,_bp
      005928 24 04            [12] 2847 	add	a,#0x04
      00592A F8               [12] 2848 	mov	r0,a
      00592B E6               [12] 2849 	mov	a,@r0
      00592C C0 E0            [24] 2850 	push	acc
      00592E 08               [12] 2851 	inc	r0
      00592F E6               [12] 2852 	mov	a,@r0
      005930 C0 E0            [24] 2853 	push	acc
      005932 08               [12] 2854 	inc	r0
      005933 E6               [12] 2855 	mov	a,@r0
      005934 C0 E0            [24] 2856 	push	acc
      005936 8A 82            [24] 2857 	mov	dpl,r2
      005938 8B 83            [24] 2858 	mov	dph,r3
      00593A 8F F0            [24] 2859 	mov	b,r7
      00593C 12 5A 63         [24] 2860 	lcall	_memmove
      00593F E5 81            [12] 2861 	mov	a,sp
      005941 24 FB            [12] 2862 	add	a,#0xfb
      005943 F5 81            [12] 2863 	mov	sp,a
      005945 D0 04            [24] 2864 	pop	ar4
                           0008F6  2865 	C$u2f_atecc.c$311$2$171 ==.
                                   2866 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:311: for (i=4; i<36; i++)
      005947 7E 04            [12] 2867 	mov	r6,#0x04
      005949 7F 00            [12] 2868 	mov	r7,#0x00
      00594B                       2869 00102$:
                           0008FA  2870 	C$u2f_atecc.c$313$2$171 ==.
                                   2871 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:313: private_key[i] ^= RMASK[i];
      00594B EE               [12] 2872 	mov	a,r6
      00594C 2C               [12] 2873 	add	a,r4
      00594D F9               [12] 2874 	mov	r1,a
      00594E 87 05            [24] 2875 	mov	ar5,@r1
      005950 EE               [12] 2876 	mov	a,r6
      005951 24 4C            [12] 2877 	add	a,#_RMASK
      005953 F5 82            [12] 2878 	mov	dpl,a
      005955 EF               [12] 2879 	mov	a,r7
      005956 34 61            [12] 2880 	addc	a,#(_RMASK >> 8)
      005958 F5 83            [12] 2881 	mov	dph,a
      00595A E4               [12] 2882 	clr	a
      00595B 93               [24] 2883 	movc	a,@a+dptr
      00595C FB               [12] 2884 	mov	r3,a
      00595D 6D               [12] 2885 	xrl	a,r5
      00595E F7               [12] 2886 	mov	@r1,a
                           00090E  2887 	C$u2f_atecc.c$311$1$170 ==.
                                   2888 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:311: for (i=4; i<36; i++)
      00595F 0E               [12] 2889 	inc	r6
      005960 BE 00 01         [24] 2890 	cjne	r6,#0x00,00113$
      005963 0F               [12] 2891 	inc	r7
      005964                       2892 00113$:
      005964 C3               [12] 2893 	clr	c
      005965 EE               [12] 2894 	mov	a,r6
      005966 94 24            [12] 2895 	subb	a,#0x24
      005968 EF               [12] 2896 	mov	a,r7
      005969 64 80            [12] 2897 	xrl	a,#0x80
      00596B 94 80            [12] 2898 	subb	a,#0x80
      00596D 40 DC            [24] 2899 	jc	00102$
                           00091E  2900 	C$u2f_atecc.c$316$1$170 ==.
                                   2901 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:316: return atecc_privwrite(U2F_TEMP_KEY_SLOT, private_key, WMASK, handle+4);
      00596F A8 1B            [24] 2902 	mov	r0,_bp
      005971 08               [12] 2903 	inc	r0
      005972 74 04            [12] 2904 	mov	a,#0x04
      005974 26               [12] 2905 	add	a,@r0
      005975 FD               [12] 2906 	mov	r5,a
      005976 E4               [12] 2907 	clr	a
      005977 08               [12] 2908 	inc	r0
      005978 36               [12] 2909 	addc	a,@r0
      005979 FE               [12] 2910 	mov	r6,a
      00597A 08               [12] 2911 	inc	r0
      00597B 86 07            [24] 2912 	mov	ar7,@r0
      00597D 7B 00            [12] 2913 	mov	r3,#0x00
      00597F 7A 40            [12] 2914 	mov	r2,#0x40
      005981 C0 05            [24] 2915 	push	ar5
      005983 C0 06            [24] 2916 	push	ar6
      005985 C0 07            [24] 2917 	push	ar7
      005987 74 27            [12] 2918 	mov	a,#_WMASK
      005989 C0 E0            [24] 2919 	push	acc
      00598B 74 61            [12] 2920 	mov	a,#(_WMASK >> 8)
      00598D C0 E0            [24] 2921 	push	acc
      00598F 74 80            [12] 2922 	mov	a,#0x80
      005991 C0 E0            [24] 2923 	push	acc
      005993 C0 04            [24] 2924 	push	ar4
      005995 C0 03            [24] 2925 	push	ar3
      005997 C0 02            [24] 2926 	push	ar2
      005999 90 00 02         [24] 2927 	mov	dptr,#0x0002
      00599C 12 53 D3         [24] 2928 	lcall	_atecc_privwrite
      00599F AE 82            [24] 2929 	mov	r6,dpl
      0059A1 E5 81            [12] 2930 	mov	a,sp
      0059A3 24 F7            [12] 2931 	add	a,#0xf7
      0059A5 F5 81            [12] 2932 	mov	sp,a
      0059A7 8E 82            [24] 2933 	mov	dpl,r6
      0059A9 85 1B 81         [24] 2934 	mov	sp,_bp
      0059AC D0 1B            [24] 2935 	pop	_bp
                           00095D  2936 	C$u2f_atecc.c$317$1$170 ==.
                           00095D  2937 	XG$u2f_load_key$0$0 ==.
      0059AE 22               [24] 2938 	ret
                                   2939 ;------------------------------------------------------------
                                   2940 ;Allocation info for local variables in function 'u2f_appid_eq'
                                   2941 ;------------------------------------------------------------
                                   2942 ;appid                     Allocated to stack - _bp -5
                                   2943 ;handle                    Allocated to registers 
                                   2944 ;------------------------------------------------------------
                           00095E  2945 	G$u2f_appid_eq$0$0 ==.
                           00095E  2946 	C$u2f_atecc.c$319$1$170 ==.
                                   2947 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:319: int8_t u2f_appid_eq(uint8_t * handle, uint8_t * appid)
                                   2948 ;	-----------------------------------------
                                   2949 ;	 function u2f_appid_eq
                                   2950 ;	-----------------------------------------
      0059AF                       2951 _u2f_appid_eq:
      0059AF C0 1B            [24] 2952 	push	_bp
      0059B1 85 81 1B         [24] 2953 	mov	_bp,sp
                           000963  2954 	C$u2f_atecc.c$342$1$173 ==.
                                   2955 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:342: return 0;
      0059B4 75 82 00         [24] 2956 	mov	dpl,#0x00
      0059B7 D0 1B            [24] 2957 	pop	_bp
                           000968  2958 	C$u2f_atecc.c$343$1$173 ==.
                           000968  2959 	XG$u2f_appid_eq$0$0 ==.
      0059B9 22               [24] 2960 	ret
                                   2961 ;------------------------------------------------------------
                                   2962 ;Allocation info for local variables in function 'u2f_count'
                                   2963 ;------------------------------------------------------------
                                   2964 ;res                       Allocated to stack - _bp +1
                                   2965 ;------------------------------------------------------------
                           000969  2966 	G$u2f_count$0$0 ==.
                           000969  2967 	C$u2f_atecc.c$345$1$173 ==.
                                   2968 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:345: uint32_t u2f_count()
                                   2969 ;	-----------------------------------------
                                   2970 ;	 function u2f_count
                                   2971 ;	-----------------------------------------
      0059BA                       2972 _u2f_count:
      0059BA C0 1B            [24] 2973 	push	_bp
      0059BC E5 81            [12] 2974 	mov	a,sp
      0059BE F5 1B            [12] 2975 	mov	_bp,a
      0059C0 24 04            [12] 2976 	add	a,#0x04
      0059C2 F5 81            [12] 2977 	mov	sp,a
                           000973  2978 	C$u2f_atecc.c$350$1$174 ==.
                                   2979 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:350: appdata.tmp, sizeof(appdata.tmp), &res);
      0059C4 AF 1B            [24] 2980 	mov	r7,_bp
      0059C6 0F               [12] 2981 	inc	r7
      0059C7 8F 04            [24] 2982 	mov	ar4,r7
      0059C9 7D 00            [12] 2983 	mov	r5,#0x00
      0059CB 7E 40            [12] 2984 	mov	r6,#0x40
                           00097C  2985 	C$u2f_atecc.c$348$1$174 ==.
                                   2986 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:348: atecc_send_recv(ATECC_CMD_COUNTER,
      0059CD C0 07            [24] 2987 	push	ar7
      0059CF C0 04            [24] 2988 	push	ar4
      0059D1 C0 05            [24] 2989 	push	ar5
      0059D3 C0 06            [24] 2990 	push	ar6
      0059D5 74 46            [12] 2991 	mov	a,#0x46
      0059D7 C0 E0            [24] 2992 	push	acc
      0059D9 74 21            [12] 2993 	mov	a,#_appdata
      0059DB C0 E0            [24] 2994 	push	acc
      0059DD 74 00            [12] 2995 	mov	a,#(_appdata >> 8)
      0059DF C0 E0            [24] 2996 	push	acc
      0059E1 EE               [12] 2997 	mov	a,r6
      0059E2 C0 E0            [24] 2998 	push	acc
      0059E4 E4               [12] 2999 	clr	a
      0059E5 C0 E0            [24] 3000 	push	acc
      0059E7 C0 E0            [24] 3001 	push	acc
      0059E9 C0 E0            [24] 3002 	push	acc
      0059EB C0 E0            [24] 3003 	push	acc
      0059ED C0 E0            [24] 3004 	push	acc
      0059EF C0 E0            [24] 3005 	push	acc
      0059F1 04               [12] 3006 	inc	a
      0059F2 C0 E0            [24] 3007 	push	acc
      0059F4 75 82 24         [24] 3008 	mov	dpl,#0x24
      0059F7 12 1D 1D         [24] 3009 	lcall	_atecc_send_recv
      0059FA E5 81            [12] 3010 	mov	a,sp
      0059FC 24 F2            [12] 3011 	add	a,#0xf2
      0059FE F5 81            [12] 3012 	mov	sp,a
      005A00 D0 07            [24] 3013 	pop	ar7
                           0009B1  3014 	C$u2f_atecc.c$351$1$174 ==.
                                   3015 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:351: return le32toh(*(uint32_t*)res.buf);
      005A02 EF               [12] 3016 	mov	a,r7
      005A03 04               [12] 3017 	inc	a
      005A04 F9               [12] 3018 	mov	r1,a
      005A05 87 05            [24] 3019 	mov	ar5,@r1
      005A07 09               [12] 3020 	inc	r1
      005A08 87 06            [24] 3021 	mov	ar6,@r1
      005A0A 09               [12] 3022 	inc	r1
      005A0B 87 07            [24] 3023 	mov	ar7,@r1
      005A0D 8D 82            [24] 3024 	mov	dpl,r5
      005A0F 8E 83            [24] 3025 	mov	dph,r6
      005A11 8F F0            [24] 3026 	mov	b,r7
      005A13 12 5E 3E         [24] 3027 	lcall	__gptrget
      005A16 FD               [12] 3028 	mov	r5,a
      005A17 A3               [24] 3029 	inc	dptr
      005A18 12 5E 3E         [24] 3030 	lcall	__gptrget
      005A1B FE               [12] 3031 	mov	r6,a
      005A1C A3               [24] 3032 	inc	dptr
      005A1D 12 5E 3E         [24] 3033 	lcall	__gptrget
      005A20 FF               [12] 3034 	mov	r7,a
      005A21 A3               [24] 3035 	inc	dptr
      005A22 12 5E 3E         [24] 3036 	lcall	__gptrget
      005A25 8D 82            [24] 3037 	mov	dpl,r5
      005A27 8E 83            [24] 3038 	mov	dph,r6
      005A29 8F F0            [24] 3039 	mov	b,r7
      005A2B 85 1B 81         [24] 3040 	mov	sp,_bp
      005A2E D0 1B            [24] 3041 	pop	_bp
                           0009DF  3042 	C$u2f_atecc.c$352$1$174 ==.
                           0009DF  3043 	XG$u2f_count$0$0 ==.
      005A30 22               [24] 3044 	ret
                                   3045 ;------------------------------------------------------------
                                   3046 ;Allocation info for local variables in function 'u2f_get_attestation_cert'
                                   3047 ;------------------------------------------------------------
                           0009E0  3048 	G$u2f_get_attestation_cert$0$0 ==.
                           0009E0  3049 	C$u2f_atecc.c$357$1$174 ==.
                                   3050 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:357: uint8_t * u2f_get_attestation_cert()
                                   3051 ;	-----------------------------------------
                                   3052 ;	 function u2f_get_attestation_cert
                                   3053 ;	-----------------------------------------
      005A31                       3054 _u2f_get_attestation_cert:
                           0009E0  3055 	C$u2f_atecc.c$359$1$175 ==.
                                   3056 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:359: return __attest;
      005A31 90 5F A6         [24] 3057 	mov	dptr,#___attest
      005A34 75 F0 80         [24] 3058 	mov	b,#0x80
                           0009E6  3059 	C$u2f_atecc.c$360$1$175 ==.
                           0009E6  3060 	XG$u2f_get_attestation_cert$0$0 ==.
      005A37 22               [24] 3061 	ret
                                   3062 ;------------------------------------------------------------
                                   3063 ;Allocation info for local variables in function 'u2f_attestation_cert_size'
                                   3064 ;------------------------------------------------------------
                           0009E7  3065 	G$u2f_attestation_cert_size$0$0 ==.
                           0009E7  3066 	C$u2f_atecc.c$362$1$175 ==.
                                   3067 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:362: uint16_t u2f_attestation_cert_size()
                                   3068 ;	-----------------------------------------
                                   3069 ;	 function u2f_attestation_cert_size
                                   3070 ;	-----------------------------------------
      005A38                       3071 _u2f_attestation_cert_size:
                           0009E7  3072 	C$u2f_atecc.c$364$1$176 ==.
                                   3073 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:364: return __attest_size;
      005A38 90 61 25         [24] 3074 	mov	dptr,#___attest_size
      005A3B E0               [24] 3075 	movx	a,@dptr
      005A3C FE               [12] 3076 	mov	r6,a
      005A3D A3               [24] 3077 	inc	dptr
      005A3E E0               [24] 3078 	movx	a,@dptr
                           0009EE  3079 	C$u2f_atecc.c$365$1$176 ==.
                           0009EE  3080 	XG$u2f_attestation_cert_size$0$0 ==.
      005A3F 8E 82            [24] 3081 	mov	dpl,r6
      005A41 F5 83            [12] 3082 	mov	dph,a
      005A43 22               [24] 3083 	ret
                                   3084 ;------------------------------------------------------------
                                   3085 ;Allocation info for local variables in function 'set_response_length'
                                   3086 ;------------------------------------------------------------
                                   3087 ;len                       Allocated to registers r6 r7 
                                   3088 ;------------------------------------------------------------
                           0009F3  3089 	G$set_response_length$0$0 ==.
                           0009F3  3090 	C$u2f_atecc.c$367$1$176 ==.
                                   3091 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:367: void set_response_length(uint16_t len)
                                   3092 ;	-----------------------------------------
                                   3093 ;	 function set_response_length
                                   3094 ;	-----------------------------------------
      005A44                       3095 _set_response_length:
                           0009F3  3096 	C$u2f_atecc.c$369$1$178 ==.
                                   3097 ;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:369: u2f_hid_set_len(len);
      005A44 12 06 0B         [24] 3098 	lcall	_u2f_hid_set_len
                           0009F6  3099 	C$u2f_atecc.c$370$1$178 ==.
                           0009F6  3100 	XG$set_response_length$0$0 ==.
      005A47 22               [24] 3101 	ret
                                   3102 	.area CSEG    (CODE)
                                   3103 	.area CONST   (CODE)
                           000000  3104 Fu2f_atecc$__str_0$0$0 == .
      005F62                       3105 ___str_0:
      005F62 70 61 73 73 20 74 68  3106 	.ascii "pass through to tempkey failed"
             72 6F 75 67 68 20 74
             6F 20 74 65 6D 70 6B
             65 79 20 66 61 69 6C
             65 64
      005F80 0D                    3107 	.db 0x0d
      005F81 0A                    3108 	.db 0x0a
      005F82 00                    3109 	.db 0x00
                           000021  3110 Fu2f_atecc$__str_1$0$0 == .
      005F83                       3111 ___str_1:
      005F83 47 45 4E 44 49 47 20  3112 	.ascii "GENDIG failed"
             66 61 69 6C 65 64
      005F90 0D                    3113 	.db 0x0d
      005F91 0A                    3114 	.db 0x0a
      005F92 00                    3115 	.db 0x00
                           000031  3116 Fu2f_atecc$__str_2$0$0 == .
      005F93                       3117 ___str_2:
      005F93 50 52 49 56 57 52 49  3118 	.ascii "PRIVWRITE failed"
             54 45 20 66 61 69 6C
             65 64
      005FA3 0D                    3119 	.db 0x0d
      005FA4 0A                    3120 	.db 0x0a
      005FA5 00                    3121 	.db 0x00
                                   3122 	.area XINIT   (CODE)
                           000000  3123 Fu2f_atecc$__xinit_resbuf$0$0 == .
      006193                       3124 __xinit__resbuf:
      006193 58 02 00              3125 	.byte _res, (_res >> 8),#0x00
                           000003  3126 Fu2f_atecc$__xinit_resseq$0$0 == .
      006196                       3127 __xinit__resseq:
      006196 00                    3128 	.db #0x00	; 0
                           000004  3129 Fu2f_atecc$__xinit_serious$0$0 == .
      006197                       3130 __xinit__serious:
      006197 00                    3131 	.db #0x00	; 0
                           000005  3132 Fu2f_atecc$__xinit_shaoffset$0$0 == .
      006198                       3133 __xinit__shaoffset:
      006198 00                    3134 	.db #0x00	; 0
                           000006  3135 Fu2f_atecc$__xinit_SHA_FLAGS$0$0 == .
      006199                       3136 __xinit__SHA_FLAGS:
      006199 00                    3137 	.db #0x00	; 0
                           000007  3138 Fu2f_atecc$__xinit_SHA_HMAC_KEY$0$0 == .
      00619A                       3139 __xinit__SHA_HMAC_KEY:
      00619A 00                    3140 	.db #0x00	; 0
                                   3141 	.area CABS    (ABS,CODE)
