;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module efm8_usbdch9
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _txZero
	.globl _USB_ActivateEp
	.globl _USB_SetIndex
	.globl _USBD_IsSelfPoweredCb
	.globl _USBD_AbortAllTransfers
	.globl _USBD_SetUsbState
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
	.globl _USBDCH9_SetupCmd
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
Fefm8_usbdch9$pStatus$0$0==.
_pStatus:
	.ds 2
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
;Allocation info for local variables in function 'USBDCH9_SetupCmd'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
	G$USBDCH9_SetupCmd$0$0 ==.
	C$efm8_usbdch9.c$48$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:48: USB_Status_TypeDef USBDCH9_SetupCmd(void)
;	-----------------------------------------
;	 function USBDCH9_SetupCmd
;	-----------------------------------------
_USBDCH9_SetupCmd:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$efm8_usbdch9.c$52$1$89 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:52: switch (myUsbDevice.setup.bRequest)
	mov	dptr,#(_myUsbDevice + 0x0005)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0b
	jnc	00119$
	ljmp	00110$
00119$:
	mov	a,r7
	add	a,#(00120$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00121$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00120$:
	.db	00101$
	.db	00102$
	.db	00110$
	.db	00103$
	.db	00110$
	.db	00104$
	.db	00105$
	.db	00110$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
00121$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00110$>>8
	.db	00103$>>8
	.db	00110$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00110$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	C$efm8_usbdch9.c$54$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:54: case GET_STATUS:
00101$:
	C$efm8_usbdch9.c$55$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:55: status = GetStatus();
	lcall	_GetStatus
	mov	r7,dpl
	C$efm8_usbdch9.c$56$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:56: break;
	C$efm8_usbdch9.c$58$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:58: case CLEAR_FEATURE:
	sjmp	00111$
00102$:
	C$efm8_usbdch9.c$59$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:59: status = ClearFeature();
	lcall	_ClearFeature
	mov	r6,dpl
	mov	ar7,r6
	C$efm8_usbdch9.c$60$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:60: break;
	C$efm8_usbdch9.c$62$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:62: case SET_FEATURE:
	sjmp	00111$
00103$:
	C$efm8_usbdch9.c$63$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:63: status = SetFeature();
	lcall	_SetFeature
	mov	r6,dpl
	mov	ar7,r6
	C$efm8_usbdch9.c$64$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:64: break;
	C$efm8_usbdch9.c$66$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:66: case SET_ADDRESS:
	sjmp	00111$
00104$:
	C$efm8_usbdch9.c$67$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:67: status = SetAddress();
	lcall	_SetAddress
	mov	r6,dpl
	mov	ar7,r6
	C$efm8_usbdch9.c$68$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:68: break;
	C$efm8_usbdch9.c$70$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:70: case GET_DESCRIPTOR:
	sjmp	00111$
00105$:
	C$efm8_usbdch9.c$71$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:71: status = GetDescriptor();
	lcall	_GetDescriptor
	mov	r6,dpl
	mov	ar7,r6
	C$efm8_usbdch9.c$72$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:72: break;
	C$efm8_usbdch9.c$74$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:74: case GET_CONFIGURATION:
	sjmp	00111$
00106$:
	C$efm8_usbdch9.c$75$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:75: status = GetConfiguration();
	lcall	_GetConfiguration
	mov	r6,dpl
	mov	ar7,r6
	C$efm8_usbdch9.c$76$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:76: break;
	C$efm8_usbdch9.c$78$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:78: case SET_CONFIGURATION:
	sjmp	00111$
00107$:
	C$efm8_usbdch9.c$79$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:79: status = SetConfiguration();
	lcall	_SetConfiguration
	mov	r6,dpl
	mov	ar7,r6
	C$efm8_usbdch9.c$80$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:80: break;
	C$efm8_usbdch9.c$82$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:82: case GET_INTERFACE:
	sjmp	00111$
00108$:
	C$efm8_usbdch9.c$83$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:83: status = GetInterface();
	lcall	_GetInterface
	mov	r6,dpl
	mov	ar7,r6
	C$efm8_usbdch9.c$84$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:84: break;
	C$efm8_usbdch9.c$86$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:86: case SET_INTERFACE:
	sjmp	00111$
00109$:
	C$efm8_usbdch9.c$87$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:87: status = SetInterface();
	lcall	_SetInterface
	mov	r6,dpl
	mov	ar7,r6
	C$efm8_usbdch9.c$88$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:88: break;
	C$efm8_usbdch9.c$90$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:90: default:
	sjmp	00111$
00110$:
	C$efm8_usbdch9.c$91$2$90 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:91: status = USB_STATUS_REQ_ERR;
	mov	r7,#0xff
	C$efm8_usbdch9.c$93$1$89 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:93: }
