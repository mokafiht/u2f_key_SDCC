;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module usb_0
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _USB_SetIndex
	.globl _USB_GetCommonInts
	.globl _USB_GetInInts
	.globl _USB_GetOutInts
	.globl _USB_GetIndex
	.globl _USB_IsSuspended
	.globl _USB_GetSetupEnd
	.globl _USB_Ep0SentStall
	.globl _USB_Ep0OutPacketReady
	.globl _USB_Ep0InPacketReady
	.globl _USB_Ep0GetCount
	.globl _USB_EpnInGetSentStall
	.globl _USB_AbortInEp
	.globl _USB_EpnOutGetSentStall
	.globl _USB_EpnGetOutPacketReady
	.globl _USB_EpOutGetCount
	.globl _USB_AbortOutEp
	.globl _USB_ActivateEp
	.globl _USB_GetSofNumber
	.globl _USB_GetIntsEnabled
	.globl _USB_IsPrefetchEnabled
	.globl _USB_IsRegulatorEnabled
	.globl _USB_SuspendOscillator
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
;Allocation info for local variables in function 'USB_GetShortRegister'
;------------------------------------------------------------
;regAddr                   Allocated to registers r7 
;retVal                    Allocated to registers r5 r6 
;------------------------------------------------------------
	Fusb_0$USB_GetShortRegister$0$0 ==.
	C$usb_0.c$25$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:25: static uint16_t USB_GetShortRegister(uint8_t regAddr)
;	-----------------------------------------
;	 function USB_GetShortRegister
;	-----------------------------------------
_USB_GetShortRegister:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	C$usb_0.c$29$2$27 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:29: USB_READ_BYTE(regAddr);
	mov	a,#0x80
	orl	a,r7
	mov	_USB0ADR,a
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$30$1$26 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:30: retVal = (USB0DAT << 8);
	mov	r6,_USB0DAT
	mov	r5,#0x00
	C$usb_0.c$31$2$29 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:31: USB_READ_BYTE((regAddr - 1));
	mov	a,r7
	dec	a
	orl	a,#0x80
	mov	_USB0ADR,a
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	C$usb_0.c$32$1$26 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:32: retVal |= USB0DAT;
	mov	r4,_USB0DAT
	mov	r7,#0x00
	mov	a,r4
	orl	ar5,a
	mov	a,r7
	orl	ar6,a
	C$usb_0.c$34$1$26 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:34: return retVal;
	mov	dpl,r5
	mov	dph,r6
	C$usb_0.c$35$1$26 ==.
	XFusb_0$USB_GetShortRegister$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_SetIndex'
;------------------------------------------------------------
;epsel                     Allocated to registers r7 
;------------------------------------------------------------
	G$USB_SetIndex$0$0 ==.
	C$usb_0.c$40$1$26 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:40: void USB_SetIndex(uint8_t epsel)
;	-----------------------------------------
;	 function USB_SetIndex
;	-----------------------------------------
_USB_SetIndex:
	mov	r7,dpl
	C$usb_0.c$42$2$33 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:42: USB_WRITE_BYTE(INDEX, epsel);
	mov	_USB0ADR,#0x0e
	mov	_USB0DAT,r7
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$43$1$32 ==.
	XG$USB_SetIndex$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_GetCommonInts'
;------------------------------------------------------------
	G$USB_GetCommonInts$0$0 ==.
	C$usb_0.c$45$1$32 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:45: uint8_t USB_GetCommonInts(void)
;	-----------------------------------------
;	 function USB_GetCommonInts
;	-----------------------------------------
_USB_GetCommonInts:
	C$usb_0.c$47$2$37 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:47: USB_READ_BYTE(CMINT);
	mov	_USB0ADR,#0x86
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$48$1$36 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:48: return USB0DAT;
	mov	dpl,_USB0DAT
	C$usb_0.c$49$1$36 ==.
	XG$USB_GetCommonInts$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_GetInInts'
;------------------------------------------------------------
	G$USB_GetInInts$0$0 ==.
	C$usb_0.c$51$1$36 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:51: uint8_t USB_GetInInts(void)
