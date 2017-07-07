;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module u2f_atecc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atecc_send_recv
	.globl _u2f_prints
	.globl _u2f_delay
	.globl _rgb
	.globl _u2f_hid_flush
	.globl _u2f_hid_writeback
	.globl _u2f_hid_set_len
	.globl _memset
	.globl _memmove
	.globl _U2F_BLUE
	.globl _U2F_GREEN
	.globl _U2F_RED
	.globl _U2F_BUTTON_VAL
	.globl _U2F_BUTTON
	.globl _UART1FCN1_TFRQ
	.globl _UART1FCN1_TXNF
	.globl _UART1FCN1_TXHOLD
	.globl _UART1FCN1_TIE
	.globl _UART1FCN1_RFRQ
	.globl _UART1FCN1_RXTO1
	.globl _UART1FCN1_RXTO0
	.globl _UART1FCN1_RIE
	.globl _TMR4CN0_TF4H
	.globl _TMR4CN0_TF4L
	.globl _TMR4CN0_TF4LEN
	.globl _TMR4CN0_TF4CEN
	.globl _TMR4CN0_T4SPLIT
	.globl _TMR4CN0_TR4
	.globl _TMR4CN0_T4XCLK1
	.globl _TMR4CN0_T4XCLK0
	.globl _TMR2CN0_TF2H
	.globl _TMR2CN0_TF2L
	.globl _TMR2CN0_TF2LEN
	.globl _TMR2CN0_TF2CEN
	.globl _TMR2CN0_T2SPLIT
	.globl _TMR2CN0_TR2
	.globl _TMR2CN0_T2XCLK1
	.globl _TMR2CN0_T2XCLK0
	.globl _TCON_TF1
	.globl _TCON_TR1
	.globl _TCON_TF0
	.globl _TCON_TR0
	.globl _TCON_IE1
	.globl _TCON_IT1
	.globl _TCON_IE0
	.globl _TCON_IT0
	.globl _SPI0CN0_SPIF
	.globl _SPI0CN0_WCOL
	.globl _SPI0CN0_MODF
	.globl _SPI0CN0_RXOVRN
	.globl _SPI0CN0_NSSMD1
	.globl _SPI0CN0_NSSMD0
	.globl _SPI0CN0_TXNF
	.globl _SPI0CN0_SPIEN
	.globl _SMB0CN0_MASTER
	.globl _SMB0CN0_TXMODE
	.globl _SMB0CN0_STA
	.globl _SMB0CN0_STO
	.globl _SMB0CN0_ACKRQ
	.globl _SMB0CN0_ARBLOST
	.globl _SMB0CN0_ACK
	.globl _SMB0CN0_SI
	.globl _SCON1_OVR
	.globl _SCON1_PERR
	.globl _SCON1_REN
	.globl _SCON1_TBX
	.globl _SCON1_RBX
	.globl _SCON1_TI
	.globl _SCON1_RI
	.globl _SCON0_SMODE
	.globl _SCON0_MCE
	.globl _SCON0_REN
	.globl _SCON0_TB8
	.globl _SCON0_RB8
	.globl _SCON0_TI
	.globl _SCON0_RI
	.globl _PSW_CY
	.globl _PSW_AC
	.globl _PSW_F0
	.globl _PSW_RS1
	.globl _PSW_RS0
	.globl _PSW_OV
	.globl _PSW_F1
	.globl _PSW_PARITY
	.globl _PCA0CN0_CF
	.globl _PCA0CN0_CR
	.globl _PCA0CN0_CCF2
	.globl _PCA0CN0_CCF1
	.globl _PCA0CN0_CCF0
	.globl _P3_B1
	.globl _P3_B0
	.globl _P2_B3
	.globl _P2_B2
	.globl _P2_B1
	.globl _P2_B0
	.globl _P1_B7
	.globl _P1_B6
	.globl _P1_B5
	.globl _P1_B4
	.globl _P1_B3
	.globl _P1_B2
	.globl _P1_B1
	.globl _P1_B0
	.globl _P0_B7
	.globl _P0_B6
	.globl _P0_B5
	.globl _P0_B4
	.globl _P0_B3
	.globl _P0_B2
	.globl _P0_B1
	.globl _P0_B0
	.globl _IP_PSPI0
	.globl _IP_PT2
	.globl _IP_PS0
	.globl _IP_PT1
	.globl _IP_PX1
	.globl _IP_PT0
	.globl _IP_PX0
	.globl _IE_EA
	.globl _IE_ESPI0
	.globl _IE_ET2
	.globl _IE_ES0
	.globl _IE_ET1
	.globl _IE_EX1
	.globl _IE_ET0
	.globl _IE_EX0
	.globl _B_B7
	.globl _B_B6
	.globl _B_B5
	.globl _B_B4
	.globl _B_B3
	.globl _B_B2
	.globl _B_B1
	.globl _B_B0
	.globl _ADC0CN0_ADEN
	.globl _ADC0CN0_ADBMEN
	.globl _ADC0CN0_ADINT
	.globl _ADC0CN0_ADBUSY
	.globl _ADC0CN0_ADWINT
	.globl _ADC0CN0_ADCM2
	.globl _ADC0CN0_ADCM1
	.globl _ADC0CN0_ADCM0
	.globl _ACC_ACC7
	.globl _ACC_ACC6
	.globl _ACC_ACC5
	.globl _ACC_ACC4
	.globl _ACC_ACC3
	.globl _ACC_ACC2
	.globl _ACC_ACC1
	.globl _ACC_ACC0
	.globl __XPAGE
	.globl _TMR4RL
	.globl _TMR4
	.globl _TMR3RL
	.globl _TMR3
	.globl _TMR2RL
	.globl _TMR2
	.globl _SBRL1
	.globl _PCA0
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _DP
	.globl _ADC0LT
	.globl _ADC0
	.globl _ADC0GT
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _WDTCN
	.globl _VDM0CN
	.globl _USB0XCN
	.globl _USB0DAT
	.globl _USB0CF
	.globl _USB0CDSTA
	.globl _USB0CDCN
	.globl _USB0CDCF
	.globl _USB0AEC
	.globl _USB0ADR
	.globl _UART1LIN
	.globl _UART1FCT
	.globl _UART1FCN1
	.globl _UART1FCN0
	.globl _TMR4RLL
	.globl _TMR4RLH
	.globl _TMR4L
	.globl _TMR4H
	.globl _TMR4CN1
	.globl _TMR4CN0
	.globl _TMR3RLL
	.globl _TMR3RLH
	.globl _TMR3L
	.globl _TMR3H
	.globl _TMR3CN1
	.globl _TMR3CN0
	.globl _TMR2RLL
	.globl _TMR2RLH
	.globl _TMR2L
	.globl _TMR2H
	.globl _TMR2CN1
	.globl _TMR2CN0
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SPI0FCT
	.globl _SPI0FCN1
	.globl _SPI0FCN0
	.globl _SPI0DAT
	.globl _SPI0CN0
	.globl _SPI0CKR
	.globl _SPI0CFG
	.globl _SP
	.globl _SMOD1
	.globl _SMB0TC
	.globl _SMB0RXLN
	.globl _SMB0FCT
	.globl _SMB0FCN1
	.globl _SMB0FCN0
	.globl _SMB0DAT
	.globl _SMB0CN0
	.globl _SMB0CF
	.globl _SMB0ADR
	.globl _SMB0ADM
	.globl _SFRSTACK
	.globl _SFRPGCN
	.globl _SFRPAGE
	.globl _SCON1
	.globl _SCON0
	.globl _SBUF1
	.globl _SBUF0
	.globl _SBRLL1
	.globl _SBRLH1
	.globl _SBCON1
	.globl _RSTSRC
	.globl _REVID
	.globl _REG1CN
	.globl _REG0CN
	.globl _REF0CN
	.globl _PSW
	.globl _PSCTL
	.globl _PRTDRV
	.globl _PFE0CN
	.globl _PCON1
	.globl _PCON0
	.globl _PCA0PWM
	.globl _PCA0POL
	.globl _PCA0MD
	.globl _PCA0L
	.globl _PCA0H
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0CPL2
	.globl _PCA0CPL1
	.globl _PCA0CPL0
	.globl _PCA0CPH2
	.globl _PCA0CPH1
	.globl _PCA0CPH0
	.globl _PCA0CN0
	.globl _PCA0CLR
	.globl _PCA0CENT
	.globl _P3MDOUT
	.globl _P3MDIN
	.globl _P3
	.globl _P2SKIP
	.globl _P2MDOUT
	.globl _P2MDIN
	.globl _P2MAT
	.globl _P2MASK
	.globl _P2
	.globl _P1SKIP
	.globl _P1MDOUT
	.globl _P1MDIN
	.globl _P1MAT
	.globl _P1MASK
	.globl _P1
	.globl _P0SKIP
	.globl _P0MDOUT
	.globl _P0MDIN
	.globl _P0MAT
	.globl _P0MASK
	.globl _P0
	.globl _LFO0CN
	.globl _IT01CF
	.globl _IPH
	.globl _IP
	.globl _IE
	.globl _I2C0STAT
	.globl _I2C0SLAD
	.globl _I2C0FCT
	.globl _I2C0FCN1
	.globl _I2C0FCN0
	.globl _I2C0DOUT
	.globl _I2C0DIN
	.globl _I2C0CN0
	.globl _HFOCN
	.globl _HFO1CAL
	.globl _HFO0CAL
	.globl _FLKEY
	.globl _EMI0CN
	.globl _EIP2H
	.globl _EIP2
	.globl _EIP1H
	.globl _EIP1
	.globl _EIE2
	.globl _EIE1
	.globl _DPL
	.globl _DPH
	.globl _DEVICEID
	.globl _DERIVID
	.globl _CRC0ST
	.globl _CRC0IN
	.globl _CRC0FLIP
	.globl _CRC0DAT
	.globl _CRC0CNT
	.globl _CRC0CN1
	.globl _CRC0CN0
	.globl _CMP1MX
	.globl _CMP1MD
	.globl _CMP1CN1
	.globl _CMP1CN0
	.globl _CMP0MX
	.globl _CMP0MD
	.globl _CMP0CN1
	.globl _CMP0CN0
	.globl _CLKSEL
	.globl _CKCON1
	.globl _CKCON0
	.globl _B
	.globl _ADC0TK
	.globl _ADC0PWR
	.globl _ADC0MX
	.globl _ADC0LTL
	.globl _ADC0LTH
	.globl _ADC0L
	.globl _ADC0H
	.globl _ADC0GTL
	.globl _ADC0GTH
	.globl _ADC0CN1
	.globl _ADC0CN0
	.globl _ADC0CF
	.globl _ADC0AC
	.globl _ACC
	.globl _SHA_HMAC_KEY
	.globl _SHA_FLAGS
	.globl _u2f_init
	.globl _u2f_response_writeback
	.globl _u2f_response_flush
	.globl _u2f_response_start
	.globl _u2f_get_user_feedback
	.globl _u2f_sha256_start
	.globl _u2f_sha256_update
	.globl _u2f_sha256_finish
	.globl _u2f_ecdsa_sign
	.globl _u2f_new_keypair
	.globl _u2f_load_key
	.globl _u2f_appid_eq
	.globl _u2f_count
	.globl _u2f_get_attestation_cert
	.globl _u2f_attestation_cert_size
	.globl _set_response_length
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$ADC0AC$0$0 == 0x00b3
_ADC0AC	=	0x00b3
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC0CN0$0$0 == 0x00e8
_ADC0CN0	=	0x00e8
G$ADC0CN1$0$0 == 0x00b2
_ADC0CN1	=	0x00b2
G$ADC0GTH$0$0 == 0x00c4
_ADC0GTH	=	0x00c4
G$ADC0GTL$0$0 == 0x00c3
_ADC0GTL	=	0x00c3
G$ADC0H$0$0 == 0x00be
_ADC0H	=	0x00be
G$ADC0L$0$0 == 0x00bd
_ADC0L	=	0x00bd
G$ADC0LTH$0$0 == 0x00c6
_ADC0LTH	=	0x00c6
G$ADC0LTL$0$0 == 0x00c5
_ADC0LTL	=	0x00c5
G$ADC0MX$0$0 == 0x00bb
_ADC0MX	=	0x00bb
G$ADC0PWR$0$0 == 0x00df
_ADC0PWR	=	0x00df
G$ADC0TK$0$0 == 0x00b9
_ADC0TK	=	0x00b9
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$CKCON0$0$0 == 0x008e
_CKCON0	=	0x008e
G$CKCON1$0$0 == 0x00a6
_CKCON1	=	0x00a6
G$CLKSEL$0$0 == 0x00a9
_CLKSEL	=	0x00a9
G$CMP0CN0$0$0 == 0x009b
_CMP0CN0	=	0x009b
G$CMP0CN1$0$0 == 0x0099
_CMP0CN1	=	0x0099
G$CMP0MD$0$0 == 0x009d
_CMP0MD	=	0x009d
G$CMP0MX$0$0 == 0x009f
_CMP0MX	=	0x009f
G$CMP1CN0$0$0 == 0x00bf
_CMP1CN0	=	0x00bf
G$CMP1CN1$0$0 == 0x00ac
_CMP1CN1	=	0x00ac
G$CMP1MD$0$0 == 0x00ab
_CMP1MD	=	0x00ab
G$CMP1MX$0$0 == 0x00aa
_CMP1MX	=	0x00aa
G$CRC0CN0$0$0 == 0x00ce
_CRC0CN0	=	0x00ce
G$CRC0CN1$0$0 == 0x0086
_CRC0CN1	=	0x0086
G$CRC0CNT$0$0 == 0x00d3
_CRC0CNT	=	0x00d3
G$CRC0DAT$0$0 == 0x00de
_CRC0DAT	=	0x00de
G$CRC0FLIP$0$0 == 0x00cf
_CRC0FLIP	=	0x00cf
G$CRC0IN$0$0 == 0x00dd
_CRC0IN	=	0x00dd
G$CRC0ST$0$0 == 0x00d2
_CRC0ST	=	0x00d2
G$DERIVID$0$0 == 0x00ad
_DERIVID	=	0x00ad
G$DEVICEID$0$0 == 0x00b5
_DEVICEID	=	0x00b5
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00ce
_EIE2	=	0x00ce
G$EIP1$0$0 == 0x00f3
_EIP1	=	0x00f3
G$EIP1H$0$0 == 0x00f5
_EIP1H	=	0x00f5
G$EIP2$0$0 == 0x00f4
_EIP2	=	0x00f4
G$EIP2H$0$0 == 0x00f6
_EIP2H	=	0x00f6
G$EMI0CN$0$0 == 0x00e7
_EMI0CN	=	0x00e7
G$FLKEY$0$0 == 0x00b7
_FLKEY	=	0x00b7
G$HFO0CAL$0$0 == 0x00c7
_HFO0CAL	=	0x00c7
G$HFO1CAL$0$0 == 0x00d6
_HFO1CAL	=	0x00d6
G$HFOCN$0$0 == 0x00ef
_HFOCN	=	0x00ef
G$I2C0CN0$0$0 == 0x00ba
_I2C0CN0	=	0x00ba
G$I2C0DIN$0$0 == 0x00bc
_I2C0DIN	=	0x00bc
G$I2C0DOUT$0$0 == 0x00bb
_I2C0DOUT	=	0x00bb
G$I2C0FCN0$0$0 == 0x00ad
_I2C0FCN0	=	0x00ad
G$I2C0FCN1$0$0 == 0x00ab
_I2C0FCN1	=	0x00ab
G$I2C0FCT$0$0 == 0x00f5
_I2C0FCT	=	0x00f5
G$I2C0SLAD$0$0 == 0x00bd
_I2C0SLAD	=	0x00bd
G$I2C0STAT$0$0 == 0x00b9
_I2C0STAT	=	0x00b9
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$IPH$0$0 == 0x00f2
_IPH	=	0x00f2
G$IT01CF$0$0 == 0x00e4
_IT01CF	=	0x00e4
G$LFO0CN$0$0 == 0x00b1
_LFO0CN	=	0x00b1
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$P0MASK$0$0 == 0x00fe
_P0MASK	=	0x00fe
G$P0MAT$0$0 == 0x00fd
_P0MAT	=	0x00fd
G$P0MDIN$0$0 == 0x00f1
_P0MDIN	=	0x00f1
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P0SKIP$0$0 == 0x00d4
_P0SKIP	=	0x00d4
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$P1MASK$0$0 == 0x00ee
_P1MASK	=	0x00ee
G$P1MAT$0$0 == 0x00ed
_P1MAT	=	0x00ed
G$P1MDIN$0$0 == 0x00f2
_P1MDIN	=	0x00f2
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$P1SKIP$0$0 == 0x00d5
_P1SKIP	=	0x00d5
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$P2MASK$0$0 == 0x00fc
_P2MASK	=	0x00fc
G$P2MAT$0$0 == 0x00fb
_P2MAT	=	0x00fb
G$P2MDIN$0$0 == 0x00f3
_P2MDIN	=	0x00f3
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$P2SKIP$0$0 == 0x00cc
_P2SKIP	=	0x00cc
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$P3MDIN$0$0 == 0x00f4
_P3MDIN	=	0x00f4
G$P3MDOUT$0$0 == 0x009c
_P3MDOUT	=	0x009c
G$PCA0CENT$0$0 == 0x009e
_PCA0CENT	=	0x009e
G$PCA0CLR$0$0 == 0x009c
_PCA0CLR	=	0x009c
G$PCA0CN0$0$0 == 0x00d8
_PCA0CN0	=	0x00d8
G$PCA0CPH0$0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$PCA0CPH1$0$0 == 0x00ea
_PCA0CPH1	=	0x00ea
G$PCA0CPH2$0$0 == 0x00ec
_PCA0CPH2	=	0x00ec
G$PCA0CPL0$0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA0CPL1$0$0 == 0x00e9
_PCA0CPL1	=	0x00e9
G$PCA0CPL2$0$0 == 0x00eb
_PCA0CPL2	=	0x00eb
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0H$0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA0L$0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0POL$0$0 == 0x0096
_PCA0POL	=	0x0096
G$PCA0PWM$0$0 == 0x00f7
_PCA0PWM	=	0x00f7
G$PCON0$0$0 == 0x0087
_PCON0	=	0x0087
G$PCON1$0$0 == 0x009a
_PCON1	=	0x009a
G$PFE0CN$0$0 == 0x00c1
_PFE0CN	=	0x00c1
G$PRTDRV$0$0 == 0x00f6
_PRTDRV	=	0x00f6
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$REG0CN$0$0 == 0x00c9
_REG0CN	=	0x00c9
G$REG1CN$0$0 == 0x00c6
_REG1CN	=	0x00c6
G$REVID$0$0 == 0x00b6
_REVID	=	0x00b6
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$SBCON1$0$0 == 0x0094
_SBCON1	=	0x0094
G$SBRLH1$0$0 == 0x0096
_SBRLH1	=	0x0096
G$SBRLL1$0$0 == 0x0095
_SBRLL1	=	0x0095
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SBUF1$0$0 == 0x0092
_SBUF1	=	0x0092
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SCON1$0$0 == 0x00c8
_SCON1	=	0x00c8
G$SFRPAGE$0$0 == 0x00a7
_SFRPAGE	=	0x00a7
G$SFRPGCN$0$0 == 0x00cf
_SFRPGCN	=	0x00cf
G$SFRSTACK$0$0 == 0x00d7
_SFRSTACK	=	0x00d7
G$SMB0ADM$0$0 == 0x00d6
_SMB0ADM	=	0x00d6
G$SMB0ADR$0$0 == 0x00d7
_SMB0ADR	=	0x00d7
G$SMB0CF$0$0 == 0x00c1
_SMB0CF	=	0x00c1
G$SMB0CN0$0$0 == 0x00c0
_SMB0CN0	=	0x00c0
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$SMB0FCN0$0$0 == 0x00c3
_SMB0FCN0	=	0x00c3
G$SMB0FCN1$0$0 == 0x00c4
_SMB0FCN1	=	0x00c4
G$SMB0FCT$0$0 == 0x00ef
_SMB0FCT	=	0x00ef
G$SMB0RXLN$0$0 == 0x00c5
_SMB0RXLN	=	0x00c5
G$SMB0TC$0$0 == 0x00ac
_SMB0TC	=	0x00ac
G$SMOD1$0$0 == 0x0093
_SMOD1	=	0x0093
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$SPI0CFG$0$0 == 0x00a1
_SPI0CFG	=	0x00a1
G$SPI0CKR$0$0 == 0x00a2
_SPI0CKR	=	0x00a2
G$SPI0CN0$0$0 == 0x00f8
_SPI0CN0	=	0x00f8
G$SPI0DAT$0$0 == 0x00a3
_SPI0DAT	=	0x00a3
G$SPI0FCN0$0$0 == 0x009a
_SPI0FCN0	=	0x009a
G$SPI0FCN1$0$0 == 0x009b
_SPI0FCN1	=	0x009b
G$SPI0FCT$0$0 == 0x00f7
_SPI0FCT	=	0x00f7
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TMR2CN0$0$0 == 0x00c8
_TMR2CN0	=	0x00c8
G$TMR2CN1$0$0 == 0x00fd
_TMR2CN1	=	0x00fd
G$TMR2H$0$0 == 0x00cd
_TMR2H	=	0x00cd
G$TMR2L$0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TMR2RLH$0$0 == 0x00cb
_TMR2RLH	=	0x00cb
G$TMR2RLL$0$0 == 0x00ca
_TMR2RLL	=	0x00ca
G$TMR3CN0$0$0 == 0x0091
_TMR3CN0	=	0x0091
G$TMR3CN1$0$0 == 0x00fe
_TMR3CN1	=	0x00fe
G$TMR3H$0$0 == 0x0095
_TMR3H	=	0x0095
G$TMR3L$0$0 == 0x0094
_TMR3L	=	0x0094
G$TMR3RLH$0$0 == 0x0093
_TMR3RLH	=	0x0093
G$TMR3RLL$0$0 == 0x0092
_TMR3RLL	=	0x0092
G$TMR4CN0$0$0 == 0x0098
_TMR4CN0	=	0x0098
G$TMR4CN1$0$0 == 0x00ff
_TMR4CN1	=	0x00ff
G$TMR4H$0$0 == 0x00a5
_TMR4H	=	0x00a5
G$TMR4L$0$0 == 0x00a4
_TMR4L	=	0x00a4
G$TMR4RLH$0$0 == 0x00a3
_TMR4RLH	=	0x00a3
G$TMR4RLL$0$0 == 0x00a2
_TMR4RLL	=	0x00a2
G$UART1FCN0$0$0 == 0x009d
_UART1FCN0	=	0x009d
G$UART1FCN1$0$0 == 0x00d8
_UART1FCN1	=	0x00d8
G$UART1FCT$0$0 == 0x00fa
_UART1FCT	=	0x00fa
G$UART1LIN$0$0 == 0x009e
_UART1LIN	=	0x009e
G$USB0ADR$0$0 == 0x00ae
_USB0ADR	=	0x00ae
G$USB0AEC$0$0 == 0x00b2
_USB0AEC	=	0x00b2
G$USB0CDCF$0$0 == 0x00b6
_USB0CDCF	=	0x00b6
G$USB0CDCN$0$0 == 0x00be
_USB0CDCN	=	0x00be
G$USB0CDSTA$0$0 == 0x00bf
_USB0CDSTA	=	0x00bf
G$USB0CF$0$0 == 0x00b5
_USB0CF	=	0x00b5
G$USB0DAT$0$0 == 0x00af
_USB0DAT	=	0x00af
G$USB0XCN$0$0 == 0x00b3
_USB0XCN	=	0x00b3
G$VDM0CN$0$0 == 0x00ff
_VDM0CN	=	0x00ff
G$WDTCN$0$0 == 0x0097
_WDTCN	=	0x0097
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$ADC0GT$0$0 == 0x00c3
_ADC0GT	=	0x00c3
G$ADC0$0$0 == 0x00bd
_ADC0	=	0x00bd
G$ADC0LT$0$0 == 0x00c5
_ADC0LT	=	0x00c5
G$DP$0$0 == 0x0082
_DP	=	0x0082
G$PCA0CP0$0$0 == 0x00fb
_PCA0CP0	=	0x00fb
G$PCA0CP1$0$0 == 0x00e9
_PCA0CP1	=	0x00e9
G$PCA0CP2$0$0 == 0x00eb
_PCA0CP2	=	0x00eb
G$PCA0$0$0 == 0x00f9
_PCA0	=	0x00f9
G$SBRL1$0$0 == 0x0095
_SBRL1	=	0x0095
G$TMR2$0$0 == 0x00cc
_TMR2	=	0x00cc
G$TMR2RL$0$0 == 0x00ca
_TMR2RL	=	0x00ca
G$TMR3$0$0 == 0x0094
_TMR3	=	0x0094
G$TMR3RL$0$0 == 0x0092
_TMR3RL	=	0x0092
G$TMR4$0$0 == 0x00a4
_TMR4	=	0x00a4
G$TMR4RL$0$0 == 0x00a2
_TMR4RL	=	0x00a2
G$_XPAGE$0$0 == 0x00aa
__XPAGE	=	0x00aa
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ACC_ACC0$0$0 == 0x00e0
_ACC_ACC0	=	0x00e0
G$ACC_ACC1$0$0 == 0x00e1
_ACC_ACC1	=	0x00e1
G$ACC_ACC2$0$0 == 0x00e2
_ACC_ACC2	=	0x00e2
G$ACC_ACC3$0$0 == 0x00e3
_ACC_ACC3	=	0x00e3
G$ACC_ACC4$0$0 == 0x00e4
_ACC_ACC4	=	0x00e4
G$ACC_ACC5$0$0 == 0x00e5
_ACC_ACC5	=	0x00e5
G$ACC_ACC6$0$0 == 0x00e6
_ACC_ACC6	=	0x00e6
G$ACC_ACC7$0$0 == 0x00e7
_ACC_ACC7	=	0x00e7
G$ADC0CN0_ADCM0$0$0 == 0x00e8
_ADC0CN0_ADCM0	=	0x00e8
G$ADC0CN0_ADCM1$0$0 == 0x00e9
_ADC0CN0_ADCM1	=	0x00e9
G$ADC0CN0_ADCM2$0$0 == 0x00ea
_ADC0CN0_ADCM2	=	0x00ea
G$ADC0CN0_ADWINT$0$0 == 0x00eb
_ADC0CN0_ADWINT	=	0x00eb
G$ADC0CN0_ADBUSY$0$0 == 0x00ec
_ADC0CN0_ADBUSY	=	0x00ec
G$ADC0CN0_ADINT$0$0 == 0x00ed
_ADC0CN0_ADINT	=	0x00ed
G$ADC0CN0_ADBMEN$0$0 == 0x00ee
_ADC0CN0_ADBMEN	=	0x00ee
G$ADC0CN0_ADEN$0$0 == 0x00ef
_ADC0CN0_ADEN	=	0x00ef
G$B_B0$0$0 == 0x00f0
_B_B0	=	0x00f0
G$B_B1$0$0 == 0x00f1
_B_B1	=	0x00f1
G$B_B2$0$0 == 0x00f2
_B_B2	=	0x00f2
G$B_B3$0$0 == 0x00f3
_B_B3	=	0x00f3
G$B_B4$0$0 == 0x00f4
_B_B4	=	0x00f4
G$B_B5$0$0 == 0x00f5
_B_B5	=	0x00f5
G$B_B6$0$0 == 0x00f6
_B_B6	=	0x00f6
G$B_B7$0$0 == 0x00f7
_B_B7	=	0x00f7
G$IE_EX0$0$0 == 0x00a8
_IE_EX0	=	0x00a8
G$IE_ET0$0$0 == 0x00a9
_IE_ET0	=	0x00a9
G$IE_EX1$0$0 == 0x00aa
_IE_EX1	=	0x00aa
G$IE_ET1$0$0 == 0x00ab
_IE_ET1	=	0x00ab
G$IE_ES0$0$0 == 0x00ac
_IE_ES0	=	0x00ac
G$IE_ET2$0$0 == 0x00ad
_IE_ET2	=	0x00ad
G$IE_ESPI0$0$0 == 0x00ae
_IE_ESPI0	=	0x00ae
G$IE_EA$0$0 == 0x00af
_IE_EA	=	0x00af
G$IP_PX0$0$0 == 0x00b8
_IP_PX0	=	0x00b8
G$IP_PT0$0$0 == 0x00b9
_IP_PT0	=	0x00b9
G$IP_PX1$0$0 == 0x00ba
_IP_PX1	=	0x00ba
G$IP_PT1$0$0 == 0x00bb
_IP_PT1	=	0x00bb
G$IP_PS0$0$0 == 0x00bc
_IP_PS0	=	0x00bc
G$IP_PT2$0$0 == 0x00bd
_IP_PT2	=	0x00bd
G$IP_PSPI0$0$0 == 0x00be
_IP_PSPI0	=	0x00be
G$P0_B0$0$0 == 0x0080
_P0_B0	=	0x0080
G$P0_B1$0$0 == 0x0081
_P0_B1	=	0x0081
G$P0_B2$0$0 == 0x0082
_P0_B2	=	0x0082
G$P0_B3$0$0 == 0x0083
_P0_B3	=	0x0083
G$P0_B4$0$0 == 0x0084
_P0_B4	=	0x0084
G$P0_B5$0$0 == 0x0085
_P0_B5	=	0x0085
G$P0_B6$0$0 == 0x0086
_P0_B6	=	0x0086
G$P0_B7$0$0 == 0x0087
_P0_B7	=	0x0087
G$P1_B0$0$0 == 0x0090
_P1_B0	=	0x0090
G$P1_B1$0$0 == 0x0091
_P1_B1	=	0x0091
G$P1_B2$0$0 == 0x0092
_P1_B2	=	0x0092
G$P1_B3$0$0 == 0x0093
_P1_B3	=	0x0093
G$P1_B4$0$0 == 0x0094
_P1_B4	=	0x0094
G$P1_B5$0$0 == 0x0095
_P1_B5	=	0x0095
G$P1_B6$0$0 == 0x0096
_P1_B6	=	0x0096
G$P1_B7$0$0 == 0x0097
_P1_B7	=	0x0097
G$P2_B0$0$0 == 0x00a0
_P2_B0	=	0x00a0
G$P2_B1$0$0 == 0x00a1
_P2_B1	=	0x00a1
G$P2_B2$0$0 == 0x00a2
_P2_B2	=	0x00a2
G$P2_B3$0$0 == 0x00a3
_P2_B3	=	0x00a3
G$P3_B0$0$0 == 0x00b0
_P3_B0	=	0x00b0
G$P3_B1$0$0 == 0x00b1
_P3_B1	=	0x00b1
G$PCA0CN0_CCF0$0$0 == 0x00d8
_PCA0CN0_CCF0	=	0x00d8
G$PCA0CN0_CCF1$0$0 == 0x00d9
_PCA0CN0_CCF1	=	0x00d9
G$PCA0CN0_CCF2$0$0 == 0x00da
_PCA0CN0_CCF2	=	0x00da
G$PCA0CN0_CR$0$0 == 0x00de
_PCA0CN0_CR	=	0x00de
G$PCA0CN0_CF$0$0 == 0x00df
_PCA0CN0_CF	=	0x00df
G$PSW_PARITY$0$0 == 0x00d0
_PSW_PARITY	=	0x00d0
G$PSW_F1$0$0 == 0x00d1
_PSW_F1	=	0x00d1
G$PSW_OV$0$0 == 0x00d2
_PSW_OV	=	0x00d2
G$PSW_RS0$0$0 == 0x00d3
_PSW_RS0	=	0x00d3
G$PSW_RS1$0$0 == 0x00d4
_PSW_RS1	=	0x00d4
G$PSW_F0$0$0 == 0x00d5
_PSW_F0	=	0x00d5
G$PSW_AC$0$0 == 0x00d6
_PSW_AC	=	0x00d6
G$PSW_CY$0$0 == 0x00d7
_PSW_CY	=	0x00d7
G$SCON0_RI$0$0 == 0x0098
_SCON0_RI	=	0x0098
G$SCON0_TI$0$0 == 0x0099
_SCON0_TI	=	0x0099
G$SCON0_RB8$0$0 == 0x009a
_SCON0_RB8	=	0x009a
G$SCON0_TB8$0$0 == 0x009b
_SCON0_TB8	=	0x009b
G$SCON0_REN$0$0 == 0x009c
_SCON0_REN	=	0x009c
G$SCON0_MCE$0$0 == 0x009d
_SCON0_MCE	=	0x009d
G$SCON0_SMODE$0$0 == 0x009f
_SCON0_SMODE	=	0x009f
G$SCON1_RI$0$0 == 0x00c8
_SCON1_RI	=	0x00c8
G$SCON1_TI$0$0 == 0x00c9
_SCON1_TI	=	0x00c9
G$SCON1_RBX$0$0 == 0x00ca
_SCON1_RBX	=	0x00ca
G$SCON1_TBX$0$0 == 0x00cb
_SCON1_TBX	=	0x00cb
G$SCON1_REN$0$0 == 0x00cc
_SCON1_REN	=	0x00cc
G$SCON1_PERR$0$0 == 0x00ce
_SCON1_PERR	=	0x00ce
G$SCON1_OVR$0$0 == 0x00cf
_SCON1_OVR	=	0x00cf
G$SMB0CN0_SI$0$0 == 0x00c0
_SMB0CN0_SI	=	0x00c0
G$SMB0CN0_ACK$0$0 == 0x00c1
_SMB0CN0_ACK	=	0x00c1
G$SMB0CN0_ARBLOST$0$0 == 0x00c2
_SMB0CN0_ARBLOST	=	0x00c2
G$SMB0CN0_ACKRQ$0$0 == 0x00c3
_SMB0CN0_ACKRQ	=	0x00c3
G$SMB0CN0_STO$0$0 == 0x00c4
_SMB0CN0_STO	=	0x00c4
G$SMB0CN0_STA$0$0 == 0x00c5
_SMB0CN0_STA	=	0x00c5
G$SMB0CN0_TXMODE$0$0 == 0x00c6
_SMB0CN0_TXMODE	=	0x00c6
G$SMB0CN0_MASTER$0$0 == 0x00c7
_SMB0CN0_MASTER	=	0x00c7
G$SPI0CN0_SPIEN$0$0 == 0x00f8
_SPI0CN0_SPIEN	=	0x00f8
G$SPI0CN0_TXNF$0$0 == 0x00f9
_SPI0CN0_TXNF	=	0x00f9
G$SPI0CN0_NSSMD0$0$0 == 0x00fa
_SPI0CN0_NSSMD0	=	0x00fa
G$SPI0CN0_NSSMD1$0$0 == 0x00fb
_SPI0CN0_NSSMD1	=	0x00fb
G$SPI0CN0_RXOVRN$0$0 == 0x00fc
_SPI0CN0_RXOVRN	=	0x00fc
G$SPI0CN0_MODF$0$0 == 0x00fd
_SPI0CN0_MODF	=	0x00fd
G$SPI0CN0_WCOL$0$0 == 0x00fe
_SPI0CN0_WCOL	=	0x00fe
G$SPI0CN0_SPIF$0$0 == 0x00ff
_SPI0CN0_SPIF	=	0x00ff
G$TCON_IT0$0$0 == 0x0088
_TCON_IT0	=	0x0088
G$TCON_IE0$0$0 == 0x0089
_TCON_IE0	=	0x0089
G$TCON_IT1$0$0 == 0x008a
_TCON_IT1	=	0x008a
G$TCON_IE1$0$0 == 0x008b
_TCON_IE1	=	0x008b
G$TCON_TR0$0$0 == 0x008c
_TCON_TR0	=	0x008c
G$TCON_TF0$0$0 == 0x008d
_TCON_TF0	=	0x008d
G$TCON_TR1$0$0 == 0x008e
_TCON_TR1	=	0x008e
G$TCON_TF1$0$0 == 0x008f
_TCON_TF1	=	0x008f
G$TMR2CN0_T2XCLK0$0$0 == 0x00c8
_TMR2CN0_T2XCLK0	=	0x00c8
G$TMR2CN0_T2XCLK1$0$0 == 0x00c9
_TMR2CN0_T2XCLK1	=	0x00c9
G$TMR2CN0_TR2$0$0 == 0x00ca
_TMR2CN0_TR2	=	0x00ca
G$TMR2CN0_T2SPLIT$0$0 == 0x00cb
_TMR2CN0_T2SPLIT	=	0x00cb
G$TMR2CN0_TF2CEN$0$0 == 0x00cc
_TMR2CN0_TF2CEN	=	0x00cc
G$TMR2CN0_TF2LEN$0$0 == 0x00cd
_TMR2CN0_TF2LEN	=	0x00cd
G$TMR2CN0_TF2L$0$0 == 0x00ce
_TMR2CN0_TF2L	=	0x00ce
G$TMR2CN0_TF2H$0$0 == 0x00cf
_TMR2CN0_TF2H	=	0x00cf
G$TMR4CN0_T4XCLK0$0$0 == 0x0098
_TMR4CN0_T4XCLK0	=	0x0098
G$TMR4CN0_T4XCLK1$0$0 == 0x0099
_TMR4CN0_T4XCLK1	=	0x0099
G$TMR4CN0_TR4$0$0 == 0x009a
_TMR4CN0_TR4	=	0x009a
G$TMR4CN0_T4SPLIT$0$0 == 0x009b
_TMR4CN0_T4SPLIT	=	0x009b
G$TMR4CN0_TF4CEN$0$0 == 0x009c
_TMR4CN0_TF4CEN	=	0x009c
G$TMR4CN0_TF4LEN$0$0 == 0x009d
_TMR4CN0_TF4LEN	=	0x009d
G$TMR4CN0_TF4L$0$0 == 0x009e
_TMR4CN0_TF4L	=	0x009e
G$TMR4CN0_TF4H$0$0 == 0x009f
_TMR4CN0_TF4H	=	0x009f
G$UART1FCN1_RIE$0$0 == 0x00d8
_UART1FCN1_RIE	=	0x00d8
G$UART1FCN1_RXTO0$0$0 == 0x00d9
_UART1FCN1_RXTO0	=	0x00d9
G$UART1FCN1_RXTO1$0$0 == 0x00da
_UART1FCN1_RXTO1	=	0x00da
G$UART1FCN1_RFRQ$0$0 == 0x00db
_UART1FCN1_RFRQ	=	0x00db
G$UART1FCN1_TIE$0$0 == 0x00dc
_UART1FCN1_TIE	=	0x00dc
G$UART1FCN1_TXHOLD$0$0 == 0x00dd
_UART1FCN1_TXHOLD	=	0x00dd
G$UART1FCN1_TXNF$0$0 == 0x00de
_UART1FCN1_TXNF	=	0x00de
G$UART1FCN1_TFRQ$0$0 == 0x00df
_UART1FCN1_TFRQ	=	0x00df
G$U2F_BUTTON$0$0 == 0x0095
_U2F_BUTTON	=	0x0095
G$U2F_BUTTON_VAL$0$0 == 0x0096
_U2F_BUTTON_VAL	=	0x0096
G$U2F_RED$0$0 == 0x0091
_U2F_RED	=	0x0091
G$U2F_GREEN$0$0 == 0x0090
_U2F_GREEN	=	0x0090
G$U2F_BLUE$0$0 == 0x0087
_U2F_BLUE	=	0x0087
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fu2f_atecc$res$0$0==.
_res:
	.ds 64
