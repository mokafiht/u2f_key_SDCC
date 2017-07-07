;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module efm8_usbd
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _forceModuleLoad_usbint
	.globl _USB_AbortOutEp
	.globl _USB_AbortInEp
	.globl _USB_IsSuspended
	.globl _USB_SetIndex
	.globl _USB_SuspendOscillator
	.globl _USB_IsPrefetchEnabled
	.globl _USB_IsRegulatorEnabled
	.globl _USB_GetIntsEnabled
	.globl _USB_WriteFIFO
	.globl _USBD_DeviceStateChangeCb
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
	.globl _myUsbDevice
	.globl _USBD_AbortAllTransfers
	.globl _USBD_AbortTransfer
	.globl _USBD_Connect
	.globl _USBD_Disconnect
	.globl _USBD_EpIsBusy
	.globl _USBD_GetUsbState
	.globl _USBD_Init
	.globl _USBD_Read
	.globl _USBD_StallEp
	.globl _USBD_Stop
	.globl _USBD_Suspend
	.globl _USBD_UnStallEp
	.globl _USBD_Write
	.globl _USBD_SetUsbState
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
G$myUsbDevice$0$0==.
_myUsbDevice::
	.ds 43
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
;Allocation info for local variables in function 'USBD_AbortAllTransfers'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;usbIntsEnabled            Allocated to registers b0 
;SfrPageSave               Allocated to registers r7 
;------------------------------------------------------------
	G$USBD_AbortAllTransfers$0$0 ==.
	C$efm8_usbd.c$48$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:48: void USBD_AbortAllTransfers(void)
;	-----------------------------------------
;	 function USBD_AbortAllTransfers
;	-----------------------------------------
_USBD_AbortAllTransfers:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$efm8_usbd.c$53$1$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:53: USB_SaveSfrPage();
	mov	r7,_SFRPAGE
	C$efm8_usbd.c$54$2$79 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:54: DISABLE_USB_INTS;
	push	ar7
	lcall	_USB_GetIntsEnabled
	pop	ar7
	mov	b0,c
	mov	_SFRPAGE,#0x10
	anl	_EIE2,#0xfe
	C$efm8_usbd.c$57$1$78 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:57: for (i = 1; i < SLAB_USB_NUM_EPS_USED; i++)
	mov	r6,#0x01
00110$:
	C$efm8_usbd.c$59$2$81 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:59: USBD_AbortTransfer(i);
	mov	dpl,r6
	push	ar7
	push	ar6
	push	bits
	lcall	_USBD_AbortTransfer
	pop	bits
	pop	ar6
	pop	ar7
	C$efm8_usbd.c$57$1$78 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:57: for (i = 1; i < SLAB_USB_NUM_EPS_USED; i++)
	inc	r6
	cjne	r6,#0x03,00124$
00124$:
	jc	00110$
	C$efm8_usbd.c$62$2$82 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:62: ENABLE_USB_INTS;
	jnb	b0,00109$
	mov	_SFRPAGE,#0x10
	orl	_EIE2,#0x01
00109$:
	C$efm8_usbd.c$63$1$78 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:63: USB_RestoreSfrPage();
	mov	_SFRPAGE,r7
	C$efm8_usbd.c$64$1$78 ==.
	XG$USBD_AbortAllTransfers$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_AbortTransfer'
;------------------------------------------------------------
;epAddr                    Allocated to registers r7 
;ep                        Allocated to registers r3 r4 
;retVal                    Allocated to registers r6 
;usbIntsEnabled            Allocated to stack - _bp +1
;SfrPageSave               Allocated to stack - _bp +2
;------------------------------------------------------------
	G$USBD_AbortTransfer$0$0 ==.
	C$efm8_usbd.c$66$1$78 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:66: int8_t USBD_AbortTransfer(uint8_t epAddr)
;	-----------------------------------------
;	 function USBD_AbortTransfer
;	-----------------------------------------
_USBD_AbortTransfer:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r7,dpl
	C$efm8_usbd.c$69$1$78 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:69: uint8_t retVal = USB_STATUS_OK;
	mov	r6,#0x00
	C$efm8_usbd.c$72$1$78 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:72: USB_SaveSfrPage();
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,_SFRPAGE
	C$efm8_usbd.c$75$1$86 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:75: if ((epAddr == EP0) || (epAddr >= SLAB_USB_NUM_EPS_USED))
	mov	a,r7
	jz	00109$
	cjne	r7,#0x03,00136$
00136$:
	jc	00110$
00109$:
	C$efm8_usbd.c$78$2$87 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:78: retVal = USB_STATUS_ILLEGAL;
	mov	r6,#0xfc
	ljmp	00111$
00110$:
	C$efm8_usbd.c$82$1$86 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:82: DISABLE_USB_INTS;
	push	ar6
	push	ar7
	push	ar6
	lcall	_USB_GetIntsEnabled
	pop	ar6
	pop	ar7
	mov	b0,c
	mov	_SFRPAGE,#0x10
	anl	_EIE2,#0xfe
	C$efm8_usbd.c$83$2$88 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:83: ep = GetEp(epAddr);
	mov	a,r7
	mov	b,#0x07
	mul	ab
	mov	r4,b
	add	a,#(_myUsbDevice + 0x000d)
	mov	r3,a
	mov	a,r4
	addc	a,#((_myUsbDevice + 0x000d) >> 8)
	mov	r4,a
	C$efm8_usbd.c$87$2$88 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:87: if (ep->state != D_EP_IDLE)
	mov	a,#0x05
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r5,a
	mov	dpl,r2
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00138$
	pop	ar6
	sjmp	00111$
