;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module u2f
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _u2f_count
	.globl _u2f_get_attestation_cert
	.globl _u2f_load_key
	.globl _u2f_new_keypair
	.globl _u2f_ecdsa_sign
	.globl _u2f_sha256_finish
	.globl _u2f_sha256_update
	.globl _u2f_sha256_start
	.globl _u2f_get_user_feedback
	.globl _u2f_response_start
	.globl _u2f_response_flush
	.globl _u2f_response_writeback
	.globl _u2f_attestation_cert_size
	.globl _u2f_hid_set_len
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
	.globl _u2f_request
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
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'u2f_request'
;------------------------------------------------------------
;req                       Allocated to stack - _bp +1
;rcode                     Allocated to stack - _bp +8
;len                       Allocated to registers r4 r7 r6 r5 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +15
;------------------------------------------------------------
	G$u2f_request$0$0 ==.
	C$u2f.c$47$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:47: void u2f_request(struct u2f_request_apdu * req)
;	-----------------------------------------
;	 function u2f_request
;	-----------------------------------------
_u2f_request:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	C$u2f.c$49$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:49: uint16_t * rcode = (uint16_t *)req;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	C$u2f.c$50$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:50: uint32_t len = ((req->LC3) | ((uint32_t)req->LC2 << 8) | ((uint32_t)req->LC1 << 16));
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
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
	clr	a
	mov	r7,a
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar6
	dec	r0
	mov	@r0,ar7
	dec	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	clr	a
	mov	r4,a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r2
	orl	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	mov	ar5,r7
	mov	ar6,r3
	clr	a
	mov	r7,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	inc	r0
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar5,a
	mov	ar4,r3
	C$u2f.c$52$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:52: u2f_response_start();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_u2f_response_start
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$u2f.c$54$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:54: if (req->cla != 0)
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00102$
	C$u2f.c$56$2$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:56: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$57$2$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:57: *rcode = U2F_SW_CLASS_NOT_SUPPORTED;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x6e
	lcall	__gptrput
	C$u2f.c$58$2$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:58: goto end;
	ljmp	00116$
00102$:
	C$u2f.c$61$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:61: switch(req->ins)
	push	ar4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x01,00144$
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar4
	sjmp	00103$
00144$:
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar4
	cjne	r3,#0x02,00145$
	sjmp	00107$
00145$:
	cjne	r3,#0x03,00146$
	ljmp	00108$
00146$:
	cjne	r3,#0xc0,00147$
	ljmp	00113$
00147$:
	cjne	r3,#0xff,00148$
	ljmp	00113$
00148$:
	ljmp	00114$
	C$u2f.c$63$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:63: case U2F_REGISTER:
00103$:
	C$u2f.c$64$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:64: if (len != 64)
	cjne	r4,#0x40,00149$
	cjne	r7,#0x00,00149$
	cjne	r6,#0x00,00149$
	cjne	r5,#0x00,00149$
	sjmp	00105$
00149$:
	C$u2f.c$66$3$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:66: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$67$3$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:67: *rcode = U2F_SW_WRONG_LENGTH;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x67
	lcall	__gptrput
	ljmp	00116$
00105$:
	C$u2f.c$71$3$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:71: *rcode = u2f_register((struct u2f_register_request*)req->payload);
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_register
	mov	r2,dpl
	mov	r3,dph
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	C$u2f.c$73$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:73: break;
	ljmp	00116$
	C$u2f.c$74$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:74: case U2F_AUTHENTICATE:
00107$:
	C$u2f.c$75$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:75: *rcode = u2f_authenticate((struct u2f_authenticate_request*)req->payload, req->p1);
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	_u2f_authenticate
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	C$u2f.c$76$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:76: break;
	C$u2f.c$77$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:77: case U2F_VERSION:
	sjmp	00116$
00108$:
	C$u2f.c$78$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:78: if (len)
	mov	a,r4
	orl	a,r7
	orl	a,r6
	orl	a,r5
	jz	00110$
	C$u2f.c$80$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:80: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$81$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:81: *rcode = U2F_SW_WRONG_LENGTH;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x67
	lcall	__gptrput
	sjmp	00116$
00110$:
	C$u2f.c$85$3$135 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:85: *rcode = u2f_version();
	lcall	_u2f_version
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$u2f.c$87$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:87: break;
	C$u2f.c$89$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:89: case U2F_VENDOR_LAST:
	sjmp	00116$