Fu2f_atecc$shabuf$0$0==.
_shabuf:
	.ds 70
Fu2f_atecc$res_digest$0$0==.
_res_digest:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
Fu2f_atecc$resbuf$0$0==.
_resbuf:
	.ds 3
Fu2f_atecc$resseq$0$0==.
_resseq:
	.ds 1
Fu2f_atecc$serious$0$0==.
_serious:
	.ds 1
Fu2f_atecc$shaoffset$0$0==.
_shaoffset:
	.ds 1
G$SHA_FLAGS$0$0==.
_SHA_FLAGS::
	.ds 1
G$SHA_HMAC_KEY$0$0==.
_SHA_HMAC_KEY::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_init'
;------------------------------------------------------------
	G$u2f_init$0$0 ==.
	C$u2f_atecc.c$48$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:48: void u2f_init()
;	-----------------------------------------
;	 function u2f_init
;	-----------------------------------------
_u2f_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$u2f_atecc.c$51$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:51: }
	C$u2f_atecc.c$51$0$0 ==.
	XG$u2f_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_response_writeback'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -4
;buf                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$u2f_response_writeback$0$0 ==.
	C$u2f_atecc.c$53$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:53: void u2f_response_writeback(uint8_t * buf, uint16_t len)
;	-----------------------------------------
;	 function u2f_response_writeback
;	-----------------------------------------
_u2f_response_writeback:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$u2f_atecc.c$55$1$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:55: u2f_hid_writeback(buf, len);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_u2f_hid_writeback
	dec	sp
	dec	sp
	pop	_bp
	C$u2f_atecc.c$56$1$134 ==.
	XG$u2f_response_writeback$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_response_flush'