00138$:
	pop	ar6
	C$efm8_usbd.c$89$3$91 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:89: switch (epAddr)
	cjne	r7,#0x01,00139$
	sjmp	00104$
00139$:
	C$efm8_usbd.c$92$4$92 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:92: case EP1IN:
	cjne	r7,#0x02,00106$
	sjmp	00105$
00104$:
	C$efm8_usbd.c$93$4$92 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:93: USB_AbortInEp(1);
	mov	dpl,#0x01
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	bits
	lcall	_USB_AbortInEp
	pop	bits
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	C$efm8_usbd.c$94$4$92 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:94: break;
	C$efm8_usbd.c$107$4$92 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:107: case EP1OUT:
	sjmp	00106$
00105$:
	C$efm8_usbd.c$108$4$92 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:108: USB_AbortOutEp(1);
	mov	dpl,#0x01
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	bits
	lcall	_USB_AbortOutEp
	pop	bits
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	C$efm8_usbd.c$121$3$91 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:121: }
00106$:
	C$efm8_usbd.c$124$3$91 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:124: ep->state = D_EP_IDLE;
	mov	dpl,r2
	mov	dph,r5
	mov	a,#0x01
	movx	@dptr,a
	C$efm8_usbd.c$125$3$91 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:125: ep->misc.c = 0;
	mov	a,#0x06
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movx	@dptr,a
00111$:
	C$efm8_usbd.c$129$2$93 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:129: ENABLE_USB_INTS;
	jnb	b0,00117$
	mov	_SFRPAGE,#0x10
	orl	_EIE2,#0x01
00117$:
	C$efm8_usbd.c$130$1$86 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:130: USB_RestoreSfrPage();
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	_SFRPAGE,@r0
	C$efm8_usbd.c$132$1$86 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:132: return retVal;
	mov	dpl,r6
	mov	sp,_bp
	pop	_bp
	C$efm8_usbd.c$133$1$86 ==.
	XG$USBD_AbortTransfer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_Connect'
;------------------------------------------------------------
;SfrPageSave               Allocated to registers r7 
;------------------------------------------------------------
	G$USBD_Connect$0$0 ==.
	C$efm8_usbd.c$135$1$86 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:135: void USBD_Connect(void)
;	-----------------------------------------
;	 function USBD_Connect
;	-----------------------------------------
_USBD_Connect:
	C$efm8_usbd.c$137$1$86 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:137: USB_SaveSfrPage();
	mov	r7,_SFRPAGE
	C$efm8_usbd.c$138$1$97 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:138: myUsbDevice.ep0.state = D_EP_IDLE;
	mov	dptr,#(_myUsbDevice + 0x0012)
	mov	a,#0x01
	movx	@dptr,a
	C$efm8_usbd.c$139$2$98 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:139: USB_EnablePullUpResistor();
	mov	_SFRPAGE,#0x20
	orl	_USB0XCN,#0x80
	C$efm8_usbd.c$140$2$99 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:140: USB_EnableTransceiver();
	mov	_SFRPAGE,#0x20
	orl	_USB0XCN,#0x40
	C$efm8_usbd.c$141$1$97 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:141: USB_RestoreSfrPage();
	mov	_SFRPAGE,r7
	C$efm8_usbd.c$142$1$97 ==.
	XG$USBD_Connect$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_Disconnect'
;------------------------------------------------------------
;SfrPageSave               Allocated to registers r7 
;------------------------------------------------------------
	G$USBD_Disconnect$0$0 ==.
	C$efm8_usbd.c$144$1$97 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:144: void USBD_Disconnect(void)
;	-----------------------------------------
;	 function USBD_Disconnect
;	-----------------------------------------
_USBD_Disconnect:
	C$efm8_usbd.c$146$1$97 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:146: USB_SaveSfrPage();
	mov	r7,_SFRPAGE
	C$efm8_usbd.c$147$2$102 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:147: USB_DisablePullUpResistor();
	mov	_SFRPAGE,#0x20
	anl	_USB0XCN,#0x7f
	C$efm8_usbd.c$148$1$101 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:148: USB_RestoreSfrPage();
	mov	_SFRPAGE,r7
	C$efm8_usbd.c$149$1$101 ==.
	XG$USBD_Disconnect$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_EpIsBusy'
;------------------------------------------------------------
;epAddr                    Allocated to registers r7 
;ep                        Allocated to registers 
;------------------------------------------------------------
	G$USBD_EpIsBusy$0$0 ==.
	C$efm8_usbd.c$151$1$101 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:151: bool USBD_EpIsBusy(uint8_t epAddr)
;	-----------------------------------------
;	 function USBD_EpIsBusy
;	-----------------------------------------
_USBD_EpIsBusy:
	mov	r7,dpl
	C$efm8_usbd.c$156$1$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:156: if (epAddr >= SLAB_USB_NUM_EPS_USED)
	cjne	r7,#0x03,00113$
00113$:
	jc	00102$
	C$efm8_usbd.c$159$2$105 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:159: return true;
	setb	c
	sjmp	00105$