00113$:
	C$u2f.c$90$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:90: *rcode = U2F_SW_NO_ERROR;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x90
	lcall	__gptrput
	C$u2f.c$91$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:91: break;
	C$u2f.c$92$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:92: default:
	sjmp	00116$
00114$:
	C$u2f.c$93$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:93: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$94$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:94: *rcode = U2F_SW_INS_NOT_SUPPORTED;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x6d
	lcall	__gptrput
	C$u2f.c$98$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:98: end:
00116$:
	C$u2f.c$99$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:99: u2f_response_writeback((uint8_t*)rcode,2);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$100$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:100: u2f_response_flush();
	lcall	_u2f_response_flush
	mov	sp,_bp
	pop	_bp
	C$u2f.c$101$1$129 ==.
	XG$u2f_request$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_signature_length'
;------------------------------------------------------------
;sig                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Fu2f$get_signature_length$0$0 ==.
	C$u2f.c$103$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:103: static uint8_t get_signature_length(uint8_t * sig)
;	-----------------------------------------
;	 function get_signature_length
;	-----------------------------------------
_get_signature_length:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$u2f.c$105$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:105: return 0x46 + ((sig[32] & 0x80) == 0x80) + ((sig[0] & 0x80) == 0x80);
	mov	a,#0x20
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x80
	clr	a
	cjne	r2,#0x80,00103$
	inc	a
00103$:
	add	a,#0x46
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0x80
	clr	a
	cjne	r5,#0x80,00105$
	inc	a
00105$:
	add	a,r4
	C$u2f.c$106$1$137 ==.
	XFu2f$get_signature_length$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_signature_der'
;------------------------------------------------------------
;sig                       Allocated to stack - _bp +1
;pad_s                     Allocated to registers r5 
;pad_r                     Allocated to registers r7 
;i                         Allocated to stack - _bp +4
;------------------------------------------------------------
	Fu2f$dump_signature_der$0$0 ==.
	C$u2f.c$108$1$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:108: static void dump_signature_der(uint8_t * sig)
;	-----------------------------------------
;	 function dump_signature_der
;	-----------------------------------------
_dump_signature_der:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	C$u2f.c$110$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:110: uint8_t pad_s = (sig[32] & 0x80) == 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
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
	anl	ar2,#0x80
	clr	a
	cjne	r2,#0x80,00103$
	inc	a
00103$:
	mov	r5,a
	C$u2f.c$111$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:111: uint8_t pad_r = (sig[0] & 0x80) == 0x80;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0x80
	clr	a
	cjne	r4,#0x80,00105$
	inc	a