;------------------------------------------------------------
	G$u2f_response_flush$0$0 ==.
	C$u2f_atecc.c$58$1$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:58: void u2f_response_flush()
;	-----------------------------------------
;	 function u2f_response_flush
;	-----------------------------------------
_u2f_response_flush:
	C$u2f_atecc.c$60$1$135 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:60: watchdog();
	mov	_WDTCN,#0xa5
	C$u2f_atecc.c$61$1$135 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:61: u2f_hid_flush();
	lcall	_u2f_hid_flush
	C$u2f_atecc.c$62$1$135 ==.
	XG$u2f_response_flush$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_response_start'
;------------------------------------------------------------
	G$u2f_response_start$0$0 ==.
	C$u2f_atecc.c$64$1$135 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:64: void u2f_response_start()
;	-----------------------------------------
;	 function u2f_response_start
;	-----------------------------------------
_u2f_response_start:
	C$u2f_atecc.c$66$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:66: watchdog();
	mov	_WDTCN,#0xa5
	C$u2f_atecc.c$67$1$136 ==.
	XG$u2f_response_start$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_get_user_feedback'
;------------------------------------------------------------
;t                         Allocated to stack - _bp +1
;------------------------------------------------------------
	G$u2f_get_user_feedback$0$0 ==.
	C$u2f_atecc.c$69$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:69: int8_t u2f_get_user_feedback()