00102$:
	C$efm8_usbd.c$162$1$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:162: ep = GetEp(epAddr);
	mov	a,r7
	mov	b,#0x07
	mul	ab
	mov	r6,b
	add	a,#(_myUsbDevice + 0x000d)
	mov	r7,a
	mov	a,r6
	addc	a,#((_myUsbDevice + 0x000d) >> 8)
	mov	r6,a
	C$efm8_usbd.c$164$1$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:164: if (ep->state == D_EP_IDLE)
	mov	dpl,r7
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
	C$efm8_usbd.c$166$2$106 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:166: return false;
	clr	c
	sjmp	00105$
00104$:
	C$efm8_usbd.c$169$1$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:169: return true;
	setb	c
00105$:
	C$efm8_usbd.c$170$1$104 ==.
	XG$USBD_EpIsBusy$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_GetUsbState'
;------------------------------------------------------------
	G$USBD_GetUsbState$0$0 ==.
	C$efm8_usbd.c$172$1$104 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:172: USBD_State_TypeDef USBD_GetUsbState(void)
;	-----------------------------------------
;	 function USBD_GetUsbState
;	-----------------------------------------
_USBD_GetUsbState:
	C$efm8_usbd.c$174$1$108 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:174: return myUsbDevice.state;
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	C$efm8_usbd.c$175$1$108 ==.
	XG$USBD_GetUsbState$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_Init'
;------------------------------------------------------------
;p                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 
;SfrPageSave               Allocated to registers r4 
;------------------------------------------------------------
	G$USBD_Init$0$0 ==.
	C$efm8_usbd.c$177$1$108 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:177: int8_t USBD_Init(const USBD_Init_TypeDef *p)
;	-----------------------------------------
;	 function USBD_Init
;	-----------------------------------------
_USBD_Init:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$efm8_usbd.c$181$1$108 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:181: USB_SaveSfrPage();
	mov	r4,_SFRPAGE
	C$efm8_usbd.c$182$2$111 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:182: USB_DisableInts();
	mov	_SFRPAGE,#0x10
	anl	_EIE2,#0xfe
	C$efm8_usbd.c$187$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:187: forceModuleLoad_usbint();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_forceModuleLoad_usbint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$efm8_usbd.c$191$2$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:191: for (i = 0; i < sizeof(myUsbDevice); i++)
	mov	r3,#0x00
00135$:
	C$efm8_usbd.c$193$2$112 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:193: *((uint8_t MEM_MODEL_SEG *)&myUsbDevice + i) = 0;
	mov	a,r3
	add	a,#_myUsbDevice
	mov	dpl,a
	clr	a
	addc	a,#(_myUsbDevice >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$efm8_usbd.c$191$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:191: for (i = 0; i < sizeof(myUsbDevice); i++)
	inc	r3
	cjne	r3,#0x2b,00164$
00164$:
	jc	00135$
	C$efm8_usbd.c$197$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:197: myUsbDevice.deviceDescriptor = p->deviceDescriptor;
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#(_myUsbDevice + 0x0022)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$efm8_usbd.c$198$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:198: myUsbDevice.configDescriptor = (USB_ConfigurationDescriptor_TypeDef *)p->configDescriptor;
	mov	a,#0x03
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#(_myUsbDevice + 0x0025)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$efm8_usbd.c$199$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:199: myUsbDevice.stringDescriptors = p->stringDescriptors;
	mov	a,#0x06
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#(_myUsbDevice + 0x0028)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$efm8_usbd.c$200$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:200: myUsbDevice.numberOfStrings = p->numberOfStrings;
	mov	a,#0x09
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#(_myUsbDevice + 0x0001)
	movx	@dptr,a
	C$efm8_usbd.c$204$2$113 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:204: USB_SetClockIntOsc();
	mov	_SFRPAGE,#0x20
	anl	_USB0CF,#0xf8
	C$efm8_usbd.c$205$2$114 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:205: USB_SelectFullSpeed();
	mov	_SFRPAGE,#0x20
	orl	_USB0XCN,#0x20
	C$efm8_usbd.c$213$2$115 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:213: USB_VbusDetectDisable();
	mov	_SFRPAGE,#0x20
	anl	_USB0CF,#0x7f
	C$efm8_usbd.c$218$2$116 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:218: USB_ForceReset();
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x08
	C$efm8_usbd.c$245$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:245: return USB_STATUS_OK;
	pop	ar4
	C$efm8_usbd.c$218$2$116 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:218: USB_ForceReset();
00114$:
	mov	a,_USB0ADR
	jb	acc.7,00114$
	C$efm8_usbd.c$219$2$118 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:219: USB_EnableDeviceInts();
	mov	_USB0ADR,#0x0b
	mov	_USB0DAT,#0x0f
00120$:
	mov	a,_USB0ADR
	jb	acc.7,00120$
	C$efm8_usbd.c$220$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:220: USBD_Connect();
	push	ar4
	lcall	_USBD_Connect
	pop	ar4
	C$efm8_usbd.c$225$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:225: myUsbDevice.state = USBD_STATE_DEFAULT;
	mov	dptr,#(_myUsbDevice + 0x0002)
	mov	a,#0x03
	movx	@dptr,a
	C$efm8_usbd.c$239$2$120 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:239: USB_EnableInts();
	mov	_SFRPAGE,#0x10
	orl	_EIE2,#0x01
	C$efm8_usbd.c$242$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:242: USB_RestoreSfrPage();
	mov	_SFRPAGE,r4
	C$efm8_usbd.c$243$2$121 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:243: USB_DisableInhibit();
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x01
00129$:
	mov	a,_USB0ADR
	jb	acc.7,00129$
	C$efm8_usbd.c$245$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:245: return USB_STATUS_OK;
	mov	dpl,#0x00
	C$efm8_usbd.c$246$1$110 ==.
	XG$USBD_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_Read'