;	-----------------------------------------
;	 function USB_GetInInts
;	-----------------------------------------
_USB_GetInInts:
	C$usb_0.c$53$2$41 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:53: USB_READ_BYTE(IN1INT);
	mov	_USB0ADR,#0x82
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$54$1$40 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:54: return USB0DAT;
	mov	dpl,_USB0DAT
	C$usb_0.c$55$1$40 ==.
	XG$USB_GetInInts$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_GetOutInts'
;------------------------------------------------------------
	G$USB_GetOutInts$0$0 ==.
	C$usb_0.c$57$1$40 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:57: uint8_t USB_GetOutInts(void)
;	-----------------------------------------
;	 function USB_GetOutInts
;	-----------------------------------------
_USB_GetOutInts:
	C$usb_0.c$59$2$45 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:59: USB_READ_BYTE(OUT1INT);
	mov	_USB0ADR,#0x84
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$60$1$44 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:60: return USB0DAT;
	mov	dpl,_USB0DAT
	C$usb_0.c$61$1$44 ==.
	XG$USB_GetOutInts$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_GetIndex'
;------------------------------------------------------------
	G$USB_GetIndex$0$0 ==.
	C$usb_0.c$63$1$44 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:63: uint8_t USB_GetIndex(void)
;	-----------------------------------------
;	 function USB_GetIndex
;	-----------------------------------------
_USB_GetIndex:
	C$usb_0.c$65$2$49 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:65: USB_READ_BYTE(INDEX);
	mov	_USB0ADR,#0x8e
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$66$1$48 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:66: return USB0DAT;
	mov	dpl,_USB0DAT
	C$usb_0.c$67$1$48 ==.
	XG$USB_GetIndex$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_IsSuspended'
;------------------------------------------------------------
	G$USB_IsSuspended$0$0 ==.
	C$usb_0.c$69$1$48 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:69: bool USB_IsSuspended(void)
;	-----------------------------------------
;	 function USB_IsSuspended
;	-----------------------------------------
_USB_IsSuspended:
	C$usb_0.c$71$2$53 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:71: USB_READ_BYTE(POWER);
	mov	_USB0ADR,#0x81
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$72$1$52 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:72: return USB0DAT & POWER_SUSMD__SUSPENDED;
	mov	a,_USB0DAT
	mov	c,acc[1]
	mov  b0,c
	C$usb_0.c$73$1$52 ==.
	XG$USB_IsSuspended$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_GetSetupEnd'
;------------------------------------------------------------
	G$USB_GetSetupEnd$0$0 ==.
	C$usb_0.c$75$1$52 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:75: bool USB_GetSetupEnd(void)
;	-----------------------------------------
;	 function USB_GetSetupEnd
;	-----------------------------------------
_USB_GetSetupEnd:
	C$usb_0.c$77$2$57 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:77: USB_READ_BYTE(E0CSR);
	mov	_USB0ADR,#0x91
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$78$1$56 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:78: return USB0DAT & E0CSR_SUEND__SET;
	mov	a,_USB0DAT
	mov	c,acc[4]
	mov  b0,c
	C$usb_0.c$79$1$56 ==.
	XG$USB_GetSetupEnd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Ep0SentStall'
;------------------------------------------------------------
	G$USB_Ep0SentStall$0$0 ==.
	C$usb_0.c$81$1$56 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:81: bool USB_Ep0SentStall(void)
;	-----------------------------------------
;	 function USB_Ep0SentStall
;	-----------------------------------------
_USB_Ep0SentStall:
	C$usb_0.c$83$2$61 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:83: USB_READ_BYTE(E0CSR);
	mov	_USB0ADR,#0x91
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$84$1$60 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:84: return USB0DAT & E0CSR_STSTL__SET;
	mov	a,_USB0DAT
	mov	c,acc[2]
	mov  b0,c
	C$usb_0.c$85$1$60 ==.
	XG$USB_Ep0SentStall$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Ep0OutPacketReady'
;------------------------------------------------------------
	G$USB_Ep0OutPacketReady$0$0 ==.
	C$usb_0.c$87$1$60 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:87: bool USB_Ep0OutPacketReady(void)