;	-----------------------------------------
;	 function u2f_get_user_feedback
;	-----------------------------------------
_u2f_get_user_feedback:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	C$u2f_atecc.c$72$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:72: u2f_delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_u2f_delay
	C$u2f_atecc.c$73$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:73: t = get_ms();
	mov	r0,_bp
	inc	r0
	mov	@r0,__MS_
	inc	r0
	mov	@r0,(__MS_ + 1)
	inc	r0
	mov	@r0,(__MS_ + 2)
	inc	r0
	mov	@r0,(__MS_ + 3)
	C$u2f_atecc.c$74$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:74: while(U2F_BUTTON_IS_PRESSED()){}
00101$:
	jnb	_U2F_BUTTON,00101$
	C$u2f_atecc.c$75$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:75: while(!U2F_BUTTON_IS_PRESSED())
00109$:
	jnb	_U2F_BUTTON,00111$
	C$u2f_atecc.c$78$2$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:78: if (serious)
	mov	dptr,#_serious
	movx	a,@dptr
	mov	r3,a
	jz	00105$
	C$u2f_atecc.c$80$3$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:80: rgb_hex(U2F_DEFAULT_COLOR_ERROR);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x38
	lcall	_rgb
	dec	sp
	dec	sp
	sjmp	00106$
00105$:
	C$u2f_atecc.c$84$3$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:84: rgb_hex(U2F_DEFAULT_COLOR_INPUT);
	clr	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	dpl,#0x03
	lcall	_rgb
	dec	sp
	dec	sp