;------------------------------------------------------------
;dat                       Allocated to stack - _bp -5
;byteCount                 Allocated to stack - _bp -7
;callback                  Allocated to registers b0 
;epAddr                    Allocated to registers r7 
;usbIntsEnabled            Allocated to registers b1 
;ep                        Allocated to registers r7 r5 
;SfrPageSave               Allocated to registers r6 
;------------------------------------------------------------
	G$USBD_Read$0$0 ==.
	C$efm8_usbd.c$248$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:248: int8_t USBD_Read(uint8_t epAddr,
;	-----------------------------------------
;	 function USBD_Read
;	-----------------------------------------
_USBD_Read:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$efm8_usbd.c$256$1$110 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:256: USB_SaveSfrPage();
	mov	r6,_SFRPAGE
	C$efm8_usbd.c$259$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:259: switch (epAddr)
	cjne	r7,#0x00,00145$
	sjmp	00105$
00145$:
	cjne	r7,#0x01,00146$
	sjmp	00104$
00146$:
	cjne	r7,#0x02,00147$
	sjmp	00105$
00147$:
	C$efm8_usbd.c$281$2$125 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:281: default:
00104$:
	C$efm8_usbd.c$283$2$125 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:283: return USB_STATUS_ILLEGAL;
	mov	dpl,#0xfc
	ljmp	00122$
	C$efm8_usbd.c$284$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:284: }
00105$:
	C$efm8_usbd.c$287$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:287: if ((epAddr != EP0) && (myUsbDevice.state != USBD_STATE_CONFIGURED))
	mov	a,r7
	jz	00107$
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x06,00149$
	sjmp	00107$
00149$:
	C$efm8_usbd.c$289$2$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:289: return USB_STATUS_DEVICE_UNCONFIGURED;
	mov	dpl,#0xf7
	ljmp	00122$
00107$:
	C$efm8_usbd.c$292$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:292: ep = GetEp(epAddr);
	mov	a,r7
	mov	b,#0x07
	mul	ab
	mov	r5,b
	add	a,#(_myUsbDevice + 0x000d)
	mov	r7,a
	mov	a,r5
	addc	a,#((_myUsbDevice + 0x000d) >> 8)
	mov	r5,a
	C$efm8_usbd.c$296$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:296: if (ep->state != D_EP_IDLE)
	mov	a,#0x05
	add	a,r7
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00150$
	sjmp	00113$
00150$:
	C$efm8_usbd.c$298$2$127 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:298: if (ep->state == D_EP_STALL)
	cjne	r2,#0x05,00110$
	C$efm8_usbd.c$300$3$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:300: return USB_STATUS_EP_STALLED;
	mov	dpl,#0xfb
	ljmp	00122$
00110$:
	C$efm8_usbd.c$304$3$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:304: return USB_STATUS_EP_BUSY;
	mov	dpl,#0xfe
	ljmp	00122$
00113$:
	C$efm8_usbd.c$308$2$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:308: DISABLE_USB_INTS;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	bits
	lcall	_USB_GetIntsEnabled
	pop	bits
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	b1,c
	mov	_SFRPAGE,#0x10
	anl	_EIE2,#0xfe
	C$efm8_usbd.c$310$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:310: ep->buf = dat;
	mov	dpl,r7
	mov	dph,r5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$efm8_usbd.c$311$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:311: ep->remaining = byteCount;
	mov	dpl,r7
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$efm8_usbd.c$312$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:312: ep->state = D_EP_RECEIVING;
	mov	dpl,r3
	mov	dph,r4
	mov	a,#0x03
	movx	@dptr,a
	C$efm8_usbd.c$313$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:313: ep->misc.bits.callback = callback;
	rl	a
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar3,r7
	mov	ar4,r5
	mov	c,b0
	clr	a
	rlc	a
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	rrc	a
	movx	a,@dptr
	mov	acc.0,c
	movx	@dptr,a
	C$efm8_usbd.c$314$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:314: ep->misc.bits.waitForRead = false;
	mov	dpl,r7
	mov	dph,r5
	movx	a,@dptr
	anl	a,#0xf7
	movx	@dptr,a
	C$efm8_usbd.c$324$2$132 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:324: ENABLE_USB_INTS;
	jnb	b1,00121$
	mov	_SFRPAGE,#0x10
	orl	_EIE2,#0x01
00121$:
	C$efm8_usbd.c$325$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:325: USB_RestoreSfrPage();
	mov	_SFRPAGE,r6
	C$efm8_usbd.c$327$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:327: return USB_STATUS_OK;
	mov	dpl,#0x00
00122$:
	pop	_bp
	C$efm8_usbd.c$328$1$124 ==.
	XG$USBD_Read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_StallEp'