;	-----------------------------------------
;	 function USB_Ep0OutPacketReady
;	-----------------------------------------
_USB_Ep0OutPacketReady:
	C$usb_0.c$89$2$65 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:89: USB_READ_BYTE(E0CSR);
	mov	_USB0ADR,#0x91
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$90$1$64 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:90: return USB0DAT & E0CSR_OPRDY__SET;
	mov	a,_USB0DAT
	rrc	a
	mov  b0,c
	C$usb_0.c$91$1$64 ==.
	XG$USB_Ep0OutPacketReady$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Ep0InPacketReady'
;------------------------------------------------------------
	G$USB_Ep0InPacketReady$0$0 ==.
	C$usb_0.c$93$1$64 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:93: bool USB_Ep0InPacketReady(void)
;	-----------------------------------------
;	 function USB_Ep0InPacketReady
;	-----------------------------------------
_USB_Ep0InPacketReady:
	C$usb_0.c$95$2$69 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:95: USB_READ_BYTE(E0CSR);
	mov	_USB0ADR,#0x91
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$96$1$68 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:96: return USB0DAT & E0CSR_INPRDY__SET;
	mov	a,_USB0DAT
	mov	c,acc[1]
	mov  b0,c
	C$usb_0.c$97$1$68 ==.
	XG$USB_Ep0InPacketReady$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Ep0GetCount'
;------------------------------------------------------------
	G$USB_Ep0GetCount$0$0 ==.
	C$usb_0.c$99$1$68 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:99: uint8_t USB_Ep0GetCount(void)
;	-----------------------------------------
;	 function USB_Ep0GetCount
;	-----------------------------------------
_USB_Ep0GetCount:
	C$usb_0.c$101$2$73 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:101: USB_READ_BYTE(E0CNT);
	mov	_USB0ADR,#0x96
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$102$1$72 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:102: return USB0DAT;
	mov	dpl,_USB0DAT
	C$usb_0.c$103$1$72 ==.
	XG$USB_Ep0GetCount$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EpnInGetSentStall'
;------------------------------------------------------------
	G$USB_EpnInGetSentStall$0$0 ==.
	C$usb_0.c$105$1$72 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:105: bool USB_EpnInGetSentStall(void)
;	-----------------------------------------
;	 function USB_EpnInGetSentStall
;	-----------------------------------------
_USB_EpnInGetSentStall:
	C$usb_0.c$107$2$77 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:107: USB_READ_BYTE(EINCSRL);
	mov	_USB0ADR,#0x91
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$108$1$76 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:108: return (bool)(USB0DAT & EINCSRL_STSTL__SET);
	mov	a,_USB0DAT
	mov	c,acc[5]
	mov	b0,c
	C$usb_0.c$109$1$76 ==.
	XG$USB_EpnInGetSentStall$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_AbortInEp'
;------------------------------------------------------------
;fifoNum                   Allocated to registers r7 
;------------------------------------------------------------
	G$USB_AbortInEp$0$0 ==.
	C$usb_0.c$111$1$76 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:111: void USB_AbortInEp(uint8_t fifoNum)
;	-----------------------------------------
;	 function USB_AbortInEp
;	-----------------------------------------
_USB_AbortInEp:
	C$usb_0.c$113$1$80 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:113: USB_SetIndex(fifoNum);
	lcall	_USB_SetIndex
	C$usb_0.c$114$3$82 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:114: USB_EpnInFlush();
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x08
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
00110$:
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	a,_USB0DAT
	jb	acc.3,00110$
	C$usb_0.c$115$3$88 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:115: USB_EpnInFlush();
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x08
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
00128$:
	mov	_USB0ADR,#0x91
00125$:
	mov	a,_USB0ADR
	jb	acc.7,00125$
	mov	a,_USB0DAT
	jb	acc.3,00128$
	C$usb_0.c$116$1$80 ==.
	XG$USB_AbortInEp$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EpnOutGetSentStall'
;------------------------------------------------------------
	G$USB_EpnOutGetSentStall$0$0 ==.
	C$usb_0.c$118$1$80 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:118: bool USB_EpnOutGetSentStall(void)