00106$:
	C$u2f_atecc.c$86$2$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:86: if (get_ms() - t > U2F_MS_USER_INPUT_WAIT)
	mov	r0,_bp
	inc	r0
	mov	a,__MS_
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,(__MS_ + 1)
	inc	r0
	subb	a,@r0
	mov	r3,a
	mov	a,(__MS_ + 2)
	inc	r0
	subb	a,@r0
	mov	r6,a
	mov	a,(__MS_ + 3)
	inc	r0
	subb	a,@r0
	mov	r7,a
	clr	c
	mov	a,#0xb8
	subb	a,r2
	mov	a,#0x0b
	subb	a,r3
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00111$
	C$u2f_atecc.c$88$2$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:88: watchdog();
	mov	_WDTCN,#0xa5
	sjmp	00109$
00111$:
	C$u2f_atecc.c$91$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:91: if (U2F_BUTTON_IS_PRESSED())
	jb	_U2F_BUTTON,00113$
	C$u2f_atecc.c$93$2$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:93: rgb_hex(U2F_DEFAULT_COLOR_INPUT_SUCCESS);
	mov	a,#0x25
	push	acc
	mov	a,#0x12
	push	acc
	mov	dpl,#0x00
	lcall	_rgb
	dec	sp
	dec	sp
	sjmp	00114$
00113$:
	C$u2f_atecc.c$97$2$143 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:97: rgb_hex(U2F_DEFAULT_COLOR_ERROR);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x38
	lcall	_rgb
	dec	sp
	dec	sp
	C$u2f_atecc.c$98$2$143 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:98: return 1;
	mov	dpl,#0x01
	sjmp	00115$
00114$:
	C$u2f_atecc.c$101$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:101: return 0;
	mov	dpl,#0x00
00115$:
	mov	sp,_bp
	pop	_bp
	C$u2f_atecc.c$102$1$137 ==.
	XG$u2f_get_user_feedback$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_sha256_start'
;------------------------------------------------------------
	G$u2f_sha256_start$0$0 ==.
	C$u2f_atecc.c$110$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:110: void u2f_sha256_start()