00105$:
	mov	r7,a
	C$u2f.c$112$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:112: uint8_t i[] = {0x30, 0x44};
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	@r1,#0x30
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x44
	C$u2f.c$113$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:113: i[1] += (pad_s + pad_r);
	mov	ar3,@r0
	mov	a,r7
	add	a,r5
	add	a,r3
	mov	@r0,a
	C$u2f.c$119$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:119: u2f_response_writeback(i,2);
	mov	ar4,r1
	mov	ar2,r4
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	pop	ar0
	C$u2f.c$120$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:120: i[1] = 0;
	mov	@r0,#0x00
	C$u2f.c$123$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:123: u2f_response_writeback("\x02",1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	pop	ar7
	C$u2f.c$124$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:124: i[0] = 0x20 + pad_r;
	mov	a,#0x20
	add	a,r7
	mov	@r1,a
	C$u2f.c$125$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:125: u2f_response_writeback(i,1 + pad_r);
	mov	ar3,r7
	mov	r4,#0x00
	inc	r3
	cjne	r3,#0x00,00107$
	inc	r4
00107$:
	mov	ar2,r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar1
	push	ar3
	push	ar4
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$128$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:128: u2f_response_writeback(sig, 32);
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$131$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:131: u2f_response_writeback("\x02",1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	C$u2f.c$132$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:132: i[0] = 0x20 + pad_s;
	mov	a,#0x20
	add	a,r5
	mov	@r1,a
	C$u2f.c$133$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:133: u2f_response_writeback(i,1 + pad_s);
	mov	ar2,r5
	mov	r7,#0x00
	inc	r2
	cjne	r2,#0x00,00108$
	inc	r7
00108$:
	mov	ar6,r1
	mov	r5,#0x00
	mov	r4,#0x40
	push	ar2
	push	ar7
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$136$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:136: u2f_response_writeback(sig+32, 32);
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	mov	sp,_bp
	pop	_bp
	C$u2f.c$137$1$139 ==.
	XFu2f$dump_signature_der$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_authenticate'
;------------------------------------------------------------
;control                   Allocated to stack - _bp -3
;req                       Allocated to stack - _bp +1
;up                        Allocated to stack - _bp +10
;count                     Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
	Fu2f$u2f_authenticate$0$0 ==.
	C$u2f.c$140$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:140: static int16_t u2f_authenticate(struct u2f_authenticate_request * req, uint8_t control)
;	-----------------------------------------
;	 function u2f_authenticate
;	-----------------------------------------
_u2f_authenticate:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
	C$u2f.c$143$1$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:143: uint8_t up = 1;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,#0x01
	C$u2f.c$146$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:146: if (control == U2F_AUTHENTICATE_CHECK)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x07,00105$
	C$u2f.c$148$2$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:148: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$149$2$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:149: if (u2f_load_key(req->kh,req->app) == 0 )//&& u2f_appid_eq(req->kh, req->app) == 0)
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x41
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_u2f_load_key
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jnz	00102$
	C$u2f.c$151$3$143 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:151: return U2F_SW_CONDITIONS_NOT_SATISFIED;
	mov	dptr,#0x6985
	ljmp	00114$
00102$:
	C$u2f.c$155$3$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:155: return U2F_SW_WRONG_DATA;
	mov	dptr,#0x6984
	ljmp	00114$
00105$:
	C$u2f.c$159$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:159: control != U2F_AUTHENTICATE_SIGN ||
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x03,00106$
	C$u2f.c$160$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:160: req->khl != U2F_KEY_HANDLE_SIZE  ||
	mov	r0,_bp
	inc	r0
	mov	a,#0x40
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x24,00106$
	C$u2f.c$161$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:161: u2f_load_key(req->kh, req->app) != 0 //||
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x41
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_u2f_load_key
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jz	00107$
00106$:
	C$u2f.c$165$2$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:165: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$166$2$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:166: return U2F_SW_WRONG_PAYLOAD;
	mov	dptr,#0x6a80
	ljmp	00114$
00107$:
	C$u2f.c$171$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:171: if (u2f_get_user_feedback())
	lcall	_u2f_get_user_feedback
	mov	a,dpl
	jz	00111$
	C$u2f.c$173$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:173: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$174$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:174: return U2F_SW_CONDITIONS_NOT_SATISFIED;
	mov	dptr,#0x6985
	ljmp	00114$
00111$:
	C$u2f.c$177$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:177: count = u2f_count();
	lcall	_u2f_count
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$u2f.c$179$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:179: u2f_sha256_start();
	lcall	_u2f_sha256_start
	C$u2f.c$180$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:180: u2f_sha256_update(req->app,32);
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x20
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f.c$181$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:181: u2f_sha256_update(&up,1);
	mov	a,_bp
	add	a,#0x0a
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,#0x01
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f.c$182$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:182: u2f_sha256_update((uint8_t *)&count,4);
	mov	a,_bp
	add	a,#0x0b
	mov	r6,a
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	push	ar6
	mov	a,#0x04
	push	acc
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f.c$183$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:183: u2f_sha256_update(req->chal,32);
	mov	a,#0x20
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
	C$u2f.c$185$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:185: u2f_sha256_finish();
	lcall	_u2f_sha256_finish
	C$u2f.c$187$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:187: if (u2f_ecdsa_sign((uint8_t*)req, req->kh, req->app) == -1)
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x20
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
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x41
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
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_u2f_ecdsa_sign
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar6
	pop	ar7
	cjne	r5,#0xff,00113$
	C$u2f.c$189$2$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:189: return U2F_SW_WRONG_DATA+0x20;
	mov	dptr,#0x69a4
	sjmp	00114$
00113$:
	C$u2f.c$192$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:192: u2f_hid_set_len(7 + get_signature_length((uint8_t*)req));
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_get_signature_length
	mov	r5,dpl
	mov	r4,#0x00
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r5
	mov	dph,r4
	lcall	_u2f_hid_set_len
	pop	ar6
	pop	ar7
	C$u2f.c$194$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:194: u2f_response_writeback(&up,1);
	mov	r5,#0x00
	mov	r4,#0x40
	push	ar6
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r5
	mov	b,r4
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	pop	ar6
	C$u2f.c$195$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:195: u2f_response_writeback((uint8_t *)&count,4);
	mov	r7,#0x00
	mov	r5,#0x40
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$196$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:196: dump_signature_der((uint8_t*)req);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_dump_signature_der
	C$u2f.c$198$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:198: return U2F_SW_NO_ERROR;
	mov	dptr,#0x9000
00114$:
	mov	sp,_bp
	pop	_bp
	C$u2f.c$199$1$141 ==.
	XFu2f$u2f_authenticate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_register'
;------------------------------------------------------------
;req                       Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +11
;key_handle                Allocated to stack - _bp +13
;pubkey                    Allocated to stack - _bp +49
;attest_size               Allocated to registers 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +8
;------------------------------------------------------------
	Fu2f$u2f_register$0$0 ==.
	C$u2f.c$201$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:201: static int16_t u2f_register(struct u2f_register_request * req)
;	-----------------------------------------
;	 function u2f_register
;	-----------------------------------------
_u2f_register:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x6d
	mov	sp,a
	C$u2f.c$203$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:203: uint8_t i[] = {0x0,U2F_EC_FMT_UNCOMPRESSED};
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	@r1,#0x00
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x04
	C$u2f.c$209$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:209: const uint16_t attest_size = u2f_attestation_cert_size();
	push	ar1
	push	ar0
	lcall	_u2f_attestation_cert_size
	C$u2f.c$211$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:211: if (u2f_get_user_feedback())
	lcall	_u2f_get_user_feedback
	mov	a,dpl
	pop	ar0
	pop	ar1
	jz	00102$
	C$u2f.c$213$2$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:213: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$214$2$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:214: return U2F_SW_CONDITIONS_NOT_SATISFIED;
	mov	dptr,#0x6985
	ljmp	00107$
00102$:
	C$u2f.c$217$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:217: if ( u2f_new_keypair(key_handle, req->app, pubkey) == -1)
	push	ar0
	mov	a,_bp
	add	a,#0x31
	mov	r4,a
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x20
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
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	@r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar4
	push	ar1
	push	ar0
	mov	b,ar0
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
	mov	r0,b
	mov	b,ar0
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_u2f_new_keypair
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar4
	cjne	r7,#0xff,00119$
	sjmp	00120$
00119$:
	pop	ar0
	sjmp	00104$
00120$:
	pop	ar0
	C$u2f.c$219$2$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:219: u2f_hid_set_len(2);
	mov	dptr,#0x0002
	lcall	_u2f_hid_set_len
	C$u2f.c$220$2$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:220: return U2F_SW_INSUFFICIENT_MEMORY;
	mov	dptr,#0x9210
	ljmp	00107$
00104$:
	C$u2f.c$223$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:223: u2f_sha256_start();
	push	ar4
	push	ar1
	push	ar0
	lcall	_u2f_sha256_start
	pop	ar0
	pop	ar1
	C$u2f.c$224$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:224: u2f_sha256_update(i,1);
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar1
	push	ar0
	mov	a,#0x01
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_sha256_update
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar4
	C$u2f.c$225$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:225: u2f_sha256_update(req->app,32);
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	pop	ar0
	push	ar4
	push	ar1
	push	ar0
	mov	a,#0x20
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_u2f_sha256_update
	dec	sp
	pop	ar0
	C$u2f.c$227$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:227: u2f_sha256_update(req->chal,32);
	push	ar0
	mov	a,#0x20
	push	acc
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar0
	lcall	_u2f_sha256_update
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar4
	C$u2f.c$229$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:229: u2f_sha256_update(key_handle,U2F_KEY_HANDLE_SIZE);
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar7,@r0
	pop	ar0
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar4
	push	ar1
	push	ar0
	mov	a,#0x24
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_sha256_update
	dec	sp
	pop	ar0
	C$u2f.c$230$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:230: u2f_sha256_update(i+1,1);
	mov	ar7,r0
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x01
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_sha256_update
	dec	sp
	pop	ar1
	pop	ar4
	C$u2f.c$231$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:231: u2f_sha256_update(pubkey,64);
	mov	ar7,r4
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar4
	push	ar1
	mov	a,r5
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_sha256_update
	dec	sp
	C$u2f.c$232$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:232: u2f_sha256_finish();
	lcall	_u2f_sha256_finish
	pop	ar1
	C$u2f.c$234$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:234: if (u2f_ecdsa_sign((uint8_t*)req, U2F_ATTESTATION_HANDLE, req->app) == -1)
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar4
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_u2f_ecdsa_sign
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar1
	pop	ar4
	cjne	r7,#0xff,00121$
	sjmp	00122$
00121$:
	pop	ar4
	sjmp	00106$
00122$:
	pop	ar4
	C$u2f.c$236$2$152 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:236: return U2F_SW_WRONG_DATA;
	mov	dptr,#0x6984
	ljmp	00107$
00106$:
	C$u2f.c$239$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:239: u2f_hid_set_len(69 + get_signature_length((uint8_t*)req) + U2F_KEY_HANDLE_SIZE + u2f_attestation_cert_size());
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar1
	lcall	_get_signature_length
	mov	r7,dpl
	pop	ar1
	pop	ar4
	mov	r6,#0x00
	mov	a,#0x69
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar7
	push	ar6
	push	ar4
	push	ar1
	lcall	_u2f_attestation_cert_size
	mov	r3,dpl
	mov	r5,dph
	pop	ar1
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r7
	mov	r3,a
	mov	a,r5
	addc	a,r6
	mov	r5,a
	mov	dpl,r3
	mov	dph,r5
	push	ar4
	push	ar1
	lcall	_u2f_hid_set_len
	pop	ar1
	C$u2f.c$240$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:240: i[0] = 0x5;
	mov	@r1,#0x05
	C$u2f.c$241$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:241: u2f_response_writeback(i,2);
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar1
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	C$u2f.c$242$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:242: u2f_response_writeback(pubkey,64);
	mov	r7,#0x00
	mov	r6,#0x40
	push	ar1
	mov	a,r6
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	pop	ar1
	C$u2f.c$243$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:243: i[0] = U2F_KEY_HANDLE_SIZE;
	mov	@r1,#0x24
	C$u2f.c$244$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:244: u2f_response_writeback(i,1);
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$245$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:245: u2f_response_writeback(key_handle,U2F_KEY_HANDLE_SIZE);
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x24
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$247$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:247: u2f_response_writeback(u2f_get_attestation_cert(),u2f_attestation_cert_size());
	lcall	_u2f_attestation_cert_size
	mov	r6,dpl
	mov	r7,dph
	push	ar7
	push	ar6
	lcall	_u2f_get_attestation_cert
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$249$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:249: dump_signature_der((uint8_t*)req);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_dump_signature_der
	C$u2f.c$252$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:252: return U2F_SW_NO_ERROR;
	mov	dptr,#0x9000
00107$:
	mov	sp,_bp
	pop	_bp
	C$u2f.c$253$1$149 ==.
	XFu2f$u2f_register$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_version'
;------------------------------------------------------------
;version                   Allocated to stack - _bp +1
;------------------------------------------------------------
	Fu2f$u2f_version$0$0 ==.
	C$u2f.c$255$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:255: static int16_t u2f_version()
;	-----------------------------------------
;	 function u2f_version
;	-----------------------------------------
_u2f_version:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
	C$u2f.c$257$1$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:257: const char version[] = "U2F_V2";
	mov	r1,_bp
	inc	r1
	mov	@r1,#0x55
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x32
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	@r0,#0x46
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	@r0,#0x5f
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	@r0,#0x56
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	mov	@r0,#0x32
	mov	a,#0x06
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
	C$u2f.c$258$1$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:258: u2f_hid_set_len(2 + sizeof(version)-1);
	mov	dptr,#0x0008
	push	ar1
	lcall	_u2f_hid_set_len
	pop	ar1
	C$u2f.c$259$1$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:259: u2f_response_writeback(version, sizeof(version)-1);
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_u2f_response_writeback
	dec	sp
	dec	sp
	C$u2f.c$260$1$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f.c:260: return U2F_SW_NO_ERROR;
	mov	dptr,#0x9000
	mov	sp,_bp
	pop	_bp
	C$u2f.c$261$1$153 ==.
	XFu2f$u2f_version$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fu2f$__str_0$0$0 == .
___str_0:
	.db 0x02
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