;------------------------------------------------------------
;epAddr                    Allocated to registers r7 
;usbIntsEnabled            Allocated to registers b0 
;SfrPageSave               Allocated to registers r6 
;------------------------------------------------------------
	G$USBD_StallEp$0$0 ==.
	C$efm8_usbd.c$357$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:357: int8_t USBD_StallEp(uint8_t epAddr)
;	-----------------------------------------
;	 function USBD_StallEp
;	-----------------------------------------
_USBD_StallEp:
	mov	r7,dpl
	C$efm8_usbd.c$361$1$124 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:361: USB_SaveSfrPage();
	mov	r6,_SFRPAGE
	C$efm8_usbd.c$364$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:364: if ((epAddr == EP0) || (epAddr >= SLAB_USB_NUM_EPS_USED))
	mov	a,r7
	jz	00101$
	cjne	r7,#0x03,00160$
00160$:
	jc	00102$
00101$:
	C$efm8_usbd.c$367$2$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:367: return USB_STATUS_ILLEGAL;
	mov	dpl,#0xfc
	sjmp	00130$
00102$:
	C$efm8_usbd.c$370$2$138 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:370: DISABLE_USB_INTS;
	push	ar7
	push	ar6
	lcall	_USB_GetIntsEnabled
	pop	ar6
	pop	ar7
	mov	b0,c
	mov	_SFRPAGE,#0x10
	anl	_EIE2,#0xfe
	C$efm8_usbd.c$374$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:374: switch (epAddr)
	cjne	r7,#0x01,00162$
	sjmp	00107$
00162$:
	C$efm8_usbd.c$377$2$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:377: case (EP1IN):
	cjne	r7,#0x02,00124$
	sjmp	00114$
00107$:
	C$efm8_usbd.c$378$2$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:378: myUsbDevice.ep1in.state = D_EP_HALT;
	mov	dptr,#(_myUsbDevice + 0x0019)
	mov	a,#0x06
	movx	@dptr,a
	C$efm8_usbd.c$379$2$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:379: USB_SetIndex(1);
	mov	dpl,#0x01
	push	ar6
	push	bits
	lcall	_USB_SetIndex
	pop	bits
	pop	ar6
	C$efm8_usbd.c$380$3$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:380: USB_EpnInStall();
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
00108$:
	mov	a,_USB0ADR
	jb	acc.7,00108$
	C$efm8_usbd.c$381$2$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:381: break;
	C$efm8_usbd.c$398$2$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:398: case (EP1OUT):
	sjmp	00124$
00114$:
	C$efm8_usbd.c$399$2$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:399: myUsbDevice.ep1out.state = D_EP_HALT;
	mov	dptr,#(_myUsbDevice + 0x0020)
	mov	a,#0x06
	movx	@dptr,a
	C$efm8_usbd.c$400$2$140 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:400: USB_SetIndex(1);
	mov	dpl,#0x01
	push	ar6
	push	bits
	lcall	_USB_SetIndex
	pop	bits
	pop	ar6
	C$efm8_usbd.c$401$3$143 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:401: USB_EpnOutStall();
	mov	_USB0ADR,#0x94
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	orl	_USB0DAT,#0x20
00118$:
	mov	a,_USB0ADR
	jb	acc.7,00118$
	C$efm8_usbd.c$418$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:418: }
00124$:
	C$efm8_usbd.c$420$2$146 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:420: ENABLE_USB_INTS;
	jnb	b0,00129$
	mov	_SFRPAGE,#0x10
	orl	_EIE2,#0x01
00129$:
	C$efm8_usbd.c$421$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:421: USB_RestoreSfrPage();
	mov	_SFRPAGE,r6
	C$efm8_usbd.c$423$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:423: return USB_STATUS_OK;
	mov	dpl,#0x00
00130$:
	C$efm8_usbd.c$424$1$136 ==.
	XG$USBD_StallEp$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_Stop'
;------------------------------------------------------------
	G$USBD_Stop$0$0 ==.
	C$efm8_usbd.c$426$1$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:426: void USBD_Stop(void)
;	-----------------------------------------
;	 function USBD_Stop
;	-----------------------------------------
_USBD_Stop:
	C$efm8_usbd.c$428$2$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:428: USB_DisableInts();
	mov	_SFRPAGE,#0x10
	anl	_EIE2,#0xfe
	C$efm8_usbd.c$429$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:429: USBD_Disconnect();
	lcall	_USBD_Disconnect
	C$efm8_usbd.c$430$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:430: USBD_SetUsbState(USBD_STATE_NONE);
	mov	dpl,#0x00
	lcall	_USBD_SetUsbState
	C$efm8_usbd.c$431$1$150 ==.
	XG$USBD_Stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_Suspend'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;regulatorEnabled          Allocated to registers b1 
;prefetchEnabled           Allocated to registers b0 
;SfrPageSave               Allocated to registers r7 
;------------------------------------------------------------
	G$USBD_Suspend$0$0 ==.
	C$efm8_usbd.c$433$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:433: void USBD_Suspend(void)
;	-----------------------------------------
;	 function USBD_Suspend
;	-----------------------------------------
_USBD_Suspend:
	C$efm8_usbd.c$438$1$150 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:438: USB_SaveSfrPage();
	mov	r7,_SFRPAGE
	C$efm8_usbd.c$444$1$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:444: if (USB_IsSuspended() == true)
	push	ar7
	lcall	_USB_IsSuspended
	pop	ar7
	mov  b0,c
	clr	a
	rlc	a
	mov	r6,a
	cjne	r6,#0x01,00167$
	sjmp	00168$