;	-----------------------------------------
;	 function u2f_sha256_start
;	-----------------------------------------
_u2f_sha256_start:
	C$u2f_atecc.c$112$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:112: shaoffset = 0;
	mov	dptr,#_shaoffset
	clr	a
	movx	@dptr,a
	C$u2f_atecc.c$115$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:115: shabuf, sizeof(shabuf), NULL);
	C$u2f_atecc.c$114$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:114: SHA_FLAGS, SHA_HMAC_KEY,NULL,0,
	mov	dptr,#_SHA_HMAC_KEY
	movx	a,@dptr
	mov	r7,a
	C$u2f_atecc.c$113$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:113: atecc_send_recv(ATECC_CMD_SHA,
	clr	a
	mov	r6,a
	push	acc
	push	acc
	push	acc
	mov	a,#0x46
	push	acc
	mov	a,#_shabuf
	push	acc
	mov	a,#(_shabuf >> 8)
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	ar7
	push	ar6
	mov	dptr,#_SHA_FLAGS
	movx	a,@dptr
	push	acc
	mov	dpl,#0x47
	lcall	_atecc_send_recv
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	C$u2f_atecc.c$116$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:116: SHA_HMAC_KEY = 0;
	mov	dptr,#_SHA_HMAC_KEY
	clr	a
	movx	@dptr,a
	C$u2f_atecc.c$117$1$144 ==.
	XG$u2f_sha256_start$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_sha256_update'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -3
;buf                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers 
;------------------------------------------------------------
	G$u2f_sha256_update$0$0 ==.
	C$u2f_atecc.c$120$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:120: void u2f_sha256_update(uint8_t * buf, uint8_t len)
;	-----------------------------------------
;	 function u2f_sha256_update
;	-----------------------------------------
_u2f_sha256_update:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$u2f_atecc.c$123$1$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:123: watchdog();
	mov	_WDTCN,#0xa5
	C$u2f_atecc.c$124$2$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:124: while(len--)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
00103$:
	mov	ar3,r4
	dec	r4
	mov	a,r3
	jnz	00118$
	ljmp	00106$
00118$:
	C$u2f_atecc.c$126$1$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:126: shabuf[shaoffset++] = *buf++;
	push	ar4
	mov	dptr,#_shaoffset
	movx	a,@dptr
	mov	r3,a
	inc	a
	movx	@dptr,a
	mov	a,r3
	add	a,#_shabuf
	mov	r3,a
	clr	a
	addc	a,#(_shabuf >> 8)
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r3
	mov	dph,r2
	mov	a,r4
	movx	@dptr,a
	C$u2f_atecc.c$127$2$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:127: if (shaoffset == 64)
	mov	dptr,#_shaoffset
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x40,00119$
	sjmp	00120$
00119$:
	pop	ar4
	sjmp	00103$
00120$:
	pop	ar4
	C$u2f_atecc.c$131$3$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:131: shabuf, sizeof(shabuf), NULL);
	C$u2f_atecc.c$130$3$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:130: ATECC_SHA_UPDATE, 64,shabuf,64,
	C$u2f_atecc.c$129$3$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:129: atecc_send_recv(ATECC_CMD_SHA,
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x46
	push	acc
	mov	a,#_shabuf
	push	acc
	mov	a,#(_shabuf >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#_shabuf
	push	acc
	mov	a,#(_shabuf >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,#0x47
	lcall	_atecc_send_recv
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$u2f_atecc.c$132$3$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:132: shaoffset = 0;
	mov	dptr,#_shaoffset
	clr	a
	movx	@dptr,a
	ljmp	00103$
00106$:
	pop	_bp
	C$u2f_atecc.c$135$1$146 ==.
	XG$u2f_sha256_update$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_sha256_finish'
;------------------------------------------------------------
	G$u2f_sha256_finish$0$0 ==.
	C$u2f_atecc.c$138$1$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:138: void u2f_sha256_finish()
;	-----------------------------------------
;	 function u2f_sha256_finish
;	-----------------------------------------
_u2f_sha256_finish:
	C$u2f_atecc.c$140$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:140: if (SHA_FLAGS == ATECC_SHA_START) SHA_FLAGS = ATECC_SHA_END;
	mov	dptr,#_SHA_FLAGS
	movx	a,@dptr
	jnz	00102$
	mov	dptr,#_SHA_FLAGS
	mov	a,#0x02
	movx	@dptr,a
00102$:
	C$u2f_atecc.c$143$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:143: shabuf, sizeof(shabuf), &res_digest);
	C$u2f_atecc.c$142$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:142: SHA_FLAGS, shaoffset,shabuf,shaoffset,
	mov	dptr,#_shaoffset
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	C$u2f_atecc.c$141$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:141: atecc_send_recv(ATECC_CMD_SHA,
	mov	a,#_res_digest
	push	acc
	mov	a,#(_res_digest >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#0x46
	push	acc
	mov	a,#_shabuf
	push	acc
	mov	a,#(_shabuf >> 8)
	push	acc
	clr	a
	push	acc
	push	ar7
	mov	a,#_shabuf
	push	acc
	mov	a,#(_shabuf >> 8)
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	mov	dptr,#_SHA_FLAGS
	movx	a,@dptr
	push	acc
	mov	dpl,#0x47
	lcall	_atecc_send_recv
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	C$u2f_atecc.c$144$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:144: SHA_FLAGS = ATECC_SHA_START;
	mov	dptr,#_SHA_FLAGS
	clr	a
	movx	@dptr,a
	C$u2f_atecc.c$145$1$149 ==.
	XG$u2f_sha256_finish$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atecc_prep_encryption'
;------------------------------------------------------------
;res                       Allocated to stack - _bp +1
;------------------------------------------------------------
	Fu2f_atecc$atecc_prep_encryption$0$0 ==.
	C$u2f_atecc.c$147$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:147: static int atecc_prep_encryption()
;	-----------------------------------------
;	 function atecc_prep_encryption
;	-----------------------------------------
_atecc_prep_encryption:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	C$u2f_atecc.c$150$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:150: memset(appdata.tmp,0,32);
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#_appdata
	mov	b,#0x40
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	C$u2f_atecc.c$153$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:153: appdata.tmp, 40, &res) != 0 )
	mov	r7,_bp
	inc	r7
	mov	ar4,r7
	mov	r5,#0x00
	mov	r6,#0x40
	C$u2f_atecc.c$152$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:152: appdata.tmp, 32,
	C$u2f_atecc.c$151$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:151: if( atecc_send_recv(ATECC_CMD_NONCE,ATECC_NONCE_TEMP_UPDATE,0,
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	mov	a,#0x28
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r6
	push	acc
	rr	a
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r6
	push	acc
	clr	a
	push	acc
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,#0x16
	lcall	_atecc_send_recv
	mov	r6,dpl
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar7
	mov	a,r6
	jz	00102$
	C$u2f_atecc.c$155$2$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:155: u2f_prints("pass through to tempkey failed\r\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_u2f_prints
	C$u2f_atecc.c$156$2$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:156: return -1;
	mov	dptr,#0xffff
	sjmp	00105$
00102$:
	C$u2f_atecc.c$160$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:160: appdata.tmp, 40, &res) != 0)
	mov	r6,#0x00
	mov	r5,#0x40
	C$u2f_atecc.c$158$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:158: if( atecc_send_recv(ATECC_CMD_GENDIG,
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x28
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r5
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x15
	lcall	_atecc_send_recv
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	mov	a,r7
	jz	00104$
	C$u2f_atecc.c$162$2$152 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:162: u2f_prints("GENDIG failed\r\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_u2f_prints
	C$u2f_atecc.c$163$2$152 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:163: return -1;
	mov	dptr,#0xffff
	sjmp	00105$
00104$:
	C$u2f_atecc.c$166$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:166: return 0;
	mov	dptr,#0x0000
00105$:
	mov	sp,_bp
	pop	_bp
	C$u2f_atecc.c$167$1$150 ==.
	XFu2f_atecc$atecc_prep_encryption$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compute_key_hash'
;------------------------------------------------------------
;mask                      Allocated to stack - _bp -5
;key                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Fu2f_atecc$compute_key_hash$0$0 ==.
	C$u2f_atecc.c$169$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:169: static void compute_key_hash(uint8_t * key, uint8_t * mask)
;	-----------------------------------------
;	 function compute_key_hash
;	-----------------------------------------
_compute_key_hash:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$u2f_atecc.c$172$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:172: memset(appdata.tmp,0,28);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x1c
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#_appdata
	mov	b,#0x40
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$u2f_atecc.c$173$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:173: memmove(appdata.tmp + 28, key, 36);
	mov	a,#0x24
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_appdata + 0x001c)
	mov	b,#0x40
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$u2f_atecc.c$175$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:175: u2f_sha256_start();
	lcall	_u2f_sha256_start
	C$u2f_atecc.c$177$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:177: u2f_sha256_update(mask,32);
	mov	a,#0x20
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f_atecc.c$180$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:180: appdata.tmp[0] = ATECC_CMD_PRIVWRITE;
	mov	_appdata,#0x46
	C$u2f_atecc.c$181$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:181: appdata.tmp[1] = ATECC_PRIVWRITE_ENC;
	mov	(_appdata + 0x0001),#0x40
	C$u2f_atecc.c$182$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:182: appdata.tmp[2] = 2;
	mov	(_appdata + 0x0002),#0x02
	C$u2f_atecc.c$183$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:183: appdata.tmp[3] = 0;
	mov	(_appdata + 0x0003),#0x00
	C$u2f_atecc.c$184$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:184: appdata.tmp[4] = 0xee;
	mov	(_appdata + 0x0004),#0xee
	C$u2f_atecc.c$185$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:185: appdata.tmp[5] = 0x01;
	mov	(_appdata + 0x0005),#0x01
	C$u2f_atecc.c$186$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:186: appdata.tmp[6] = 0x23;
	mov	(_appdata + 0x0006),#0x23
	C$u2f_atecc.c$188$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:188: u2f_sha256_update(appdata.tmp,28 + 36);
	mov	a,#0x40
	push	acc
	mov	dptr,#_appdata
	mov	b,#0x40
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f_atecc.c$189$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:189: u2f_sha256_finish();
	lcall	_u2f_sha256_finish
	pop	_bp
	C$u2f_atecc.c$190$1$154 ==.
	XFu2f_atecc$compute_key_hash$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atecc_privwrite'
;------------------------------------------------------------
;key                       Allocated to stack - _bp -5
;mask                      Allocated to stack - _bp -8
;digest                    Allocated to stack - _bp -11
;keyslot                   Allocated to registers r6 r7 
;res                       Allocated to stack - _bp +1
;i                         Allocated to registers r5 
;------------------------------------------------------------
	Fu2f_atecc$atecc_privwrite$0$0 ==.
	C$u2f_atecc.c$192$1$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:192: static int atecc_privwrite(int keyslot, uint8_t * key, uint8_t * mask, uint8_t * digest)
;	-----------------------------------------
;	 function atecc_privwrite
;	-----------------------------------------
_atecc_privwrite:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r6,dpl
	mov	r7,dph
	C$u2f_atecc.c$197$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:197: atecc_prep_encryption();
	push	ar7
	push	ar6
	lcall	_atecc_prep_encryption
	pop	ar6
	pop	ar7
	C$u2f_atecc.c$199$2$157 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:199: for (i=0; i<36; i++)
	mov	r5,#0x00
00104$:
	C$u2f_atecc.c$201$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:201: appdata.tmp[i] = key[i] ^ mask[i];
	push	ar6
	push	ar7
	mov	a,r5
	add	a,#_appdata
	mov	r1,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	xrl	a,r2
	mov	@r1,a
	C$u2f_atecc.c$199$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:199: for (i=0; i<36; i++)
	inc	r5
	cjne	r5,#0x24,00118$
00118$:
	pop	ar7
	pop	ar6
	jc	00104$
	C$u2f_atecc.c$203$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:203: memmove(appdata.tmp+36, digest, 32);
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar7
	push	ar6
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#(_appdata + 0x0024)
	mov	b,#0x40
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
	C$u2f_atecc.c$207$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:207: appdata.tmp, 40, &res) != 0)
	mov	r5,_bp
	inc	r5
	mov	r4,#0x00
	mov	r3,#0x40
	C$u2f_atecc.c$206$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:206: ATECC_PRIVWRITE_ENC, keyslot, appdata.tmp, 68,
	C$u2f_atecc.c$205$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:205: if( atecc_send_recv(ATECC_CMD_PRIVWRITE,
	push	ar5
	push	ar4
	push	ar3
	mov	a,#0x28
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r3
	push	acc
	mov	a,#0x44
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r3
	push	acc
	push	ar6
	push	ar7
	push	acc
	mov	dpl,#0x46
	lcall	_atecc_send_recv
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	mov	a,r7
	jz	00103$
	C$u2f_atecc.c$209$2$158 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:209: u2f_prints("PRIVWRITE failed\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_u2f_prints
	C$u2f_atecc.c$210$2$158 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:210: return -1;
	mov	dptr,#0xffff
	sjmp	00106$
00103$:
	C$u2f_atecc.c$212$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:212: return 0;
	mov	dptr,#0x0000
00106$:
	mov	sp,_bp
	pop	_bp
	C$u2f_atecc.c$213$1$156 ==.
	XFu2f_atecc$atecc_privwrite$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_ecdsa_sign'
;------------------------------------------------------------
;handle                    Allocated to stack - _bp -5
;appid                     Allocated to stack - _bp -8
;dest                      Allocated to registers r5 r6 r7 
;res                       Allocated to stack - _bp +1
;slot                      Allocated to registers r3 r4 
;------------------------------------------------------------
	G$u2f_ecdsa_sign$0$0 ==.
	C$u2f_atecc.c$216$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:216: int8_t u2f_ecdsa_sign(uint8_t * dest, uint8_t * handle, uint8_t * appid)
;	-----------------------------------------
;	 function u2f_ecdsa_sign
;	-----------------------------------------
_u2f_ecdsa_sign:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$u2f_atecc.c$219$1$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:219: uint16_t slot = U2F_TEMP_KEY_SLOT;
	mov	r3,#0x02
	mov	r4,#0x00
	C$u2f_atecc.c$220$1$160 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:220: if (handle == U2F_ATTESTATION_HANDLE)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	C$u2f_atecc.c$222$2$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:222: slot = U2F_ATTESTATION_KEY_SLOT;
	jnz	00102$
	mov	r3,#0x0f
	mov	r4,a
00102$:
	C$u2f_atecc.c$227$1$160 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:227: appdata.tmp, 70, &res) != 0)
	push	ar5
	push	ar6
	push	ar7
	mov	r2,_bp
	inc	r2
	mov	ar5,r2
	mov	r6,#0x00
	mov	r7,#0x40
	C$u2f_atecc.c$225$1$160 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:225: if( atecc_send_recv(ATECC_CMD_SIGN,
	push	ar6
	push	ar5
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x46
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r7
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	ar3
	push	ar4
	mov	a,#0x80
	push	acc
	mov	dpl,#0x41
	lcall	_atecc_send_recv
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar2
	pop	ar5
	pop	ar6
	mov	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00104$
	C$u2f_atecc.c$229$2$162 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:229: return -1;
	mov	dpl,#0xff
	sjmp	00105$
00104$:
	C$u2f_atecc.c$231$1$160 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:231: memmove(dest, res.buf, 64);
	mov	a,r2
	inc	a
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$u2f_atecc.c$232$1$160 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:232: return 0;
	mov	dpl,#0x00
00105$:
	mov	sp,_bp
	pop	_bp
	C$u2f_atecc.c$233$1$160 ==.
	XG$u2f_ecdsa_sign$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_new_keypair'
;------------------------------------------------------------
;appid                     Allocated to stack - _bp -5
;pubkey                    Allocated to stack - _bp -8
;handle                    Allocated to stack - _bp +1
;res                       Allocated to stack - _bp +11
;private_key               Allocated to stack - _bp +15
;i                         Allocated to registers r5 r3 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +5
;sloc2                     Allocated to stack - _bp +8
;------------------------------------------------------------
	G$u2f_new_keypair$0$0 ==.
	C$u2f_atecc.c$238$1$160 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:238: int8_t u2f_new_keypair(uint8_t * handle, uint8_t * appid, uint8_t * pubkey)
;	-----------------------------------------
;	 function u2f_new_keypair
;	-----------------------------------------
_u2f_new_keypair:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x2f
	mov	sp,a
	C$u2f_atecc.c$244$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:244: watchdog();
	mov	_WDTCN,#0xa5
	C$u2f_atecc.c$249$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:249: sizeof(appdata.tmp), &res) != 0 )
	mov	a,_bp
	add	a,#0x0b
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	C$u2f_atecc.c$248$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:248: appdata.tmp,
	C$u2f_atecc.c$246$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:246: if (atecc_send_recv(ATECC_CMD_RNG,ATECC_RNG_P1,ATECC_RNG_P2,
	push	ar4
	push	ar2
	push	ar3
	push	ar7
	mov	a,#0x46
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r7
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x1b
	lcall	_atecc_send_recv
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar4
	mov	a,r7
	jz	00102$
	C$u2f_atecc.c$251$2$165 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:251: return -1;
	mov	dpl,#0xff
	ljmp	00110$
00102$:
	C$u2f_atecc.c$254$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:254: SHA_HMAC_KEY = U2F_MASTER_KEY_SLOT;
	mov	dptr,#_SHA_HMAC_KEY
	mov	a,#0x01
	movx	@dptr,a
	C$u2f_atecc.c$255$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:255: SHA_FLAGS = ATECC_SHA_HMACSTART;
	mov	dptr,#_SHA_FLAGS
	mov	a,#0x04
	movx	@dptr,a
	C$u2f_atecc.c$256$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:256: u2f_sha256_start();
	push	ar4
	lcall	_u2f_sha256_start
	C$u2f_atecc.c$257$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:257: u2f_sha256_update(appid,32);
	mov	a,#0x20
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_u2f_sha256_update
	dec	sp
	pop	ar4
	C$u2f_atecc.c$258$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:258: u2f_sha256_update(res.buf,4);
	mov	a,r4
	inc	a
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	push	ar4
	push	ar1
	mov	a,#0x04
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f_atecc.c$259$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:259: SHA_FLAGS = ATECC_SHA_HMACEND;
	mov	dptr,#_SHA_FLAGS
	mov	a,#0x05
	movx	@dptr,a
	C$u2f_atecc.c$260$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:260: u2f_sha256_finish();
	lcall	_u2f_sha256_finish
	pop	ar1
	C$u2f_atecc.c$262$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:262: memmove(handle, res.buf, 4);  // size of key handle must be 36
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar4
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$u2f_atecc.c$264$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:264: memset(private_key,0,4);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	C$u2f_atecc.c$265$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:265: memmove(private_key+4, res_digest.buf, 32);
	mov	dptr,#(_res_digest + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar4
	push	ar1
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
	pop	ar4
	C$u2f_atecc.c$267$2$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:267: for (i=4; i<36; i++)
	mov	r5,#0x04
	mov	r3,#0x00
	C$u2f_atecc.c$292$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:292: return 0;
	pop	ar4
	C$u2f_atecc.c$267$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:267: for (i=4; i<36; i++)
00108$:
	C$u2f_atecc.c$269$2$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:269: private_key[i] ^= RMASK[i];
	push	ar1
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,r5
	add	a,@r1
	mov	r0,a
	pop	ar1
	mov	ar7,@r0
	mov	a,r5
	add	a,#_RMASK
	mov	dpl,a
	mov	a,r3
	addc	a,#(_RMASK >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	xrl	a,r7
	mov	@r0,a
	C$u2f_atecc.c$267$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:267: for (i=4; i<36; i++)
	inc	r5
	cjne	r5,#0x00,00129$
	inc	r3
00129$:
	clr	c
	mov	a,r5
	subb	a,#0x24
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00108$
	C$u2f_atecc.c$271$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:271: watchdog();
	push	ar1
	mov	_WDTCN,#0xa5
	C$u2f_atecc.c$272$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:272: compute_key_hash(private_key,  WMASK);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar4
	push	ar1
	mov	a,#_WMASK
	push	acc
	mov	a,#(_WMASK >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_compute_key_hash
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	C$u2f_atecc.c$273$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:273: memmove(handle+4, res_digest.buf, 32);  // size of key handle must be 36
	mov	dptr,#(_res_digest + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar1
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$u2f_atecc.c$276$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:276: if ( atecc_privwrite(U2F_TEMP_KEY_SLOT, private_key, WMASK, handle+4) != 0)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#_WMASK
	push	acc
	mov	a,#(_WMASK >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#0x0002
	lcall	_atecc_privwrite
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar1
	mov	a,r6
	orl	a,r7
	jz	00105$
	C$u2f_atecc.c$278$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:278: return -1;
	mov	dpl,#0xff
	ljmp	00110$
00105$:
	C$u2f_atecc.c$281$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:281: memset(private_key,0,36);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar4
	push	ar1
	mov	a,#0x24
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	C$u2f_atecc.c$285$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:285: appdata.tmp, 70, &res) != 0)
	mov	r7,#0x00
	mov	r6,#0x40
	C$u2f_atecc.c$283$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:283: if ( atecc_send_recv(ATECC_CMD_GENKEY,
	push	ar1
	push	ar4
	push	ar7
	push	ar6
	mov	a,#0x46
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r6
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x40
	lcall	_atecc_send_recv
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar1
	mov	a,r7
	jz	00107$
	C$u2f_atecc.c$287$2$168 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:287: return -1;
	mov	dpl,#0xff
	sjmp	00110$
00107$:
	C$u2f_atecc.c$290$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:290: memmove(pubkey, res.buf, 64);
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$u2f_atecc.c$292$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:292: return 0;
	mov	dpl,#0x00
00110$:
	mov	sp,_bp
	pop	_bp
	C$u2f_atecc.c$293$1$164 ==.
	XG$u2f_new_keypair$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_load_key'
;------------------------------------------------------------
;appid                     Allocated to stack - _bp -5
;handle                    Allocated to stack - _bp +1
;res                       Allocated to stack - _bp +7
;private_key               Allocated to stack - _bp +11
;i                         Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$u2f_load_key$0$0 ==.
	C$u2f_atecc.c$295$1$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:295: int8_t u2f_load_key(uint8_t * handle, uint8_t * appid)
;	-----------------------------------------
;	 function u2f_load_key
;	-----------------------------------------
_u2f_load_key:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x2b
	mov	sp,a
	C$u2f_atecc.c$301$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:301: SHA_HMAC_KEY = U2F_MASTER_KEY_SLOT;
	mov	dptr,#_SHA_HMAC_KEY
	mov	a,#0x01
	movx	@dptr,a
	C$u2f_atecc.c$302$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:302: SHA_FLAGS = ATECC_SHA_HMACSTART;
	mov	dptr,#_SHA_FLAGS
	mov	a,#0x04
	movx	@dptr,a
	C$u2f_atecc.c$303$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:303: u2f_sha256_start();
	lcall	_u2f_sha256_start
	C$u2f_atecc.c$304$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:304: u2f_sha256_update(appid,32);
	mov	a,#0x20
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f_atecc.c$305$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:305: u2f_sha256_update(handle,4);
	mov	a,#0x04
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f_atecc.c$306$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:306: SHA_FLAGS = ATECC_SHA_HMACEND;
	mov	dptr,#_SHA_FLAGS
	mov	a,#0x05
	movx	@dptr,a
	C$u2f_atecc.c$307$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:307: u2f_sha256_finish();
	lcall	_u2f_sha256_finish
	C$u2f_atecc.c$309$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:309: memset(private_key,0,4);
	mov	a,_bp
	add	a,#0x0b
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	C$u2f_atecc.c$310$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:310: memmove(private_key+4, res_digest.buf, 32);
	mov	dptr,#(_res_digest + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,#0x04
	add	a,r4
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar4
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	C$u2f_atecc.c$311$2$171 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:311: for (i=4; i<36; i++)
	mov	r6,#0x04
	mov	r7,#0x00
00102$:
	C$u2f_atecc.c$313$2$171 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:313: private_key[i] ^= RMASK[i];
	mov	a,r6
	add	a,r4
	mov	r1,a
	mov	ar5,@r1
	mov	a,r6
	add	a,#_RMASK
	mov	dpl,a
	mov	a,r7
	addc	a,#(_RMASK >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	xrl	a,r5
	mov	@r1,a
	C$u2f_atecc.c$311$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:311: for (i=4; i<36; i++)
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
00113$:
	clr	c
	mov	a,r6
	subb	a,#0x24
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
	C$u2f_atecc.c$316$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:316: return atecc_privwrite(U2F_TEMP_KEY_SLOT, private_key, WMASK, handle+4);
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_WMASK
	push	acc
	mov	a,#(_WMASK >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	dptr,#0x0002
	lcall	_atecc_privwrite
	mov	r6,dpl
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	mov	dpl,r6
	mov	sp,_bp
	pop	_bp
	C$u2f_atecc.c$317$1$170 ==.
	XG$u2f_load_key$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_appid_eq'
;------------------------------------------------------------
;appid                     Allocated to stack - _bp -5
;handle                    Allocated to registers 
;------------------------------------------------------------
	G$u2f_appid_eq$0$0 ==.
	C$u2f_atecc.c$319$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:319: int8_t u2f_appid_eq(uint8_t * handle, uint8_t * appid)
;	-----------------------------------------
;	 function u2f_appid_eq
;	-----------------------------------------
_u2f_appid_eq:
	push	_bp
	mov	_bp,sp
	C$u2f_atecc.c$342$1$173 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:342: return 0;
	mov	dpl,#0x00
	pop	_bp
	C$u2f_atecc.c$343$1$173 ==.
	XG$u2f_appid_eq$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_count'
;------------------------------------------------------------
;res                       Allocated to stack - _bp +1
;------------------------------------------------------------
	G$u2f_count$0$0 ==.
	C$u2f_atecc.c$345$1$173 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:345: uint32_t u2f_count()
;	-----------------------------------------
;	 function u2f_count
;	-----------------------------------------
_u2f_count:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	C$u2f_atecc.c$350$1$174 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:350: appdata.tmp, sizeof(appdata.tmp), &res);
	mov	r7,_bp
	inc	r7
	mov	ar4,r7
	mov	r5,#0x00
	mov	r6,#0x40
	C$u2f_atecc.c$348$1$174 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:348: atecc_send_recv(ATECC_CMD_COUNTER,
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	mov	a,#0x46
	push	acc
	mov	a,#_appdata
	push	acc
	mov	a,#(_appdata >> 8)
	push	acc
	mov	a,r6
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	inc	a
	push	acc
	mov	dpl,#0x24
	lcall	_atecc_send_recv
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar7
	C$u2f_atecc.c$351$1$174 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:351: return le32toh(*(uint32_t*)res.buf);
	mov	a,r7
	inc	a
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	sp,_bp
	pop	_bp
	C$u2f_atecc.c$352$1$174 ==.
	XG$u2f_count$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_get_attestation_cert'
;------------------------------------------------------------
	G$u2f_get_attestation_cert$0$0 ==.
	C$u2f_atecc.c$357$1$174 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:357: uint8_t * u2f_get_attestation_cert()
;	-----------------------------------------
;	 function u2f_get_attestation_cert
;	-----------------------------------------
_u2f_get_attestation_cert:
	C$u2f_atecc.c$359$1$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:359: return __attest;
	mov	dptr,#___attest
	mov	b,#0x80
	C$u2f_atecc.c$360$1$175 ==.
	XG$u2f_get_attestation_cert$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_attestation_cert_size'
;------------------------------------------------------------
	G$u2f_attestation_cert_size$0$0 ==.
	C$u2f_atecc.c$362$1$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:362: uint16_t u2f_attestation_cert_size()
;	-----------------------------------------
;	 function u2f_attestation_cert_size
;	-----------------------------------------
_u2f_attestation_cert_size:
	C$u2f_atecc.c$364$1$176 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:364: return __attest_size;
	mov	dptr,#___attest_size
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$u2f_atecc.c$365$1$176 ==.
	XG$u2f_attestation_cert_size$0$0 ==.
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_response_length'
;------------------------------------------------------------
;len                       Allocated to registers r6 r7 
;------------------------------------------------------------
	G$set_response_length$0$0 ==.
	C$u2f_atecc.c$367$1$176 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:367: void set_response_length(uint16_t len)
;	-----------------------------------------
;	 function set_response_length
;	-----------------------------------------
_set_response_length:
	C$u2f_atecc.c$369$1$178 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_atecc.c:369: u2f_hid_set_len(len);
	lcall	_u2f_hid_set_len
	C$u2f_atecc.c$370$1$178 ==.
	XG$set_response_length$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fu2f_atecc$__str_0$0$0 == .
___str_0:
	.ascii "pass through to tempkey failed"
	.db 0x0d
	.db 0x0a
	.db 0x00
Fu2f_atecc$__str_1$0$0 == .
___str_1:
	.ascii "GENDIG failed"
	.db 0x0d
	.db 0x0a
	.db 0x00
Fu2f_atecc$__str_2$0$0 == .
___str_2:
	.ascii "PRIVWRITE failed"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
Fu2f_atecc$__xinit_resbuf$0$0 == .
__xinit__resbuf:
	.byte _res, (_res >> 8),#0x00
Fu2f_atecc$__xinit_resseq$0$0 == .
__xinit__resseq:
	.db #0x00	; 0
Fu2f_atecc$__xinit_serious$0$0 == .
__xinit__serious:
	.db #0x00	; 0
Fu2f_atecc$__xinit_shaoffset$0$0 == .
__xinit__shaoffset:
	.db #0x00	; 0
Fu2f_atecc$__xinit_SHA_FLAGS$0$0 == .
__xinit__SHA_FLAGS:
	.db #0x00	; 0
Fu2f_atecc$__xinit_SHA_HMAC_KEY$0$0 == .
__xinit__SHA_HMAC_KEY:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