00111$:
	C$efm8_usbdch9.c$96$1$89 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:96: USB_SetIndex(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_USB_SetIndex
	pop	ar7
	C$efm8_usbdch9.c$104$1$89 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:104: return status;
	mov	dpl,r7
	C$efm8_usbdch9.c$105$1$89 ==.
	XG$USBDCH9_SetupCmd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearFeature'
;------------------------------------------------------------
;retVal                    Allocated to registers r7 
;------------------------------------------------------------
	Fefm8_usbdch9$ClearFeature$0$0 ==.
	C$efm8_usbdch9.c$114$1$89 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:114: static USB_Status_TypeDef ClearFeature(void)
;	-----------------------------------------
;	 function ClearFeature
;	-----------------------------------------
_ClearFeature:
	C$efm8_usbdch9.c$116$1$89 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:116: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	mov	r7,#0xff
	C$efm8_usbdch9.c$118$1$93 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:118: if (myUsbDevice.setup.wLength == 0)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00205$
	ljmp	00145$
00205$:
	C$efm8_usbdch9.c$120$2$94 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:120: switch (myUsbDevice.setup.bmRequestType.Recipient)
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	anl	a,#0x1f
	mov	r6,a
	cjne	r6,#0x02,00206$
	sjmp	00207$
00206$:
	ljmp	00145$
00207$:
	C$efm8_usbdch9.c$135$3$95 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:135: if (myUsbDevice.setup.wValue == USB_FEATURE_ENDPOINT_HALT)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00208$
	ljmp	00145$
00208$:
	C$efm8_usbdch9.c$139$4$96 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:139: if (((myUsbDevice.setup.wIndex & ~USB_EP_DIR_IN) == 0)
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	anl	a,#0x7f
	jnz	00138$
	mov	a,r6
	jnz	00138$
	C$efm8_usbdch9.c$140$4$96 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:140: && (myUsbDevice.state >= USBD_STATE_ADDRESSED))
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00211$
00211$:
	jc	00138$
	C$efm8_usbdch9.c$142$5$97 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:142: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	ljmp	00145$
00138$:
	C$efm8_usbdch9.c$144$4$96 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:144: else if (((myUsbDevice.setup.wIndex & ~USB_SETUP_DIR_D2H) < SLAB_USB_NUM_EPS_USED)
	mov	a,#0x7f
	anl	a,r5
	mov	r3,a
	mov	ar4,r6
	clr	c
	mov	a,r3
	subb	a,#0x03
	mov	a,r4
	subb	a,#0x00
	jc	00213$
	ljmp	00145$
00213$:
	C$efm8_usbdch9.c$145$4$96 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:145: && (myUsbDevice.state == USBD_STATE_CONFIGURED))
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x06,00145$
	C$efm8_usbdch9.c$147$5$98 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:147: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	C$efm8_usbdch9.c$148$5$98 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:148: USB_SetIndex((myUsbDevice.setup.wIndex & 0xFF) & ~USB_SETUP_DIR_D2H);
	anl	ar5,#0x7f
	mov	dpl,r5
	push	ar7
	lcall	_USB_SetIndex
	pop	ar7
	C$efm8_usbdch9.c$151$5$98 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:151: if ((myUsbDevice.setup.wIndex & 0xFF) & USB_EP_DIR_IN)
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	jnb	acc.7,00109$
	C$efm8_usbdch9.c$153$7$100 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:153: USB_EpnInEndStallAndClearDataToggle();
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
00102$:
	mov	a,_USB0ADR
	jb	acc.7,00102$
00109$:
	C$efm8_usbdch9.c$157$5$98 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:157: if (((myUsbDevice.setup.wIndex & 0xFF) & USB_EP_DIR_IN) == 0)
	mov	a,r5
	jb	acc.7,00126$
	C$efm8_usbdch9.c$159$8$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:159: USB_EpnOutEndStallAndClearDataToggle();
	mov	_USB0ADR,#0x94
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	anl	_USB0DAT,#0xdf
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	orl	_USB0DAT,#0x80
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
00126$:
	C$efm8_usbdch9.c$163$5$98 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:163: switch (myUsbDevice.setup.wIndex & 0xFF)
	mov	r6,#0x00
	cjne	r5,#0x01,00222$
	cjne	r6,#0x00,00222$
	sjmp	00127$
00222$:
	C$efm8_usbdch9.c$166$6$108 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:166: case (USB_EP_DIR_OUT | 1):
	cjne	r5,#0x81,00145$
	cjne	r6,#0x00,00145$
	sjmp	00130$
00127$:
	C$efm8_usbdch9.c$167$6$108 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:167: if (myUsbDevice.ep1out.state != D_EP_RECEIVING)
	mov	dptr,#(_myUsbDevice + 0x0020)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x03,00224$
	sjmp	00145$
00224$:
	C$efm8_usbdch9.c$169$7$109 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:169: myUsbDevice.ep1out.state = D_EP_IDLE;
	mov	dptr,#(_myUsbDevice + 0x0020)
	mov	a,#0x01
	movx	@dptr,a
	C$efm8_usbdch9.c$171$6$108 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:171: break;
	C$efm8_usbdch9.c$190$6$108 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:190: case (USB_EP_DIR_IN | 1):
	sjmp	00145$
00130$:
	C$efm8_usbdch9.c$191$6$108 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:191: if (myUsbDevice.ep1in.state != D_EP_TRANSMITTING)
	mov	dptr,#(_myUsbDevice + 0x0019)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00225$
	sjmp	00145$
00225$:
	C$efm8_usbdch9.c$193$7$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:193: myUsbDevice.ep1in.state = D_EP_IDLE;
	mov	dptr,#(_myUsbDevice + 0x0019)
	mov	a,#0x01
	movx	@dptr,a
	C$efm8_usbdch9.c$216$1$93 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:216: }
00145$:
	C$efm8_usbdch9.c$218$1$93 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:218: return retVal;
	mov	dpl,r7
	C$efm8_usbdch9.c$219$1$93 ==.
	XFefm8_usbdch9$ClearFeature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetConfiguration'
;------------------------------------------------------------
;retVal                    Allocated to registers r7 
;------------------------------------------------------------
	Fefm8_usbdch9$GetConfiguration$0$0 ==.
	C$efm8_usbdch9.c$229$1$93 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:229: static USB_Status_TypeDef GetConfiguration(void)
