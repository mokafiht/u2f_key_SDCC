                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module custom
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _atecc_send_recv
                                     12 	.globl _usb_write
                                     13 	.globl _app_wink
                                     14 	.globl _memset
                                     15 	.globl _memmove
                                     16 	.globl _U2F_BLUE
                                     17 	.globl _U2F_GREEN
                                     18 	.globl _U2F_RED
                                     19 	.globl _U2F_BUTTON_VAL
                                     20 	.globl _U2F_BUTTON
                                     21 	.globl _UART1FCN1_TFRQ
                                     22 	.globl _UART1FCN1_TXNF
                                     23 	.globl _UART1FCN1_TXHOLD
                                     24 	.globl _UART1FCN1_TIE
                                     25 	.globl _UART1FCN1_RFRQ
                                     26 	.globl _UART1FCN1_RXTO1
                                     27 	.globl _UART1FCN1_RXTO0
                                     28 	.globl _UART1FCN1_RIE
                                     29 	.globl _TMR4CN0_TF4H
                                     30 	.globl _TMR4CN0_TF4L
                                     31 	.globl _TMR4CN0_TF4LEN
                                     32 	.globl _TMR4CN0_TF4CEN
                                     33 	.globl _TMR4CN0_T4SPLIT
                                     34 	.globl _TMR4CN0_TR4
                                     35 	.globl _TMR4CN0_T4XCLK1
                                     36 	.globl _TMR4CN0_T4XCLK0
                                     37 	.globl _TMR2CN0_TF2H
                                     38 	.globl _TMR2CN0_TF2L
                                     39 	.globl _TMR2CN0_TF2LEN
                                     40 	.globl _TMR2CN0_TF2CEN
                                     41 	.globl _TMR2CN0_T2SPLIT
                                     42 	.globl _TMR2CN0_TR2
                                     43 	.globl _TMR2CN0_T2XCLK1
                                     44 	.globl _TMR2CN0_T2XCLK0
                                     45 	.globl _TCON_TF1
                                     46 	.globl _TCON_TR1
                                     47 	.globl _TCON_TF0
                                     48 	.globl _TCON_TR0
                                     49 	.globl _TCON_IE1
                                     50 	.globl _TCON_IT1
                                     51 	.globl _TCON_IE0
                                     52 	.globl _TCON_IT0
                                     53 	.globl _SPI0CN0_SPIF
                                     54 	.globl _SPI0CN0_WCOL
                                     55 	.globl _SPI0CN0_MODF
                                     56 	.globl _SPI0CN0_RXOVRN
                                     57 	.globl _SPI0CN0_NSSMD1
                                     58 	.globl _SPI0CN0_NSSMD0
                                     59 	.globl _SPI0CN0_TXNF
                                     60 	.globl _SPI0CN0_SPIEN
                                     61 	.globl _SMB0CN0_MASTER
                                     62 	.globl _SMB0CN0_TXMODE
                                     63 	.globl _SMB0CN0_STA
                                     64 	.globl _SMB0CN0_STO
                                     65 	.globl _SMB0CN0_ACKRQ
                                     66 	.globl _SMB0CN0_ARBLOST
                                     67 	.globl _SMB0CN0_ACK
                                     68 	.globl _SMB0CN0_SI
                                     69 	.globl _SCON1_OVR
                                     70 	.globl _SCON1_PERR
                                     71 	.globl _SCON1_REN
                                     72 	.globl _SCON1_TBX
                                     73 	.globl _SCON1_RBX
                                     74 	.globl _SCON1_TI
                                     75 	.globl _SCON1_RI
                                     76 	.globl _SCON0_SMODE
                                     77 	.globl _SCON0_MCE
                                     78 	.globl _SCON0_REN
                                     79 	.globl _SCON0_TB8
                                     80 	.globl _SCON0_RB8
                                     81 	.globl _SCON0_TI
                                     82 	.globl _SCON0_RI
                                     83 	.globl _PSW_CY
                                     84 	.globl _PSW_AC
                                     85 	.globl _PSW_F0
                                     86 	.globl _PSW_RS1
                                     87 	.globl _PSW_RS0
                                     88 	.globl _PSW_OV
                                     89 	.globl _PSW_F1
                                     90 	.globl _PSW_PARITY
                                     91 	.globl _PCA0CN0_CF
                                     92 	.globl _PCA0CN0_CR
                                     93 	.globl _PCA0CN0_CCF2
                                     94 	.globl _PCA0CN0_CCF1
                                     95 	.globl _PCA0CN0_CCF0
                                     96 	.globl _P3_B1
                                     97 	.globl _P3_B0
                                     98 	.globl _P2_B3
                                     99 	.globl _P2_B2
                                    100 	.globl _P2_B1
                                    101 	.globl _P2_B0
                                    102 	.globl _P1_B7
                                    103 	.globl _P1_B6
                                    104 	.globl _P1_B5
                                    105 	.globl _P1_B4
                                    106 	.globl _P1_B3
                                    107 	.globl _P1_B2
                                    108 	.globl _P1_B1
                                    109 	.globl _P1_B0
                                    110 	.globl _P0_B7
                                    111 	.globl _P0_B6
                                    112 	.globl _P0_B5
                                    113 	.globl _P0_B4
                                    114 	.globl _P0_B3
                                    115 	.globl _P0_B2
                                    116 	.globl _P0_B1
                                    117 	.globl _P0_B0
                                    118 	.globl _IP_PSPI0
                                    119 	.globl _IP_PT2
                                    120 	.globl _IP_PS0
                                    121 	.globl _IP_PT1
                                    122 	.globl _IP_PX1
                                    123 	.globl _IP_PT0
                                    124 	.globl _IP_PX0
                                    125 	.globl _IE_EA
                                    126 	.globl _IE_ESPI0
                                    127 	.globl _IE_ET2
                                    128 	.globl _IE_ES0
                                    129 	.globl _IE_ET1
                                    130 	.globl _IE_EX1
                                    131 	.globl _IE_ET0
                                    132 	.globl _IE_EX0
                                    133 	.globl _B_B7
                                    134 	.globl _B_B6
                                    135 	.globl _B_B5
                                    136 	.globl _B_B4
                                    137 	.globl _B_B3
                                    138 	.globl _B_B2
                                    139 	.globl _B_B1
                                    140 	.globl _B_B0
                                    141 	.globl _ADC0CN0_ADEN
                                    142 	.globl _ADC0CN0_ADBMEN
                                    143 	.globl _ADC0CN0_ADINT
                                    144 	.globl _ADC0CN0_ADBUSY
                                    145 	.globl _ADC0CN0_ADWINT
                                    146 	.globl _ADC0CN0_ADCM2
                                    147 	.globl _ADC0CN0_ADCM1
                                    148 	.globl _ADC0CN0_ADCM0
                                    149 	.globl _ACC_ACC7
                                    150 	.globl _ACC_ACC6
                                    151 	.globl _ACC_ACC5
                                    152 	.globl _ACC_ACC4
                                    153 	.globl _ACC_ACC3
                                    154 	.globl _ACC_ACC2
                                    155 	.globl _ACC_ACC1
                                    156 	.globl _ACC_ACC0
                                    157 	.globl __XPAGE
                                    158 	.globl _TMR4RL
                                    159 	.globl _TMR4
                                    160 	.globl _TMR3RL
                                    161 	.globl _TMR3
                                    162 	.globl _TMR2RL
                                    163 	.globl _TMR2
                                    164 	.globl _SBRL1
                                    165 	.globl _PCA0
                                    166 	.globl _PCA0CP2
                                    167 	.globl _PCA0CP1
                                    168 	.globl _PCA0CP0
                                    169 	.globl _DP
                                    170 	.globl _ADC0LT
                                    171 	.globl _ADC0
                                    172 	.globl _ADC0GT
                                    173 	.globl _XBR2
                                    174 	.globl _XBR1
                                    175 	.globl _XBR0
                                    176 	.globl _WDTCN
                                    177 	.globl _VDM0CN
                                    178 	.globl _USB0XCN
                                    179 	.globl _USB0DAT
                                    180 	.globl _USB0CF
                                    181 	.globl _USB0CDSTA
                                    182 	.globl _USB0CDCN
                                    183 	.globl _USB0CDCF
                                    184 	.globl _USB0AEC
                                    185 	.globl _USB0ADR
                                    186 	.globl _UART1LIN
                                    187 	.globl _UART1FCT
                                    188 	.globl _UART1FCN1
                                    189 	.globl _UART1FCN0
                                    190 	.globl _TMR4RLL
                                    191 	.globl _TMR4RLH
                                    192 	.globl _TMR4L
                                    193 	.globl _TMR4H
                                    194 	.globl _TMR4CN1
                                    195 	.globl _TMR4CN0
                                    196 	.globl _TMR3RLL
                                    197 	.globl _TMR3RLH
                                    198 	.globl _TMR3L
                                    199 	.globl _TMR3H
                                    200 	.globl _TMR3CN1
                                    201 	.globl _TMR3CN0
                                    202 	.globl _TMR2RLL
                                    203 	.globl _TMR2RLH
                                    204 	.globl _TMR2L
                                    205 	.globl _TMR2H
                                    206 	.globl _TMR2CN1
                                    207 	.globl _TMR2CN0
                                    208 	.globl _TMOD
                                    209 	.globl _TL1
                                    210 	.globl _TL0
                                    211 	.globl _TH1
                                    212 	.globl _TH0
                                    213 	.globl _TCON
                                    214 	.globl _SPI0FCT
                                    215 	.globl _SPI0FCN1
                                    216 	.globl _SPI0FCN0
                                    217 	.globl _SPI0DAT
                                    218 	.globl _SPI0CN0
                                    219 	.globl _SPI0CKR
                                    220 	.globl _SPI0CFG
                                    221 	.globl _SP
                                    222 	.globl _SMOD1
                                    223 	.globl _SMB0TC
                                    224 	.globl _SMB0RXLN
                                    225 	.globl _SMB0FCT
                                    226 	.globl _SMB0FCN1
                                    227 	.globl _SMB0FCN0
                                    228 	.globl _SMB0DAT
                                    229 	.globl _SMB0CN0
                                    230 	.globl _SMB0CF
                                    231 	.globl _SMB0ADR
                                    232 	.globl _SMB0ADM
                                    233 	.globl _SFRSTACK
                                    234 	.globl _SFRPGCN
                                    235 	.globl _SFRPAGE
                                    236 	.globl _SCON1
                                    237 	.globl _SCON0
                                    238 	.globl _SBUF1
                                    239 	.globl _SBUF0
                                    240 	.globl _SBRLL1
                                    241 	.globl _SBRLH1
                                    242 	.globl _SBCON1
                                    243 	.globl _RSTSRC
                                    244 	.globl _REVID
                                    245 	.globl _REG1CN
                                    246 	.globl _REG0CN
                                    247 	.globl _REF0CN
                                    248 	.globl _PSW
                                    249 	.globl _PSCTL
                                    250 	.globl _PRTDRV
                                    251 	.globl _PFE0CN
                                    252 	.globl _PCON1
                                    253 	.globl _PCON0
                                    254 	.globl _PCA0PWM
                                    255 	.globl _PCA0POL
                                    256 	.globl _PCA0MD
                                    257 	.globl _PCA0L
                                    258 	.globl _PCA0H
                                    259 	.globl _PCA0CPM2
                                    260 	.globl _PCA0CPM1
                                    261 	.globl _PCA0CPM0
                                    262 	.globl _PCA0CPL2
                                    263 	.globl _PCA0CPL1
                                    264 	.globl _PCA0CPL0
                                    265 	.globl _PCA0CPH2
                                    266 	.globl _PCA0CPH1
                                    267 	.globl _PCA0CPH0
                                    268 	.globl _PCA0CN0
                                    269 	.globl _PCA0CLR
                                    270 	.globl _PCA0CENT
                                    271 	.globl _P3MDOUT
                                    272 	.globl _P3MDIN
                                    273 	.globl _P3
                                    274 	.globl _P2SKIP
                                    275 	.globl _P2MDOUT
                                    276 	.globl _P2MDIN
                                    277 	.globl _P2MAT
                                    278 	.globl _P2MASK
                                    279 	.globl _P2
                                    280 	.globl _P1SKIP
                                    281 	.globl _P1MDOUT
                                    282 	.globl _P1MDIN
                                    283 	.globl _P1MAT
                                    284 	.globl _P1MASK
                                    285 	.globl _P1
                                    286 	.globl _P0SKIP
                                    287 	.globl _P0MDOUT
                                    288 	.globl _P0MDIN
                                    289 	.globl _P0MAT
                                    290 	.globl _P0MASK
                                    291 	.globl _P0
                                    292 	.globl _LFO0CN
                                    293 	.globl _IT01CF
                                    294 	.globl _IPH
                                    295 	.globl _IP
                                    296 	.globl _IE
                                    297 	.globl _I2C0STAT
                                    298 	.globl _I2C0SLAD
                                    299 	.globl _I2C0FCT
                                    300 	.globl _I2C0FCN1
                                    301 	.globl _I2C0FCN0
                                    302 	.globl _I2C0DOUT
                                    303 	.globl _I2C0DIN
                                    304 	.globl _I2C0CN0
                                    305 	.globl _HFOCN
                                    306 	.globl _HFO1CAL
                                    307 	.globl _HFO0CAL
                                    308 	.globl _FLKEY
                                    309 	.globl _EMI0CN
                                    310 	.globl _EIP2H
                                    311 	.globl _EIP2
                                    312 	.globl _EIP1H
                                    313 	.globl _EIP1
                                    314 	.globl _EIE2
                                    315 	.globl _EIE1
                                    316 	.globl _DPL
                                    317 	.globl _DPH
                                    318 	.globl _DEVICEID
                                    319 	.globl _DERIVID
                                    320 	.globl _CRC0ST
                                    321 	.globl _CRC0IN
                                    322 	.globl _CRC0FLIP
                                    323 	.globl _CRC0DAT
                                    324 	.globl _CRC0CNT
                                    325 	.globl _CRC0CN1
                                    326 	.globl _CRC0CN0
                                    327 	.globl _CMP1MX
                                    328 	.globl _CMP1MD
                                    329 	.globl _CMP1CN1
                                    330 	.globl _CMP1CN0
                                    331 	.globl _CMP0MX
                                    332 	.globl _CMP0MD
                                    333 	.globl _CMP0CN1
                                    334 	.globl _CMP0CN0
                                    335 	.globl _CLKSEL
                                    336 	.globl _CKCON1
                                    337 	.globl _CKCON0
                                    338 	.globl _B
                                    339 	.globl _ADC0TK
                                    340 	.globl _ADC0PWR
                                    341 	.globl _ADC0MX
                                    342 	.globl _ADC0LTL
                                    343 	.globl _ADC0LTH
                                    344 	.globl _ADC0L
                                    345 	.globl _ADC0H
                                    346 	.globl _ADC0GTL
                                    347 	.globl _ADC0GTH
                                    348 	.globl _ADC0CN1
                                    349 	.globl _ADC0CN0
                                    350 	.globl _ADC0CF
                                    351 	.globl _ADC0AC
                                    352 	.globl _ACC
                                    353 	.globl _custom_command
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
                                   1106 ;Allocation info for local variables in function 'custom_command'
                                   1107 ;------------------------------------------------------------
                                   1108 ;msg                       Allocated to stack - _bp +1
                                   1109 ;res                       Allocated to stack - _bp +8
                                   1110 ;ec                        Allocated to stack - _bp +12
                                   1111 ;sloc0                     Allocated to stack - _bp +4
                                   1112 ;sloc1                     Allocated to stack - _bp +5
                                   1113 ;------------------------------------------------------------
                           000000  1114 	G$custom_command$0$0 ==.
                           000000  1115 	C$custom.c$37$0$0 ==.
                                   1116 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:37: uint8_t custom_command(struct u2f_hid_msg * msg)
                                   1117 ;	-----------------------------------------
                                   1118 ;	 function custom_command
                                   1119 ;	-----------------------------------------
      004222                       1120 _custom_command:
                           000007  1121 	ar7 = 0x07
                           000006  1122 	ar6 = 0x06
                           000005  1123 	ar5 = 0x05
                           000004  1124 	ar4 = 0x04
                           000003  1125 	ar3 = 0x03
                           000002  1126 	ar2 = 0x02
                           000001  1127 	ar1 = 0x01
                           000000  1128 	ar0 = 0x00
      004222 C0 1B            [24] 1129 	push	_bp
      004224 85 81 1B         [24] 1130 	mov	_bp,sp
      004227 C0 82            [24] 1131 	push	dpl
      004229 C0 83            [24] 1132 	push	dph
      00422B C0 F0            [24] 1133 	push	b
      00422D E5 81            [12] 1134 	mov	a,sp
      00422F 24 09            [12] 1135 	add	a,#0x09
      004231 F5 81            [12] 1136 	mov	sp,a
                           000011  1137 	C$custom.c$42$1$124 ==.
                                   1138 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:42: switch(msg->pkt.init.cmd)
      004233 A8 1B            [24] 1139 	mov	r0,_bp
      004235 08               [12] 1140 	inc	r0
      004236 74 04            [12] 1141 	mov	a,#0x04
      004238 26               [12] 1142 	add	a,@r0
      004239 FA               [12] 1143 	mov	r2,a
      00423A E4               [12] 1144 	clr	a
      00423B 08               [12] 1145 	inc	r0
      00423C 36               [12] 1146 	addc	a,@r0
      00423D FB               [12] 1147 	mov	r3,a
      00423E 08               [12] 1148 	inc	r0
      00423F 86 04            [24] 1149 	mov	ar4,@r0
      004241 8A 82            [24] 1150 	mov	dpl,r2
      004243 8B 83            [24] 1151 	mov	dph,r3
      004245 8C F0            [24] 1152 	mov	b,r4
      004247 12 5E 3E         [24] 1153 	lcall	__gptrget
      00424A FF               [12] 1154 	mov	r7,a
      00424B BF 21 02         [24] 1155 	cjne	r7,#0x21,00141$
      00424E 80 1B            [24] 1156 	sjmp	00101$
      004250                       1157 00141$:
      004250 BF 22 03         [24] 1158 	cjne	r7,#0x22,00142$
      004253 02 43 86         [24] 1159 	ljmp	00105$
      004256                       1160 00142$:
      004256 BF 24 03         [24] 1161 	cjne	r7,#0x24,00143$
      004259 02 44 4A         [24] 1162 	ljmp	00106$
      00425C                       1163 00143$:
      00425C BF 88 03         [24] 1164 	cjne	r7,#0x88,00144$
      00425F 02 44 57         [24] 1165 	ljmp	00107$
      004262                       1166 00144$:
      004262 BF 89 03         [24] 1167 	cjne	r7,#0x89,00145$
      004265 02 44 BA         [24] 1168 	ljmp	00110$
      004268                       1169 00145$:
      004268 02 45 15         [24] 1170 	ljmp	00111$
                           000049  1171 	C$custom.c$45$2$125 ==.
                                   1172 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:45: case U2F_CUSTOM_GET_RNG:
      00426B                       1173 00101$:
                           000049  1174 	C$custom.c$49$1$124 ==.
                                   1175 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:49: sizeof(appdata.tmp), &res) == 0 )
      00426B E5 1B            [12] 1176 	mov	a,_bp
      00426D 24 04            [12] 1177 	add	a,#0x04
      00426F F8               [12] 1178 	mov	r0,a
      004270 E5 1B            [12] 1179 	mov	a,_bp
      004272 24 08            [12] 1180 	add	a,#0x08
      004274 F6               [12] 1181 	mov	@r0,a
      004275 E5 1B            [12] 1182 	mov	a,_bp
      004277 24 04            [12] 1183 	add	a,#0x04
      004279 F8               [12] 1184 	mov	r0,a
      00427A 86 05            [24] 1185 	mov	ar5,@r0
      00427C 7E 00            [12] 1186 	mov	r6,#0x00
      00427E 7F 40            [12] 1187 	mov	r7,#0x40
                           00005E  1188 	C$custom.c$48$2$125 ==.
                                   1189 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:48: appdata.tmp,
                           00005E  1190 	C$custom.c$46$2$125 ==.
                                   1191 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:46: if (atecc_send_recv(ATECC_CMD_RNG,ATECC_RNG_P1,ATECC_RNG_P2,
      004280 C0 04            [24] 1192 	push	ar4
      004282 C0 03            [24] 1193 	push	ar3
      004284 C0 02            [24] 1194 	push	ar2
      004286 C0 05            [24] 1195 	push	ar5
      004288 C0 06            [24] 1196 	push	ar6
      00428A C0 07            [24] 1197 	push	ar7
      00428C 74 46            [12] 1198 	mov	a,#0x46
      00428E C0 E0            [24] 1199 	push	acc
      004290 74 21            [12] 1200 	mov	a,#_appdata
      004292 C0 E0            [24] 1201 	push	acc
      004294 74 00            [12] 1202 	mov	a,#(_appdata >> 8)
      004296 C0 E0            [24] 1203 	push	acc
      004298 EF               [12] 1204 	mov	a,r7
      004299 C0 E0            [24] 1205 	push	acc
      00429B E4               [12] 1206 	clr	a
      00429C C0 E0            [24] 1207 	push	acc
      00429E C0 E0            [24] 1208 	push	acc
      0042A0 C0 E0            [24] 1209 	push	acc
      0042A2 C0 E0            [24] 1210 	push	acc
      0042A4 C0 E0            [24] 1211 	push	acc
      0042A6 C0 E0            [24] 1212 	push	acc
      0042A8 C0 E0            [24] 1213 	push	acc
      0042AA 75 82 1B         [24] 1214 	mov	dpl,#0x1b
      0042AD 12 1D 1D         [24] 1215 	lcall	_atecc_send_recv
      0042B0 AF 82            [24] 1216 	mov	r7,dpl
      0042B2 E5 81            [12] 1217 	mov	a,sp
      0042B4 24 F2            [12] 1218 	add	a,#0xf2
      0042B6 F5 81            [12] 1219 	mov	sp,a
      0042B8 D0 02            [24] 1220 	pop	ar2
      0042BA D0 03            [24] 1221 	pop	ar3
      0042BC D0 04            [24] 1222 	pop	ar4
      0042BE EF               [12] 1223 	mov	a,r7
      0042BF 60 03            [24] 1224 	jz	00146$
      0042C1 02 43 52         [24] 1225 	ljmp	00103$
      0042C4                       1226 00146$:
                           0000A2  1227 	C$custom.c$51$3$126 ==.
                                   1228 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:51: memmove(msg->pkt.init.payload, res.buf, 32);
      0042C4 E5 1B            [12] 1229 	mov	a,_bp
      0042C6 24 04            [12] 1230 	add	a,#0x04
      0042C8 F8               [12] 1231 	mov	r0,a
      0042C9 E6               [12] 1232 	mov	a,@r0
      0042CA 04               [12] 1233 	inc	a
      0042CB F9               [12] 1234 	mov	r1,a
      0042CC 87 05            [24] 1235 	mov	ar5,@r1
      0042CE 09               [12] 1236 	inc	r1
      0042CF 87 06            [24] 1237 	mov	ar6,@r1
      0042D1 09               [12] 1238 	inc	r1
      0042D2 87 07            [24] 1239 	mov	ar7,@r1
      0042D4 E5 1B            [12] 1240 	mov	a,_bp
      0042D6 24 05            [12] 1241 	add	a,#0x05
      0042D8 F8               [12] 1242 	mov	r0,a
      0042D9 A6 05            [24] 1243 	mov	@r0,ar5
      0042DB 08               [12] 1244 	inc	r0
      0042DC A6 06            [24] 1245 	mov	@r0,ar6
      0042DE 08               [12] 1246 	inc	r0
      0042DF A6 07            [24] 1247 	mov	@r0,ar7
      0042E1 74 03            [12] 1248 	mov	a,#0x03
      0042E3 2A               [12] 1249 	add	a,r2
      0042E4 FD               [12] 1250 	mov	r5,a
      0042E5 E4               [12] 1251 	clr	a
      0042E6 3B               [12] 1252 	addc	a,r3
      0042E7 FE               [12] 1253 	mov	r6,a
      0042E8 8C 07            [24] 1254 	mov	ar7,r4
      0042EA C0 04            [24] 1255 	push	ar4
      0042EC C0 03            [24] 1256 	push	ar3
      0042EE C0 02            [24] 1257 	push	ar2
      0042F0 74 20            [12] 1258 	mov	a,#0x20
      0042F2 C0 E0            [24] 1259 	push	acc
      0042F4 E4               [12] 1260 	clr	a
      0042F5 C0 E0            [24] 1261 	push	acc
      0042F7 E5 1B            [12] 1262 	mov	a,_bp
      0042F9 24 05            [12] 1263 	add	a,#0x05
      0042FB F8               [12] 1264 	mov	r0,a
      0042FC E6               [12] 1265 	mov	a,@r0
      0042FD C0 E0            [24] 1266 	push	acc
      0042FF 08               [12] 1267 	inc	r0
      004300 E6               [12] 1268 	mov	a,@r0
      004301 C0 E0            [24] 1269 	push	acc
      004303 08               [12] 1270 	inc	r0
      004304 E6               [12] 1271 	mov	a,@r0
      004305 C0 E0            [24] 1272 	push	acc
      004307 8D 82            [24] 1273 	mov	dpl,r5
      004309 8E 83            [24] 1274 	mov	dph,r6
      00430B 8F F0            [24] 1275 	mov	b,r7
      00430D 12 5A 63         [24] 1276 	lcall	_memmove
      004310 E5 81            [12] 1277 	mov	a,sp
      004312 24 FB            [12] 1278 	add	a,#0xfb
      004314 F5 81            [12] 1279 	mov	sp,a
      004316 D0 02            [24] 1280 	pop	ar2
      004318 D0 03            [24] 1281 	pop	ar3
      00431A D0 04            [24] 1282 	pop	ar4
                           0000FA  1283 	C$custom.c$52$3$126 ==.
                                   1284 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:52: U2FHID_SET_LEN(msg, 32);
      00431C 74 01            [12] 1285 	mov	a,#0x01
      00431E 2A               [12] 1286 	add	a,r2
      00431F FD               [12] 1287 	mov	r5,a
      004320 E4               [12] 1288 	clr	a
      004321 3B               [12] 1289 	addc	a,r3
      004322 FE               [12] 1290 	mov	r6,a
      004323 8C 07            [24] 1291 	mov	ar7,r4
      004325 8D 82            [24] 1292 	mov	dpl,r5
      004327 8E 83            [24] 1293 	mov	dph,r6
      004329 8F F0            [24] 1294 	mov	b,r7
      00432B 74 20            [12] 1295 	mov	a,#0x20
      00432D 12 5A 48         [24] 1296 	lcall	__gptrput
      004330 A3               [24] 1297 	inc	dptr
      004331 E4               [12] 1298 	clr	a
      004332 12 5A 48         [24] 1299 	lcall	__gptrput
                           000113  1300 	C$custom.c$53$3$126 ==.
                                   1301 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:53: usb_write((uint8_t*)msg, 64);
      004335 A8 1B            [24] 1302 	mov	r0,_bp
      004337 08               [12] 1303 	inc	r0
      004338 86 05            [24] 1304 	mov	ar5,@r0
      00433A 08               [12] 1305 	inc	r0
      00433B 86 06            [24] 1306 	mov	ar6,@r0
      00433D 08               [12] 1307 	inc	r0
      00433E 86 07            [24] 1308 	mov	ar7,@r0
      004340 74 40            [12] 1309 	mov	a,#0x40
      004342 C0 E0            [24] 1310 	push	acc
      004344 8D 82            [24] 1311 	mov	dpl,r5
      004346 8E 83            [24] 1312 	mov	dph,r6
      004348 8F F0            [24] 1313 	mov	b,r7
      00434A 12 1E 7C         [24] 1314 	lcall	_usb_write
      00434D 15 81            [12] 1315 	dec	sp
      00434F 02 45 1A         [24] 1316 	ljmp	00112$
      004352                       1317 00103$:
                           000130  1318 	C$custom.c$57$3$127 ==.
                                   1319 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:57: U2FHID_SET_LEN(msg, 0);
      004352 74 01            [12] 1320 	mov	a,#0x01
      004354 2A               [12] 1321 	add	a,r2
      004355 FD               [12] 1322 	mov	r5,a
      004356 E4               [12] 1323 	clr	a
      004357 3B               [12] 1324 	addc	a,r3
      004358 FE               [12] 1325 	mov	r6,a
      004359 8C 07            [24] 1326 	mov	ar7,r4
      00435B 8D 82            [24] 1327 	mov	dpl,r5
      00435D 8E 83            [24] 1328 	mov	dph,r6
      00435F 8F F0            [24] 1329 	mov	b,r7
      004361 E4               [12] 1330 	clr	a
      004362 12 5A 48         [24] 1331 	lcall	__gptrput
      004365 A3               [24] 1332 	inc	dptr
      004366 12 5A 48         [24] 1333 	lcall	__gptrput
                           000147  1334 	C$custom.c$58$3$127 ==.
                                   1335 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:58: usb_write((uint8_t*)msg, 64);
      004369 A8 1B            [24] 1336 	mov	r0,_bp
      00436B 08               [12] 1337 	inc	r0
      00436C 86 05            [24] 1338 	mov	ar5,@r0
      00436E 08               [12] 1339 	inc	r0
      00436F 86 06            [24] 1340 	mov	ar6,@r0
      004371 08               [12] 1341 	inc	r0
      004372 86 07            [24] 1342 	mov	ar7,@r0
      004374 74 40            [12] 1343 	mov	a,#0x40
      004376 C0 E0            [24] 1344 	push	acc
      004378 8D 82            [24] 1345 	mov	dpl,r5
      00437A 8E 83            [24] 1346 	mov	dph,r6
      00437C 8F F0            [24] 1347 	mov	b,r7
      00437E 12 1E 7C         [24] 1348 	lcall	_usb_write
      004381 15 81            [12] 1349 	dec	sp
                           000161  1350 	C$custom.c$61$2$125 ==.
                                   1351 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:61: break;
      004383 02 45 1A         [24] 1352 	ljmp	00112$
                           000164  1353 	C$custom.c$64$2$125 ==.
                                   1354 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:64: case U2F_CUSTOM_SEED_RNG:
      004386                       1355 00105$:
                           000164  1356 	C$custom.c$68$2$125 ==.
                                   1357 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:68: sizeof(appdata.tmp), &res);
      004386 E5 1B            [12] 1358 	mov	a,_bp
      004388 24 08            [12] 1359 	add	a,#0x08
      00438A FF               [12] 1360 	mov	r7,a
      00438B E5 1B            [12] 1361 	mov	a,_bp
      00438D 24 05            [12] 1362 	add	a,#0x05
      00438F F8               [12] 1363 	mov	r0,a
      004390 A6 07            [24] 1364 	mov	@r0,ar7
      004392 08               [12] 1365 	inc	r0
      004393 76 00            [12] 1366 	mov	@r0,#0x00
      004395 08               [12] 1367 	inc	r0
      004396 76 40            [12] 1368 	mov	@r0,#0x40
                           000176  1369 	C$custom.c$67$2$125 ==.
                                   1370 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:67: appdata.tmp,
                           000176  1371 	C$custom.c$66$2$125 ==.
                                   1372 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:66: msg->pkt.init.payload, 20,
      004398 74 03            [12] 1373 	mov	a,#0x03
      00439A 2A               [12] 1374 	add	a,r2
      00439B FD               [12] 1375 	mov	r5,a
      00439C E4               [12] 1376 	clr	a
      00439D 3B               [12] 1377 	addc	a,r3
      00439E FE               [12] 1378 	mov	r6,a
      00439F 8C 07            [24] 1379 	mov	ar7,r4
                           00017F  1380 	C$custom.c$65$2$125 ==.
                                   1381 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:65: ec = atecc_send_recv(ATECC_CMD_NONCE,ATECC_NONCE_RNG_UPDATE,0,
      0043A1 C0 04            [24] 1382 	push	ar4
      0043A3 C0 03            [24] 1383 	push	ar3
      0043A5 C0 02            [24] 1384 	push	ar2
      0043A7 E5 1B            [12] 1385 	mov	a,_bp
      0043A9 24 05            [12] 1386 	add	a,#0x05
      0043AB F8               [12] 1387 	mov	r0,a
      0043AC E6               [12] 1388 	mov	a,@r0
      0043AD C0 E0            [24] 1389 	push	acc
      0043AF 08               [12] 1390 	inc	r0
      0043B0 E6               [12] 1391 	mov	a,@r0
      0043B1 C0 E0            [24] 1392 	push	acc
      0043B3 08               [12] 1393 	inc	r0
      0043B4 E6               [12] 1394 	mov	a,@r0
      0043B5 C0 E0            [24] 1395 	push	acc
      0043B7 74 46            [12] 1396 	mov	a,#0x46
      0043B9 C0 E0            [24] 1397 	push	acc
      0043BB 74 21            [12] 1398 	mov	a,#_appdata
      0043BD C0 E0            [24] 1399 	push	acc
      0043BF 74 00            [12] 1400 	mov	a,#(_appdata >> 8)
      0043C1 C0 E0            [24] 1401 	push	acc
      0043C3 74 40            [12] 1402 	mov	a,#0x40
      0043C5 C0 E0            [24] 1403 	push	acc
      0043C7 74 14            [12] 1404 	mov	a,#0x14
      0043C9 C0 E0            [24] 1405 	push	acc
      0043CB C0 05            [24] 1406 	push	ar5
      0043CD C0 06            [24] 1407 	push	ar6
      0043CF C0 07            [24] 1408 	push	ar7
      0043D1 E4               [12] 1409 	clr	a
      0043D2 C0 E0            [24] 1410 	push	acc
      0043D4 C0 E0            [24] 1411 	push	acc
      0043D6 C0 E0            [24] 1412 	push	acc
      0043D8 75 82 16         [24] 1413 	mov	dpl,#0x16
      0043DB 12 1D 1D         [24] 1414 	lcall	_atecc_send_recv
      0043DE AF 82            [24] 1415 	mov	r7,dpl
      0043E0 E5 81            [12] 1416 	mov	a,sp
      0043E2 24 F2            [12] 1417 	add	a,#0xf2
      0043E4 F5 81            [12] 1418 	mov	sp,a
      0043E6 D0 02            [24] 1419 	pop	ar2
      0043E8 D0 03            [24] 1420 	pop	ar3
      0043EA D0 04            [24] 1421 	pop	ar4
      0043EC E5 1B            [12] 1422 	mov	a,_bp
      0043EE 24 0C            [12] 1423 	add	a,#0x0c
      0043F0 F8               [12] 1424 	mov	r0,a
      0043F1 A6 07            [24] 1425 	mov	@r0,ar7
                           0001D1  1426 	C$custom.c$69$2$125 ==.
                                   1427 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:69: U2FHID_SET_LEN(msg, 1);
      0043F3 74 01            [12] 1428 	mov	a,#0x01
      0043F5 2A               [12] 1429 	add	a,r2
      0043F6 FD               [12] 1430 	mov	r5,a
      0043F7 E4               [12] 1431 	clr	a
      0043F8 3B               [12] 1432 	addc	a,r3
      0043F9 FE               [12] 1433 	mov	r6,a
      0043FA 8C 07            [24] 1434 	mov	ar7,r4
      0043FC 8D 82            [24] 1435 	mov	dpl,r5
      0043FE 8E 83            [24] 1436 	mov	dph,r6
      004400 8F F0            [24] 1437 	mov	b,r7
      004402 74 01            [12] 1438 	mov	a,#0x01
      004404 12 5A 48         [24] 1439 	lcall	__gptrput
      004407 A3               [24] 1440 	inc	dptr
      004408 E4               [12] 1441 	clr	a
      004409 12 5A 48         [24] 1442 	lcall	__gptrput
                           0001EA  1443 	C$custom.c$70$2$125 ==.
                                   1444 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:70: msg->pkt.init.payload[0] = ec == 0 ? 1 : 0;
      00440C 74 03            [12] 1445 	mov	a,#0x03
      00440E 2A               [12] 1446 	add	a,r2
      00440F FD               [12] 1447 	mov	r5,a
      004410 E4               [12] 1448 	clr	a
      004411 3B               [12] 1449 	addc	a,r3
      004412 FE               [12] 1450 	mov	r6,a
      004413 8C 07            [24] 1451 	mov	ar7,r4
      004415 E5 1B            [12] 1452 	mov	a,_bp
      004417 24 0C            [12] 1453 	add	a,#0x0c
      004419 F8               [12] 1454 	mov	r0,a
      00441A E6               [12] 1455 	mov	a,@r0
      00441B 70 04            [24] 1456 	jnz	00115$
      00441D 7C 01            [12] 1457 	mov	r4,#0x01
      00441F 80 02            [24] 1458 	sjmp	00116$
      004421                       1459 00115$:
      004421 7C 00            [12] 1460 	mov	r4,#0x00
      004423                       1461 00116$:
      004423 8D 82            [24] 1462 	mov	dpl,r5
      004425 8E 83            [24] 1463 	mov	dph,r6
      004427 8F F0            [24] 1464 	mov	b,r7
      004429 EC               [12] 1465 	mov	a,r4
      00442A 12 5A 48         [24] 1466 	lcall	__gptrput
                           00020B  1467 	C$custom.c$71$2$125 ==.
                                   1468 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:71: usb_write((uint8_t*)msg, 64);
      00442D A8 1B            [24] 1469 	mov	r0,_bp
      00442F 08               [12] 1470 	inc	r0
      004430 86 05            [24] 1471 	mov	ar5,@r0
      004432 08               [12] 1472 	inc	r0
      004433 86 06            [24] 1473 	mov	ar6,@r0
      004435 08               [12] 1474 	inc	r0
      004436 86 07            [24] 1475 	mov	ar7,@r0
      004438 74 40            [12] 1476 	mov	a,#0x40
      00443A C0 E0            [24] 1477 	push	acc
      00443C 8D 82            [24] 1478 	mov	dpl,r5
      00443E 8E 83            [24] 1479 	mov	dph,r6
      004440 8F F0            [24] 1480 	mov	b,r7
      004442 12 1E 7C         [24] 1481 	lcall	_usb_write
      004445 15 81            [12] 1482 	dec	sp
                           000225  1483 	C$custom.c$72$2$125 ==.
                                   1484 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:72: break;
      004447 02 45 1A         [24] 1485 	ljmp	00112$
                           000228  1486 	C$custom.c$75$2$125 ==.
                                   1487 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:75: case U2F_CUSTOM_WINK:
      00444A                       1488 00106$:
                           000228  1489 	C$custom.c$77$2$125 ==.
                                   1490 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:77: app_wink(U2F_COLOR_WINK);
      00444A 90 00 00         [24] 1491 	mov	dptr,#0x0000
      00444D 75 F0 12         [24] 1492 	mov	b,#0x12
      004450 E4               [12] 1493 	clr	a
      004451 12 00 C0         [24] 1494 	lcall	_app_wink
                           000232  1495 	C$custom.c$79$2$125 ==.
                                   1496 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:79: break;
      004454 02 45 1A         [24] 1497 	ljmp	00112$
                           000235  1498 	C$custom.c$81$2$125 ==.
                                   1499 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:81: case U2F_CONFIG_BOOTLOADER:
      004457                       1500 00107$:
                           000235  1501 	C$custom.c$85$2$125 ==.
                                   1502 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:85: appdata.tmp, sizeof(appdata.tmp), &res);
      004457 E5 1B            [12] 1503 	mov	a,_bp
      004459 24 08            [12] 1504 	add	a,#0x08
      00445B FF               [12] 1505 	mov	r7,a
      00445C FC               [12] 1506 	mov	r4,a
      00445D 7D 00            [12] 1507 	mov	r5,#0x00
      00445F 7E 40            [12] 1508 	mov	r6,#0x40
                           00023F  1509 	C$custom.c$83$2$125 ==.
                                   1510 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:83: atecc_send_recv(ATECC_CMD_READ,
      004461 C0 07            [24] 1511 	push	ar7
      004463 C0 04            [24] 1512 	push	ar4
      004465 C0 05            [24] 1513 	push	ar5
      004467 C0 06            [24] 1514 	push	ar6
      004469 74 46            [12] 1515 	mov	a,#0x46
      00446B C0 E0            [24] 1516 	push	acc
      00446D 74 21            [12] 1517 	mov	a,#_appdata
      00446F C0 E0            [24] 1518 	push	acc
      004471 74 00            [12] 1519 	mov	a,#(_appdata >> 8)
      004473 C0 E0            [24] 1520 	push	acc
      004475 EE               [12] 1521 	mov	a,r6
      004476 C0 E0            [24] 1522 	push	acc
      004478 E4               [12] 1523 	clr	a
      004479 C0 E0            [24] 1524 	push	acc
      00447B C0 E0            [24] 1525 	push	acc
      00447D C0 E0            [24] 1526 	push	acc
      00447F C0 E0            [24] 1527 	push	acc
      004481 EE               [12] 1528 	mov	a,r6
      004482 C0 E0            [24] 1529 	push	acc
      004484 E4               [12] 1530 	clr	a
      004485 C0 E0            [24] 1531 	push	acc
      004487 74 02            [12] 1532 	mov	a,#0x02
      004489 C0 E0            [24] 1533 	push	acc
      00448B 75 82 02         [24] 1534 	mov	dpl,#0x02
      00448E 12 1D 1D         [24] 1535 	lcall	_atecc_send_recv
      004491 E5 81            [12] 1536 	mov	a,sp
      004493 24 F2            [12] 1537 	add	a,#0xf2
      004495 F5 81            [12] 1538 	mov	sp,a
      004497 D0 07            [24] 1539 	pop	ar7
                           000277  1540 	C$custom.c$87$2$125 ==.
                                   1541 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:87: if (res.buf[0] == 0xff)
      004499 EF               [12] 1542 	mov	a,r7
      00449A 04               [12] 1543 	inc	a
      00449B F9               [12] 1544 	mov	r1,a
      00449C 87 05            [24] 1545 	mov	ar5,@r1
      00449E 09               [12] 1546 	inc	r1
      00449F 87 06            [24] 1547 	mov	ar6,@r1
      0044A1 09               [12] 1548 	inc	r1
      0044A2 87 07            [24] 1549 	mov	ar7,@r1
      0044A4 8D 82            [24] 1550 	mov	dpl,r5
      0044A6 8E 83            [24] 1551 	mov	dph,r6
      0044A8 8F F0            [24] 1552 	mov	b,r7
      0044AA 12 5E 3E         [24] 1553 	lcall	__gptrget
      0044AD FD               [12] 1554 	mov	r5,a
      0044AE BD FF 69         [24] 1555 	cjne	r5,#0xff,00112$
                           00028F  1556 	C$custom.c$89$3$128 ==.
                                   1557 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:89: *((uint8_t SI_SEG_DATA *)0x00) = 0xA5;
      0044B1 78 00            [12] 1558 	mov	r0,#0x00
      0044B3 76 A5            [12] 1559 	mov	@r0,#0xa5
                           000293  1560 	C$custom.c$90$3$128 ==.
                                   1561 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:90: RSTSRC = RSTSRC_SWRSF__SET | RSTSRC_PORSF__SET;
      0044B5 75 EF 12         [24] 1562 	mov	_RSTSRC,#0x12
                           000296  1563 	C$custom.c$94$2$125 ==.
                                   1564 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:94: break;
                           000296  1565 	C$custom.c$95$2$125 ==.
                                   1566 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:95: case U2F_CONFIG_BOOTLOADER_DESTROY:
      0044B8 80 60            [24] 1567 	sjmp	00112$
      0044BA                       1568 00110$:
                           000298  1569 	C$custom.c$97$2$125 ==.
                                   1570 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:97: memset(appdata.tmp,0,4);
      0044BA 74 04            [12] 1571 	mov	a,#0x04
      0044BC C0 E0            [24] 1572 	push	acc
      0044BE E4               [12] 1573 	clr	a
      0044BF C0 E0            [24] 1574 	push	acc
      0044C1 C0 E0            [24] 1575 	push	acc
      0044C3 90 00 21         [24] 1576 	mov	dptr,#_appdata
      0044C6 75 F0 40         [24] 1577 	mov	b,#0x40
      0044C9 12 5D D4         [24] 1578 	lcall	_memset
      0044CC 15 81            [12] 1579 	dec	sp
      0044CE 15 81            [12] 1580 	dec	sp
      0044D0 15 81            [12] 1581 	dec	sp
                           0002B0  1582 	C$custom.c$101$2$125 ==.
                                   1583 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:101: appdata.tmp, sizeof(appdata.tmp), &res);
      0044D2 E5 1B            [12] 1584 	mov	a,_bp
      0044D4 24 08            [12] 1585 	add	a,#0x08
      0044D6 FF               [12] 1586 	mov	r7,a
      0044D7 7E 00            [12] 1587 	mov	r6,#0x00
      0044D9 7D 40            [12] 1588 	mov	r5,#0x40
                           0002B9  1589 	C$custom.c$100$2$125 ==.
                                   1590 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:100: ATECC_RW_DATA, ATECC_EEPROM_DATA_SLOT(8), appdata.tmp, 4,
                           0002B9  1591 	C$custom.c$99$2$125 ==.
                                   1592 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:99: atecc_send_recv(ATECC_CMD_WRITE,
      0044DB C0 07            [24] 1593 	push	ar7
      0044DD C0 06            [24] 1594 	push	ar6
      0044DF C0 05            [24] 1595 	push	ar5
      0044E1 74 46            [12] 1596 	mov	a,#0x46
      0044E3 C0 E0            [24] 1597 	push	acc
      0044E5 74 21            [12] 1598 	mov	a,#_appdata
      0044E7 C0 E0            [24] 1599 	push	acc
      0044E9 74 00            [12] 1600 	mov	a,#(_appdata >> 8)
      0044EB C0 E0            [24] 1601 	push	acc
      0044ED ED               [12] 1602 	mov	a,r5
      0044EE C0 E0            [24] 1603 	push	acc
      0044F0 C4               [12] 1604 	swap	a
      0044F1 C0 E0            [24] 1605 	push	acc
      0044F3 74 21            [12] 1606 	mov	a,#_appdata
      0044F5 C0 E0            [24] 1607 	push	acc
      0044F7 74 00            [12] 1608 	mov	a,#(_appdata >> 8)
      0044F9 C0 E0            [24] 1609 	push	acc
      0044FB ED               [12] 1610 	mov	a,r5
      0044FC C0 E0            [24] 1611 	push	acc
      0044FE C0 E0            [24] 1612 	push	acc
      004500 E4               [12] 1613 	clr	a
      004501 C0 E0            [24] 1614 	push	acc
      004503 74 02            [12] 1615 	mov	a,#0x02
      004505 C0 E0            [24] 1616 	push	acc
      004507 75 82 12         [24] 1617 	mov	dpl,#0x12
      00450A 12 1D 1D         [24] 1618 	lcall	_atecc_send_recv
      00450D E5 81            [12] 1619 	mov	a,sp
      00450F 24 F2            [12] 1620 	add	a,#0xf2
      004511 F5 81            [12] 1621 	mov	sp,a
                           0002F1  1622 	C$custom.c$103$2$125 ==.
                                   1623 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:103: break;
                           0002F1  1624 	C$custom.c$104$2$125 ==.
                                   1625 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:104: default:
      004513 80 05            [24] 1626 	sjmp	00112$
      004515                       1627 00111$:
                           0002F3  1628 	C$custom.c$105$2$125 ==.
                                   1629 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:105: return 0;
      004515 75 82 00         [24] 1630 	mov	dpl,#0x00
                           0002F6  1631 	C$custom.c$106$1$124 ==.
                                   1632 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:106: }
      004518 80 03            [24] 1633 	sjmp	00113$
      00451A                       1634 00112$:
                           0002F8  1635 	C$custom.c$107$1$124 ==.
                                   1636 ;	D:\Freelancer_projects\jan333\sdcc_project\src\custom.c:107: return 1;
      00451A 75 82 01         [24] 1637 	mov	dpl,#0x01
      00451D                       1638 00113$:
      00451D 85 1B 81         [24] 1639 	mov	sp,_bp
      004520 D0 1B            [24] 1640 	pop	_bp
                           000300  1641 	C$custom.c$108$1$124 ==.
                           000300  1642 	XG$custom_command$0$0 ==.
      004522 22               [24] 1643 	ret
                                   1644 	.area CSEG    (CODE)
                                   1645 	.area CONST   (CODE)
                                   1646 	.area XINIT   (CODE)
                                   1647 	.area CABS    (ABS,CODE)