00167$:
	ljmp	00137$
00168$:
	C$efm8_usbd.c$449$3$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:449: USB_SuspendTransceiver();
	mov	_SFRPAGE,#0x20
	anl	_USB0XCN,#0xbc
	C$efm8_usbd.c$452$3$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:452: USB_SetSuspendClock();
	mov	_SFRPAGE,#0x20
	anl	_USB0CF,#0xf8
	orl	_USB0CF,#0x01
	C$efm8_usbd.c$457$2$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:457: prefetchEnabled = USB_IsPrefetchEnabled();
	push	ar7
	lcall	_USB_IsPrefetchEnabled
	mov	b0,c
	C$efm8_usbd.c$458$3$157 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:458: USB_DisablePrefetch();
	mov	_SFRPAGE,#0x10
	anl	_PFE0CN,#0xcf
	C$efm8_usbd.c$461$2$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:461: if (USB_IsRegulatorEnabled() == true)
	push	bits
	lcall	_USB_IsRegulatorEnabled
	pop	bits
	pop	ar7
	mov  b1,c
	clr	a
	rlc	a
	mov	r6,a
	cjne	r6,#0x01,00115$
	C$efm8_usbd.c$463$3$158 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:463: regulatorEnabled = true;
	setb	b1
	C$efm8_usbd.c$468$4$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:468: USB_SuspendRegulator();
	mov	_SFRPAGE,#0x20
	orl	_REG1CN,#0x02
	C$efm8_usbd.c$471$3$158 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:471: for (i = 0; i < 3; i++)
	mov	r6,#0x03
00140$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00140$
	sjmp	00117$
00115$:
	C$efm8_usbd.c$478$3$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:478: regulatorEnabled = false;
	clr	b1
	C$efm8_usbd.c$481$2$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:481: do
00117$:
	C$efm8_usbd.c$483$3$162 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:483: USB_SuspendOscillator();
	push	ar7
	push	bits
	lcall	_USB_SuspendOscillator
	pop	bits
	C$efm8_usbd.c$507$2$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:507: } while (USB_IsSuspended() == true);
	push	bits
	lcall	_USB_IsSuspended
	pop	bits
	pop	ar7
	mov  b2,c
	clr	a
	rlc	a
	mov	r6,a
	cjne	r6,#0x01,00172$
	sjmp	00117$
00172$:
	C$efm8_usbd.c$510$2$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:510: if (regulatorEnabled == true)
	mov	c,b1
	clr	a
	rlc	a
	mov	r6,a
	cjne	r6,#0x01,00124$
	C$efm8_usbd.c$512$4$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:512: USB_UnsuspendRegulator();
	mov	_SFRPAGE,#0x20
	anl	_REG1CN,#0xfd
00124$:
	C$efm8_usbd.c$516$2$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:516: if (prefetchEnabled == true)
	mov	c,b0
	clr	a
	rlc	a
	mov	r6,a
	cjne	r6,#0x01,00130$
	C$efm8_usbd.c$518$4$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:518: USB_EnablePrefetch();
	mov	_SFRPAGE,#0x10
	orl	_PFE0CN,#0x30
	C$efm8_usbd.c$523$2$154 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:523: USB_SetNormalClock();
00130$:
	mov	_SFRPAGE,#0x20
	anl	_USB0CF,#0xf8
	C$efm8_usbd.c$525$3$168 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:525: USB_EnableTransceiver();
	mov	_SFRPAGE,#0x20
	orl	_USB0XCN,#0x40
00137$:
	C$efm8_usbd.c$528$1$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:528: USB_RestoreSfrPage();
	mov	_SFRPAGE,r7
	C$efm8_usbd.c$529$1$153 ==.
	XG$USBD_Suspend$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_UnStallEp'
;------------------------------------------------------------
;epAddr                    Allocated to registers r7 
;usbIntsEnabled            Allocated to registers b0 
;SfrPageSave               Allocated to registers r6 
;------------------------------------------------------------
	G$USBD_UnStallEp$0$0 ==.
	C$efm8_usbd.c$531$1$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:531: int8_t USBD_UnStallEp(uint8_t epAddr)
;	-----------------------------------------
;	 function USBD_UnStallEp
;	-----------------------------------------
_USBD_UnStallEp:
	mov	r7,dpl
	C$efm8_usbd.c$535$1$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:535: USB_SaveSfrPage();
	mov	r6,_SFRPAGE
	C$efm8_usbd.c$538$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:538: if ((epAddr == EP0) || (epAddr >= SLAB_USB_NUM_EPS_USED))
	mov	a,r7
	jz	00127$
	cjne	r7,#0x03,00161$
00161$:
	jc	00128$
00127$:
	C$efm8_usbd.c$541$2$171 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:541: return USB_STATUS_ILLEGAL;
	mov	dpl,#0xfc
	sjmp	00131$
00128$:
	C$efm8_usbd.c$545$3$173 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:545: DISABLE_USB_INTS;
	push	ar7
	push	ar6
	lcall	_USB_GetIntsEnabled
	pop	ar6
	pop	ar7
	mov	b0,c
	mov	_SFRPAGE,#0x10
	anl	_EIE2,#0xfe
	C$efm8_usbd.c$548$2$172 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:548: switch (epAddr)
	cjne	r7,#0x01,00163$
	sjmp	00104$