;	-----------------------------------------
;	 function GetConfiguration
;	-----------------------------------------
_GetConfiguration:
	C$efm8_usbdch9.c$231$1$93 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:231: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	mov	r7,#0xff
	C$efm8_usbdch9.c$233$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:233: if ((myUsbDevice.setup.wIndex == 0)
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00135$
	ljmp	00107$
00135$:
	C$efm8_usbdch9.c$234$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:234: && (myUsbDevice.setup.wValue == 0)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jnz	00107$
	C$efm8_usbdch9.c$235$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:235: && (myUsbDevice.setup.wLength == 1)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x01,00107$
	cjne	r6,#0x00,00107$
	C$efm8_usbdch9.c$236$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:236: && (myUsbDevice.setup.bmRequestType.Direction == USB_SETUP_DIR_IN)
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r6,a
	cjne	r6,#0x01,00107$
	C$efm8_usbdch9.c$237$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:237: && (myUsbDevice.setup.bmRequestType.Recipient == USB_SETUP_RECIPIENT_DEVICE))
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	anl	a,#0x1f
	jnz	00107$
	C$efm8_usbdch9.c$239$2$113 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:239: if (myUsbDevice.state == USBD_STATE_ADDRESSED)
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x04,00104$
	C$efm8_usbdch9.c$241$3$114 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:241: EP0_Write(txZero, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_txZero
	mov	b,#0x80
	lcall	_EP0_Write
	dec	sp
	dec	sp
	C$efm8_usbdch9.c$242$3$114 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:242: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	sjmp	00107$
00104$:
	C$efm8_usbdch9.c$244$2$113 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:244: else if (myUsbDevice.state == USBD_STATE_CONFIGURED)
	cjne	r6,#0x06,00107$
	C$efm8_usbdch9.c$246$3$115 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:246: EP0_Write(&myUsbDevice.configurationValue, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_myUsbDevice
	mov	b,#0x00
	lcall	_EP0_Write
	dec	sp
	dec	sp
	C$efm8_usbdch9.c$247$3$115 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:247: retVal = USB_STATUS_OK;
	mov	r7,#0x00
00107$:
	C$efm8_usbdch9.c$250$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:250: return retVal;
	mov	dpl,r7
	C$efm8_usbdch9.c$251$1$112 ==.
	XFefm8_usbdch9$GetConfiguration$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetDescriptor'
;------------------------------------------------------------
;index                     Allocated to registers r2 
;length                    Allocated to registers r6 r7 
;dat                       Allocated to stack - _bp +1
;retVal                    Allocated to stack - _bp +4
;sloc0                     Allocated to stack - _bp +8
;sloc1                     Allocated to stack - _bp +10
;------------------------------------------------------------
	Fefm8_usbdch9$GetDescriptor$0$0 ==.
	C$efm8_usbdch9.c$261$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:261: static USB_Status_TypeDef GetDescriptor(void)
;	-----------------------------------------
;	 function GetDescriptor
;	-----------------------------------------
_GetDescriptor:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	C$efm8_usbdch9.c$269$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:269: uint16_t length = 0;
	C$efm8_usbdch9.c$271$1$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:271: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0xff
	C$efm8_usbdch9.c$273$1$117 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:273: if (*((uint8_t *)&myUsbDevice.setup.bmRequestType) ==
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x80,00158$
	sjmp	00159$
00158$:
	ljmp	00122$
00159$:
	C$efm8_usbdch9.c$276$1$117 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:276: index = myUsbDevice.setup.wValue & 0xFF;
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar2,r3
	C$efm8_usbdch9.c$278$2$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:278: switch (myUsbDevice.setup.wValue >> 8)
	mov	ar5,r4
	mov	r4,#0x00
	cjne	r5,#0x01,00160$
	cjne	r4,#0x00,00160$
	sjmp	00101$
00160$:
	cjne	r5,#0x02,00161$
	cjne	r4,#0x00,00161$
	sjmp	00104$
00161$:
	cjne	r5,#0x03,00162$
	cjne	r4,#0x00,00162$
	sjmp	00107$
00162$:
	ljmp	00116$
	C$efm8_usbdch9.c$280$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:280: case USB_DEVICE_DESCRIPTOR:
00101$:
	C$efm8_usbdch9.c$281$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:281: if (index != 0)
	mov	a,r2
	jz	00163$
	ljmp	00116$
00163$:
	C$efm8_usbdch9.c$285$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:285: dat = (uint8_t *)myUsbDevice.deviceDescriptor;
	mov	dptr,#(_myUsbDevice + 0x0022)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	C$efm8_usbdch9.c$286$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:286: length = myUsbDevice.deviceDescriptor->bLength;
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	r6,a
	mov	r7,#0x00
	C$efm8_usbdch9.c$287$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:287: break;
	ljmp	00116$
	C$efm8_usbdch9.c$289$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:289: case USB_CONFIG_DESCRIPTOR:
00104$:
	C$efm8_usbdch9.c$290$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:290: if (index != 0)
	mov	a,r2
	jz	00164$
	ljmp	00116$
00164$:
	C$efm8_usbdch9.c$294$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:294: dat = (uint8_t *)myUsbDevice.configDescriptor;
	mov	dptr,#(_myUsbDevice + 0x0025)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	C$efm8_usbdch9.c$295$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:295: length = le16toh(myUsbDevice.configDescriptor->wTotalLength);
	mov	a,#0x02
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	C$efm8_usbdch9.c$296$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:296: break;
	ljmp	00116$
	C$efm8_usbdch9.c$298$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:298: case USB_STRING_DESCRIPTOR:
00107$:
	C$efm8_usbdch9.c$301$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:301: dat = (uint8_t *)myUsbDevice.stringDescriptors[index];
	mov	dptr,#(_myUsbDevice + 0x0028)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,r3
	mov	r3,a
	mov	a,r4
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$efm8_usbdch9.c$305$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:305: if (index == 0)
	mov	a,r2
	C$efm8_usbdch9.c$307$4$122 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:307: length = 4;
	jnz	00114$
	mov	r6,#0x04
	mov	r7,a
	C$efm8_usbdch9.c$308$4$122 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:308: myUsbDevice.ep0String.encoding.type = USB_STRING_DESCRIPTOR_UTF16LE;
	mov	dptr,#(_myUsbDevice + 0x000c)
	movx	a,@dptr
	anl	a,#0x80
	movx	@dptr,a
	sjmp	00116$
00114$:
	C$efm8_usbdch9.c$312$3$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:312: else if ((myUsbDevice.setup.wIndex == 0) || (myUsbDevice.setup.wIndex == SLAB_USB_LANGUAGE))
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	00110$
	cjne	r4,#0x09,00116$
	cjne	r5,#0x04,00116$
00110$:
	C$efm8_usbdch9.c$315$4$123 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:315: if (index < myUsbDevice.numberOfStrings)
	mov	dptr,#(_myUsbDevice + 0x0001)
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r2
	subb	a,r5
	jnc	00116$
	C$efm8_usbdch9.c$317$5$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:317: length = *(dat + USB_STRING_DESCRIPTOR_LENGTH);
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
	C$efm8_usbdch9.c$318$5$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:318: myUsbDevice.ep0String.encoding.type = *(dat + USB_STRING_DESCRIPTOR_ENCODING);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_myUsbDevice + 0x000c)
	anl	a,#0x7f
	mov	b,a
	movx	a,@dptr
	anl	a,#0x80
	orl	a,b
	movx	@dptr,a
	C$efm8_usbdch9.c$319$5$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:319: dat += USB_STRING_DESCRIPTOR_LENGTH;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$efm8_usbdch9.c$320$5$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:320: myUsbDevice.ep0String.encoding.init = true;
	mov	dptr,#(_myUsbDevice + 0x000c)
	movx	a,@dptr
	orl	a,#0x80
	movx	@dptr,a
	C$efm8_usbdch9.c$364$2$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:364: }
00116$:
	C$efm8_usbdch9.c$368$2$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:368: if (length)
	mov	a,r6
	orl	a,r7
	jz	00122$
	C$efm8_usbdch9.c$370$3$125 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:370: if (length > myUsbDevice.setup.wLength)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00118$
	C$efm8_usbdch9.c$372$4$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:372: length = myUsbDevice.setup.wLength;
	mov	ar6,r4
	mov	ar7,r5
00118$:
	C$efm8_usbdch9.c$375$3$125 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:375: EP0_Write(dat, length);
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_EP0_Write
	dec	sp
	dec	sp
	C$efm8_usbdch9.c$377$3$125 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:377: retVal = USB_STATUS_OK;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
00122$:
	C$efm8_usbdch9.c$381$1$117 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:381: return retVal;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	mov	sp,_bp
	pop	_bp
	C$efm8_usbdch9.c$382$1$117 ==.
	XFefm8_usbdch9$GetDescriptor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetInterface'
;------------------------------------------------------------
;interface                 Allocated to registers r6 r7 
;retVal                    Allocated to registers r5 
;------------------------------------------------------------
	Fefm8_usbdch9$GetInterface$0$0 ==.
	C$efm8_usbdch9.c$391$1$117 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:391: static USB_Status_TypeDef GetInterface(void)
;	-----------------------------------------
;	 function GetInterface
;	-----------------------------------------
_GetInterface:
	C$efm8_usbdch9.c$393$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:393: uint16_t interface = myUsbDevice.setup.wIndex;
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$efm8_usbdch9.c$394$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:394: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	mov	r5,#0xff
	C$efm8_usbdch9.c$396$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:396: if ((interface < SLAB_USB_NUM_INTERFACES)
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jnc	00104$
	C$efm8_usbdch9.c$397$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:397: && (myUsbDevice.setup.wLength == 1)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00104$
	cjne	r7,#0x00,00104$
	C$efm8_usbdch9.c$398$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:398: && (myUsbDevice.setup.wValue == 0)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00104$
	C$efm8_usbdch9.c$399$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:399: && (*((uint8_t *)&myUsbDevice.setup.bmRequestType) ==
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x81,00104$
	C$efm8_usbdch9.c$402$2$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:402: if (myUsbDevice.state == USBD_STATE_CONFIGURED)
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00104$
	C$efm8_usbdch9.c$409$3$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:409: EP0_Write(txZero, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_txZero
	mov	b,#0x80
	lcall	_EP0_Write
	dec	sp
	dec	sp
	C$efm8_usbdch9.c$411$3$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:411: retVal = USB_STATUS_OK;
	mov	r5,#0x00
00104$:
	C$efm8_usbdch9.c$414$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:414: return retVal;
	mov	dpl,r5
	C$efm8_usbdch9.c$415$1$128 ==.
	XFefm8_usbdch9$GetInterface$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetStatus'
;------------------------------------------------------------
;retVal                    Allocated to registers r7 
;------------------------------------------------------------
	Fefm8_usbdch9$GetStatus$0$0 ==.
	C$efm8_usbdch9.c$424$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:424: static USB_Status_TypeDef GetStatus(void)
;	-----------------------------------------
;	 function GetStatus
;	-----------------------------------------
_GetStatus:
	C$efm8_usbdch9.c$426$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:426: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	mov	r7,#0xff
	C$efm8_usbdch9.c$428$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:428: if ((myUsbDevice.setup.wLength == 2)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x02,00187$
	cjne	r6,#0x00,00187$
	sjmp	00188$
00187$:
	ljmp	00127$
00188$:
	C$efm8_usbdch9.c$429$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:429: && (myUsbDevice.setup.wValue == 0)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00189$
	ljmp	00127$
00189$:
	C$efm8_usbdch9.c$430$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:430: && (myUsbDevice.setup.bmRequestType.Direction == USB_SETUP_DIR_IN)
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r6,a
	cjne	r6,#0x01,00190$
	sjmp	00191$
00190$:
	ljmp	00127$
00191$:
	C$efm8_usbdch9.c$431$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:431: && (myUsbDevice.state >= USBD_STATE_ADDRESSED))
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x04,00192$
00192$:
	jnc	00193$
	ljmp	00127$
00193$:
	C$efm8_usbdch9.c$433$2$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:433: pStatus = htole16(0);         // Default return value is 0x0000
	mov	dptr,#_pStatus
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$efm8_usbdch9.c$435$2$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:435: switch (myUsbDevice.setup.bmRequestType.Recipient)
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	anl	a,#0x1f
	mov	r6,a
	jz	00101$
	cjne	r6,#0x01,00195$
	sjmp	00106$
00195$:
	cjne	r6,#0x02,00196$
	sjmp	00109$
00196$:
	ljmp	00123$
	C$efm8_usbdch9.c$437$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:437: case USB_SETUP_RECIPIENT_DEVICE:
00101$:
	C$efm8_usbdch9.c$438$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:438: if (myUsbDevice.setup.wIndex == 0)
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00197$
	ljmp	00123$
00197$:
	C$efm8_usbdch9.c$450$4$135 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:450: if (USBD_IsSelfPoweredCb())
	lcall	_USBD_IsSelfPoweredCb
	jnc	00103$
	C$efm8_usbdch9.c$452$5$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:452: pStatus |= htole16(DEVICE_IS_SELFPOWERED);
	mov	dptr,#_pStatus
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pStatus
	mov	a,#0x01
	orl	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00103$:
	C$efm8_usbdch9.c$458$4$135 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:458: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	C$efm8_usbdch9.c$460$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:460: break;
	C$efm8_usbdch9.c$462$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:462: case USB_SETUP_RECIPIENT_INTERFACE:
	sjmp	00123$
00106$:
	C$efm8_usbdch9.c$463$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:463: if (myUsbDevice.setup.wIndex < SLAB_USB_NUM_INTERFACES)
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	jnc	00123$
	C$efm8_usbdch9.c$465$4$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:465: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	C$efm8_usbdch9.c$467$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:467: break;
	C$efm8_usbdch9.c$470$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:470: case USB_SETUP_RECIPIENT_ENDPOINT:
	sjmp	00123$
00109$:
	C$efm8_usbdch9.c$473$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:473: if (((myUsbDevice.setup.wIndex & ~USB_EP_DIR_IN) == 0)
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	anl	a,#0x7f
	jnz	00120$
	mov	a,r6
	jnz	00120$
	C$efm8_usbdch9.c$474$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:474: && (myUsbDevice.state == USBD_STATE_ADDRESSED))
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00120$
	C$efm8_usbdch9.c$476$4$138 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:476: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	sjmp	00123$
00120$:
	C$efm8_usbdch9.c$478$3$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:478: else if (myUsbDevice.state == USBD_STATE_CONFIGURED)
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x06,00123$
	C$efm8_usbdch9.c$480$4$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:480: switch (myUsbDevice.setup.wIndex & 0xFF)
	mov	r6,#0x00
	cjne	r5,#0x01,00206$
	cjne	r6,#0x00,00206$
	sjmp	00110$
00206$:
	C$efm8_usbdch9.c$483$5$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:483: case (USB_EP_DIR_OUT | 1):
	cjne	r5,#0x81,00123$
	cjne	r6,#0x00,00123$
	sjmp	00113$
00110$:
	C$efm8_usbdch9.c$484$5$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:484: if (myUsbDevice.ep1out.state == D_EP_HALT)
	mov	dptr,#(_myUsbDevice + 0x0020)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x06,00112$
	C$efm8_usbdch9.c$486$6$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:486: pStatus = htole16(1);
	mov	dptr,#_pStatus
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00112$:
	C$efm8_usbdch9.c$488$5$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:488: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	C$efm8_usbdch9.c$489$5$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:489: break;
	C$efm8_usbdch9.c$510$5$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:510: case (USB_EP_DIR_IN | 1):
	sjmp	00123$
00113$:
	C$efm8_usbdch9.c$511$5$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:511: if (myUsbDevice.ep1in.state == D_EP_HALT)
	mov	dptr,#(_myUsbDevice + 0x0019)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x06,00115$
	C$efm8_usbdch9.c$513$6$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:513: pStatus = htole16(1);
	mov	dptr,#_pStatus
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00115$:
	C$efm8_usbdch9.c$515$5$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:515: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	C$efm8_usbdch9.c$539$2$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:539: }
00123$:
	C$efm8_usbdch9.c$542$2$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:542: if (retVal == USB_STATUS_OK)
	mov	a,r7
	jnz	00127$
	C$efm8_usbdch9.c$544$3$143 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:544: EP0_Write((uint8_t *)&pStatus, 2);
	push	ar7
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_pStatus
	mov	b,#0x00
	lcall	_EP0_Write
	dec	sp
	dec	sp
	pop	ar7
00127$:
	C$efm8_usbdch9.c$548$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:548: return retVal;
	mov	dpl,r7
	C$efm8_usbdch9.c$549$1$132 ==.
	XFefm8_usbdch9$GetStatus$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetAddress'
;------------------------------------------------------------
;retVal                    Allocated to registers r7 
;------------------------------------------------------------
	Fefm8_usbdch9$SetAddress$0$0 ==.
	C$efm8_usbdch9.c$557$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:557: static USB_Status_TypeDef SetAddress(void)
;	-----------------------------------------
;	 function SetAddress
;	-----------------------------------------
_SetAddress:
	C$efm8_usbdch9.c$559$1$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:559: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	mov	r7,#0xff
	C$efm8_usbdch9.c$561$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:561: if ((myUsbDevice.setup.wValue < 128)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x80
	mov	a,r6
	subb	a,#0x00
	jnc	00119$
	C$efm8_usbdch9.c$562$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:562: && (myUsbDevice.setup.wLength == 0)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00119$
	C$efm8_usbdch9.c$563$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:563: && (myUsbDevice.setup.bmRequestType.Recipient == USB_SETUP_RECIPIENT_DEVICE)
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	anl	a,#0x1f
	jnz	00119$
	C$efm8_usbdch9.c$564$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:564: && (myUsbDevice.setup.wIndex == 0))
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00119$
	C$efm8_usbdch9.c$568$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:568: if (myUsbDevice.state == USBD_STATE_DEFAULT)
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,00108$
	C$efm8_usbdch9.c$570$3$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:570: if (myUsbDevice.setup.wValue != 0)
	mov	a,r5
	orl	a,r6
	jz	00102$
	C$efm8_usbdch9.c$572$4$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:572: USBD_SetUsbState(USBD_STATE_ADDRESSED);
	mov	dpl,#0x04
	lcall	_USBD_SetUsbState
00102$:
	C$efm8_usbdch9.c$574$3$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:574: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	sjmp	00109$
00108$:
	C$efm8_usbdch9.c$578$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:578: else if (myUsbDevice.state == USBD_STATE_ADDRESSED)
	cjne	r4,#0x04,00109$
	C$efm8_usbdch9.c$580$3$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:580: if (myUsbDevice.setup.wValue == 0)
	mov	a,r5
	orl	a,r6
	jnz	00104$
	C$efm8_usbdch9.c$582$4$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:582: USBD_SetUsbState(USBD_STATE_DEFAULT);
	mov	dpl,#0x03
	lcall	_USBD_SetUsbState
00104$:
	C$efm8_usbdch9.c$584$3$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:584: retVal = USB_STATUS_OK;
	mov	r7,#0x00
00109$:
	C$efm8_usbdch9.c$588$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:588: if (retVal == USB_STATUS_OK)
	mov	a,r7
	C$efm8_usbdch9.c$590$4$152 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:590: USB_SetAddress(myUsbDevice.setup.wValue);
	jnz	00119$
	mov	_USB0ADR,a
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	ar5,#0x80
	mov	_USB0DAT,r5
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
00119$:
	C$efm8_usbdch9.c$594$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:594: return retVal;
	mov	dpl,r7
	C$efm8_usbdch9.c$595$1$145 ==.
	XFefm8_usbdch9$SetAddress$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetConfiguration'
;------------------------------------------------------------
;retVal                    Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +2
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
	Fefm8_usbdch9$SetConfiguration$0$0 ==.
	C$efm8_usbdch9.c$603$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:603: static USB_Status_TypeDef SetConfiguration(void)
;	-----------------------------------------
;	 function SetConfiguration
;	-----------------------------------------
_SetConfiguration:
	C$efm8_usbdch9.c$605$1$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:605: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	mov	r7,#0xff
	C$efm8_usbdch9.c$607$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:607: if (((myUsbDevice.setup.wValue >> 8) == 0)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r3,a
	mov	r4,#0x00
	mov	a,r3
	orl	a,r4
	jz	00154$
	ljmp	00118$
00154$:
	C$efm8_usbdch9.c$608$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:608: && (myUsbDevice.setup.bmRequestType.Recipient == USB_SETUP_RECIPIENT_DEVICE)
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	anl	a,#0x1f
	jz	00155$
	ljmp	00118$
00155$:
	C$efm8_usbdch9.c$609$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:609: && (myUsbDevice.setup.wLength == 0)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00156$
	ljmp	00118$
00156$:
	C$efm8_usbdch9.c$610$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:610: && (myUsbDevice.setup.wIndex == 0))
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00157$
	ljmp	00118$
00157$:
	C$efm8_usbdch9.c$614$2$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:614: if (myUsbDevice.state == USBD_STATE_ADDRESSED)
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00158$
	sjmp	00159$
00158$:
	ljmp	00115$
00159$:
	C$efm8_usbdch9.c$616$3$157 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:616: if ((myUsbDevice.setup.wValue == 0)
	mov	a,r5
	orl	a,r6
	jz	00103$
	C$efm8_usbdch9.c$617$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:617: || (myUsbDevice.setup.wValue == myUsbDevice.configDescriptor->bConfigurationValue))
	push	ar7
	mov	dptr,#(_myUsbDevice + 0x0025)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	mov	a,r5
	cjne	a,ar2,00161$
	mov	a,r6
	cjne	a,ar7,00161$
	sjmp	00162$
00161$:
	pop	ar7
	ljmp	00118$
00162$:
	pop	ar7
00103$:
	C$efm8_usbdch9.c$619$4$158 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:619: myUsbDevice.configurationValue = myUsbDevice.setup.wValue;
	mov	ar3,r5
	mov	dptr,#_myUsbDevice
	mov	a,r3
	movx	@dptr,a
	C$efm8_usbdch9.c$620$4$158 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:620: if (myUsbDevice.setup.wValue == myUsbDevice.configDescriptor->bConfigurationValue)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_myUsbDevice + 0x0025)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	mov	a,r7
	cjne	a,ar3,00102$
	mov	a,r6
	cjne	a,ar2,00102$
	C$efm8_usbdch9.c$622$5$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:622: USBD_ActivateAllEps(true);
	setb	b[0]
	mov	bits,b
	lcall	_USBD_ActivateAllEps
	C$efm8_usbdch9.c$623$5$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:623: USBD_SetUsbState(USBD_STATE_CONFIGURED);
	mov	dpl,#0x06
	lcall	_USBD_SetUsbState
00102$:
	C$efm8_usbdch9.c$625$4$158 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:625: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	sjmp	00118$
00115$:
	C$efm8_usbdch9.c$630$2$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:630: else if (myUsbDevice.state == USBD_STATE_CONFIGURED)
	cjne	r4,#0x06,00118$
	C$efm8_usbdch9.c$632$3$160 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:632: if ((myUsbDevice.setup.wValue == 0)
	mov	a,r5
	orl	a,r6
	jz	00109$
	C$efm8_usbdch9.c$633$3$160 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:633: || (myUsbDevice.setup.wValue == myUsbDevice.configDescriptor->bConfigurationValue))
	mov	dptr,#(_myUsbDevice + 0x0025)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x05
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	a,r5
	cjne	a,ar2,00118$
	mov	a,r6
	cjne	a,ar4,00118$
00109$:
	C$efm8_usbdch9.c$635$4$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:635: myUsbDevice.configurationValue = myUsbDevice.setup.wValue;
	mov	dptr,#_myUsbDevice
	mov	a,r5
	movx	@dptr,a
	C$efm8_usbdch9.c$636$4$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:636: if (myUsbDevice.setup.wValue == 0)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jnz	00107$
	C$efm8_usbdch9.c$638$5$162 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:638: USBD_SetUsbState(USBD_STATE_ADDRESSED);
	mov	dpl,#0x04
	lcall	_USBD_SetUsbState
	C$efm8_usbdch9.c$639$5$162 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:639: USBD_AbortAllTransfers();
	lcall	_USBD_AbortAllTransfers
	sjmp	00108$
00107$:
	C$efm8_usbdch9.c$644$5$163 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:644: USBD_ActivateAllEps(false);
	clr	b[0]
	mov	bits,b
	lcall	_USBD_ActivateAllEps
00108$:
	C$efm8_usbdch9.c$646$4$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:646: retVal = USB_STATUS_OK;
	mov	r7,#0x00
00118$:
	C$efm8_usbdch9.c$651$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:651: return retVal;
	mov	dpl,r7
	C$efm8_usbdch9.c$652$1$155 ==.
	XFefm8_usbdch9$SetConfiguration$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetFeature'
;------------------------------------------------------------
;retVal                    Allocated to registers r7 
;------------------------------------------------------------
	Fefm8_usbdch9$SetFeature$0$0 ==.
	C$efm8_usbdch9.c$660$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:660: static USB_Status_TypeDef SetFeature(void)
;	-----------------------------------------
;	 function SetFeature
;	-----------------------------------------
_SetFeature:
	C$efm8_usbdch9.c$662$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:662: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	mov	r7,#0xff
	C$efm8_usbdch9.c$664$1$165 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:664: if (myUsbDevice.setup.wLength == 0)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00182$
	ljmp	00134$
00182$:
	C$efm8_usbdch9.c$666$2$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:666: switch (myUsbDevice.setup.bmRequestType.Recipient)
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	anl	a,#0x1f
	mov	r6,a
	cjne	r6,#0x02,00183$
	sjmp	00184$
00183$:
	ljmp	00134$
00184$:
	C$efm8_usbdch9.c$682$3$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:682: if (((myUsbDevice.setup.wIndex & ~USB_EP_DIR_IN) == 0)
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	anl	a,#0x7f
	jnz	00129$
	mov	a,r6
	jnz	00129$
	C$efm8_usbdch9.c$683$3$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:683: && (myUsbDevice.state >= USBD_STATE_ADDRESSED))
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00187$
00187$:
	jc	00129$
	C$efm8_usbdch9.c$685$4$168 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:685: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	sjmp	00134$
00129$:
	C$efm8_usbdch9.c$687$3$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:687: else if ((((myUsbDevice.setup.wIndex) & ~USB_SETUP_DIR_D2H) < SLAB_USB_NUM_EPS_USED)
	mov	a,#0x7f
	anl	a,r5
	mov	r3,a
	mov	ar4,r6
	clr	c
	mov	a,r3
	subb	a,#0x03
	mov	a,r4
	subb	a,#0x00
	jnc	00134$
	C$efm8_usbdch9.c$688$3$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:688: && (myUsbDevice.setup.wValue == USB_FEATURE_ENDPOINT_HALT)
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00134$
	C$efm8_usbdch9.c$689$3$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:689: && (myUsbDevice.state == USBD_STATE_CONFIGURED))
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x06,00134$
	C$efm8_usbdch9.c$691$4$169 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:691: retVal = USB_STATUS_OK;
	mov	r7,#0x00
	C$efm8_usbdch9.c$692$4$169 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:692: USB_SetIndex((myUsbDevice.setup.wIndex & 0xFF) & ~USB_SETUP_DIR_D2H);
	anl	ar5,#0x7f
	mov	dpl,r5
	push	ar7
	lcall	_USB_SetIndex
	pop	ar7
	C$efm8_usbdch9.c$696$4$169 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:696: if ((myUsbDevice.setup.wIndex & 0xFF) & USB_EP_DIR_IN)
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	jnb	acc.7,00109$
	C$efm8_usbdch9.c$698$6$171 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:698: USB_EpnInStall();
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
00102$:
	mov	a,_USB0ADR
	jb	acc.7,00102$
00109$:
	C$efm8_usbdch9.c$702$4$169 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:702: if (((myUsbDevice.setup.wIndex & 0xFF) & USB_EP_DIR_IN) == 0)
	mov	a,r5
	jb	acc.7,00120$
	C$efm8_usbdch9.c$704$6$174 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:704: USB_EpnOutStall();
	mov	_USB0ADR,#0x94
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	orl	_USB0DAT,#0x20
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
00120$:
	C$efm8_usbdch9.c$709$4$169 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:709: switch (myUsbDevice.setup.wIndex & 0xFF)
	mov	r6,#0x00
	cjne	r5,#0x01,00198$
	cjne	r6,#0x00,00198$
	sjmp	00121$
00198$:
	C$efm8_usbdch9.c$712$5$177 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:712: case (USB_EP_DIR_OUT | 1):
	cjne	r5,#0x81,00134$
	cjne	r6,#0x00,00134$
	sjmp	00122$
00121$:
	C$efm8_usbdch9.c$713$5$177 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:713: myUsbDevice.ep1out.state = D_EP_HALT;
	mov	dptr,#(_myUsbDevice + 0x0020)
	mov	a,#0x06
	movx	@dptr,a
	C$efm8_usbdch9.c$714$5$177 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:714: break;
	C$efm8_usbdch9.c$727$5$177 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:727: case (USB_EP_DIR_IN | 1):
	sjmp	00134$
00122$:
	C$efm8_usbdch9.c$728$5$177 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:728: myUsbDevice.ep1in.state = D_EP_HALT;
	mov	dptr,#(_myUsbDevice + 0x0019)
	mov	a,#0x06
	movx	@dptr,a
	C$efm8_usbdch9.c$743$1$165 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:743: }
00134$:
	C$efm8_usbdch9.c$746$1$165 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:746: return retVal;
	mov	dpl,r7
	C$efm8_usbdch9.c$747$1$165 ==.
	XFefm8_usbdch9$SetFeature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetInterface'
;------------------------------------------------------------
;retVal                    Allocated to registers r7 
;interface                 Allocated to registers r5 
;altSetting                Allocated to registers r4 
;------------------------------------------------------------
	Fefm8_usbdch9$SetInterface$0$0 ==.
	C$efm8_usbdch9.c$755$1$165 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:755: static USB_Status_TypeDef SetInterface(void)
;	-----------------------------------------
;	 function SetInterface
;	-----------------------------------------
_SetInterface:
	C$efm8_usbdch9.c$757$1$165 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:757: USB_Status_TypeDef retVal = USB_STATUS_REQ_ERR;
	mov	r7,#0xff
	C$efm8_usbdch9.c$758$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:758: uint8_t interface = (uint8_t)myUsbDevice.setup.wIndex;
	mov	dptr,#(_myUsbDevice + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	C$efm8_usbdch9.c$759$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:759: uint8_t altSetting = (uint8_t)myUsbDevice.setup.wValue;
	mov	dptr,#(_myUsbDevice + 0x0006)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	C$efm8_usbdch9.c$761$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:761: if ((interface < SLAB_USB_NUM_INTERFACES)
	cjne	r5,#0x01,00124$
00124$:
	jnc	00102$
	C$efm8_usbdch9.c$762$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:762: && (myUsbDevice.state == USBD_STATE_CONFIGURED)
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x06,00102$
	C$efm8_usbdch9.c$763$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:763: && (myUsbDevice.setup.wLength == 0)
	mov	dptr,#(_myUsbDevice + 0x000a)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jnz	00102$
	C$efm8_usbdch9.c$765$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:765: && (altSetting == 0)
	mov	a,r4
	jnz	00102$
	C$efm8_usbdch9.c$767$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:767: && (myUsbDevice.setup.bmRequestType.Recipient == USB_SETUP_RECIPIENT_INTERFACE))
	mov	dptr,#(_myUsbDevice + 0x0004)
	movx	a,@dptr
	anl	a,#0x1f
	mov	r6,a
	cjne	r6,#0x01,00102$
	C$efm8_usbdch9.c$778$2$180 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:778: USBD_ActivateAllEps(false);
	clr	b[0]
	mov	bits,b
	lcall	_USBD_ActivateAllEps
	C$efm8_usbdch9.c$780$2$180 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:780: retVal = USB_STATUS_OK;
	mov	r7,#0x00