;	-----------------------------------------
;	 function USB_EpnOutGetSentStall
;	-----------------------------------------
_USB_EpnOutGetSentStall:
	C$usb_0.c$120$2$95 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:120: USB_READ_BYTE(EOUTCSRL);
	mov	_USB0ADR,#0x94
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$121$1$94 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:121: return (bool)(USB0DAT & EOUTCSRL_STSTL__SET);
	mov	a,_USB0DAT
	mov	c,acc[6]
	mov	b0,c
	C$usb_0.c$122$1$94 ==.
	XG$USB_EpnOutGetSentStall$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EpnGetOutPacketReady'
;------------------------------------------------------------
	G$USB_EpnGetOutPacketReady$0$0 ==.
	C$usb_0.c$124$1$94 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:124: bool USB_EpnGetOutPacketReady(void)
;	-----------------------------------------
;	 function USB_EpnGetOutPacketReady
;	-----------------------------------------
_USB_EpnGetOutPacketReady:
	C$usb_0.c$126$2$99 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:126: USB_READ_BYTE(EOUTCSRL);
	mov	_USB0ADR,#0x94
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$usb_0.c$127$1$98 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:127: return (bool)(USB0DAT & EOUTCSRL_OPRDY__SET);
	mov	a,_USB0DAT
	rrc	a
	mov	b0,c
	C$usb_0.c$128$1$98 ==.
	XG$USB_EpnGetOutPacketReady$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EpOutGetCount'
;------------------------------------------------------------
	G$USB_EpOutGetCount$0$0 ==.
	C$usb_0.c$130$1$98 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:130: uint16_t USB_EpOutGetCount(void)
;	-----------------------------------------
;	 function USB_EpOutGetCount
;	-----------------------------------------
_USB_EpOutGetCount:
	C$usb_0.c$132$1$102 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:132: return USB_GetShortRegister(EOUTCNTH);
	mov	dpl,#0x17
	lcall	_USB_GetShortRegister
	C$usb_0.c$133$1$102 ==.
	XG$USB_EpOutGetCount$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_AbortOutEp'
;------------------------------------------------------------
;fifoNum                   Allocated to registers r7 
;------------------------------------------------------------
	G$USB_AbortOutEp$0$0 ==.
	C$usb_0.c$135$1$102 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:135: void USB_AbortOutEp(uint8_t fifoNum)
;	-----------------------------------------
;	 function USB_AbortOutEp
;	-----------------------------------------
_USB_AbortOutEp:
	C$usb_0.c$137$1$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:137: USB_SetIndex(fifoNum);
	lcall	_USB_SetIndex
	C$usb_0.c$138$3$106 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:138: USB_EpnOutFlush();
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x10
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
00110$:
	mov	_USB0ADR,#0x94
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	a,_USB0DAT
	jb	acc.4,00110$
	C$usb_0.c$139$3$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:139: USB_EpnOutFlush();
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x10
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
00128$:
	mov	_USB0ADR,#0x94
00125$:
	mov	a,_USB0ADR
	jb	acc.7,00125$
	mov	a,_USB0DAT
	jb	acc.4,00128$
	C$usb_0.c$140$1$104 ==.
	XG$USB_AbortOutEp$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_ActivateEp'