00163$:
	C$efm8_usbd.c$551$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:551: case (EP1IN):
	cjne	r7,#0x02,00121$
	sjmp	00111$
00104$:
	C$efm8_usbd.c$552$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:552: myUsbDevice.ep1in.state = D_EP_IDLE;
	mov	dptr,#(_myUsbDevice + 0x0019)
	mov	a,#0x01
	movx	@dptr,a
	C$efm8_usbd.c$553$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:553: USB_SetIndex(1);
	mov	dpl,#0x01
	push	ar6
	push	bits
	lcall	_USB_SetIndex
	pop	bits
	pop	ar6
	C$efm8_usbd.c$554$4$176 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:554: USB_EpnInEndStall();
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
00105$:
	mov	a,_USB0ADR
	jb	acc.7,00105$
	C$efm8_usbd.c$555$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:555: break;
	C$efm8_usbd.c$572$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:572: case (EP1OUT):
	sjmp	00121$
00111$:
	C$efm8_usbd.c$573$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:573: myUsbDevice.ep1out.state = D_EP_IDLE;
	mov	dptr,#(_myUsbDevice + 0x0020)
	mov	a,#0x01
	movx	@dptr,a
	C$efm8_usbd.c$574$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:574: USB_SetIndex(1);
	mov	dpl,#0x01
	push	ar6
	push	bits
	lcall	_USB_SetIndex
	pop	bits
	pop	ar6
	C$efm8_usbd.c$575$4$178 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:575: USB_EpnOutEndStall();
	mov	_USB0ADR,#0x94
00112$:
	mov	a,_USB0ADR
	jb	acc.7,00112$
	anl	_USB0DAT,#0xdf
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	C$efm8_usbd.c$592$2$172 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:592: }
00121$:
	C$efm8_usbd.c$594$3$181 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:594: ENABLE_USB_INTS;
	jnb	b0,00126$
	mov	_SFRPAGE,#0x10
	orl	_EIE2,#0x01
00126$:
	C$efm8_usbd.c$595$2$172 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:595: USB_RestoreSfrPage();
	mov	_SFRPAGE,r6
	C$efm8_usbd.c$598$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:598: return USB_STATUS_OK;
	mov	dpl,#0x00
00131$:
	C$efm8_usbd.c$599$1$170 ==.
	XG$USBD_UnStallEp$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_Write'
;------------------------------------------------------------
;dat                       Allocated to stack - _bp -5
;byteCount                 Allocated to stack - _bp -7
;callback                  Allocated to registers b0 
;epAddr                    Allocated to registers r7 
;usbIntsEnabled            Allocated to registers b1 
;ep                        Allocated to registers r3 r4 
;SfrPageSave               Allocated to registers r6 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$USBD_Write$0$0 ==.
	C$efm8_usbd.c$601$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:601: int8_t USBD_Write(uint8_t epAddr,
;	-----------------------------------------
;	 function USBD_Write
;	-----------------------------------------
_USBD_Write:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r7,dpl
	C$efm8_usbd.c$609$1$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:609: USB_SaveSfrPage();
	mov	r6,_SFRPAGE
	C$efm8_usbd.c$612$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:612: switch (epAddr)
	clr	a
	cjne	r7,#0x00,00159$
	inc	a
00159$:
	mov	r5,a
	jnz	00105$
	cjne	r7,#0x01,00162$
	sjmp	00105$
00162$:
	C$efm8_usbd.c$636$2$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:636: return USB_STATUS_ILLEGAL;
	mov	dpl,#0xfc
	ljmp	00125$
	C$efm8_usbd.c$637$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:637: }
00105$:
	C$efm8_usbd.c$641$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:641: if ((epAddr != EP0) && (myUsbDevice.state != USBD_STATE_CONFIGURED))
	mov	a,r7
	jz	00107$
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x06,00164$
	sjmp	00107$
00164$:
	C$efm8_usbd.c$643$2$187 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:643: return USB_STATUS_DEVICE_UNCONFIGURED;
	mov	dpl,#0xf7
	ljmp	00125$
00107$:
	C$efm8_usbd.c$646$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:646: ep = GetEp(epAddr);
	mov	a,r7
	mov	b,#0x07
	mul	ab
	mov	r4,b
	add	a,#(_myUsbDevice + 0x000d)
	mov	r3,a
	mov	a,r4
	addc	a,#((_myUsbDevice + 0x000d) >> 8)
	mov	r4,a
	C$efm8_usbd.c$650$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:650: if (ep->state != D_EP_IDLE)
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00165$
	sjmp	00113$
00165$:
	C$efm8_usbd.c$652$2$188 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:652: if (ep->state == D_EP_STALL)
	cjne	r2,#0x05,00110$
	C$efm8_usbd.c$654$3$189 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:654: return USB_STATUS_EP_STALLED;
	mov	dpl,#0xfb
	ljmp	00125$
00110$:
	C$efm8_usbd.c$658$3$190 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:658: return USB_STATUS_EP_BUSY;
	mov	dpl,#0xfe
	ljmp	00125$
