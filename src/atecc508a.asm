;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module atecc508a
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _u2f_delay
	.globl _smb_set_ext_write
	.globl _smb_write
	.globl _smb_read
	.globl _get_app_error
	.globl _set_app_error
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
	.globl _atecc_send
	.globl _atecc_idle
	.globl _atecc_sleep
	.globl _atecc_wake
	.globl _atecc_recv
	.globl _atecc_send_recv
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
Latecc508a.atecc_send$params$1$130==.
_atecc_send_params_1_130:
	.ds 6
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
;Allocation info for local variables in function 'atecc_send'
;------------------------------------------------------------
;p1                        Allocated to stack - _bp -3
;p2                        Allocated to stack - _bp -5
;buf                       Allocated to stack - _bp -8
;len                       Allocated to stack - _bp -9
;cmd                       Allocated to registers r7 
;params                    Allocated with name '_atecc_send_params_1_130'
;------------------------------------------------------------
	G$atecc_send$0$0 ==.
	C$atecc508a.c$41$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:41: int8_t atecc_send(uint8_t cmd, uint8_t p1, uint16_t p2,
;	-----------------------------------------
;	 function atecc_send
;	-----------------------------------------
_atecc_send:
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
	mov	r7,dpl
	C$atecc508a.c$45$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:45: params[0] = 0x3;
	mov	_atecc_send_params_1_130,#0x03
	C$atecc508a.c$46$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:46: params[1] = 7+len;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	(_atecc_send_params_1_130 + 0x0001),a
	C$atecc508a.c$47$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:47: params[2] = cmd;
	mov	(_atecc_send_params_1_130 + 0x0002),r7
	C$atecc508a.c$48$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:48: params[3] = p1;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	(_atecc_send_params_1_130 + 0x0003),@r0
	C$atecc508a.c$49$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:49: params[4] = ((uint8_t*)&p2)[1];
	mov	a,_bp
	add	a,#0xfb
	mov	r7,a
	mov	r6,a
	mov	a,r6
	inc	a
	mov	r1,a
	mov	ar6,@r1
	mov	(_atecc_send_params_1_130 + 0x0004),r6
	C$atecc508a.c$50$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:50: params[5] = ((uint8_t* )&p2)[0];
	mov	ar1,r7
	mov	ar7,@r1
	mov	(_atecc_send_params_1_130 + 0x0005),r7
	C$atecc508a.c$52$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:52: smb_set_ext_write(buf, len);
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_smb_set_ext_write
	dec	sp
	C$atecc508a.c$53$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:53: smb_write( ATECC508A_ADDR, params, sizeof(params));
	mov	a,#0x06
	push	acc
	mov	a,#_atecc_send_params_1_130
	push	acc
	mov	a,#(_atecc_send_params_1_130 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0xc0
	lcall	_smb_write
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$atecc508a.c$54$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:54: if (SMB_WAS_NACKED())
	mov	a,_SMB_FLAGS
	jnb	acc.6,00102$
	C$atecc508a.c$56$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:56: return -1;
	mov	dpl,#0xff
	sjmp	00103$
00102$:
	C$atecc508a.c$58$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:58: return 0;
	mov	dpl,#0x00
00103$:
	pop	_bp
	C$atecc508a.c$59$1$130 ==.
	XG$atecc_send$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atecc_idle'
;------------------------------------------------------------
	G$atecc_idle$0$0 ==.
	C$atecc508a.c$61$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:61: void atecc_idle()
;	-----------------------------------------
;	 function atecc_idle
;	-----------------------------------------
_atecc_idle:
	C$atecc508a.c$63$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:63: smb_write( ATECC508A_ADDR, "\x02", 1);
	mov	a,#0x01
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#0xc0
	lcall	_smb_write
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$atecc508a.c$64$1$132 ==.
	XG$atecc_idle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atecc_sleep'
;------------------------------------------------------------
	G$atecc_sleep$0$0 ==.
	C$atecc508a.c$66$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:66: void atecc_sleep()
;	-----------------------------------------
;	 function atecc_sleep
;	-----------------------------------------
_atecc_sleep:
	C$atecc508a.c$68$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:68: smb_write( ATECC508A_ADDR, "\x01", 1);
	mov	a,#0x01
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#0xc0
	lcall	_smb_write
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$atecc508a.c$69$1$133 ==.
	XG$atecc_sleep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atecc_wake'
;------------------------------------------------------------
	G$atecc_wake$0$0 ==.
	C$atecc508a.c$71$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:71: void atecc_wake()
;	-----------------------------------------
;	 function atecc_wake
;	-----------------------------------------
_atecc_wake:
	C$atecc508a.c$73$1$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:73: smb_write( ATECC508A_ADDR, "\0\0", 2);
	mov	a,#0x02
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#0xc0
	lcall	_smb_write
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$atecc508a.c$74$1$134 ==.
	XG$atecc_wake$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atecc_recv'
;------------------------------------------------------------
;buflen                    Allocated to stack - _bp -3
;res                       Allocated to stack - _bp -6
;buf                       Allocated to stack - _bp +1
;pkt_len                   Allocated to stack - _bp +4
;------------------------------------------------------------
	G$atecc_recv$0$0 ==.
	C$atecc508a.c$78$1$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:78: int8_t atecc_recv(uint8_t * buf, uint8_t buflen, struct atecc_response* res)
;	-----------------------------------------
;	 function atecc_recv
;	-----------------------------------------
_atecc_recv:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	C$atecc508a.c$81$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:81: pkt_len = smb_read( ATECC508A_ADDR,buf,buflen);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0xc0
	lcall	_smb_read
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar4
	C$atecc508a.c$82$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:82: if (SMB_WAS_NACKED())
	mov	a,_SMB_FLAGS
	jnb	acc.6,00102$
	C$atecc508a.c$84$2$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:84: return -1;
	mov	dpl,#0xff
	ljmp	00116$
00102$:
	C$atecc508a.c$87$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:87: if (SMB_FLAGS & SMB_READ_TRUNC)
	mov	a,_SMB_FLAGS
	jnb	acc.4,00104$
	C$atecc508a.c$89$2$138 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:89: set_app_error(ERROR_READ_TRUNCATED);
	mov	dpl,#0x06
	lcall	_set_app_error
00104$:
	C$atecc508a.c$92$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:92: if (pkt_len <= buflen && pkt_len >= 4)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xfd
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	jc	00108$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	cjne	@r0,#0x04,00145$
00145$:
	jc	00108$
	C$atecc508a.c$94$2$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:94: if (PKT_CRC(buf,pkt_len) != SMB_crc)
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,#0xfe
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_SMB_crc
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar6,00147$
	mov	a,r3
	cjne	a,ar7,00147$
	sjmp	00109$
00147$:
	C$atecc508a.c$96$3$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:96: set_app_error(ERROR_I2C_CRC);
	mov	dpl,#0x15
	lcall	_set_app_error
	C$atecc508a.c$97$3$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:97: return -1;
	mov	dpl,#0xff
	ljmp	00116$
00108$:
	C$atecc508a.c$102$2$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:102: set_app_error(ERROR_I2C_BAD_LEN);
	mov	dpl,#0x16
	lcall	_set_app_error
	C$atecc508a.c$103$2$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:103: return -1;
	mov	dpl,#0xff
	ljmp	00116$
00109$:
	C$atecc508a.c$106$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:106: if (pkt_len == 4 && buf[1] != 0)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	cjne	@r0,#0x04,00112$
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
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
	mov	r7,a
	jz	00112$
	C$atecc508a.c$108$2$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:108: set_app_error(buf[1]);
	mov	dpl,r7
	lcall	_set_app_error
	C$atecc508a.c$109$2$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:109: return -1;
	mov	dpl,#0xff
	sjmp	00116$
00112$:
	C$atecc508a.c$112$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:112: if (res != NULL)
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00115$
	C$atecc508a.c$114$2$143 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:114: res->len = pkt_len - 3;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,#0xfd
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	C$atecc508a.c$115$2$143 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:115: res->buf = buf+1;
	inc	r5
	cjne	r5,#0x00,00152$
	inc	r6
00152$:
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
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00115$:
	C$atecc508a.c$117$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:117: return pkt_len;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
00116$:
	mov	sp,_bp
	pop	_bp
	C$atecc508a.c$118$1$136 ==.
	XG$atecc_recv$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_cmd'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;d                         Allocated to registers r7 
;------------------------------------------------------------
	Fatecc508a$delay_cmd$0$0 ==.
	C$atecc508a.c$120$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:120: static void delay_cmd(uint8_t cmd)
;	-----------------------------------------
;	 function delay_cmd
;	-----------------------------------------
_delay_cmd:
	mov	r7,dpl
	C$atecc508a.c$123$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:123: switch(cmd)
	cjne	r7,#0x40,00113$
	sjmp	00102$
00113$:
	cjne	r7,#0x41,00103$
	C$atecc508a.c$126$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:126: d = 50;
	mov	r7,#0x32
	C$atecc508a.c$127$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:127: break;
	C$atecc508a.c$128$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:128: case ATECC_CMD_GENKEY:
	sjmp	00104$
00102$:
	C$atecc508a.c$129$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:129: d = 100;
	mov	r7,#0x64
	C$atecc508a.c$130$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:130: break;
	C$atecc508a.c$131$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:131: default:
	sjmp	00104$
00103$:
	C$atecc508a.c$132$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:132: d = 32;
	mov	r7,#0x20
	C$atecc508a.c$134$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:134: }