00102$:
	C$efm8_usbdch9.c$784$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:784: return retVal;
	mov	dpl,r7
	C$efm8_usbdch9.c$785$1$179 ==.
	XFefm8_usbdch9$SetInterface$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_ActivateAllEps'
;------------------------------------------------------------
;forceIdle                 Allocated to registers b0 
;------------------------------------------------------------
	Fefm8_usbdch9$USBD_ActivateAllEps$0$0 ==.
	C$efm8_usbdch9.c$796$1$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:796: static void USBD_ActivateAllEps(bool forceIdle)
;	-----------------------------------------
;	 function USBD_ActivateAllEps
;	-----------------------------------------
_USBD_ActivateAllEps:
	C$efm8_usbdch9.c$798$1$182 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:798: if (forceIdle == true)
	mov	c,b0
	clr	a
	rlc	a
	mov	r7,a
	cjne	r7,#0x01,00102$
	C$efm8_usbdch9.c$801$2$183 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:801: myUsbDevice.ep1in.state = D_EP_IDLE;
	mov	dptr,#(_myUsbDevice + 0x0019)
	mov	a,#0x01
	movx	@dptr,a
	C$efm8_usbdch9.c$810$2$183 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:810: myUsbDevice.ep1out.state = D_EP_IDLE;
	mov	dptr,#(_myUsbDevice + 0x0020)
	movx	@dptr,a