;------------------------------------------------------------
;packetSize                Allocated to stack - _bp -4
;isoMode                   Allocated to registers b2 
;splitMode                 Allocated to registers b1 
;inDir                     Allocated to registers b0 
;ep                        Allocated to registers r7 
;CSRH_mask                 Allocated to registers r6 
;fifoSize                  Allocated to registers r3 r4 
;------------------------------------------------------------
	G$USB_ActivateEp$0$0 ==.
	C$usb_0.c$142$1$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:142: void USB_ActivateEp(uint8_t ep,
;	-----------------------------------------
;	 function USB_ActivateEp
;	-----------------------------------------
_USB_ActivateEp:
	push	_bp
	mov	_bp,sp
	C$usb_0.c$148$1$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:148: uint8_t CSRH_mask = 0;
	C$usb_0.c$151$1$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:151: USB_SetIndex(ep);
	mov	r7,dpl
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	bits
	lcall	_USB_SetIndex
	pop	bits
	pop	ar6
	pop	ar7
	C$usb_0.c$155$1$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:155: fifoSize = (splitMode == true) ? (16 << ep) : (32 << ep);
	mov	c,b1
	clr	a
	rlc	a
	mov	r5,a
	cjne	r5,#0x01,00191$
	mov	a,r5
	sjmp	00192$
00191$:
	clr	a
00192$:
	mov	r5,a
	jz	00144$
	mov	b,r7
	inc	b
	mov	r3,#0x10
	mov	r4,#0x00
	sjmp	00195$
00194$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00195$:
	djnz	b,00194$
	sjmp	00145$
00144$:
	mov	b,r7
	inc	b
	mov	r3,#0x20
	mov	r4,#0x00
	sjmp	00197$
00196$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00197$:
	djnz	b,00196$
00145$:
	C$usb_0.c$157$1$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:157: if (packetSize <= fifoSize)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jc	00102$
	C$usb_0.c$159$2$119 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:159: CSRH_mask |= EINCSRH_DBIEN__ENABLED;
	mov	r6,#0x80
00102$:
	C$usb_0.c$162$1$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:162: if (isoMode == true)
	mov	c,b2
	clr	a
	rlc	a
	mov	r7,a
	cjne	r7,#0x01,00104$
	C$usb_0.c$164$2$120 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:164: CSRH_mask |= EINCSRH_ISO__ENABLED;
	orl	ar6,#0x40
00104$:
	C$usb_0.c$167$1$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:167: if (inDir == true)
	mov	c,b0
	clr	a
	rlc	a
	mov	r7,a
	cjne	r7,#0x01,00122$
	C$usb_0.c$169$2$121 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:169: CSRH_mask |= EINCSRH_DIRSEL__IN;
	orl	ar6,#0x20
	C$usb_0.c$171$2$121 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:171: if (splitMode == true)
	mov	a,r5
	jz	00110$
	C$usb_0.c$173$3$122 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:173: CSRH_mask |= EINCSRH_SPLIT__ENABLED;
	orl	ar6,#0x04
	C$usb_0.c$175$2$121 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:175: USB_WRITE_BYTE(EINCSRL, EINCSRL_CLRDT__BMASK);
00110$:
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	C$usb_0.c$176$3$125 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:176: USB_WRITE_BYTE(EINCSRH, CSRH_mask);
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,r6
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	C$usb_0.c$180$2$127 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:180: USB_WRITE_BYTE(EOUTCSRL, EOUTCSRL_CLRDT__BMASK);
	sjmp	00142$
00122$:
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x80
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
	C$usb_0.c$181$3$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:181: USB_WRITE_BYTE(EOUTCSRH, CSRH_mask);
	mov	_USB0ADR,#0x15
	mov	_USB0DAT,r6
00125$:
	mov	a,_USB0ADR
	jb	acc.7,00125$
	C$usb_0.c$183$2$127 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:183: if (splitMode == false)
	jb	b1,00142$
	C$usb_0.c$185$4$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:185: USB_WRITE_BYTE(EINCSRH, 0);
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x00
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
00142$:
	pop	_bp
	C$usb_0.c$188$1$118 ==.
	XG$USB_ActivateEp$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_GetSofNumber'
;------------------------------------------------------------
	G$USB_GetSofNumber$0$0 ==.
	C$usb_0.c$190$1$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:190: uint16_t USB_GetSofNumber(void)
;	-----------------------------------------
;	 function USB_GetSofNumber
;	-----------------------------------------
_USB_GetSofNumber:
	C$usb_0.c$192$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:192: return USB_GetShortRegister(FRAMEH);
	mov	dpl,#0x0d
	lcall	_USB_GetShortRegister
	C$usb_0.c$193$1$136 ==.
	XG$USB_GetSofNumber$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_GetIntsEnabled'
;------------------------------------------------------------
	G$USB_GetIntsEnabled$0$0 ==.
	C$usb_0.c$195$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:195: bool USB_GetIntsEnabled(void)
;	-----------------------------------------
;	 function USB_GetIntsEnabled
;	-----------------------------------------
_USB_GetIntsEnabled:
	C$usb_0.c$197$1$138 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:197: SFRPAGE = PG2_PAGE;
	mov	_SFRPAGE,#0x10
	C$usb_0.c$198$1$138 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:198: return (bool)(EIE2 & EIE2_EUSB0__ENABLED);
	mov	a,_EIE2
	rrc	a
	mov	b0,c
	C$usb_0.c$199$1$138 ==.
	XG$USB_GetIntsEnabled$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_IsPrefetchEnabled'
;------------------------------------------------------------
	G$USB_IsPrefetchEnabled$0$0 ==.
	C$usb_0.c$201$1$138 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:201: bool USB_IsPrefetchEnabled(void)
;	-----------------------------------------
;	 function USB_IsPrefetchEnabled
;	-----------------------------------------
_USB_IsPrefetchEnabled:
	C$usb_0.c$203$1$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:203: SFRPAGE = PG2_PAGE;
	mov	_SFRPAGE,#0x10
	C$usb_0.c$204$1$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:204: return (bool)(PFE0CN & PFE0CN_PFEN__ENABLED);
	mov	a,_PFE0CN
	mov	c,acc[5]
	mov	b0,c
	C$usb_0.c$205$1$140 ==.
	XG$USB_IsPrefetchEnabled$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_IsRegulatorEnabled'
;------------------------------------------------------------
	G$USB_IsRegulatorEnabled$0$0 ==.
	C$usb_0.c$207$1$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:207: bool USB_IsRegulatorEnabled(void)
;	-----------------------------------------
;	 function USB_IsRegulatorEnabled
;	-----------------------------------------
_USB_IsRegulatorEnabled:
	C$usb_0.c$209$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:209: SFRPAGE = PG3_PAGE;
	mov	_SFRPAGE,#0x20
	C$usb_0.c$210$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:210: return !(REG1CN & REG1CN_REG1ENB__DISABLED);
	mov	a,_REG1CN
	rlc	a
	cpl	c
	mov	b0,c
	C$usb_0.c$211$1$142 ==.
	XG$USB_IsRegulatorEnabled$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_SuspendOscillator'
;------------------------------------------------------------
;clkSelSave                Allocated to registers r7 
;------------------------------------------------------------
	G$USB_SuspendOscillator$0$0 ==.
	C$usb_0.c$213$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:213: void USB_SuspendOscillator(void)
;	-----------------------------------------
;	 function USB_SuspendOscillator
;	-----------------------------------------
_USB_SuspendOscillator:
	C$usb_0.c$215$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:215: uint8_t clkSelSave = CLKSEL & 0x7F;
	mov	a,#0x7f
	anl	a,_CLKSEL
	mov	r7,a
	C$usb_0.c$217$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:217: CLKSEL = (CLKSEL_CLKDIV__SYSCLK_DIV_8 | CLKSEL_CLKSL__HFOSC0);
	mov	_CLKSEL,#0x30
	C$usb_0.c$218$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:218: SFRPAGE = LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
	C$usb_0.c$219$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:219: PCON1 |= PCON1_SUSPEND__SUSPEND;
	orl	_PCON1,#0x40
	C$usb_0.c$220$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:220: CLKSEL = clkSelSave;
	mov	_CLKSEL,r7
	C$usb_0.c$225$1$144 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:225: if ((CLKSEL & 0x7F) != clkSelSave)
	mov	a,#0x7f
	anl	a,_CLKSEL
	mov	r6,a
	cjne	a,ar7,00108$
	sjmp	00103$
00108$:
	C$usb_0.c$227$2$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:227: CLKSEL = (CLKSEL_CLKDIV__SYSCLK_DIV_1 | CLKSEL_CLKSL__HFOSC0);
	mov	_CLKSEL,#0x00
	C$usb_0.c$228$2$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8ub1\peripheralDrivers\src\usb_0.c:228: CLKSEL = clkSelSave;
	mov	_CLKSEL,r7
00103$:
	C$usb_0.c$230$1$144 ==.
	XG$USB_SuspendOscillator$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