00104$:
	C$atecc508a.c$135$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:135: u2f_delay(d);
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	_u2f_delay
	C$atecc508a.c$136$1$145 ==.
	XFatecc508a$delay_cmd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atecc_send_recv'
;------------------------------------------------------------
;p1                        Allocated to stack - _bp -3
;p2                        Allocated to stack - _bp -5
;tx                        Allocated to stack - _bp -8
;txlen                     Allocated to stack - _bp -9
;rx                        Allocated to stack - _bp -12
;rxlen                     Allocated to stack - _bp -13
;res                       Allocated to stack - _bp -16
;cmd                       Allocated to registers r7 
;errors                    Allocated to registers r6 
;------------------------------------------------------------
	G$atecc_send_recv$0$0 ==.
	C$atecc508a.c$138$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:138: int8_t atecc_send_recv(uint8_t cmd, uint8_t p1, uint16_t p2,
;	-----------------------------------------
;	 function atecc_send_recv
;	-----------------------------------------
_atecc_send_recv:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$atecc508a.c$142$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:142: uint8_t errors = 0;
	mov	r6,#0x00
	C$atecc508a.c$143$1$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:143: atecc_wake();
	push	ar7
	push	ar6
	lcall	_atecc_wake
	pop	ar6
	pop	ar7
	C$atecc508a.c$145$1$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:145: while(atecc_send(cmd, p1, p2, tx, txlen) == -1)
00104$:
	push	ar7
	push	ar6
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
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
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r7
	lcall	_atecc_send
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
	pop	ar7
	cjne	r5,#0xff,00123$
	C$atecc508a.c$147$2$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:147: u2f_delay(10);
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	lcall	_u2f_delay
	pop	ar6
	pop	ar7
	C$atecc508a.c$148$2$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:148: errors++;
	inc	r6
	C$atecc508a.c$149$2$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:149: if (errors > 8)
	mov	a,r6
	add	a,#0xff - 0x08
	jnc	00104$
	C$atecc508a.c$151$3$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:151: return -1;
	mov	dpl,#0xff
	ljmp	00115$
	C$atecc508a.c$154$1$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:154: while(atecc_recv(rx,rxlen, res) == -1)
00123$:
	mov	ar5,r6
00112$:
	push	ar7
	push	ar5
	mov	a,_bp
	add	a,#0xf0
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
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_atecc_recv
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar7
	cjne	r4,#0xff,00114$
	C$atecc508a.c$156$2$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:156: errors++;
	inc	r5
	C$atecc508a.c$157$2$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:157: if (errors > 5)
	mov	a,r5
	mov	r6,a
	add	a,#0xff - 0x05
	jnc	00108$
	C$atecc508a.c$159$3$152 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:159: return -2;
	mov	dpl,#0xfe
	sjmp	00115$
00108$:
	C$atecc508a.c$161$2$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:161: switch(get_app_error())
	push	ar7
	push	ar6
	push	ar5
	lcall	_get_app_error
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r4,#0x00,00110$
	C$atecc508a.c$164$3$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:164: delay_cmd(cmd);
	mov	dpl,r7
	push	ar7
	push	ar5
	lcall	_delay_cmd
	pop	ar5
	pop	ar7
	C$atecc508a.c$165$3$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:165: break;
	C$atecc508a.c$166$3$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:166: default:
	sjmp	00112$
00110$:
	C$atecc508a.c$167$3$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:167: u2f_delay(cmd);
	mov	ar2,r7
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	lcall	_u2f_delay
	pop	ar6
	pop	ar7
	C$atecc508a.c$168$3$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:168: goto resend;
	ljmp	00104$
	C$atecc508a.c$170$1$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:170: }
00114$:
	C$atecc508a.c$173$1$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:173: atecc_idle();
	lcall	_atecc_idle
	C$atecc508a.c$174$1$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\atecc508a.c:174: return 0;
	mov	dpl,#0x00
00115$:
	pop	_bp
	C$atecc508a.c$175$1$148 ==.
	XG$atecc_send_recv$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fatecc508a$__str_0$0$0 == .
___str_0:
	.db 0x02
	.db 0x00
Fatecc508a$__str_1$0$0 == .
___str_1:
	.db 0x01
	.db 0x00
Fatecc508a$__str_2$0$0 == .
___str_2:
	.db 0x00
	.db 0x00
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