00102$:
	C$efm8_usbdch9.c$821$1$182 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:821: USB_ActivateEp(1,                                                   // ep
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	setb	b[0]
	setb	b[1]
	clr	b[2]
	mov	bits,b
	mov	dpl,#0x01
	lcall	_USB_ActivateEp
	dec	sp
	dec	sp
	C$efm8_usbdch9.c$842$1$182 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:842: USB_ActivateEp(1,                                                   // ep
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	clr	b[0]
	setb	b[1]
	clr	b[2]
	mov	bits,b
	mov	dpl,#0x01
	lcall	_USB_ActivateEp
	dec	sp
	dec	sp
	C$efm8_usbdch9.c$862$1$182 ==.
	XFefm8_usbdch9$USBD_ActivateAllEps$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_Write'
;------------------------------------------------------------
;numBytes                  Allocated to stack - _bp -4
;dat                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Fefm8_usbdch9$EP0_Write$0$0 ==.
	C$efm8_usbdch9.c$871$1$182 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:871: static void EP0_Write(uint8_t *dat, uint16_t numBytes)
;	-----------------------------------------
;	 function EP0_Write
;	-----------------------------------------
_EP0_Write:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$efm8_usbdch9.c$873$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:873: if (myUsbDevice.ep0.state == D_EP_IDLE)
	mov	dptr,#(_myUsbDevice + 0x0012)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00103$
	C$efm8_usbdch9.c$875$2$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:875: myUsbDevice.ep0.buf = (uint8_t *)dat;
	mov	dptr,#(_myUsbDevice + 0x000d)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$efm8_usbdch9.c$876$2$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:876: myUsbDevice.ep0.remaining = numBytes;
	mov	dptr,#(_myUsbDevice + 0x0010)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$efm8_usbdch9.c$877$2$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:877: myUsbDevice.ep0.state = D_EP_TRANSMITTING;
	mov	dptr,#(_myUsbDevice + 0x0012)
	mov	a,#0x02
	movx	@dptr,a
	C$efm8_usbdch9.c$878$2$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbdch9.c:878: myUsbDevice.ep0.misc.c = 0;
	mov	dptr,#(_myUsbDevice + 0x0013)
	clr	a
	movx	@dptr,a
00103$:
	pop	_bp
	C$efm8_usbdch9.c$880$1$185 ==.
	XFefm8_usbdch9$EP0_Write$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$txZero$0$0 == .
_txZero:
	.ds 2
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
