                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
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
                                    348 	.globl _smb_read
                                    349 	.globl _smb_write
                                    350 	.globl _smb_set_ext_write
                                    351 	.globl _feed_crc
                                    352 	.globl _reverse_bits
                                    353 	.globl _smb_init
                                    354 ;--------------------------------------------------------
                                    355 ; special function registers
                                    356 ;--------------------------------------------------------
                                    357 	.area RSEG    (ABS,DATA)
      000000                        358 	.org 0x0000
                           0000E0   359 G$ACC$0$0 == 0x00e0
                           0000E0   360 _ACC	=	0x00e0
                           0000B3   361 G$ADC0AC$0$0 == 0x00b3
                           0000B3   362 _ADC0AC	=	0x00b3
                           0000BC   363 G$ADC0CF$0$0 == 0x00bc
                           0000BC   364 _ADC0CF	=	0x00bc
                           0000E8   365 G$ADC0CN0$0$0 == 0x00e8
                           0000E8   366 _ADC0CN0	=	0x00e8
                           0000B2   367 G$ADC0CN1$0$0 == 0x00b2
                           0000B2   368 _ADC0CN1	=	0x00b2
                           0000C4   369 G$ADC0GTH$0$0 == 0x00c4
                           0000C4   370 _ADC0GTH	=	0x00c4
                           0000C3   371 G$ADC0GTL$0$0 == 0x00c3
                           0000C3   372 _ADC0GTL	=	0x00c3
                           0000BE   373 G$ADC0H$0$0 == 0x00be
                           0000BE   374 _ADC0H	=	0x00be
                           0000BD   375 G$ADC0L$0$0 == 0x00bd
                           0000BD   376 _ADC0L	=	0x00bd
                           0000C6   377 G$ADC0LTH$0$0 == 0x00c6
                           0000C6   378 _ADC0LTH	=	0x00c6
                           0000C5   379 G$ADC0LTL$0$0 == 0x00c5
                           0000C5   380 _ADC0LTL	=	0x00c5
                           0000BB   381 G$ADC0MX$0$0 == 0x00bb
                           0000BB   382 _ADC0MX	=	0x00bb
                           0000DF   383 G$ADC0PWR$0$0 == 0x00df
                           0000DF   384 _ADC0PWR	=	0x00df
                           0000B9   385 G$ADC0TK$0$0 == 0x00b9
                           0000B9   386 _ADC0TK	=	0x00b9
                           0000F0   387 G$B$0$0 == 0x00f0
                           0000F0   388 _B	=	0x00f0
                           00008E   389 G$CKCON0$0$0 == 0x008e
                           00008E   390 _CKCON0	=	0x008e
                           0000A6   391 G$CKCON1$0$0 == 0x00a6
                           0000A6   392 _CKCON1	=	0x00a6
                           0000A9   393 G$CLKSEL$0$0 == 0x00a9
                           0000A9   394 _CLKSEL	=	0x00a9
                           00009B   395 G$CMP0CN0$0$0 == 0x009b
                           00009B   396 _CMP0CN0	=	0x009b
                           000099   397 G$CMP0CN1$0$0 == 0x0099
                           000099   398 _CMP0CN1	=	0x0099
                           00009D   399 G$CMP0MD$0$0 == 0x009d
                           00009D   400 _CMP0MD	=	0x009d
                           00009F   401 G$CMP0MX$0$0 == 0x009f
                           00009F   402 _CMP0MX	=	0x009f
                           0000BF   403 G$CMP1CN0$0$0 == 0x00bf
                           0000BF   404 _CMP1CN0	=	0x00bf
                           0000AC   405 G$CMP1CN1$0$0 == 0x00ac
                           0000AC   406 _CMP1CN1	=	0x00ac
                           0000AB   407 G$CMP1MD$0$0 == 0x00ab
                           0000AB   408 _CMP1MD	=	0x00ab
                           0000AA   409 G$CMP1MX$0$0 == 0x00aa
                           0000AA   410 _CMP1MX	=	0x00aa
                           0000CE   411 G$CRC0CN0$0$0 == 0x00ce
                           0000CE   412 _CRC0CN0	=	0x00ce
                           000086   413 G$CRC0CN1$0$0 == 0x0086
                           000086   414 _CRC0CN1	=	0x0086
                           0000D3   415 G$CRC0CNT$0$0 == 0x00d3
                           0000D3   416 _CRC0CNT	=	0x00d3
                           0000DE   417 G$CRC0DAT$0$0 == 0x00de
                           0000DE   418 _CRC0DAT	=	0x00de
                           0000CF   419 G$CRC0FLIP$0$0 == 0x00cf
                           0000CF   420 _CRC0FLIP	=	0x00cf
                           0000DD   421 G$CRC0IN$0$0 == 0x00dd
                           0000DD   422 _CRC0IN	=	0x00dd
                           0000D2   423 G$CRC0ST$0$0 == 0x00d2
                           0000D2   424 _CRC0ST	=	0x00d2
                           0000AD   425 G$DERIVID$0$0 == 0x00ad
                           0000AD   426 _DERIVID	=	0x00ad
                           0000B5   427 G$DEVICEID$0$0 == 0x00b5
                           0000B5   428 _DEVICEID	=	0x00b5
                           000083   429 G$DPH$0$0 == 0x0083
                           000083   430 _DPH	=	0x0083
                           000082   431 G$DPL$0$0 == 0x0082
                           000082   432 _DPL	=	0x0082
                           0000E6   433 G$EIE1$0$0 == 0x00e6
                           0000E6   434 _EIE1	=	0x00e6
                           0000CE   435 G$EIE2$0$0 == 0x00ce
                           0000CE   436 _EIE2	=	0x00ce
                           0000F3   437 G$EIP1$0$0 == 0x00f3
                           0000F3   438 _EIP1	=	0x00f3
                           0000F5   439 G$EIP1H$0$0 == 0x00f5
                           0000F5   440 _EIP1H	=	0x00f5
                           0000F4   441 G$EIP2$0$0 == 0x00f4
                           0000F4   442 _EIP2	=	0x00f4
                           0000F6   443 G$EIP2H$0$0 == 0x00f6
                           0000F6   444 _EIP2H	=	0x00f6
                           0000E7   445 G$EMI0CN$0$0 == 0x00e7
                           0000E7   446 _EMI0CN	=	0x00e7
                           0000B7   447 G$FLKEY$0$0 == 0x00b7
                           0000B7   448 _FLKEY	=	0x00b7
                           0000C7   449 G$HFO0CAL$0$0 == 0x00c7
                           0000C7   450 _HFO0CAL	=	0x00c7
                           0000D6   451 G$HFO1CAL$0$0 == 0x00d6
                           0000D6   452 _HFO1CAL	=	0x00d6
                           0000EF   453 G$HFOCN$0$0 == 0x00ef
                           0000EF   454 _HFOCN	=	0x00ef
                           0000BA   455 G$I2C0CN0$0$0 == 0x00ba
                           0000BA   456 _I2C0CN0	=	0x00ba
                           0000BC   457 G$I2C0DIN$0$0 == 0x00bc
                           0000BC   458 _I2C0DIN	=	0x00bc
                           0000BB   459 G$I2C0DOUT$0$0 == 0x00bb
                           0000BB   460 _I2C0DOUT	=	0x00bb
                           0000AD   461 G$I2C0FCN0$0$0 == 0x00ad
                           0000AD   462 _I2C0FCN0	=	0x00ad
                           0000AB   463 G$I2C0FCN1$0$0 == 0x00ab
                           0000AB   464 _I2C0FCN1	=	0x00ab
                           0000F5   465 G$I2C0FCT$0$0 == 0x00f5
                           0000F5   466 _I2C0FCT	=	0x00f5
                           0000BD   467 G$I2C0SLAD$0$0 == 0x00bd
                           0000BD   468 _I2C0SLAD	=	0x00bd
                           0000B9   469 G$I2C0STAT$0$0 == 0x00b9
                           0000B9   470 _I2C0STAT	=	0x00b9
                           0000A8   471 G$IE$0$0 == 0x00a8
                           0000A8   472 _IE	=	0x00a8
                           0000B8   473 G$IP$0$0 == 0x00b8
                           0000B8   474 _IP	=	0x00b8
                           0000F2   475 G$IPH$0$0 == 0x00f2
                           0000F2   476 _IPH	=	0x00f2
                           0000E4   477 G$IT01CF$0$0 == 0x00e4
                           0000E4   478 _IT01CF	=	0x00e4
                           0000B1   479 G$LFO0CN$0$0 == 0x00b1
                           0000B1   480 _LFO0CN	=	0x00b1
                           000080   481 G$P0$0$0 == 0x0080
                           000080   482 _P0	=	0x0080
                           0000FE   483 G$P0MASK$0$0 == 0x00fe
                           0000FE   484 _P0MASK	=	0x00fe
                           0000FD   485 G$P0MAT$0$0 == 0x00fd
                           0000FD   486 _P0MAT	=	0x00fd
                           0000F1   487 G$P0MDIN$0$0 == 0x00f1
                           0000F1   488 _P0MDIN	=	0x00f1
                           0000A4   489 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   490 _P0MDOUT	=	0x00a4
                           0000D4   491 G$P0SKIP$0$0 == 0x00d4
                           0000D4   492 _P0SKIP	=	0x00d4
                           000090   493 G$P1$0$0 == 0x0090
                           000090   494 _P1	=	0x0090
                           0000EE   495 G$P1MASK$0$0 == 0x00ee
                           0000EE   496 _P1MASK	=	0x00ee
                           0000ED   497 G$P1MAT$0$0 == 0x00ed
                           0000ED   498 _P1MAT	=	0x00ed
                           0000F2   499 G$P1MDIN$0$0 == 0x00f2
                           0000F2   500 _P1MDIN	=	0x00f2
                           0000A5   501 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   502 _P1MDOUT	=	0x00a5
                           0000D5   503 G$P1SKIP$0$0 == 0x00d5
                           0000D5   504 _P1SKIP	=	0x00d5
                           0000A0   505 G$P2$0$0 == 0x00a0
                           0000A0   506 _P2	=	0x00a0
                           0000FC   507 G$P2MASK$0$0 == 0x00fc
                           0000FC   508 _P2MASK	=	0x00fc
                           0000FB   509 G$P2MAT$0$0 == 0x00fb
                           0000FB   510 _P2MAT	=	0x00fb
                           0000F3   511 G$P2MDIN$0$0 == 0x00f3
                           0000F3   512 _P2MDIN	=	0x00f3
                           0000A6   513 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   514 _P2MDOUT	=	0x00a6
                           0000CC   515 G$P2SKIP$0$0 == 0x00cc
                           0000CC   516 _P2SKIP	=	0x00cc
                           0000B0   517 G$P3$0$0 == 0x00b0
                           0000B0   518 _P3	=	0x00b0
                           0000F4   519 G$P3MDIN$0$0 == 0x00f4
                           0000F4   520 _P3MDIN	=	0x00f4
                           00009C   521 G$P3MDOUT$0$0 == 0x009c
                           00009C   522 _P3MDOUT	=	0x009c
                           00009E   523 G$PCA0CENT$0$0 == 0x009e
                           00009E   524 _PCA0CENT	=	0x009e
                           00009C   525 G$PCA0CLR$0$0 == 0x009c
                           00009C   526 _PCA0CLR	=	0x009c
                           0000D8   527 G$PCA0CN0$0$0 == 0x00d8
                           0000D8   528 _PCA0CN0	=	0x00d8
                           0000FC   529 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   530 _PCA0CPH0	=	0x00fc
                           0000EA   531 G$PCA0CPH1$0$0 == 0x00ea
                           0000EA   532 _PCA0CPH1	=	0x00ea
                           0000EC   533 G$PCA0CPH2$0$0 == 0x00ec
                           0000EC   534 _PCA0CPH2	=	0x00ec
                           0000FB   535 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   536 _PCA0CPL0	=	0x00fb
                           0000E9   537 G$PCA0CPL1$0$0 == 0x00e9
                           0000E9   538 _PCA0CPL1	=	0x00e9
                           0000EB   539 G$PCA0CPL2$0$0 == 0x00eb
                           0000EB   540 _PCA0CPL2	=	0x00eb
                           0000DA   541 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   542 _PCA0CPM0	=	0x00da
                           0000DB   543 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   544 _PCA0CPM1	=	0x00db
                           0000DC   545 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   546 _PCA0CPM2	=	0x00dc
                           0000FA   547 G$PCA0H$0$0 == 0x00fa
                           0000FA   548 _PCA0H	=	0x00fa
                           0000F9   549 G$PCA0L$0$0 == 0x00f9
                           0000F9   550 _PCA0L	=	0x00f9
                           0000D9   551 G$PCA0MD$0$0 == 0x00d9
                           0000D9   552 _PCA0MD	=	0x00d9
                           000096   553 G$PCA0POL$0$0 == 0x0096
                           000096   554 _PCA0POL	=	0x0096
                           0000F7   555 G$PCA0PWM$0$0 == 0x00f7
                           0000F7   556 _PCA0PWM	=	0x00f7
                           000087   557 G$PCON0$0$0 == 0x0087
                           000087   558 _PCON0	=	0x0087
                           00009A   559 G$PCON1$0$0 == 0x009a
                           00009A   560 _PCON1	=	0x009a
                           0000C1   561 G$PFE0CN$0$0 == 0x00c1
                           0000C1   562 _PFE0CN	=	0x00c1
                           0000F6   563 G$PRTDRV$0$0 == 0x00f6
                           0000F6   564 _PRTDRV	=	0x00f6
                           00008F   565 G$PSCTL$0$0 == 0x008f
                           00008F   566 _PSCTL	=	0x008f
                           0000D0   567 G$PSW$0$0 == 0x00d0
                           0000D0   568 _PSW	=	0x00d0
                           0000D1   569 G$REF0CN$0$0 == 0x00d1
                           0000D1   570 _REF0CN	=	0x00d1
                           0000C9   571 G$REG0CN$0$0 == 0x00c9
                           0000C9   572 _REG0CN	=	0x00c9
                           0000C6   573 G$REG1CN$0$0 == 0x00c6
                           0000C6   574 _REG1CN	=	0x00c6
                           0000B6   575 G$REVID$0$0 == 0x00b6
                           0000B6   576 _REVID	=	0x00b6
                           0000EF   577 G$RSTSRC$0$0 == 0x00ef
                           0000EF   578 _RSTSRC	=	0x00ef
                           000094   579 G$SBCON1$0$0 == 0x0094
                           000094   580 _SBCON1	=	0x0094
                           000096   581 G$SBRLH1$0$0 == 0x0096
                           000096   582 _SBRLH1	=	0x0096
                           000095   583 G$SBRLL1$0$0 == 0x0095
                           000095   584 _SBRLL1	=	0x0095
                           000099   585 G$SBUF0$0$0 == 0x0099
                           000099   586 _SBUF0	=	0x0099
                           000092   587 G$SBUF1$0$0 == 0x0092
                           000092   588 _SBUF1	=	0x0092
                           000098   589 G$SCON0$0$0 == 0x0098
                           000098   590 _SCON0	=	0x0098
                           0000C8   591 G$SCON1$0$0 == 0x00c8
                           0000C8   592 _SCON1	=	0x00c8
                           0000A7   593 G$SFRPAGE$0$0 == 0x00a7
                           0000A7   594 _SFRPAGE	=	0x00a7
                           0000CF   595 G$SFRPGCN$0$0 == 0x00cf
                           0000CF   596 _SFRPGCN	=	0x00cf
                           0000D7   597 G$SFRSTACK$0$0 == 0x00d7
                           0000D7   598 _SFRSTACK	=	0x00d7
                           0000D6   599 G$SMB0ADM$0$0 == 0x00d6
                           0000D6   600 _SMB0ADM	=	0x00d6
                           0000D7   601 G$SMB0ADR$0$0 == 0x00d7
                           0000D7   602 _SMB0ADR	=	0x00d7
                           0000C1   603 G$SMB0CF$0$0 == 0x00c1
                           0000C1   604 _SMB0CF	=	0x00c1
                           0000C0   605 G$SMB0CN0$0$0 == 0x00c0
                           0000C0   606 _SMB0CN0	=	0x00c0
                           0000C2   607 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   608 _SMB0DAT	=	0x00c2
                           0000C3   609 G$SMB0FCN0$0$0 == 0x00c3
                           0000C3   610 _SMB0FCN0	=	0x00c3
                           0000C4   611 G$SMB0FCN1$0$0 == 0x00c4
                           0000C4   612 _SMB0FCN1	=	0x00c4
                           0000EF   613 G$SMB0FCT$0$0 == 0x00ef
                           0000EF   614 _SMB0FCT	=	0x00ef
                           0000C5   615 G$SMB0RXLN$0$0 == 0x00c5
                           0000C5   616 _SMB0RXLN	=	0x00c5
                           0000AC   617 G$SMB0TC$0$0 == 0x00ac
                           0000AC   618 _SMB0TC	=	0x00ac
                           000093   619 G$SMOD1$0$0 == 0x0093
                           000093   620 _SMOD1	=	0x0093
                           000081   621 G$SP$0$0 == 0x0081
                           000081   622 _SP	=	0x0081
                           0000A1   623 G$SPI0CFG$0$0 == 0x00a1
                           0000A1   624 _SPI0CFG	=	0x00a1
                           0000A2   625 G$SPI0CKR$0$0 == 0x00a2
                           0000A2   626 _SPI0CKR	=	0x00a2
                           0000F8   627 G$SPI0CN0$0$0 == 0x00f8
                           0000F8   628 _SPI0CN0	=	0x00f8
                           0000A3   629 G$SPI0DAT$0$0 == 0x00a3
                           0000A3   630 _SPI0DAT	=	0x00a3
                           00009A   631 G$SPI0FCN0$0$0 == 0x009a
                           00009A   632 _SPI0FCN0	=	0x009a
                           00009B   633 G$SPI0FCN1$0$0 == 0x009b
                           00009B   634 _SPI0FCN1	=	0x009b
                           0000F7   635 G$SPI0FCT$0$0 == 0x00f7
                           0000F7   636 _SPI0FCT	=	0x00f7
                           000088   637 G$TCON$0$0 == 0x0088
                           000088   638 _TCON	=	0x0088
                           00008C   639 G$TH0$0$0 == 0x008c
                           00008C   640 _TH0	=	0x008c
                           00008D   641 G$TH1$0$0 == 0x008d
                           00008D   642 _TH1	=	0x008d
                           00008A   643 G$TL0$0$0 == 0x008a
                           00008A   644 _TL0	=	0x008a
                           00008B   645 G$TL1$0$0 == 0x008b
                           00008B   646 _TL1	=	0x008b
                           000089   647 G$TMOD$0$0 == 0x0089
                           000089   648 _TMOD	=	0x0089
                           0000C8   649 G$TMR2CN0$0$0 == 0x00c8
                           0000C8   650 _TMR2CN0	=	0x00c8
                           0000FD   651 G$TMR2CN1$0$0 == 0x00fd
                           0000FD   652 _TMR2CN1	=	0x00fd
                           0000CD   653 G$TMR2H$0$0 == 0x00cd
                           0000CD   654 _TMR2H	=	0x00cd
                           0000CC   655 G$TMR2L$0$0 == 0x00cc
                           0000CC   656 _TMR2L	=	0x00cc
                           0000CB   657 G$TMR2RLH$0$0 == 0x00cb
                           0000CB   658 _TMR2RLH	=	0x00cb
                           0000CA   659 G$TMR2RLL$0$0 == 0x00ca
                           0000CA   660 _TMR2RLL	=	0x00ca
                           000091   661 G$TMR3CN0$0$0 == 0x0091
                           000091   662 _TMR3CN0	=	0x0091
                           0000FE   663 G$TMR3CN1$0$0 == 0x00fe
                           0000FE   664 _TMR3CN1	=	0x00fe
                           000095   665 G$TMR3H$0$0 == 0x0095
                           000095   666 _TMR3H	=	0x0095
                           000094   667 G$TMR3L$0$0 == 0x0094
                           000094   668 _TMR3L	=	0x0094
                           000093   669 G$TMR3RLH$0$0 == 0x0093
                           000093   670 _TMR3RLH	=	0x0093
                           000092   671 G$TMR3RLL$0$0 == 0x0092
                           000092   672 _TMR3RLL	=	0x0092
                           000098   673 G$TMR4CN0$0$0 == 0x0098
                           000098   674 _TMR4CN0	=	0x0098
                           0000FF   675 G$TMR4CN1$0$0 == 0x00ff
                           0000FF   676 _TMR4CN1	=	0x00ff
                           0000A5   677 G$TMR4H$0$0 == 0x00a5
                           0000A5   678 _TMR4H	=	0x00a5
                           0000A4   679 G$TMR4L$0$0 == 0x00a4
                           0000A4   680 _TMR4L	=	0x00a4
                           0000A3   681 G$TMR4RLH$0$0 == 0x00a3
                           0000A3   682 _TMR4RLH	=	0x00a3
                           0000A2   683 G$TMR4RLL$0$0 == 0x00a2
                           0000A2   684 _TMR4RLL	=	0x00a2
                           00009D   685 G$UART1FCN0$0$0 == 0x009d
                           00009D   686 _UART1FCN0	=	0x009d
                           0000D8   687 G$UART1FCN1$0$0 == 0x00d8
                           0000D8   688 _UART1FCN1	=	0x00d8
                           0000FA   689 G$UART1FCT$0$0 == 0x00fa
                           0000FA   690 _UART1FCT	=	0x00fa
                           00009E   691 G$UART1LIN$0$0 == 0x009e
                           00009E   692 _UART1LIN	=	0x009e
                           0000AE   693 G$USB0ADR$0$0 == 0x00ae
                           0000AE   694 _USB0ADR	=	0x00ae
                           0000B2   695 G$USB0AEC$0$0 == 0x00b2
                           0000B2   696 _USB0AEC	=	0x00b2
                           0000B6   697 G$USB0CDCF$0$0 == 0x00b6
                           0000B6   698 _USB0CDCF	=	0x00b6
                           0000BE   699 G$USB0CDCN$0$0 == 0x00be
                           0000BE   700 _USB0CDCN	=	0x00be
                           0000BF   701 G$USB0CDSTA$0$0 == 0x00bf
                           0000BF   702 _USB0CDSTA	=	0x00bf
                           0000B5   703 G$USB0CF$0$0 == 0x00b5
                           0000B5   704 _USB0CF	=	0x00b5
                           0000AF   705 G$USB0DAT$0$0 == 0x00af
                           0000AF   706 _USB0DAT	=	0x00af
                           0000B3   707 G$USB0XCN$0$0 == 0x00b3
                           0000B3   708 _USB0XCN	=	0x00b3
                           0000FF   709 G$VDM0CN$0$0 == 0x00ff
                           0000FF   710 _VDM0CN	=	0x00ff
                           000097   711 G$WDTCN$0$0 == 0x0097
                           000097   712 _WDTCN	=	0x0097
                           0000E1   713 G$XBR0$0$0 == 0x00e1
                           0000E1   714 _XBR0	=	0x00e1
                           0000E2   715 G$XBR1$0$0 == 0x00e2
                           0000E2   716 _XBR1	=	0x00e2
                           0000E3   717 G$XBR2$0$0 == 0x00e3
                           0000E3   718 _XBR2	=	0x00e3
                           0000C3   719 G$ADC0GT$0$0 == 0x00c3
                           0000C3   720 _ADC0GT	=	0x00c3
                           0000BD   721 G$ADC0$0$0 == 0x00bd
                           0000BD   722 _ADC0	=	0x00bd
                           0000C5   723 G$ADC0LT$0$0 == 0x00c5
                           0000C5   724 _ADC0LT	=	0x00c5
                           000082   725 G$DP$0$0 == 0x0082
                           000082   726 _DP	=	0x0082
                           0000FB   727 G$PCA0CP0$0$0 == 0x00fb
                           0000FB   728 _PCA0CP0	=	0x00fb
                           0000E9   729 G$PCA0CP1$0$0 == 0x00e9
                           0000E9   730 _PCA0CP1	=	0x00e9
                           0000EB   731 G$PCA0CP2$0$0 == 0x00eb
                           0000EB   732 _PCA0CP2	=	0x00eb
                           0000F9   733 G$PCA0$0$0 == 0x00f9
                           0000F9   734 _PCA0	=	0x00f9
                           000095   735 G$SBRL1$0$0 == 0x0095
                           000095   736 _SBRL1	=	0x0095
                           0000CC   737 G$TMR2$0$0 == 0x00cc
                           0000CC   738 _TMR2	=	0x00cc
                           0000CA   739 G$TMR2RL$0$0 == 0x00ca
                           0000CA   740 _TMR2RL	=	0x00ca
                           000094   741 G$TMR3$0$0 == 0x0094
                           000094   742 _TMR3	=	0x0094
                           000092   743 G$TMR3RL$0$0 == 0x0092
                           000092   744 _TMR3RL	=	0x0092
                           0000A4   745 G$TMR4$0$0 == 0x00a4
                           0000A4   746 _TMR4	=	0x00a4
                           0000A2   747 G$TMR4RL$0$0 == 0x00a2
                           0000A2   748 _TMR4RL	=	0x00a2
                           0000AA   749 G$_XPAGE$0$0 == 0x00aa
                           0000AA   750 __XPAGE	=	0x00aa
                                    751 ;--------------------------------------------------------
                                    752 ; special function bits
                                    753 ;--------------------------------------------------------
                                    754 	.area RSEG    (ABS,DATA)
      000000                        755 	.org 0x0000
                           0000E0   756 G$ACC_ACC0$0$0 == 0x00e0
                           0000E0   757 _ACC_ACC0	=	0x00e0
                           0000E1   758 G$ACC_ACC1$0$0 == 0x00e1
                           0000E1   759 _ACC_ACC1	=	0x00e1
                           0000E2   760 G$ACC_ACC2$0$0 == 0x00e2
                           0000E2   761 _ACC_ACC2	=	0x00e2
                           0000E3   762 G$ACC_ACC3$0$0 == 0x00e3
                           0000E3   763 _ACC_ACC3	=	0x00e3
                           0000E4   764 G$ACC_ACC4$0$0 == 0x00e4
                           0000E4   765 _ACC_ACC4	=	0x00e4
                           0000E5   766 G$ACC_ACC5$0$0 == 0x00e5
                           0000E5   767 _ACC_ACC5	=	0x00e5
                           0000E6   768 G$ACC_ACC6$0$0 == 0x00e6
                           0000E6   769 _ACC_ACC6	=	0x00e6
                           0000E7   770 G$ACC_ACC7$0$0 == 0x00e7
                           0000E7   771 _ACC_ACC7	=	0x00e7
                           0000E8   772 G$ADC0CN0_ADCM0$0$0 == 0x00e8
                           0000E8   773 _ADC0CN0_ADCM0	=	0x00e8
                           0000E9   774 G$ADC0CN0_ADCM1$0$0 == 0x00e9
                           0000E9   775 _ADC0CN0_ADCM1	=	0x00e9
                           0000EA   776 G$ADC0CN0_ADCM2$0$0 == 0x00ea
                           0000EA   777 _ADC0CN0_ADCM2	=	0x00ea
                           0000EB   778 G$ADC0CN0_ADWINT$0$0 == 0x00eb
                           0000EB   779 _ADC0CN0_ADWINT	=	0x00eb
                           0000EC   780 G$ADC0CN0_ADBUSY$0$0 == 0x00ec
                           0000EC   781 _ADC0CN0_ADBUSY	=	0x00ec
                           0000ED   782 G$ADC0CN0_ADINT$0$0 == 0x00ed
                           0000ED   783 _ADC0CN0_ADINT	=	0x00ed
                           0000EE   784 G$ADC0CN0_ADBMEN$0$0 == 0x00ee
                           0000EE   785 _ADC0CN0_ADBMEN	=	0x00ee
                           0000EF   786 G$ADC0CN0_ADEN$0$0 == 0x00ef
                           0000EF   787 _ADC0CN0_ADEN	=	0x00ef
                           0000F0   788 G$B_B0$0$0 == 0x00f0
                           0000F0   789 _B_B0	=	0x00f0
                           0000F1   790 G$B_B1$0$0 == 0x00f1
                           0000F1   791 _B_B1	=	0x00f1
                           0000F2   792 G$B_B2$0$0 == 0x00f2
                           0000F2   793 _B_B2	=	0x00f2
                           0000F3   794 G$B_B3$0$0 == 0x00f3
                           0000F3   795 _B_B3	=	0x00f3
                           0000F4   796 G$B_B4$0$0 == 0x00f4
                           0000F4   797 _B_B4	=	0x00f4
                           0000F5   798 G$B_B5$0$0 == 0x00f5
                           0000F5   799 _B_B5	=	0x00f5
                           0000F6   800 G$B_B6$0$0 == 0x00f6
                           0000F6   801 _B_B6	=	0x00f6
                           0000F7   802 G$B_B7$0$0 == 0x00f7
                           0000F7   803 _B_B7	=	0x00f7
                           0000A8   804 G$IE_EX0$0$0 == 0x00a8
                           0000A8   805 _IE_EX0	=	0x00a8
                           0000A9   806 G$IE_ET0$0$0 == 0x00a9
                           0000A9   807 _IE_ET0	=	0x00a9
                           0000AA   808 G$IE_EX1$0$0 == 0x00aa
                           0000AA   809 _IE_EX1	=	0x00aa
                           0000AB   810 G$IE_ET1$0$0 == 0x00ab
                           0000AB   811 _IE_ET1	=	0x00ab
                           0000AC   812 G$IE_ES0$0$0 == 0x00ac
                           0000AC   813 _IE_ES0	=	0x00ac
                           0000AD   814 G$IE_ET2$0$0 == 0x00ad
                           0000AD   815 _IE_ET2	=	0x00ad
                           0000AE   816 G$IE_ESPI0$0$0 == 0x00ae
                           0000AE   817 _IE_ESPI0	=	0x00ae
                           0000AF   818 G$IE_EA$0$0 == 0x00af
                           0000AF   819 _IE_EA	=	0x00af
                           0000B8   820 G$IP_PX0$0$0 == 0x00b8
                           0000B8   821 _IP_PX0	=	0x00b8
                           0000B9   822 G$IP_PT0$0$0 == 0x00b9
                           0000B9   823 _IP_PT0	=	0x00b9
                           0000BA   824 G$IP_PX1$0$0 == 0x00ba
                           0000BA   825 _IP_PX1	=	0x00ba
                           0000BB   826 G$IP_PT1$0$0 == 0x00bb
                           0000BB   827 _IP_PT1	=	0x00bb
                           0000BC   828 G$IP_PS0$0$0 == 0x00bc
                           0000BC   829 _IP_PS0	=	0x00bc
                           0000BD   830 G$IP_PT2$0$0 == 0x00bd
                           0000BD   831 _IP_PT2	=	0x00bd
                           0000BE   832 G$IP_PSPI0$0$0 == 0x00be
                           0000BE   833 _IP_PSPI0	=	0x00be
                           000080   834 G$P0_B0$0$0 == 0x0080
                           000080   835 _P0_B0	=	0x0080
                           000081   836 G$P0_B1$0$0 == 0x0081
                           000081   837 _P0_B1	=	0x0081
                           000082   838 G$P0_B2$0$0 == 0x0082
                           000082   839 _P0_B2	=	0x0082
                           000083   840 G$P0_B3$0$0 == 0x0083
                           000083   841 _P0_B3	=	0x0083
                           000084   842 G$P0_B4$0$0 == 0x0084
                           000084   843 _P0_B4	=	0x0084
                           000085   844 G$P0_B5$0$0 == 0x0085
                           000085   845 _P0_B5	=	0x0085
                           000086   846 G$P0_B6$0$0 == 0x0086
                           000086   847 _P0_B6	=	0x0086
                           000087   848 G$P0_B7$0$0 == 0x0087
                           000087   849 _P0_B7	=	0x0087
                           000090   850 G$P1_B0$0$0 == 0x0090
                           000090   851 _P1_B0	=	0x0090
                           000091   852 G$P1_B1$0$0 == 0x0091
                           000091   853 _P1_B1	=	0x0091
                           000092   854 G$P1_B2$0$0 == 0x0092
                           000092   855 _P1_B2	=	0x0092
                           000093   856 G$P1_B3$0$0 == 0x0093
                           000093   857 _P1_B3	=	0x0093
                           000094   858 G$P1_B4$0$0 == 0x0094
                           000094   859 _P1_B4	=	0x0094
                           000095   860 G$P1_B5$0$0 == 0x0095
                           000095   861 _P1_B5	=	0x0095
                           000096   862 G$P1_B6$0$0 == 0x0096
                           000096   863 _P1_B6	=	0x0096
                           000097   864 G$P1_B7$0$0 == 0x0097
                           000097   865 _P1_B7	=	0x0097
                           0000A0   866 G$P2_B0$0$0 == 0x00a0
                           0000A0   867 _P2_B0	=	0x00a0
                           0000A1   868 G$P2_B1$0$0 == 0x00a1
                           0000A1   869 _P2_B1	=	0x00a1
                           0000A2   870 G$P2_B2$0$0 == 0x00a2
                           0000A2   871 _P2_B2	=	0x00a2
                           0000A3   872 G$P2_B3$0$0 == 0x00a3
                           0000A3   873 _P2_B3	=	0x00a3
                           0000B0   874 G$P3_B0$0$0 == 0x00b0
                           0000B0   875 _P3_B0	=	0x00b0
                           0000B1   876 G$P3_B1$0$0 == 0x00b1
                           0000B1   877 _P3_B1	=	0x00b1
                           0000D8   878 G$PCA0CN0_CCF0$0$0 == 0x00d8
                           0000D8   879 _PCA0CN0_CCF0	=	0x00d8
                           0000D9   880 G$PCA0CN0_CCF1$0$0 == 0x00d9
                           0000D9   881 _PCA0CN0_CCF1	=	0x00d9
                           0000DA   882 G$PCA0CN0_CCF2$0$0 == 0x00da
                           0000DA   883 _PCA0CN0_CCF2	=	0x00da
                           0000DE   884 G$PCA0CN0_CR$0$0 == 0x00de
                           0000DE   885 _PCA0CN0_CR	=	0x00de
                           0000DF   886 G$PCA0CN0_CF$0$0 == 0x00df
                           0000DF   887 _PCA0CN0_CF	=	0x00df
                           0000D0   888 G$PSW_PARITY$0$0 == 0x00d0
                           0000D0   889 _PSW_PARITY	=	0x00d0
                           0000D1   890 G$PSW_F1$0$0 == 0x00d1
                           0000D1   891 _PSW_F1	=	0x00d1
                           0000D2   892 G$PSW_OV$0$0 == 0x00d2
                           0000D2   893 _PSW_OV	=	0x00d2
                           0000D3   894 G$PSW_RS0$0$0 == 0x00d3
                           0000D3   895 _PSW_RS0	=	0x00d3
                           0000D4   896 G$PSW_RS1$0$0 == 0x00d4
                           0000D4   897 _PSW_RS1	=	0x00d4
                           0000D5   898 G$PSW_F0$0$0 == 0x00d5
                           0000D5   899 _PSW_F0	=	0x00d5
                           0000D6   900 G$PSW_AC$0$0 == 0x00d6
                           0000D6   901 _PSW_AC	=	0x00d6
                           0000D7   902 G$PSW_CY$0$0 == 0x00d7
                           0000D7   903 _PSW_CY	=	0x00d7
                           000098   904 G$SCON0_RI$0$0 == 0x0098
                           000098   905 _SCON0_RI	=	0x0098
                           000099   906 G$SCON0_TI$0$0 == 0x0099
                           000099   907 _SCON0_TI	=	0x0099
                           00009A   908 G$SCON0_RB8$0$0 == 0x009a
                           00009A   909 _SCON0_RB8	=	0x009a
                           00009B   910 G$SCON0_TB8$0$0 == 0x009b
                           00009B   911 _SCON0_TB8	=	0x009b
                           00009C   912 G$SCON0_REN$0$0 == 0x009c
                           00009C   913 _SCON0_REN	=	0x009c
                           00009D   914 G$SCON0_MCE$0$0 == 0x009d
                           00009D   915 _SCON0_MCE	=	0x009d
                           00009F   916 G$SCON0_SMODE$0$0 == 0x009f
                           00009F   917 _SCON0_SMODE	=	0x009f
                           0000C8   918 G$SCON1_RI$0$0 == 0x00c8
                           0000C8   919 _SCON1_RI	=	0x00c8
                           0000C9   920 G$SCON1_TI$0$0 == 0x00c9
                           0000C9   921 _SCON1_TI	=	0x00c9
                           0000CA   922 G$SCON1_RBX$0$0 == 0x00ca
                           0000CA   923 _SCON1_RBX	=	0x00ca
                           0000CB   924 G$SCON1_TBX$0$0 == 0x00cb
                           0000CB   925 _SCON1_TBX	=	0x00cb
                           0000CC   926 G$SCON1_REN$0$0 == 0x00cc
                           0000CC   927 _SCON1_REN	=	0x00cc
                           0000CE   928 G$SCON1_PERR$0$0 == 0x00ce
                           0000CE   929 _SCON1_PERR	=	0x00ce
                           0000CF   930 G$SCON1_OVR$0$0 == 0x00cf
                           0000CF   931 _SCON1_OVR	=	0x00cf
                           0000C0   932 G$SMB0CN0_SI$0$0 == 0x00c0
                           0000C0   933 _SMB0CN0_SI	=	0x00c0
                           0000C1   934 G$SMB0CN0_ACK$0$0 == 0x00c1
                           0000C1   935 _SMB0CN0_ACK	=	0x00c1
                           0000C2   936 G$SMB0CN0_ARBLOST$0$0 == 0x00c2
                           0000C2   937 _SMB0CN0_ARBLOST	=	0x00c2
                           0000C3   938 G$SMB0CN0_ACKRQ$0$0 == 0x00c3
                           0000C3   939 _SMB0CN0_ACKRQ	=	0x00c3
                           0000C4   940 G$SMB0CN0_STO$0$0 == 0x00c4
                           0000C4   941 _SMB0CN0_STO	=	0x00c4
                           0000C5   942 G$SMB0CN0_STA$0$0 == 0x00c5
                           0000C5   943 _SMB0CN0_STA	=	0x00c5
                           0000C6   944 G$SMB0CN0_TXMODE$0$0 == 0x00c6
                           0000C6   945 _SMB0CN0_TXMODE	=	0x00c6
                           0000C7   946 G$SMB0CN0_MASTER$0$0 == 0x00c7
                           0000C7   947 _SMB0CN0_MASTER	=	0x00c7
                           0000F8   948 G$SPI0CN0_SPIEN$0$0 == 0x00f8
                           0000F8   949 _SPI0CN0_SPIEN	=	0x00f8
                           0000F9   950 G$SPI0CN0_TXNF$0$0 == 0x00f9
                           0000F9   951 _SPI0CN0_TXNF	=	0x00f9
                           0000FA   952 G$SPI0CN0_NSSMD0$0$0 == 0x00fa
                           0000FA   953 _SPI0CN0_NSSMD0	=	0x00fa
                           0000FB   954 G$SPI0CN0_NSSMD1$0$0 == 0x00fb
                           0000FB   955 _SPI0CN0_NSSMD1	=	0x00fb
                           0000FC   956 G$SPI0CN0_RXOVRN$0$0 == 0x00fc
                           0000FC   957 _SPI0CN0_RXOVRN	=	0x00fc
                           0000FD   958 G$SPI0CN0_MODF$0$0 == 0x00fd
                           0000FD   959 _SPI0CN0_MODF	=	0x00fd
                           0000FE   960 G$SPI0CN0_WCOL$0$0 == 0x00fe
                           0000FE   961 _SPI0CN0_WCOL	=	0x00fe
                           0000FF   962 G$SPI0CN0_SPIF$0$0 == 0x00ff
                           0000FF   963 _SPI0CN0_SPIF	=	0x00ff
                           000088   964 G$TCON_IT0$0$0 == 0x0088
                           000088   965 _TCON_IT0	=	0x0088
                           000089   966 G$TCON_IE0$0$0 == 0x0089
                           000089   967 _TCON_IE0	=	0x0089
                           00008A   968 G$TCON_IT1$0$0 == 0x008a
                           00008A   969 _TCON_IT1	=	0x008a
                           00008B   970 G$TCON_IE1$0$0 == 0x008b
                           00008B   971 _TCON_IE1	=	0x008b
                           00008C   972 G$TCON_TR0$0$0 == 0x008c
                           00008C   973 _TCON_TR0	=	0x008c
                           00008D   974 G$TCON_TF0$0$0 == 0x008d
                           00008D   975 _TCON_TF0	=	0x008d
                           00008E   976 G$TCON_TR1$0$0 == 0x008e
                           00008E   977 _TCON_TR1	=	0x008e
                           00008F   978 G$TCON_TF1$0$0 == 0x008f
                           00008F   979 _TCON_TF1	=	0x008f
                           0000C8   980 G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
                           0000C8   981 _TMR2CN0_T2XCLK0	=	0x00c8
                           0000C9   982 G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
                           0000C9   983 _TMR2CN0_T2XCLK1	=	0x00c9
                           0000CA   984 G$TMR2CN0_TR2$0$0 == 0x00ca
                           0000CA   985 _TMR2CN0_TR2	=	0x00ca
                           0000CB   986 G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
                           0000CB   987 _TMR2CN0_T2SPLIT	=	0x00cb
                           0000CC   988 G$TMR2CN0_TF2CEN$0$0 == 0x00cc
                           0000CC   989 _TMR2CN0_TF2CEN	=	0x00cc
                           0000CD   990 G$TMR2CN0_TF2LEN$0$0 == 0x00cd
                           0000CD   991 _TMR2CN0_TF2LEN	=	0x00cd
                           0000CE   992 G$TMR2CN0_TF2L$0$0 == 0x00ce
                           0000CE   993 _TMR2CN0_TF2L	=	0x00ce
                           0000CF   994 G$TMR2CN0_TF2H$0$0 == 0x00cf
                           0000CF   995 _TMR2CN0_TF2H	=	0x00cf
                           000098   996 G$TMR4CN0_T4XCLK0$0$0 == 0x0098
                           000098   997 _TMR4CN0_T4XCLK0	=	0x0098
                           000099   998 G$TMR4CN0_T4XCLK1$0$0 == 0x0099
                           000099   999 _TMR4CN0_T4XCLK1	=	0x0099
                           00009A  1000 G$TMR4CN0_TR4$0$0 == 0x009a
                           00009A  1001 _TMR4CN0_TR4	=	0x009a
                           00009B  1002 G$TMR4CN0_T4SPLIT$0$0 == 0x009b
                           00009B  1003 _TMR4CN0_T4SPLIT	=	0x009b
                           00009C  1004 G$TMR4CN0_TF4CEN$0$0 == 0x009c
                           00009C  1005 _TMR4CN0_TF4CEN	=	0x009c
                           00009D  1006 G$TMR4CN0_TF4LEN$0$0 == 0x009d
                           00009D  1007 _TMR4CN0_TF4LEN	=	0x009d
                           00009E  1008 G$TMR4CN0_TF4L$0$0 == 0x009e
                           00009E  1009 _TMR4CN0_TF4L	=	0x009e
                           00009F  1010 G$TMR4CN0_TF4H$0$0 == 0x009f
                           00009F  1011 _TMR4CN0_TF4H	=	0x009f
                           0000D8  1012 G$UART1FCN1_RIE$0$0 == 0x00d8
                           0000D8  1013 _UART1FCN1_RIE	=	0x00d8
                           0000D9  1014 G$UART1FCN1_RXTO0$0$0 == 0x00d9
                           0000D9  1015 _UART1FCN1_RXTO0	=	0x00d9
                           0000DA  1016 G$UART1FCN1_RXTO1$0$0 == 0x00da
                           0000DA  1017 _UART1FCN1_RXTO1	=	0x00da
                           0000DB  1018 G$UART1FCN1_RFRQ$0$0 == 0x00db
                           0000DB  1019 _UART1FCN1_RFRQ	=	0x00db
                           0000DC  1020 G$UART1FCN1_TIE$0$0 == 0x00dc
                           0000DC  1021 _UART1FCN1_TIE	=	0x00dc
                           0000DD  1022 G$UART1FCN1_TXHOLD$0$0 == 0x00dd
                           0000DD  1023 _UART1FCN1_TXHOLD	=	0x00dd
                           0000DE  1024 G$UART1FCN1_TXNF$0$0 == 0x00de
                           0000DE  1025 _UART1FCN1_TXNF	=	0x00de
                           0000DF  1026 G$UART1FCN1_TFRQ$0$0 == 0x00df
                           0000DF  1027 _UART1FCN1_TFRQ	=	0x00df
                           000095  1028 G$U2F_BUTTON$0$0 == 0x0095
                           000095  1029 _U2F_BUTTON	=	0x0095
                           000096  1030 G$U2F_BUTTON_VAL$0$0 == 0x0096
                           000096  1031 _U2F_BUTTON_VAL	=	0x0096
                           000091  1032 G$U2F_RED$0$0 == 0x0091
                           000091  1033 _U2F_RED	=	0x0091
                           000090  1034 G$U2F_GREEN$0$0 == 0x0090
                           000090  1035 _U2F_GREEN	=	0x0090
                           000087  1036 G$U2F_BLUE$0$0 == 0x0087
                           000087  1037 _U2F_BLUE	=	0x0087
                                   1038 ;--------------------------------------------------------
                                   1039 ; overlayable register banks
                                   1040 ;--------------------------------------------------------
                                   1041 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1042 	.ds 8
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
                                   1071 ;--------------------------------------------------------
                                   1072 ; absolute external ram data
                                   1073 ;--------------------------------------------------------
                                   1074 	.area XABS    (ABS,XDATA)
                                   1075 ;--------------------------------------------------------
                                   1076 ; external initialized ram data
                                   1077 ;--------------------------------------------------------
                                   1078 	.area XISEG   (XDATA)
                                   1079 	.area HOME    (CODE)
                                   1080 	.area GSINIT0 (CODE)
                                   1081 	.area GSINIT1 (CODE)
                                   1082 	.area GSINIT2 (CODE)
                                   1083 	.area GSINIT3 (CODE)
                                   1084 	.area GSINIT4 (CODE)
                                   1085 	.area GSINIT5 (CODE)
                                   1086 	.area GSINIT  (CODE)
                                   1087 	.area GSFINAL (CODE)
                                   1088 	.area CSEG    (CODE)
                                   1089 ;--------------------------------------------------------
                                   1090 ; global & static initialisations
                                   1091 ;--------------------------------------------------------
                                   1092 	.area HOME    (CODE)
                                   1093 	.area GSINIT  (CODE)
                                   1094 	.area GSFINAL (CODE)
                                   1095 	.area GSINIT  (CODE)
                                   1096 ;--------------------------------------------------------
                                   1097 ; Home
                                   1098 ;--------------------------------------------------------
                                   1099 	.area HOME    (CODE)
                                   1100 	.area HOME    (CODE)
                                   1101 ;--------------------------------------------------------
                                   1102 ; code
                                   1103 ;--------------------------------------------------------
                                   1104 	.area CSEG    (CODE)
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'smb_read'
                                   1107 ;------------------------------------------------------------
                                   1108 ;dest                      Allocated to stack - _bp -5
                                   1109 ;count                     Allocated to stack - _bp -6
                                   1110 ;addr                      Allocated to registers r7 
                                   1111 ;------------------------------------------------------------
                           000000  1112 	G$smb_read$0$0 ==.
                           000000  1113 	C$i2c.c$35$0$0 ==.
                                   1114 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:35: uint8_t smb_read (uint8_t addr, uint8_t* dest, uint8_t count)
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function smb_read
                                   1117 ;	-----------------------------------------
      001865                       1118 _smb_read:
                           000007  1119 	ar7 = 0x07
                           000006  1120 	ar6 = 0x06
                           000005  1121 	ar5 = 0x05
                           000004  1122 	ar4 = 0x04
                           000003  1123 	ar3 = 0x03
                           000002  1124 	ar2 = 0x02
                           000001  1125 	ar1 = 0x01
                           000000  1126 	ar0 = 0x00
      001865 C0 1B            [24] 1127 	push	_bp
      001867 85 81 1B         [24] 1128 	mov	_bp,sp
      00186A AF 82            [24] 1129 	mov	r7,dpl
                           000007  1130 	C$i2c.c$37$1$124 ==.
                                   1131 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:37: while(SMB_IS_BUSY()){}
      00186C                       1132 00101$:
      00186C E5 14            [12] 1133 	mov	a,_SMB_FLAGS
      00186E 20 E1 FB         [24] 1134 	jb	acc.1,00101$
                           00000C  1135 	C$i2c.c$39$1$124 ==.
                                   1136 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:39: SMB_crc = 0;
      001871 90 02 F9         [24] 1137 	mov	dptr,#_SMB_crc
      001874 E4               [12] 1138 	clr	a
      001875 F0               [24] 1139 	movx	@dptr,a
      001876 A3               [24] 1140 	inc	dptr
      001877 F0               [24] 1141 	movx	@dptr,a
                           000013  1142 	C$i2c.c$40$1$124 ==.
                                   1143 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:40: SMB_crc_offset = 0;
                                   1144 ;	1-genFromRTrack replaced	mov	_SMB_crc_offset,#0x00
      001878 F5 13            [12] 1145 	mov	_SMB_crc_offset,a
                           000015  1146 	C$i2c.c$41$1$124 ==.
                                   1147 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:41: SMB_FLAGS = SMB_READ | SMB_BUSY | SMB_preflags;
      00187A 90 02 F8         [24] 1148 	mov	dptr,#_SMB_preflags
      00187D E0               [24] 1149 	movx	a,@dptr
      00187E FE               [12] 1150 	mov	r6,a
      00187F 74 03            [12] 1151 	mov	a,#0x03
      001881 4E               [12] 1152 	orl	a,r6
      001882 F5 14            [12] 1153 	mov	_SMB_FLAGS,a
                           00001F  1154 	C$i2c.c$42$1$124 ==.
                                   1155 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:42: SMB_preflags = 0;
      001884 E4               [12] 1156 	clr	a
      001885 F0               [24] 1157 	movx	@dptr,a
                           000021  1158 	C$i2c.c$44$1$124 ==.
                                   1159 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:44: SMB_read_offset = 0;
                                   1160 ;	1-genFromRTrack replaced	mov	_SMB_read_offset,#0x00
      001886 F5 10            [12] 1161 	mov	_SMB_read_offset,a
                           000023  1162 	C$i2c.c$45$1$124 ==.
                                   1163 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:45: SMB_addr = addr;
      001888 8F 0C            [24] 1164 	mov	_SMB_addr,r7
                           000025  1165 	C$i2c.c$46$1$124 ==.
                                   1166 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:46: SMB_read_len = count;
      00188A E5 1B            [12] 1167 	mov	a,_bp
      00188C 24 FA            [12] 1168 	add	a,#0xfa
      00188E F8               [12] 1169 	mov	r0,a
      00188F 86 0F            [24] 1170 	mov	_SMB_read_len,@r0
                           00002C  1171 	C$i2c.c$47$1$124 ==.
                                   1172 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:47: SMB_read_buf = dest;
      001891 E5 1B            [12] 1173 	mov	a,_bp
      001893 24 FB            [12] 1174 	add	a,#0xfb
      001895 F8               [12] 1175 	mov	r0,a
      001896 90 02 F2         [24] 1176 	mov	dptr,#_SMB_read_buf
      001899 E6               [12] 1177 	mov	a,@r0
      00189A F0               [24] 1178 	movx	@dptr,a
      00189B 08               [12] 1179 	inc	r0
      00189C E6               [12] 1180 	mov	a,@r0
      00189D A3               [24] 1181 	inc	dptr
      00189E F0               [24] 1182 	movx	@dptr,a
      00189F 08               [12] 1183 	inc	r0
      0018A0 E6               [12] 1184 	mov	a,@r0
      0018A1 A3               [24] 1185 	inc	dptr
      0018A2 F0               [24] 1186 	movx	@dptr,a
                           00003E  1187 	C$i2c.c$48$1$124 ==.
                                   1188 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:48: SMB0CN0_STA = 1;
      0018A3 D2 C5            [12] 1189 	setb	_SMB0CN0_STA
                           000040  1190 	C$i2c.c$50$1$124 ==.
                                   1191 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:50: while(SMB_IS_BUSY()){}
      0018A5                       1192 00104$:
      0018A5 E5 14            [12] 1193 	mov	a,_SMB_FLAGS
      0018A7 20 E1 FB         [24] 1194 	jb	acc.1,00104$
                           000045  1195 	C$i2c.c$51$1$124 ==.
                                   1196 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:51: return SMB_read_len;
      0018AA 85 0F 82         [24] 1197 	mov	dpl,_SMB_read_len
      0018AD D0 1B            [24] 1198 	pop	_bp
                           00004A  1199 	C$i2c.c$52$1$124 ==.
                           00004A  1200 	XG$smb_read$0$0 ==.
      0018AF 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'smb_write'
                                   1204 ;------------------------------------------------------------
                                   1205 ;buf                       Allocated to stack - _bp -5
                                   1206 ;len                       Allocated to stack - _bp -6
                                   1207 ;addr                      Allocated to registers r7 
                                   1208 ;------------------------------------------------------------
                           00004B  1209 	G$smb_write$0$0 ==.
                           00004B  1210 	C$i2c.c$55$1$124 ==.
                                   1211 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:55: void smb_write (uint8_t addr, uint8_t* buf, uint8_t len)
                                   1212 ;	-----------------------------------------
                                   1213 ;	 function smb_write
                                   1214 ;	-----------------------------------------
      0018B0                       1215 _smb_write:
      0018B0 C0 1B            [24] 1216 	push	_bp
      0018B2 85 81 1B         [24] 1217 	mov	_bp,sp
      0018B5 AF 82            [24] 1218 	mov	r7,dpl
                           000052  1219 	C$i2c.c$57$1$128 ==.
                                   1220 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:57: while(SMB_IS_BUSY()){}
      0018B7                       1221 00101$:
      0018B7 E5 14            [12] 1222 	mov	a,_SMB_FLAGS
      0018B9 20 E1 FB         [24] 1223 	jb	acc.1,00101$
                           000057  1224 	C$i2c.c$59$1$128 ==.
                                   1225 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:59: SMB_crc = 0;
      0018BC 90 02 F9         [24] 1226 	mov	dptr,#_SMB_crc
      0018BF E4               [12] 1227 	clr	a
      0018C0 F0               [24] 1228 	movx	@dptr,a
      0018C1 A3               [24] 1229 	inc	dptr
      0018C2 F0               [24] 1230 	movx	@dptr,a
                           00005E  1231 	C$i2c.c$60$1$128 ==.
                                   1232 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:60: SMB_crc_offset = 0;
                                   1233 ;	1-genFromRTrack replaced	mov	_SMB_crc_offset,#0x00
      0018C3 F5 13            [12] 1234 	mov	_SMB_crc_offset,a
                           000060  1235 	C$i2c.c$61$1$128 ==.
                                   1236 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:61: SMB_FLAGS = SMB_WRITE | SMB_BUSY | SMB_preflags;
      0018C5 90 02 F8         [24] 1237 	mov	dptr,#_SMB_preflags
      0018C8 E0               [24] 1238 	movx	a,@dptr
      0018C9 FE               [12] 1239 	mov	r6,a
      0018CA 74 02            [12] 1240 	mov	a,#0x02
      0018CC 4E               [12] 1241 	orl	a,r6
      0018CD F5 14            [12] 1242 	mov	_SMB_FLAGS,a
                           00006A  1243 	C$i2c.c$62$1$128 ==.
                                   1244 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:62: SMB_preflags = 0;
      0018CF E4               [12] 1245 	clr	a
      0018D0 F0               [24] 1246 	movx	@dptr,a
                           00006C  1247 	C$i2c.c$64$1$128 ==.
                                   1248 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:64: SMB_write_len = len;
      0018D1 E5 1B            [12] 1249 	mov	a,_bp
      0018D3 24 FA            [12] 1250 	add	a,#0xfa
      0018D5 F8               [12] 1251 	mov	r0,a
      0018D6 86 0D            [24] 1252 	mov	_SMB_write_len,@r0
                           000073  1253 	C$i2c.c$65$1$128 ==.
                                   1254 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:65: SMB_write_buf = buf;
      0018D8 E5 1B            [12] 1255 	mov	a,_bp
      0018DA 24 FB            [12] 1256 	add	a,#0xfb
      0018DC F8               [12] 1257 	mov	r0,a
      0018DD 90 02 EF         [24] 1258 	mov	dptr,#_SMB_write_buf
      0018E0 E6               [12] 1259 	mov	a,@r0
      0018E1 F0               [24] 1260 	movx	@dptr,a
      0018E2 08               [12] 1261 	inc	r0
      0018E3 E6               [12] 1262 	mov	a,@r0
      0018E4 A3               [24] 1263 	inc	dptr
      0018E5 F0               [24] 1264 	movx	@dptr,a
      0018E6 08               [12] 1265 	inc	r0
      0018E7 E6               [12] 1266 	mov	a,@r0
      0018E8 A3               [24] 1267 	inc	dptr
      0018E9 F0               [24] 1268 	movx	@dptr,a
                           000085  1269 	C$i2c.c$66$1$128 ==.
                                   1270 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:66: SMB_write_offset = 0;
      0018EA 75 0E 00         [24] 1271 	mov	_SMB_write_offset,#0x00
                           000088  1272 	C$i2c.c$67$1$128 ==.
                                   1273 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:67: SMB_addr = addr;
      0018ED 8F 0C            [24] 1274 	mov	_SMB_addr,r7
                           00008A  1275 	C$i2c.c$69$1$128 ==.
                                   1276 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:69: SMB0CN0_STA = 1;
      0018EF D2 C5            [12] 1277 	setb	_SMB0CN0_STA
                           00008C  1278 	C$i2c.c$70$1$128 ==.
                                   1279 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:70: while(SMB_IS_BUSY()){}
      0018F1                       1280 00104$:
      0018F1 E5 14            [12] 1281 	mov	a,_SMB_FLAGS
      0018F3 20 E1 FB         [24] 1282 	jb	acc.1,00104$
      0018F6 D0 1B            [24] 1283 	pop	_bp
                           000093  1284 	C$i2c.c$71$1$128 ==.
                           000093  1285 	XG$smb_write$0$0 ==.
      0018F8 22               [24] 1286 	ret
                                   1287 ;------------------------------------------------------------
                                   1288 ;Allocation info for local variables in function 'smb_set_ext_write'
                                   1289 ;------------------------------------------------------------
                                   1290 ;extlen                    Allocated to stack - _bp -3
                                   1291 ;extbuf                    Allocated to registers r5 r6 r7 
                                   1292 ;------------------------------------------------------------
                           000094  1293 	G$smb_set_ext_write$0$0 ==.
                           000094  1294 	C$i2c.c$73$1$128 ==.
                                   1295 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:73: void smb_set_ext_write( uint8_t* extbuf, uint8_t extlen)
                                   1296 ;	-----------------------------------------
                                   1297 ;	 function smb_set_ext_write
                                   1298 ;	-----------------------------------------
      0018F9                       1299 _smb_set_ext_write:
      0018F9 C0 1B            [24] 1300 	push	_bp
      0018FB 85 81 1B         [24] 1301 	mov	_bp,sp
      0018FE AD 82            [24] 1302 	mov	r5,dpl
      001900 AE 83            [24] 1303 	mov	r6,dph
      001902 AF F0            [24] 1304 	mov	r7,b
                           00009F  1305 	C$i2c.c$75$1$132 ==.
                                   1306 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:75: while(SMB_IS_BUSY()){}
      001904                       1307 00101$:
      001904 E5 14            [12] 1308 	mov	a,_SMB_FLAGS
      001906 20 E1 FB         [24] 1309 	jb	acc.1,00101$
                           0000A4  1310 	C$i2c.c$76$1$132 ==.
                                   1311 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:76: SMB_write_ext_len = extlen;
      001909 E5 1B            [12] 1312 	mov	a,_bp
      00190B 24 FD            [12] 1313 	add	a,#0xfd
      00190D F8               [12] 1314 	mov	r0,a
      00190E 86 11            [24] 1315 	mov	_SMB_write_ext_len,@r0
                           0000AB  1316 	C$i2c.c$77$1$132 ==.
                                   1317 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:77: SMB_write_ext_buf = extbuf;
      001910 90 02 F5         [24] 1318 	mov	dptr,#_SMB_write_ext_buf
      001913 ED               [12] 1319 	mov	a,r5
      001914 F0               [24] 1320 	movx	@dptr,a
      001915 EE               [12] 1321 	mov	a,r6
      001916 A3               [24] 1322 	inc	dptr
      001917 F0               [24] 1323 	movx	@dptr,a
      001918 EF               [12] 1324 	mov	a,r7
      001919 A3               [24] 1325 	inc	dptr
      00191A F0               [24] 1326 	movx	@dptr,a
                           0000B6  1327 	C$i2c.c$78$1$132 ==.
                                   1328 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:78: SMB_write_ext_offset = 0;
      00191B 75 12 00         [24] 1329 	mov	_SMB_write_ext_offset,#0x00
                           0000B9  1330 	C$i2c.c$79$1$132 ==.
                                   1331 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:79: SMB_preflags |= SMB_WRITE_EXT;
      00191E 90 02 F8         [24] 1332 	mov	dptr,#_SMB_preflags
      001921 E0               [24] 1333 	movx	a,@dptr
      001922 FF               [12] 1334 	mov	r7,a
      001923 74 04            [12] 1335 	mov	a,#0x04
      001925 4F               [12] 1336 	orl	a,r7
      001926 F0               [24] 1337 	movx	@dptr,a
      001927 D0 1B            [24] 1338 	pop	_bp
                           0000C4  1339 	C$i2c.c$80$1$132 ==.
                           0000C4  1340 	XG$smb_set_ext_write$0$0 ==.
      001929 22               [24] 1341 	ret
                                   1342 ;------------------------------------------------------------
                                   1343 ;Allocation info for local variables in function 'feed_crc'
                                   1344 ;------------------------------------------------------------
                                   1345 ;b                         Allocated to stack - _bp -3
                                   1346 ;crc                       Allocated to registers r6 r7 
                                   1347 ;------------------------------------------------------------
                           0000C5  1348 	G$feed_crc$0$0 ==.
                           0000C5  1349 	C$i2c.c$83$1$132 ==.
                                   1350 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:83: uint16_t feed_crc(uint16_t crc, uint8_t b)
                                   1351 ;	-----------------------------------------
                                   1352 ;	 function feed_crc
                                   1353 ;	-----------------------------------------
      00192A                       1354 _feed_crc:
      00192A C0 1B            [24] 1355 	push	_bp
      00192C 85 81 1B         [24] 1356 	mov	_bp,sp
      00192F AE 82            [24] 1357 	mov	r6,dpl
      001931 AF 83            [24] 1358 	mov	r7,dph
                           0000CE  1359 	C$i2c.c$85$1$135 ==.
                                   1360 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:85: crc ^= b;
      001933 E5 1B            [12] 1361 	mov	a,_bp
      001935 24 FD            [12] 1362 	add	a,#0xfd
      001937 F8               [12] 1363 	mov	r0,a
      001938 86 04            [24] 1364 	mov	ar4,@r0
      00193A 7D 00            [12] 1365 	mov	r5,#0x00
      00193C EC               [12] 1366 	mov	a,r4
      00193D 62 06            [12] 1367 	xrl	ar6,a
      00193F ED               [12] 1368 	mov	a,r5
      001940 62 07            [12] 1369 	xrl	ar7,a
                           0000DD  1370 	C$i2c.c$86$1$135 ==.
                                   1371 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:86: crc = crc & 1 ? (crc >> 1) ^ 0xa001 : crc >> 1;
      001942 EE               [12] 1372 	mov	a,r6
      001943 30 E0 11         [24] 1373 	jnb	acc.0,00103$
      001946 8E 04            [24] 1374 	mov	ar4,r6
      001948 EF               [12] 1375 	mov	a,r7
      001949 C3               [12] 1376 	clr	c
      00194A 13               [12] 1377 	rrc	a
      00194B CC               [12] 1378 	xch	a,r4
      00194C 13               [12] 1379 	rrc	a
      00194D CC               [12] 1380 	xch	a,r4
      00194E FD               [12] 1381 	mov	r5,a
      00194F 63 04 01         [24] 1382 	xrl	ar4,#0x01
      001952 63 05 A0         [24] 1383 	xrl	ar5,#0xa0
      001955 80 09            [24] 1384 	sjmp	00104$
      001957                       1385 00103$:
      001957 8E 04            [24] 1386 	mov	ar4,r6
      001959 EF               [12] 1387 	mov	a,r7
      00195A C3               [12] 1388 	clr	c
      00195B 13               [12] 1389 	rrc	a
      00195C CC               [12] 1390 	xch	a,r4
      00195D 13               [12] 1391 	rrc	a
      00195E CC               [12] 1392 	xch	a,r4
      00195F FD               [12] 1393 	mov	r5,a
      001960                       1394 00104$:
      001960 8C 06            [24] 1395 	mov	ar6,r4
      001962 8D 07            [24] 1396 	mov	ar7,r5
                           0000FF  1397 	C$i2c.c$87$1$135 ==.
                                   1398 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:87: crc = crc & 1 ? (crc >> 1) ^ 0xa001 : crc >> 1;
      001964 EE               [12] 1399 	mov	a,r6
      001965 30 E0 11         [24] 1400 	jnb	acc.0,00105$
      001968 8E 04            [24] 1401 	mov	ar4,r6
      00196A EF               [12] 1402 	mov	a,r7
      00196B C3               [12] 1403 	clr	c
      00196C 13               [12] 1404 	rrc	a
      00196D CC               [12] 1405 	xch	a,r4
      00196E 13               [12] 1406 	rrc	a
      00196F CC               [12] 1407 	xch	a,r4
      001970 FD               [12] 1408 	mov	r5,a
      001971 63 04 01         [24] 1409 	xrl	ar4,#0x01
      001974 63 05 A0         [24] 1410 	xrl	ar5,#0xa0
      001977 80 09            [24] 1411 	sjmp	00106$
      001979                       1412 00105$:
      001979 8E 04            [24] 1413 	mov	ar4,r6
      00197B EF               [12] 1414 	mov	a,r7
      00197C C3               [12] 1415 	clr	c
      00197D 13               [12] 1416 	rrc	a
      00197E CC               [12] 1417 	xch	a,r4
      00197F 13               [12] 1418 	rrc	a
      001980 CC               [12] 1419 	xch	a,r4
      001981 FD               [12] 1420 	mov	r5,a
      001982                       1421 00106$:
      001982 8C 06            [24] 1422 	mov	ar6,r4
      001984 8D 07            [24] 1423 	mov	ar7,r5
                           000121  1424 	C$i2c.c$88$1$135 ==.
                                   1425 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:88: crc = crc & 1 ? (crc >> 1) ^ 0xa001 : crc >> 1;
      001986 EE               [12] 1426 	mov	a,r6
      001987 30 E0 11         [24] 1427 	jnb	acc.0,00107$
      00198A 8E 04            [24] 1428 	mov	ar4,r6
      00198C EF               [12] 1429 	mov	a,r7
      00198D C3               [12] 1430 	clr	c
      00198E 13               [12] 1431 	rrc	a
      00198F CC               [12] 1432 	xch	a,r4
      001990 13               [12] 1433 	rrc	a
      001991 CC               [12] 1434 	xch	a,r4
      001992 FD               [12] 1435 	mov	r5,a
      001993 63 04 01         [24] 1436 	xrl	ar4,#0x01
      001996 63 05 A0         [24] 1437 	xrl	ar5,#0xa0
      001999 80 09            [24] 1438 	sjmp	00108$
      00199B                       1439 00107$:
      00199B 8E 04            [24] 1440 	mov	ar4,r6
      00199D EF               [12] 1441 	mov	a,r7
      00199E C3               [12] 1442 	clr	c
      00199F 13               [12] 1443 	rrc	a
      0019A0 CC               [12] 1444 	xch	a,r4
      0019A1 13               [12] 1445 	rrc	a
      0019A2 CC               [12] 1446 	xch	a,r4
      0019A3 FD               [12] 1447 	mov	r5,a
      0019A4                       1448 00108$:
      0019A4 8C 06            [24] 1449 	mov	ar6,r4
      0019A6 8D 07            [24] 1450 	mov	ar7,r5
                           000143  1451 	C$i2c.c$89$1$135 ==.
                                   1452 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:89: crc = crc & 1 ? (crc >> 1) ^ 0xa001 : crc >> 1;
      0019A8 EE               [12] 1453 	mov	a,r6
      0019A9 30 E0 11         [24] 1454 	jnb	acc.0,00109$
      0019AC 8E 04            [24] 1455 	mov	ar4,r6
      0019AE EF               [12] 1456 	mov	a,r7
      0019AF C3               [12] 1457 	clr	c
      0019B0 13               [12] 1458 	rrc	a
      0019B1 CC               [12] 1459 	xch	a,r4
      0019B2 13               [12] 1460 	rrc	a
      0019B3 CC               [12] 1461 	xch	a,r4
      0019B4 FD               [12] 1462 	mov	r5,a
      0019B5 63 04 01         [24] 1463 	xrl	ar4,#0x01
      0019B8 63 05 A0         [24] 1464 	xrl	ar5,#0xa0
      0019BB 80 09            [24] 1465 	sjmp	00110$
      0019BD                       1466 00109$:
      0019BD 8E 04            [24] 1467 	mov	ar4,r6
      0019BF EF               [12] 1468 	mov	a,r7
      0019C0 C3               [12] 1469 	clr	c
      0019C1 13               [12] 1470 	rrc	a
      0019C2 CC               [12] 1471 	xch	a,r4
      0019C3 13               [12] 1472 	rrc	a
      0019C4 CC               [12] 1473 	xch	a,r4
      0019C5 FD               [12] 1474 	mov	r5,a
      0019C6                       1475 00110$:
      0019C6 8C 06            [24] 1476 	mov	ar6,r4
      0019C8 8D 07            [24] 1477 	mov	ar7,r5
                           000165  1478 	C$i2c.c$90$1$135 ==.
                                   1479 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:90: crc = crc & 1 ? (crc >> 1) ^ 0xa001 : crc >> 1;
      0019CA EE               [12] 1480 	mov	a,r6
      0019CB 30 E0 11         [24] 1481 	jnb	acc.0,00111$
      0019CE 8E 04            [24] 1482 	mov	ar4,r6
      0019D0 EF               [12] 1483 	mov	a,r7
      0019D1 C3               [12] 1484 	clr	c
      0019D2 13               [12] 1485 	rrc	a
      0019D3 CC               [12] 1486 	xch	a,r4
      0019D4 13               [12] 1487 	rrc	a
      0019D5 CC               [12] 1488 	xch	a,r4
      0019D6 FD               [12] 1489 	mov	r5,a
      0019D7 63 04 01         [24] 1490 	xrl	ar4,#0x01
      0019DA 63 05 A0         [24] 1491 	xrl	ar5,#0xa0
      0019DD 80 09            [24] 1492 	sjmp	00112$
      0019DF                       1493 00111$:
      0019DF 8E 04            [24] 1494 	mov	ar4,r6
      0019E1 EF               [12] 1495 	mov	a,r7
      0019E2 C3               [12] 1496 	clr	c
      0019E3 13               [12] 1497 	rrc	a
      0019E4 CC               [12] 1498 	xch	a,r4
      0019E5 13               [12] 1499 	rrc	a
      0019E6 CC               [12] 1500 	xch	a,r4
      0019E7 FD               [12] 1501 	mov	r5,a
      0019E8                       1502 00112$:
      0019E8 8C 06            [24] 1503 	mov	ar6,r4
      0019EA 8D 07            [24] 1504 	mov	ar7,r5
                           000187  1505 	C$i2c.c$91$1$135 ==.
                                   1506 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:91: crc = crc & 1 ? (crc >> 1) ^ 0xa001 : crc >> 1;
      0019EC EE               [12] 1507 	mov	a,r6
      0019ED 30 E0 11         [24] 1508 	jnb	acc.0,00113$
      0019F0 8E 04            [24] 1509 	mov	ar4,r6
      0019F2 EF               [12] 1510 	mov	a,r7
      0019F3 C3               [12] 1511 	clr	c
      0019F4 13               [12] 1512 	rrc	a
      0019F5 CC               [12] 1513 	xch	a,r4
      0019F6 13               [12] 1514 	rrc	a
      0019F7 CC               [12] 1515 	xch	a,r4
      0019F8 FD               [12] 1516 	mov	r5,a
      0019F9 63 04 01         [24] 1517 	xrl	ar4,#0x01
      0019FC 63 05 A0         [24] 1518 	xrl	ar5,#0xa0
      0019FF 80 09            [24] 1519 	sjmp	00114$
      001A01                       1520 00113$:
      001A01 8E 04            [24] 1521 	mov	ar4,r6
      001A03 EF               [12] 1522 	mov	a,r7
      001A04 C3               [12] 1523 	clr	c
      001A05 13               [12] 1524 	rrc	a
      001A06 CC               [12] 1525 	xch	a,r4
      001A07 13               [12] 1526 	rrc	a
      001A08 CC               [12] 1527 	xch	a,r4
      001A09 FD               [12] 1528 	mov	r5,a
      001A0A                       1529 00114$:
      001A0A 8C 06            [24] 1530 	mov	ar6,r4
      001A0C 8D 07            [24] 1531 	mov	ar7,r5
                           0001A9  1532 	C$i2c.c$92$1$135 ==.
                                   1533 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:92: crc = crc & 1 ? (crc >> 1) ^ 0xa001 : crc >> 1;
      001A0E EE               [12] 1534 	mov	a,r6
      001A0F 30 E0 11         [24] 1535 	jnb	acc.0,00115$
      001A12 8E 04            [24] 1536 	mov	ar4,r6
      001A14 EF               [12] 1537 	mov	a,r7
      001A15 C3               [12] 1538 	clr	c
      001A16 13               [12] 1539 	rrc	a
      001A17 CC               [12] 1540 	xch	a,r4
      001A18 13               [12] 1541 	rrc	a
      001A19 CC               [12] 1542 	xch	a,r4
      001A1A FD               [12] 1543 	mov	r5,a
      001A1B 63 04 01         [24] 1544 	xrl	ar4,#0x01
      001A1E 63 05 A0         [24] 1545 	xrl	ar5,#0xa0
      001A21 80 09            [24] 1546 	sjmp	00116$
      001A23                       1547 00115$:
      001A23 8E 04            [24] 1548 	mov	ar4,r6
      001A25 EF               [12] 1549 	mov	a,r7
      001A26 C3               [12] 1550 	clr	c
      001A27 13               [12] 1551 	rrc	a
      001A28 CC               [12] 1552 	xch	a,r4
      001A29 13               [12] 1553 	rrc	a
      001A2A CC               [12] 1554 	xch	a,r4
      001A2B FD               [12] 1555 	mov	r5,a
      001A2C                       1556 00116$:
      001A2C 8C 06            [24] 1557 	mov	ar6,r4
      001A2E 8D 07            [24] 1558 	mov	ar7,r5
                           0001CB  1559 	C$i2c.c$93$1$135 ==.
                                   1560 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:93: return crc & 1 ? (crc >> 1) ^ 0xa001 : crc >> 1;
      001A30 EE               [12] 1561 	mov	a,r6
      001A31 30 E0 11         [24] 1562 	jnb	acc.0,00117$
      001A34 8E 04            [24] 1563 	mov	ar4,r6
      001A36 EF               [12] 1564 	mov	a,r7
      001A37 C3               [12] 1565 	clr	c
      001A38 13               [12] 1566 	rrc	a
      001A39 CC               [12] 1567 	xch	a,r4
      001A3A 13               [12] 1568 	rrc	a
      001A3B CC               [12] 1569 	xch	a,r4
      001A3C FD               [12] 1570 	mov	r5,a
      001A3D 63 04 01         [24] 1571 	xrl	ar4,#0x01
      001A40 63 05 A0         [24] 1572 	xrl	ar5,#0xa0
      001A43 80 09            [24] 1573 	sjmp	00118$
      001A45                       1574 00117$:
      001A45 8E 04            [24] 1575 	mov	ar4,r6
      001A47 EF               [12] 1576 	mov	a,r7
      001A48 C3               [12] 1577 	clr	c
      001A49 13               [12] 1578 	rrc	a
      001A4A CC               [12] 1579 	xch	a,r4
      001A4B 13               [12] 1580 	rrc	a
      001A4C CC               [12] 1581 	xch	a,r4
      001A4D FD               [12] 1582 	mov	r5,a
      001A4E                       1583 00118$:
      001A4E 8C 82            [24] 1584 	mov	dpl,r4
      001A50 8D 83            [24] 1585 	mov	dph,r5
      001A52 D0 1B            [24] 1586 	pop	_bp
                           0001EF  1587 	C$i2c.c$94$1$135 ==.
                           0001EF  1588 	XG$feed_crc$0$0 ==.
      001A54 22               [24] 1589 	ret
                                   1590 ;------------------------------------------------------------
                                   1591 ;Allocation info for local variables in function 'reverse_bits'
                                   1592 ;------------------------------------------------------------
                                   1593 ;crc                       Allocated to registers r6 r7 
                                   1594 ;------------------------------------------------------------
                           0001F0  1595 	G$reverse_bits$0$0 ==.
                           0001F0  1596 	C$i2c.c$97$1$135 ==.
                                   1597 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:97: uint16_t reverse_bits(uint16_t crc)
                                   1598 ;	-----------------------------------------
                                   1599 ;	 function reverse_bits
                                   1600 ;	-----------------------------------------
      001A55                       1601 _reverse_bits:
      001A55 AE 82            [24] 1602 	mov	r6,dpl
      001A57 AF 83            [24] 1603 	mov	r7,dph
                           0001F4  1604 	C$i2c.c$100$1$137 ==.
                                   1605 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:100: crc = (((crc & 0xaaaa) >> 1) | ((crc & 0x5555) << 1));
      001A59 74 AA            [12] 1606 	mov	a,#0xaa
      001A5B 5E               [12] 1607 	anl	a,r6
      001A5C FC               [12] 1608 	mov	r4,a
      001A5D 74 AA            [12] 1609 	mov	a,#0xaa
      001A5F 5F               [12] 1610 	anl	a,r7
      001A60 C3               [12] 1611 	clr	c
      001A61 13               [12] 1612 	rrc	a
      001A62 CC               [12] 1613 	xch	a,r4
      001A63 13               [12] 1614 	rrc	a
      001A64 CC               [12] 1615 	xch	a,r4
      001A65 FD               [12] 1616 	mov	r5,a
      001A66 74 55            [12] 1617 	mov	a,#0x55
      001A68 5E               [12] 1618 	anl	a,r6
      001A69 FA               [12] 1619 	mov	r2,a
      001A6A 74 55            [12] 1620 	mov	a,#0x55
      001A6C 5F               [12] 1621 	anl	a,r7
      001A6D CA               [12] 1622 	xch	a,r2
      001A6E 25 E0            [12] 1623 	add	a,acc
      001A70 CA               [12] 1624 	xch	a,r2
      001A71 33               [12] 1625 	rlc	a
      001A72 FB               [12] 1626 	mov	r3,a
      001A73 EA               [12] 1627 	mov	a,r2
      001A74 4C               [12] 1628 	orl	a,r4
      001A75 FE               [12] 1629 	mov	r6,a
      001A76 EB               [12] 1630 	mov	a,r3
      001A77 4D               [12] 1631 	orl	a,r5
      001A78 FF               [12] 1632 	mov	r7,a
                           000214  1633 	C$i2c.c$101$1$137 ==.
                                   1634 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:101: crc = (((crc & 0xcccc) >> 2) | ((crc & 0x3333) << 2));
      001A79 74 CC            [12] 1635 	mov	a,#0xcc
      001A7B 5E               [12] 1636 	anl	a,r6
      001A7C FC               [12] 1637 	mov	r4,a
      001A7D 74 CC            [12] 1638 	mov	a,#0xcc
      001A7F 5F               [12] 1639 	anl	a,r7
      001A80 C3               [12] 1640 	clr	c
      001A81 13               [12] 1641 	rrc	a
      001A82 CC               [12] 1642 	xch	a,r4
      001A83 13               [12] 1643 	rrc	a
      001A84 CC               [12] 1644 	xch	a,r4
      001A85 C3               [12] 1645 	clr	c
      001A86 13               [12] 1646 	rrc	a
      001A87 CC               [12] 1647 	xch	a,r4
      001A88 13               [12] 1648 	rrc	a
      001A89 CC               [12] 1649 	xch	a,r4
      001A8A FD               [12] 1650 	mov	r5,a
      001A8B 74 33            [12] 1651 	mov	a,#0x33
      001A8D 5E               [12] 1652 	anl	a,r6
      001A8E FA               [12] 1653 	mov	r2,a
      001A8F 74 33            [12] 1654 	mov	a,#0x33
      001A91 5F               [12] 1655 	anl	a,r7
      001A92 CA               [12] 1656 	xch	a,r2
      001A93 25 E0            [12] 1657 	add	a,acc
      001A95 CA               [12] 1658 	xch	a,r2
      001A96 33               [12] 1659 	rlc	a
      001A97 CA               [12] 1660 	xch	a,r2
      001A98 25 E0            [12] 1661 	add	a,acc
      001A9A CA               [12] 1662 	xch	a,r2
      001A9B 33               [12] 1663 	rlc	a
      001A9C FB               [12] 1664 	mov	r3,a
      001A9D EA               [12] 1665 	mov	a,r2
      001A9E 4C               [12] 1666 	orl	a,r4
      001A9F FE               [12] 1667 	mov	r6,a
      001AA0 EB               [12] 1668 	mov	a,r3
      001AA1 4D               [12] 1669 	orl	a,r5
      001AA2 FF               [12] 1670 	mov	r7,a
                           00023E  1671 	C$i2c.c$102$1$137 ==.
                                   1672 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:102: crc = (((crc & 0xf0f0) >> 4) | ((crc & 0x0f0f) << 4));
      001AA3 74 F0            [12] 1673 	mov	a,#0xf0
      001AA5 5E               [12] 1674 	anl	a,r6
      001AA6 FC               [12] 1675 	mov	r4,a
      001AA7 74 F0            [12] 1676 	mov	a,#0xf0
      001AA9 5F               [12] 1677 	anl	a,r7
      001AAA C4               [12] 1678 	swap	a
      001AAB CC               [12] 1679 	xch	a,r4
      001AAC C4               [12] 1680 	swap	a
      001AAD 54 0F            [12] 1681 	anl	a,#0x0f
      001AAF 6C               [12] 1682 	xrl	a,r4
      001AB0 CC               [12] 1683 	xch	a,r4
      001AB1 54 0F            [12] 1684 	anl	a,#0x0f
      001AB3 CC               [12] 1685 	xch	a,r4
      001AB4 6C               [12] 1686 	xrl	a,r4
      001AB5 CC               [12] 1687 	xch	a,r4
      001AB6 FD               [12] 1688 	mov	r5,a
      001AB7 74 0F            [12] 1689 	mov	a,#0x0f
      001AB9 5E               [12] 1690 	anl	a,r6
      001ABA FA               [12] 1691 	mov	r2,a
      001ABB 74 0F            [12] 1692 	mov	a,#0x0f
      001ABD 5F               [12] 1693 	anl	a,r7
      001ABE C4               [12] 1694 	swap	a
      001ABF 54 F0            [12] 1695 	anl	a,#0xf0
      001AC1 CA               [12] 1696 	xch	a,r2
      001AC2 C4               [12] 1697 	swap	a
      001AC3 CA               [12] 1698 	xch	a,r2
      001AC4 6A               [12] 1699 	xrl	a,r2
      001AC5 CA               [12] 1700 	xch	a,r2
      001AC6 54 F0            [12] 1701 	anl	a,#0xf0
      001AC8 CA               [12] 1702 	xch	a,r2
      001AC9 6A               [12] 1703 	xrl	a,r2
      001ACA FB               [12] 1704 	mov	r3,a
      001ACB EA               [12] 1705 	mov	a,r2
      001ACC 4C               [12] 1706 	orl	a,r4
      001ACD FE               [12] 1707 	mov	r6,a
      001ACE EB               [12] 1708 	mov	a,r3
      001ACF 4D               [12] 1709 	orl	a,r5
      001AD0 FF               [12] 1710 	mov	r7,a
                           00026C  1711 	C$i2c.c$103$1$137 ==.
                                   1712 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:103: return (((crc & 0xff00) >> 8) | ((crc & 0x00ff) << 8));
      001AD1 8F 05            [24] 1713 	mov	ar5,r7
      001AD3 8D 04            [24] 1714 	mov	ar4,r5
      001AD5 7D 00            [12] 1715 	mov	r5,#0x00
      001AD7 8E 07            [24] 1716 	mov	ar7,r6
      001AD9 E4               [12] 1717 	clr	a
      001ADA 42 04            [12] 1718 	orl	ar4,a
      001ADC EF               [12] 1719 	mov	a,r7
      001ADD 42 05            [12] 1720 	orl	ar5,a
      001ADF 8C 82            [24] 1721 	mov	dpl,r4
      001AE1 8D 83            [24] 1722 	mov	dph,r5
                           00027E  1723 	C$i2c.c$104$1$137 ==.
                           00027E  1724 	XG$reverse_bits$0$0 ==.
      001AE3 22               [24] 1725 	ret
                                   1726 ;------------------------------------------------------------
                                   1727 ;Allocation info for local variables in function 'smb_init'
                                   1728 ;------------------------------------------------------------
                           00027F  1729 	G$smb_init$0$0 ==.
                           00027F  1730 	C$i2c.c$106$1$137 ==.
                                   1731 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:106: void smb_init()
                                   1732 ;	-----------------------------------------
                                   1733 ;	 function smb_init
                                   1734 ;	-----------------------------------------
      001AE4                       1735 _smb_init:
                           00027F  1736 	C$i2c.c$108$1$138 ==.
                                   1737 ;	D:\Freelancer_projects\jan333\sdcc_project\src\i2c.c:108: SMB_FLAGS = 0;
      001AE4 75 14 00         [24] 1738 	mov	_SMB_FLAGS,#0x00
                           000282  1739 	C$i2c.c$109$1$138 ==.
                           000282  1740 	XG$smb_init$0$0 ==.
      001AE7 22               [24] 1741 	ret
                                   1742 	.area CSEG    (CODE)
                                   1743 	.area CONST   (CODE)
                                   1744 	.area XINIT   (CODE)
                                   1745 	.area CABS    (ABS,CODE)