00113$:
	C$efm8_usbd.c$662$2$191 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:662: DISABLE_USB_INTS;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	bits
	lcall	_USB_GetIntsEnabled
	pop	bits
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	b1,c
	mov	_SFRPAGE,#0x10
	anl	_EIE2,#0xfe
	C$efm8_usbd.c$664$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:664: ep->buf = dat;
	mov	dpl,r3
	mov	dph,r4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$efm8_usbd.c$665$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:665: ep->remaining = byteCount;
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$efm8_usbd.c$666$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:666: ep->state = D_EP_TRANSMITTING;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,#0x02
	movx	@dptr,a
	C$efm8_usbd.c$667$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:667: ep->misc.bits.callback = callback;
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	c,b0
	clr	a
	rlc	a
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	rrc	a
	movx	a,@dptr
	mov	acc.0,c
	movx	@dptr,a
	C$efm8_usbd.c$669$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:669: switch (epAddr)
	mov	a,r5
	jnz	00117$
	C$efm8_usbd.c$673$2$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:673: case (EP0):
	cjne	r7,#0x01,00119$
	sjmp	00118$
00117$:
	C$efm8_usbd.c$674$2$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:674: myUsbDevice.ep0.misc.bits.inPacketPending = true;
	mov	dptr,#(_myUsbDevice + 0x0013)
	movx	a,@dptr
	orl	a,#0x04
	movx	@dptr,a
	C$efm8_usbd.c$675$2$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:675: break;
	C$efm8_usbd.c$680$2$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:680: case (EP1IN):
	sjmp	00119$
00118$:
	C$efm8_usbd.c$683$2$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:683: myUsbDevice.ep1in.buf,
	mov	dptr,#(_myUsbDevice + 0x0014)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$efm8_usbd.c$682$2$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:682: (byteCount > SLAB_USB_EP1IN_MAX_PACKET_SIZE) ? SLAB_USB_EP1IN_MAX_PACKET_SIZE : byteCount,
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,#0x40
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jnc	00127$
	mov	r2,#0x40
	mov	r3,#0x00
	sjmp	00128$
00127$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
00128$:
	C$efm8_usbd.c$681$2$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:681: USB_WriteFIFO(1,
	push	ar6
	push	bits
	push	ar4
	push	ar5
	push	ar7
	push	ar2
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x01
	lcall	_USB_WriteFIFO
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar6
	C$efm8_usbd.c$708$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:708: }
00119$:
	C$efm8_usbd.c$710$2$194 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:710: ENABLE_USB_INTS;
	jnb	b1,00124$
	mov	_SFRPAGE,#0x10
	orl	_EIE2,#0x01
00124$:
	C$efm8_usbd.c$711$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:711: USB_RestoreSfrPage();
	mov	_SFRPAGE,r6
	C$efm8_usbd.c$713$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:713: return USB_STATUS_OK;
	mov	dpl,#0x00
00125$:
	mov	sp,_bp
	pop	_bp
	C$efm8_usbd.c$714$1$185 ==.
	XG$USBD_Write$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBD_SetUsbState'
;------------------------------------------------------------
;newState                  Allocated to registers r7 
;currentState              Allocated to registers r6 
;------------------------------------------------------------
	G$USBD_SetUsbState$0$0 ==.
	C$efm8_usbd.c$719$1$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:719: void USBD_SetUsbState(USBD_State_TypeDef newState)
;	-----------------------------------------
;	 function USBD_SetUsbState
;	-----------------------------------------
_USBD_SetUsbState:
	mov	r7,dpl
	C$efm8_usbd.c$726$1$198 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:726: currentState = myUsbDevice.state;
	mov	dptr,#(_myUsbDevice + 0x0002)
	movx	a,@dptr
	mov	r6,a
	C$efm8_usbd.c$730$1$198 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:730: if ((currentState >= USBD_STATE_SUSPENDED)
	cjne	r6,#0x05,00122$
00122$:
	jc	00102$
	C$efm8_usbd.c$731$1$198 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:731: && (newState < USBD_STATE_SUSPENDED))
	cjne	r7,#0x05,00124$
00124$:
	jnc	00102$
	C$efm8_usbd.c$733$2$199 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:733: USBD_AbortAllTransfers();
	push	ar7
	push	ar6
	lcall	_USBD_AbortAllTransfers
	pop	ar6
	pop	ar7
00102$:
	C$efm8_usbd.c$742$1$198 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:742: if (newState == USBD_STATE_SUSPENDED)
	cjne	r7,#0x05,00105$
	C$efm8_usbd.c$744$2$200 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:744: myUsbDevice.savedState = currentState;
	mov	dptr,#(_myUsbDevice + 0x0003)
	mov	a,r6
	movx	@dptr,a
00105$:
	C$efm8_usbd.c$747$1$198 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:747: myUsbDevice.state = newState;
	mov	dptr,#(_myUsbDevice + 0x0002)
	mov	a,r7
	movx	@dptr,a
	C$efm8_usbd.c$750$1$198 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:750: if (currentState != newState)
	mov	a,r6
	cjne	a,ar7,00128$
	sjmp	00108$
00128$:
	C$efm8_usbd.c$752$2$201 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\lib\efm8_usb\src\efm8_usbd.c:752: USBD_DeviceStateChangeCb(currentState, newState);
	push	ar7
	mov	dpl,r6
	lcall	_USBD_DeviceStateChangeCb
	dec	sp
00108$:
	C$efm8_usbd.c$755$1$198 ==.
	XG$USBD_SetUsbState$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
