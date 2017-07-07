;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module u2f_hid
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _u2f_request
	.globl _u2f_printlx
	.globl _u2f_printb
	.globl _u2f_prints
	.globl _usb_write
	.globl _app_wink
	.globl _set_app_error
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
	.globl __hid_lock_cid
	.globl __hid_lockt
	.globl _u2f_hid_init
	.globl _u2f_hid_set_len
	.globl _u2f_hid_flush
	.globl _u2f_hid_writeback
	.globl _u2f_hid_check_timeouts
	.globl _u2f_hid_request
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
Fu2f_hid$hid_layer$0$0==.
_hid_layer:
	.ds 288
Fu2f_hid$CIDS$0$0==.
_CIDS:
	.ds 50
Fu2f_hid$_hid_pkt$0$0==.
__hid_pkt:
	.ds 64
Lu2f_hid.get_new_cid$base$1$142==.
_get_new_cid_base_1_142:
	.ds 4
Fu2f_hid$errbuf$0$0==.
_errbuf:
	.ds 64
Lu2f_hid.u2f_hid_request$last_seq$1$193==.
_u2f_hid_request_last_seq_1_193:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$_hid_lockt$0$0==.
__hid_lockt::
	.ds 4
G$_hid_lock_cid$0$0==.
__hid_lock_cid::
	.ds 4
Fu2f_hid$CID_NUM$0$0==.
_CID_NUM:
	.ds 1
Fu2f_hid$_hid_offset$0$0==.
__hid_offset:
	.ds 1
Fu2f_hid$_hid_seq$0$0==.
__hid_seq:
	.ds 2
Fu2f_hid$_hid_in_session$0$0==.
__hid_in_session:
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
;------------------------------------------------------------
;Allocation info for local variables in function 'get_new_cid'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +1
;base                      Allocated with name '_get_new_cid_base_1_142'
;------------------------------------------------------------
	Fu2f_hid$get_new_cid$0$0 ==.
	C$u2f_hid.c$201$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:201: static uint32_t base = 0xcafebabe;
	mov	dptr,#_get_new_cid_base_1_142
	mov	a,#0xbe
	movx	@dptr,a
	mov	a,#0xba
	inc	dptr
	movx	@dptr,a
	mov	a,#0xfe
	inc	dptr
	movx	@dptr,a
	mov	a,#0xca
	inc	dptr
	movx	@dptr,a
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
;Allocation info for local variables in function 'u2f_hid_init'
;------------------------------------------------------------
	G$u2f_hid_init$0$0 ==.
	C$u2f_hid.c$106$0$0 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:106: void u2f_hid_init()
;	-----------------------------------------
;	 function u2f_hid_init
;	-----------------------------------------
_u2f_hid_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$u2f_hid.c$108$1$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:108: memset(CIDS, 0, sizeof(CIDS));
	mov	a,#0x32
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#_CIDS
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	C$u2f_hid.c$109$1$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:109: memset(&hid_layer, 0, sizeof(hid_layer));
	mov	a,#0x20
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_hid_layer
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	C$u2f_hid.c$110$1$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:110: CID_NUM = 0;
	mov	dptr,#_CID_NUM
	clr	a
	movx	@dptr,a
	C$u2f_hid.c$111$1$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:111: _hid_offset = 0;
	mov	dptr,#__hid_offset
	movx	@dptr,a
	C$u2f_hid.c$112$1$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:112: _hid_seq = 0;
	mov	dptr,#__hid_seq
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$113$1$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:113: _hid_in_session = 0;
	mov	dptr,#__hid_in_session
	movx	@dptr,a
	C$u2f_hid.c$114$1$126 ==.
	XG$u2f_hid_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_hid_set_len'
;------------------------------------------------------------
;len                       Allocated to registers r6 r7 
;------------------------------------------------------------
	G$u2f_hid_set_len$0$0 ==.
	C$u2f_hid.c$116$1$126 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:116: void u2f_hid_set_len(uint16_t len)
;	-----------------------------------------
;	 function u2f_hid_set_len
;	-----------------------------------------
_u2f_hid_set_len:
	mov	r6,dpl
	mov	r7,dph
	C$u2f_hid.c$118$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:118: hid_layer.res_len = len;
	mov	dptr,#(_hid_layer + 0x0010)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$119$1$128 ==.
	XG$u2f_hid_set_len$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_hid_reset_packet'
;------------------------------------------------------------
	Fu2f_hid$u2f_hid_reset_packet$0$0 ==.
	C$u2f_hid.c$122$1$128 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:122: static void u2f_hid_reset_packet()
;	-----------------------------------------
;	 function u2f_hid_reset_packet
;	-----------------------------------------
_u2f_hid_reset_packet:
	C$u2f_hid.c$124$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:124: _hid_seq = 0;
	mov	dptr,#__hid_seq
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$125$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:125: _hid_offset = 0;
	mov	dptr,#__hid_offset
	movx	@dptr,a
	C$u2f_hid.c$126$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:126: _hid_in_session = 0;
	mov	dptr,#__hid_in_session
	movx	@dptr,a
	C$u2f_hid.c$127$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:127: memset(&hid_layer, 0, sizeof(hid_layer));
	mov	a,#0x20
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_hid_layer
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	C$u2f_hid.c$128$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:128: memset(_hid_pkt, 0, HID_PACKET_SIZE);
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#__hid_pkt
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	C$u2f_hid.c$129$1$129 ==.
	XFu2f_hid$u2f_hid_reset_packet$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_hid_flush'
;------------------------------------------------------------
	G$u2f_hid_flush$0$0 ==.
	C$u2f_hid.c$132$1$129 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:132: void u2f_hid_flush()
;	-----------------------------------------
;	 function u2f_hid_flush
;	-----------------------------------------
_u2f_hid_flush:
	C$u2f_hid.c$134$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:134: if (_hid_offset)
	mov	dptr,#__hid_offset
	movx	a,@dptr
	mov	r7,a
	jz	00102$
	C$u2f_hid.c$136$2$131 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:136: usb_write(_hid_pkt, HID_PACKET_SIZE);
	mov	a,#0x40
	push	acc
	mov	dptr,#__hid_pkt
	mov	b,#0x00
	lcall	_usb_write
	dec	sp
00102$:
	C$u2f_hid.c$138$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:138: u2f_hid_reset_packet();
	lcall	_u2f_hid_reset_packet
	C$u2f_hid.c$139$1$130 ==.
	XG$u2f_hid_flush$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_hid_writeback'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -4
;payload                   Allocated to registers 
;r                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$u2f_hid_writeback$0$0 ==.
	C$u2f_hid.c$143$1$130 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:143: void u2f_hid_writeback(uint8_t * payload, uint16_t len)
;	-----------------------------------------
;	 function u2f_hid_writeback
;	-----------------------------------------
_u2f_hid_writeback:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$u2f_hid.c$146$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:146: struct u2f_hid_msg * r = (struct u2f_hid_msg *) _hid_pkt;
	C$u2f_hid.c$148$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:148: _hid_in_session = 1;
	mov	dptr,#__hid_in_session
	mov	a,#0x01
	movx	@dptr,a
	C$u2f_hid.c$151$3$135 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:151: do
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00112$:
	C$u2f_hid.c$154$2$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:154: if (_hid_offset == 0)
	mov	dptr,#__hid_offset
	movx	a,@dptr
	jz	00135$
	ljmp	00107$
00135$:
	C$u2f_hid.c$156$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:156: r->cid = hid_layer.current_cid;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_hid_layer + 0x0001)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__hid_pkt
	mov	a,r2
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$157$3$135 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:157: if (!_hid_seq)
	mov	dptr,#__hid_seq
	mov	r0,_bp
	inc	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	dptr,#__hid_seq
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00104$
	C$u2f_hid.c$159$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:159: r->pkt.init.cmd = hid_layer.current_cmd;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_hid_layer + 0x0005)
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#(__hid_pkt + 0x0004)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
	C$u2f_hid.c$160$4$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:160: U2FHID_SET_LEN(r, hid_layer.res_len);
	mov	dptr,#(_hid_layer + 0x0010)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(__hid_pkt + 0x0005)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$u2f_hid.c$161$4$136 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:161: _hid_offset = 7;
	mov	dptr,#__hid_offset
	mov	a,#0x07
	movx	@dptr,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00107$
00104$:
	C$u2f_hid.c$165$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:165: r->pkt.cont.seq = (uint8_t)_hid_seq - 1;
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	dec	r2
	mov	dptr,#(__hid_pkt + 0x0004)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
	C$u2f_hid.c$166$4$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:166: _hid_offset = 5;
	mov	dptr,#__hid_offset
	mov	a,#0x05
	movx	@dptr,a
	C$u2f_hid.c$167$4$137 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:167: if (_hid_seq-1 > 127)
	mov	dptr,#__hid_seq
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	dec	r2
	cjne	r2,#0xff,00137$
	dec	r7
00137$:
	clr	c
	mov	a,#0x7f
	subb	a,r2
	clr	a
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00107$
	C$u2f_hid.c$169$5$138 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:169: set_app_error(ERROR_SEQ_EXCEEDED);
	mov	dpl,#0x12
	lcall	_set_app_error
	C$u2f_hid.c$170$5$138 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:170: return;
	ljmp	00115$
00107$:
	C$u2f_hid.c$175$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:175: _hid_pkt[_hid_offset++] = *payload++;
	push	ar3
	push	ar4
	mov	dptr,#__hid_offset
	movx	a,@dptr
	mov	r2,a
	inc	a
	movx	@dptr,a
	mov	a,r2
	add	a,#__hid_pkt
	mov	r2,a
	clr	a
	addc	a,#(__hid_pkt >> 8)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r2
	mov	dph,r4
	mov	a,r3
	movx	@dptr,a
	C$u2f_hid.c$176$2$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:176: hid_layer.bytes_written++;
	mov	dptr,#(_hid_layer + 0x000e)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00139$
	inc	r4
00139$:
	mov	dptr,#(_hid_layer + 0x000e)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$177$2$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:177: if (_hid_offset == HID_PACKET_SIZE)
	mov	dptr,#__hid_offset
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x40,00140$
	sjmp	00141$
00140$:
	pop	ar4
	pop	ar3
	sjmp	00109$
00141$:
	pop	ar4
	pop	ar3
	C$u2f_hid.c$179$3$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:179: _hid_offset = 0;
	mov	dptr,#__hid_offset
	clr	a
	movx	@dptr,a
	C$u2f_hid.c$180$3$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:180: _hid_seq++;
	mov	dptr,#__hid_seq
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	C$u2f_hid.c$182$3$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:182: usb_write(_hid_pkt, HID_PACKET_SIZE);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,#0x40
	push	acc
	mov	dptr,#__hid_pkt
	mov	b,#0x00
	lcall	_usb_write
	dec	sp
	C$u2f_hid.c$183$3$139 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:183: memset(_hid_pkt, 0, HID_PACKET_SIZE);
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#__hid_pkt
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
	C$u2f_hid.c$185$2$134 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:185: if (!len) break;
	mov	a,r3
	orl	a,r4
	jz	00115$
	C$u2f_hid.c$187$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:187: while(--len);
	dec	r3
	cjne	r3,#0xff,00143$
	dec	r4
00143$:
	mov	a,r3
	orl	a,r4
	jz	00144$
	ljmp	00112$
00144$:
00115$:
	mov	sp,_bp
	pop	_bp
	C$u2f_hid.c$189$1$133 ==.
	XG$u2f_hid_writeback$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'refresh_cid'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Fu2f_hid$refresh_cid$0$0 ==.
	C$u2f_hid.c$193$1$133 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:193: static void refresh_cid(struct CID* c)
;	-----------------------------------------
;	 function refresh_cid
;	-----------------------------------------
_refresh_cid:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$u2f_hid.c$195$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:195: c->last_used = get_ms();
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,__MS_
	lcall	__gptrput
	inc	dptr
	mov	a,(__MS_ + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(__MS_ + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(__MS_ + 3)
	lcall	__gptrput
	C$u2f_hid.c$196$1$141 ==.
	XFu2f_hid$refresh_cid$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_new_cid'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +1
;base                      Allocated with name '_get_new_cid_base_1_142'
;------------------------------------------------------------
	Fu2f_hid$get_new_cid$0$0 ==.
	C$u2f_hid.c$199$1$141 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:199: static uint32_t get_new_cid()
;	-----------------------------------------
;	 function get_new_cid
;	-----------------------------------------
_get_new_cid:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	C$u2f_hid.c$203$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:203: for(i = 0; i < CID_MAX-1; i++)
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	C$u2f_hid.c$205$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:205: if (!CIDS[i].busy)
	push	ar6
	push	ar7
	mov	a,r2
	add	a,#_CIDS
	mov	r6,a
	mov	a,r3
	addc	a,#(_CIDS >> 8)
	mov	r7,a
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	pop	ar7
	pop	ar6
	jz	00116$
	C$u2f_hid.c$203$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:203: for(i = 0; i < CID_MAX-1; i++)
	mov	a,#0x0a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	inc	r4
	cjne	r4,#0x00,00132$
	inc	r5
00132$:
	mov	ar6,r4
	mov	ar7,r5
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00109$
	C$u2f_hid.c$210$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:210: return 0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00111$
	C$u2f_hid.c$213$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:213: do
00116$:
	push	ar6
	push	ar7
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
00106$:
	C$u2f_hid.c$215$2$145 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:215: CIDS[i].cid = base + CID_NUM++;
	mov	a,r6
	add	a,#_CIDS
	mov	r4,a
	mov	a,r7
	addc	a,#(_CIDS >> 8)
	mov	r5,a
	mov	dptr,#_CID_NUM
	movx	a,@dptr
	mov	r3,a
	inc	a
	movx	@dptr,a
	push	ar6
	push	ar7
	mov	dptr,#_get_new_cid_base_1_142
	mov	r0,_bp
	inc	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	ar2,r3
	mov	r3,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$216$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:216: }while(CIDS[i].cid == 0 || CIDS[i].cid == U2FHID_BROADCAST);
	mov	a,r2
	orl	a,r3
	orl	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jz	00106$
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	cjne	r4,#0xff,00135$
	cjne	r5,#0xff,00135$
	cjne	r3,#0xff,00135$
	cjne	r2,#0xff,00135$
	sjmp	00106$
00135$:
	C$u2f_hid.c$218$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:218: CIDS[i].busy = 0;
	mov	a,r6
	add	a,#_CIDS
	mov	r6,a
	mov	a,r7
	addc	a,#(_CIDS >> 8)
	mov	r7,a
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$u2f_hid.c$220$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:220: return CIDS[i].cid;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
00111$:
	mov	sp,_bp
	pop	_bp
	C$u2f_hid.c$221$1$142 ==.
	XFu2f_hid$get_new_cid$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_new_cid'
;------------------------------------------------------------
;cid                       Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r2 r3 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;------------------------------------------------------------
	Fu2f_hid$add_new_cid$0$0 ==.
	C$u2f_hid.c$223$1$142 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:223: static int8_t add_new_cid(uint32_t cid)
;	-----------------------------------------
;	 function add_new_cid
;	-----------------------------------------
_add_new_cid:
	push	_bp
	mov	_bp,sp
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$u2f_hid.c$226$2$148 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:226: for(i = 0; i < CID_MAX-1; i++)
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00104$:
	C$u2f_hid.c$228$1$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:228: if (!CIDS[i].busy)
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	add	a,#_CIDS
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#(_CIDS >> 8)
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	jnz	00105$
	C$u2f_hid.c$230$3$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:230: CIDS[i].cid = cid;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$231$3$149 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:231: return 0;
	mov	dpl,#0x00
	sjmp	00106$
00105$:
	C$u2f_hid.c$226$1$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:226: for(i = 0; i < CID_MAX-1; i++)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x0a
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r2
	cjne	r2,#0x00,00118$
	inc	r3
00118$:
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00104$
	C$u2f_hid.c$234$1$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:234: return -1;
	mov	dpl,#0xff
00106$:
	mov	sp,_bp
	pop	_bp
	C$u2f_hid.c$235$1$147 ==.
	XFu2f_hid$add_new_cid$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_cid'
;------------------------------------------------------------
;cid                       Allocated to registers r7 r6 r5 r4 
;i                         Allocated to registers r3 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;------------------------------------------------------------
	Fu2f_hid$get_cid$0$0 ==.
	C$u2f_hid.c$237$1$147 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:237: static struct CID* get_cid(uint32_t cid)
;	-----------------------------------------
;	 function get_cid
;	-----------------------------------------
_get_cid:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	C$u2f_hid.c$240$2$152 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:240: for(i = 0; i < CID_MAX; i++)
	mov	r3,#0x00
00104$:
	C$u2f_hid.c$242$2$152 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:242: if (CIDS[i].cid == cid)
	mov	r0,_bp
	inc	r0
	mov	a,r3
	mov	b,#0x0a
	mul	ab
	mov	@r0,a
	inc	r0
	mov	@r0,b
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_CIDS
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_CIDS >> 8)
	mov	dph,a
	push	ar3
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	cjne	a,ar7,00117$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00117$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00117$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00117$
	sjmp	00118$
00117$:
	pop	ar3
	sjmp	00105$
00118$:
	pop	ar3
	C$u2f_hid.c$244$3$153 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:244: return CIDS+i;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_CIDS
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,#(_CIDS >> 8)
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	sjmp	00106$
00105$:
	C$u2f_hid.c$240$1$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:240: for(i = 0; i < CID_MAX; i++)
	inc	r3
	cjne	r3,#0x05,00119$
00119$:
	jc	00104$
	C$u2f_hid.c$247$1$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:247: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00106$:
	mov	sp,_bp
	pop	_bp
	C$u2f_hid.c$248$1$151 ==.
	XFu2f_hid$get_cid$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'del_cid'
;------------------------------------------------------------
;cid                       Allocated to stack - _bp +1
;i                         Allocated to registers r3 
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +8
;------------------------------------------------------------
	Fu2f_hid$del_cid$0$0 ==.
	C$u2f_hid.c$249$1$151 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:249: static void del_cid(uint32_t cid)
;	-----------------------------------------
;	 function del_cid
;	-----------------------------------------
_del_cid:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	inc	sp
	inc	sp
	C$u2f_hid.c$252$2$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:252: for(i = 0; i < CID_MAX; i++)
	mov	r3,#0x00
00104$:
	C$u2f_hid.c$254$2$156 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:254: if (CIDS[i].cid == cid)
	mov	a,r3
	mov	b,#0x0a
	mul	ab
	mov	r5,a
	mov	r4,b
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r5
	add	a,#_CIDS
	mov	@r0,a
	mov	a,r4
	addc	a,#(_CIDS >> 8)
	inc	r0
	mov	@r0,a
	push	ar3
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar2,00115$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00115$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00115$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00115$
	sjmp	00116$
00115$:
	pop	ar3
	sjmp	00105$
00116$:
	pop	ar3
	C$u2f_hid.c$256$3$157 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:256: CIDS[i].cid = 0;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$257$3$157 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:257: CIDS[i].busy = 0;
	mov	a,r5
	add	a,#_CIDS
	mov	r6,a
	mov	a,r4
	addc	a,#(_CIDS >> 8)
	mov	r7,a
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
00105$:
	C$u2f_hid.c$252$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:252: for(i = 0; i < CID_MAX; i++)
	inc	r3
	cjne	r3,#0x05,00117$
00117$:
	jc	00104$
	mov	sp,_bp
	pop	_bp
	C$u2f_hid.c$260$1$155 ==.
	XFu2f_hid$del_cid$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stamp_error'
;------------------------------------------------------------
;err                       Allocated to stack - _bp -3
;cid                       Allocated to registers r4 r5 r6 r7 
;res                       Allocated to registers 
;------------------------------------------------------------
	Fu2f_hid$stamp_error$0$0 ==.
	C$u2f_hid.c$263$1$155 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:263: static void stamp_error(uint32_t cid, uint8_t err)
;	-----------------------------------------
;	 function stamp_error
;	-----------------------------------------
_stamp_error:
	push	_bp
	mov	_bp,sp
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$u2f_hid.c$266$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:266: struct u2f_hid_msg * res = (struct u2f_hid_msg *)errbuf;
	C$u2f_hid.c$267$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:267: memset(errbuf,0,sizeof(errbuf));
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#_errbuf
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$u2f_hid.c$268$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:268: res->cid = cid;
	mov	dptr,#_errbuf
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$269$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:269: res->pkt.init.cmd = U2FHID_ERROR;
	mov	dptr,#(_errbuf + 0x0004)
	mov	b,#0x00
	mov	a,#0xbf
	lcall	__gptrput
	C$u2f_hid.c$270$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:270: res->pkt.init.payload[0] = err;
	mov	dptr,#(_errbuf + 0x0007)
	mov	b,#0x00
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	C$u2f_hid.c$271$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:271: res->pkt.init.bcnth = 0;
	mov	dptr,#(_errbuf + 0x0005)
	clr	a
	mov	b,a
	lcall	__gptrput
	C$u2f_hid.c$272$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:272: res->pkt.init.bcntl = 1;
	mov	dptr,#(_errbuf + 0x0006)
	mov	b,#0x00
	inc	a
	lcall	__gptrput
	C$u2f_hid.c$275$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:275: usb_write(errbuf, HID_PACKET_SIZE); //usb_write(res, HID_PACKET_SIZE);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x40
	push	acc
	mov	dptr,#_errbuf
	mov	b,#0x00
	lcall	_usb_write
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$u2f_hid.c$276$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:276: del_cid(cid);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_del_cid
	pop	_bp
	C$u2f_hid.c$277$1$159 ==.
	XFu2f_hid$stamp_error$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_buffering'
;------------------------------------------------------------
;req                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Fu2f_hid$start_buffering$0$0 ==.
	C$u2f_hid.c$279$1$159 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:279: static void start_buffering(struct u2f_hid_msg* req)
;	-----------------------------------------
;	 function start_buffering
;	-----------------------------------------
_start_buffering:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$u2f_hid.c$281$1$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:281: _hid_in_session = 1;
	mov	dptr,#__hid_in_session
	mov	a,#0x01
	movx	@dptr,a
	C$u2f_hid.c$282$1$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:282: hid_layer.bytes_buffered = U2FHID_INIT_PAYLOAD_SIZE;
	mov	dptr,#(_hid_layer + 0x000a)
	mov	a,#0x39
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$283$1$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:283: hid_layer.req_len = U2FHID_LEN(req);
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x01
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
	mov	dptr,#(_hid_layer + 0x000c)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$284$1$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:284: memmove(hid_layer.buffer, req->pkt.init.payload, U2FHID_INIT_PAYLOAD_SIZE);
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x39
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_hid_layer + 0x0012)
	mov	b,#0x00
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$u2f_hid.c$285$1$161 ==.
	XFu2f_hid$start_buffering$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buffer_request'
;------------------------------------------------------------
;req                       Allocated to registers r7 r5 r6 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;------------------------------------------------------------
	Fu2f_hid$buffer_request$0$0 ==.
	C$u2f_hid.c$287$1$161 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:287: static int buffer_request(struct u2f_hid_msg* req)
;	-----------------------------------------
;	 function buffer_request
;	-----------------------------------------
_buffer_request:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r7,dpl
	mov	r5,dph
	mov	r6,b
	C$u2f_hid.c$289$1$163 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:289: if (hid_layer.bytes_buffered + U2FHID_CONT_PAYLOAD_SIZE > BUFFER_SIZE)
	mov	dptr,#(_hid_layer + 0x000a)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x3b
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,#0x0e
	subb	a,@r0
	mov	a,#0x01
	inc	r0
	subb	a,@r0
	jnc	00102$
	C$u2f_hid.c$291$2$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:291: set_app_error(ERROR_HID_BUFFER_FULL);
	mov	dpl,#0x17
	push	ar7
	push	ar6
	push	ar5
	lcall	_set_app_error
	pop	ar5
	pop	ar6
	pop	ar7
	C$u2f_hid.c$292$2$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:292: stamp_error(req->cid, ERR_OTHER);
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,#0x7f
	push	acc
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$293$2$164 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:293: return -1;
	mov	dptr,#0xffff
	sjmp	00103$
00102$:
	C$u2f_hid.c$295$1$163 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:295: memmove(hid_layer.buffer + hid_layer.bytes_buffered, req->pkt.cont.payload, U2FHID_CONT_PAYLOAD_SIZE);
	mov	a,#0x04
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	r2
	cjne	r2,#0x00,00109$
	inc	r5
00109$:
	mov	ar7,r6
	mov	a,r3
	add	a,#(_hid_layer + 0x0012)
	mov	r3,a
	mov	a,r4
	addc	a,#((_hid_layer + 0x0012) >> 8)
	mov	r4,a
	mov	r6,#0x00
	mov	a,#0x3b
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar5
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$u2f_hid.c$296$1$163 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:296: hid_layer.bytes_buffered += U2FHID_CONT_PAYLOAD_SIZE;
	mov	dptr,#(_hid_layer + 0x000a)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x3b
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_hid_layer + 0x000a)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$297$1$163 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:297: return 0;
	mov	dptr,#0x0000
00103$:
	mov	sp,_bp
	pop	_bp
	C$u2f_hid.c$298$1$163 ==.
	XFu2f_hid$buffer_request$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hid_u2f_parse'
;------------------------------------------------------------
;req                       Allocated to stack - _bp +1
;len                       Allocated to registers 
;secs                      Allocated to registers r7 
;init_res                  Allocated to registers 
;sloc0                     Allocated to stack - _bp +10
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +8
;------------------------------------------------------------
	Fu2f_hid$hid_u2f_parse$0$0 ==.
	C$u2f_hid.c$302$1$163 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:302: static uint8_t hid_u2f_parse(struct u2f_hid_msg* req)
;	-----------------------------------------
;	 function hid_u2f_parse
;	-----------------------------------------
_hid_u2f_parse:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x08
	mov	sp,a
	C$u2f_hid.c$306$1$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:306: struct u2f_hid_init_response * init_res = (struct u2f_hid_init_response *) appdata.tmp;
	C$u2f_hid.c$308$1$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:308: switch(hid_layer.current_cmd)
	mov	dptr,#(_hid_layer + 0x0005)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x81,00203$
	ljmp	00119$
00203$:
	cjne	r4,#0x83,00204$
	ljmp	00109$
00204$:
	cjne	r4,#0x84,00205$
	ljmp	00134$
00205$:
	cjne	r4,#0x86,00206$
	sjmp	00101$
00206$:
	cjne	r4,#0x88,00207$
	ljmp	00131$
00207$:
	ljmp	00141$
	C$u2f_hid.c$310$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:310: case U2FHID_INIT:
00101$:
	C$u2f_hid.c$311$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:311: if (U2FHID_LEN(req) != 8)
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,#0x01
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x08,00208$
	cjne	r3,#0x00,00208$
	sjmp	00103$
00208$:
	C$u2f_hid.c$313$3$168 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:313: stamp_error(hid_layer.current_cid, ERR_INVALID_LEN);
	mov	dptr,#(_hid_layer + 0x0001)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x03
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$314$3$168 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:314: goto fail;
	ljmp	00143$
00103$:
	C$u2f_hid.c$316$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:316: u2f_hid_set_len(17);
	mov	dptr,#0x0011
	push	ar7
	push	ar6
	push	ar5
	lcall	_u2f_hid_set_len
	pop	ar5
	pop	ar6
	pop	ar7
	C$u2f_hid.c$319$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:319: if (hid_layer.current_cid == U2FHID_BROADCAST)
	mov	dptr,#(_hid_layer + 0x0001)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	cjne	@r0,#0xff,00107$
	inc	r0
	cjne	@r0,#0xff,00107$
	inc	r0
	cjne	@r0,#0xff,00107$
	inc	r0
	cjne	@r0,#0xff,00107$
	C$u2f_hid.c$321$3$169 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:321: if (hid_layer.current_cid == 0)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00105$
	C$u2f_hid.c$323$4$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:323: set_app_error(ERROR_OUT_OF_CIDS);
	mov	dpl,#0x20
	lcall	_set_app_error
	C$u2f_hid.c$324$4$170 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:324: goto fail;
	ljmp	00143$
00105$:
	C$u2f_hid.c$326$3$169 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:326: init_res->cid = get_new_cid();
	push	ar7
	push	ar6
	push	ar5
	lcall	_get_new_cid
	xch	a,r0
	mov	a,_bp
	add	a,#0x08
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	(_appdata + 0),@r0
	inc	r0
	mov	(_appdata + 1),@r0
	inc	r0
	mov	(_appdata + 2),@r0
	inc	r0
	mov	(_appdata + 3),@r0
	sjmp	00108$
00107$:
	C$u2f_hid.c$330$3$171 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:330: init_res->cid = hid_layer.current_cid;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	(_appdata + 0),@r0
	inc	r0
	mov	(_appdata + 1),@r0
	inc	r0
	mov	(_appdata + 2),@r0
	inc	r0
	mov	(_appdata + 3),@r0
00108$:
	C$u2f_hid.c$332$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:332: init_res->version_id = 2;
	mov	dptr,#(_appdata + 0x0004)
	mov	b,#0x40
	mov	a,#0x02
	lcall	__gptrput
	C$u2f_hid.c$333$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:333: init_res->version_major = 2;
	mov	dptr,#(_appdata + 0x0005)
	mov	b,#0x40
	lcall	__gptrput
	C$u2f_hid.c$334$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:334: init_res->version_minor = 0;
	mov	dptr,#(_appdata + 0x0006)
	mov	b,#0x40
	clr	a
	lcall	__gptrput
	C$u2f_hid.c$335$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:335: init_res->version_build = 0;
	mov	dptr,#(_appdata + 0x0007)
	mov	b,#0x40
	lcall	__gptrput
	C$u2f_hid.c$338$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:338: init_res->cflags = CAPABILITY_WINK | CAPABILITY_LOCK;
	mov	dptr,#(_appdata + 0x0008)
	mov	b,#0x40
	mov	a,#0x03
	lcall	__gptrput
	C$u2f_hid.c$348$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:348: u2f_hid_writeback(req->pkt.init.payload, 8);
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_u2f_hid_writeback
	dec	sp
	dec	sp
	C$u2f_hid.c$349$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:349: u2f_hid_writeback((uint8_t *)init_res, 9);
	mov	a,#0x09
	push	acc
	clr	a
	push	acc
	mov	dptr,#_appdata
	mov	b,#0x40
	lcall	_u2f_hid_writeback
	dec	sp
	dec	sp
	C$u2f_hid.c$350$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:350: u2f_hid_flush();
	lcall	_u2f_hid_flush
	C$u2f_hid.c$352$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:352: hid_layer.current_cid = init_res->cid;
	mov	r7,(_appdata + 0)
	mov	r6,(_appdata + 1)
	mov	r5,(_appdata + 2)
	mov	r4,(_appdata + 3)
	mov	dptr,#(_hid_layer + 0x0001)
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$356$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:356: break;
	ljmp	00142$
	C$u2f_hid.c$357$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:357: case U2FHID_MSG:
00109$:
	C$u2f_hid.c$359$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:359: if (U2FHID_LEN(req) < 4)
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	inc	r2
	cjne	r2,#0x00,00212$
	inc	r3
00212$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	subb	a,#0x00
	jnc	00111$
	C$u2f_hid.c$361$3$172 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:361: stamp_error(hid_layer.current_cid, ERR_INVALID_LEN);
	mov	dptr,#(_hid_layer + 0x0001)
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x03
	push	acc
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$362$3$172 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:362: goto fail;
	ljmp	00143$
00111$:
	C$u2f_hid.c$369$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:369: if (hid_layer.bytes_buffered == 0)
	mov	dptr,#(_hid_layer + 0x000a)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00117$
	C$u2f_hid.c$371$3$173 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:371: start_buffering(req);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_start_buffering
	C$u2f_hid.c$372$3$173 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:372: if (hid_layer.bytes_buffered >= U2FHID_LEN(req))
	mov	dptr,#(_hid_layer + 0x000a)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	inc	r2
	cjne	r2,#0x00,00215$
	inc	r6
00215$:
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	clr	c
	mov	a,r3
	subb	a,r2
	mov	a,r4
	subb	a,r6
	jnc	00216$
	ljmp	00142$
00216$:
	C$u2f_hid.c$374$4$174 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:374: u2f_request((struct u2f_request_apdu *)hid_layer.buffer);
	mov	dptr,#(_hid_layer + 0x0012)
	mov	b,#0x00
	lcall	_u2f_request
	ljmp	00142$
00117$:
	C$u2f_hid.c$379$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:379: buffer_request(req);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_buffer_request
	C$u2f_hid.c$380$3$175 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:380: if (hid_layer.bytes_buffered >= hid_layer.req_len)
	mov	dptr,#(_hid_layer + 0x000a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_hid_layer + 0x000c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00217$
	ljmp	00142$
00217$:
	C$u2f_hid.c$382$4$176 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:382: u2f_request((struct u2f_request_apdu *)hid_layer.buffer);
	mov	dptr,#(_hid_layer + 0x0012)
	mov	b,#0x00
	lcall	_u2f_request
	C$u2f_hid.c$387$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:387: break;
	ljmp	00142$
	C$u2f_hid.c$388$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:388: case U2FHID_PING:
00119$:
	C$u2f_hid.c$391$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:391: if (hid_layer.bytes_buffered == 0)
	mov	dptr,#(_hid_layer + 0x000a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00218$
	ljmp	00129$
00218$:
	C$u2f_hid.c$393$3$177 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:393: start_buffering(req);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_start_buffering
	C$u2f_hid.c$394$3$177 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:394: u2f_hid_set_len(U2FHID_LEN(req));
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	lcall	_u2f_hid_set_len
	C$u2f_hid.c$395$3$177 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:395: if (hid_layer.bytes_buffered >= U2FHID_LEN(req))
	mov	dptr,#(_hid_layer + 0x000a)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r7
	subb	a,r2
	mov	a,r6
	subb	a,r3
	jc	00121$
	C$u2f_hid.c$397$4$178 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:397: u2f_hid_writeback(hid_layer.buffer,hid_layer.bytes_buffered);
	push	ar7
	push	ar6
	mov	dptr,#(_hid_layer + 0x0012)
	mov	b,#0x00
	lcall	_u2f_hid_writeback
	dec	sp
	dec	sp
	C$u2f_hid.c$398$4$178 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:398: u2f_hid_flush();
	lcall	_u2f_hid_flush
	ljmp	00142$
00121$:
	C$u2f_hid.c$402$4$179 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:402: return 1;
	mov	dpl,#0x01
	ljmp	00144$
00129$:
	C$u2f_hid.c$407$3$180 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:407: if (hid_layer.bytes_buffered + U2FHID_CONT_PAYLOAD_SIZE > BUFFER_SIZE)
	mov	a,#0x3b
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	clr	c
	mov	a,#0x0e
	subb	a,r4
	mov	a,#0x01
	subb	a,r5
	jnc	00124$
	C$u2f_hid.c$409$4$181 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:409: u2f_hid_writeback(hid_layer.buffer,hid_layer.bytes_buffered);
	push	ar6
	push	ar7
	mov	dptr,#(_hid_layer + 0x0012)
	mov	b,#0x00
	lcall	_u2f_hid_writeback
	dec	sp
	dec	sp
	C$u2f_hid.c$410$4$181 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:410: hid_layer.bytes_buffered = 0;
	mov	dptr,#(_hid_layer + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00124$:
	C$u2f_hid.c$414$3$180 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:414: buffer_request(req);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_buffer_request
	C$u2f_hid.c$415$3$180 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:415: if (hid_layer.bytes_buffered + hid_layer.bytes_written >= hid_layer.req_len)
	mov	dptr,#(_hid_layer + 0x000a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_hid_layer + 0x000e)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r4,a
	mov	a,r5
	addc	a,r7
	mov	r5,a
	mov	dptr,#(_hid_layer + 0x000c)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jc	00126$
	C$u2f_hid.c$417$4$182 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:417: u2f_hid_writeback(hid_layer.buffer,hid_layer.bytes_buffered);
	push	ar6
	push	ar7
	mov	dptr,#(_hid_layer + 0x0012)
	mov	b,#0x00
	lcall	_u2f_hid_writeback
	dec	sp
	dec	sp
	C$u2f_hid.c$418$4$182 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:418: u2f_hid_flush();
	lcall	_u2f_hid_flush
	ljmp	00142$
00126$:
	C$u2f_hid.c$422$4$183 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:422: return 1;
	mov	dpl,#0x01
	ljmp	00144$
	C$u2f_hid.c$429$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:429: case U2FHID_WINK:
00131$:
	C$u2f_hid.c$430$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:430: if (U2FHID_LEN(req) != 0)
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
	inc	r5
	cjne	r5,#0x00,00222$
	inc	r6
00222$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r5
	jz	00133$
	C$u2f_hid.c$433$3$184 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:433: stamp_error(hid_layer.current_cid, ERR_INVALID_LEN);
	mov	dptr,#(_hid_layer + 0x0001)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_stamp_error
	dec	sp
00133$:
	C$u2f_hid.c$435$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:435: u2f_hid_set_len(0);
	mov	dptr,#0x0000
	lcall	_u2f_hid_set_len
	C$u2f_hid.c$436$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:436: u2f_hid_writeback(NULL, 0);
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_u2f_hid_writeback
	dec	sp
	dec	sp
	C$u2f_hid.c$437$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:437: u2f_hid_flush();
	lcall	_u2f_hid_flush
	C$u2f_hid.c$438$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:438: app_wink(U2F_COLOR_WINK);
	mov	dptr,#0x0000
	mov	b,#0x12
	clr	a
	lcall	_app_wink
	C$u2f_hid.c$439$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:439: break;
	ljmp	00142$
	C$u2f_hid.c$442$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:442: case U2FHID_LOCK:
00134$:
	C$u2f_hid.c$444$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:444: secs = req->pkt.init.payload[0];
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
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	C$u2f_hid.c$445$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:445: if (secs > 10)
	mov  r7,a
	add	a,#0xff - 0x0a
	jnc	00139$
	C$u2f_hid.c$447$3$185 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:447: stamp_error(hid_layer.current_cid, ERR_INVALID_PAR);
	mov	dptr,#(_hid_layer + 0x0001)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x02
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_stamp_error
	dec	sp
	ljmp	00142$
00139$:
	C$u2f_hid.c$451$3$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:451: if (secs)
	mov	a,r7
	jz	00136$
	C$u2f_hid.c$453$4$187 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:453: _hid_lock_cid = hid_layer.current_cid;
	mov	dptr,#(_hid_layer + 0x0001)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__hid_lock_cid
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$454$4$187 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:454: _hid_lockt = get_ms() + 1000 * secs;
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dptr,#0x03e8
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
	mov	dptr,#__hid_lockt
	mov	a,r6
	add	a,__MS_
	movx	@dptr,a
	mov	a,r7
	addc	a,(__MS_ + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	addc	a,(__MS_ + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(__MS_ + 3)
	inc	dptr
	movx	@dptr,a
	sjmp	00137$
00136$:
	C$u2f_hid.c$459$4$188 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:459: _hid_lockt = get_ms();
	mov	dptr,#__hid_lockt
	mov	a,__MS_
	movx	@dptr,a
	mov	a,(__MS_ + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__MS_ + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__MS_ + 3)
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$460$4$188 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:460: _hid_lock_cid = 0;
	mov	dptr,#__hid_lock_cid
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00137$:
	C$u2f_hid.c$462$3$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:462: hid_layer.current_cmd = U2FHID_LOCK;
	mov	dptr,#(_hid_layer + 0x0005)
	mov	a,#0x84
	movx	@dptr,a
	C$u2f_hid.c$463$3$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:463: u2f_hid_set_len(0);
	mov	dptr,#0x0000
	lcall	_u2f_hid_set_len
	C$u2f_hid.c$464$3$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:464: u2f_hid_writeback(NULL, 0);
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_u2f_hid_writeback
	dec	sp
	dec	sp
	C$u2f_hid.c$465$3$186 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:465: u2f_hid_flush();
	lcall	_u2f_hid_flush
	C$u2f_hid.c$467$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:467: break;
	C$u2f_hid.c$469$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:469: default:
	sjmp	00142$
00141$:
	C$u2f_hid.c$470$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:470: set_app_error(ERROR_HID_INVALID_CMD);
	mov	dpl,#0x18
	lcall	_set_app_error
	C$u2f_hid.c$471$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:471: stamp_error(hid_layer.current_cid, ERR_INVALID_CMD);
	mov	dptr,#(_hid_layer + 0x0001)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$472$2$167 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:472: u2f_printb("invalid cmd: ",1,hid_layer.current_cmd);
	mov	dptr,#(_hid_layer + 0x0005)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#0x01
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_u2f_printb
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	C$u2f_hid.c$473$1$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:473: }
00142$:
	C$u2f_hid.c$475$1$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:475: return u2f_hid_busy();
	mov	dptr,#__hid_in_session
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	C$u2f_hid.c$477$1$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:477: fail:
	sjmp	00144$
00143$:
	C$u2f_hid.c$478$1$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:478: u2f_prints("U2F HID FAIL\r\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_u2f_prints
	C$u2f_hid.c$479$1$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:479: return 0;
	mov	dpl,#0x00
00144$:
	mov	sp,_bp
	pop	_bp
	C$u2f_hid.c$480$1$166 ==.
	XFu2f_hid$hid_u2f_parse$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_hid_check_timeouts'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
	G$u2f_hid_check_timeouts$0$0 ==.
	C$u2f_hid.c$482$1$166 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:482: void u2f_hid_check_timeouts()
;	-----------------------------------------
;	 function u2f_hid_check_timeouts
;	-----------------------------------------
_u2f_hid_check_timeouts:
	C$u2f_hid.c$485$3$191 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:485: for(i = 0; i < CID_MAX; i++)
	mov	r7,#0x00
00105$:
	C$u2f_hid.c$487$2$190 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:487: if (CIDS[i].busy && ((get_ms() - CIDS[i].last_used) >= 750))
	mov	a,r7
	mov	b,#0x0a
	mul	ab
	add	a,#_CIDS
	mov	r5,a
	mov	a,#(_CIDS >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x08
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jnz	00119$
	ljmp	00106$
00119$:
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,__MS_
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,(__MS_ + 1)
	subb	a,r2
	mov	r2,a
	mov	a,(__MS_ + 2)
	subb	a,r3
	mov	r3,a
	mov	a,(__MS_ + 3)
	subb	a,r4
	mov	r4,a
	clr	c
	mov	a,r1
	subb	a,#0xee
	mov	a,r2
	subb	a,#0x02
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	jnc	00120$
	ljmp	00106$
00120$:
	C$u2f_hid.c$489$3$191 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:489: u2f_printlx("timeout cid ",2,CIDS[i].cid,get_ms());
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	__MS_
	push	(__MS_ + 1)
	push	(__MS_ + 2)
	push	(__MS_ + 3)
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x02
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_u2f_printlx
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	pop	ar5
	pop	ar6
	C$u2f_hid.c$490$3$191 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:490: stamp_error(CIDS[i].cid, ERR_MSG_TIMEOUT);
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar6
	push	ar5
	mov	a,#0x05
	push	acc
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	_stamp_error
	dec	sp
	pop	ar5
	pop	ar6
	C$u2f_hid.c$491$3$191 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:491: del_cid(CIDS[i].cid);
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	lcall	_del_cid
	C$u2f_hid.c$492$3$191 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:492: u2f_hid_reset_packet();
	lcall	_u2f_hid_reset_packet
	pop	ar7
00106$:
	C$u2f_hid.c$485$1$189 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:485: for(i = 0; i < CID_MAX; i++)
	inc	r7
	cjne	r7,#0x05,00121$
00121$:
	jnc	00122$
	ljmp	00105$
00122$:
	C$u2f_hid.c$496$1$189 ==.
	XG$u2f_hid_check_timeouts$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'u2f_hid_request'
;------------------------------------------------------------
;req                       Allocated to stack - _bp +1
;cid                       Allocated to stack - _bp +8
;sloc0                     Allocated to stack - _bp +4
;last_seq                  Allocated with name '_u2f_hid_request_last_seq_1_193'
;------------------------------------------------------------
	G$u2f_hid_request$0$0 ==.
	C$u2f_hid.c$499$1$189 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:499: void u2f_hid_request(struct u2f_hid_msg* req)
;	-----------------------------------------
;	 function u2f_hid_request
;	-----------------------------------------
_u2f_hid_request:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	C$u2f_hid.c$504$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:504: cid = get_cid(req->cid);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_get_cid
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$u2f_hid.c$507$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:507: if ((U2FHID_IS_INIT(req->pkt.init.cmd)))
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
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
	mov	r7,a
	jb	acc.7,00197$
	ljmp	00111$
00197$:
	C$u2f_hid.c$509$2$194 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:509: if (U2FHID_LEN(req) > 7609)
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	clr	c
	mov	a,#0xb9
	subb	a,r5
	mov	a,#0x1d
	subb	a,r6
	jnc	00102$
	C$u2f_hid.c$511$3$195 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:511: stamp_error(req->cid, ERR_INVALID_LEN);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x03
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$512$3$195 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:512: return;
	ljmp	00138$
00102$:
	C$u2f_hid.c$514$2$194 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:514: if (req->pkt.init.cmd != U2FHID_INIT && req->cid != hid_layer.current_cid && u2f_hid_busy())
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x86,00199$
	ljmp	00112$
00199$:
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	dptr,#(_hid_layer + 0x0001)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
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
	mov	a,@r0
	cjne	a,ar4,00200$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00200$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00200$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00200$
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00112$
00200$:
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dptr,#__hid_in_session
	movx	a,@dptr
	jz	00112$
	C$u2f_hid.c$516$3$196 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:516: stamp_error(req->cid, ERR_CHANNEL_BUSY);
	mov	a,#0x06
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$517$3$196 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:517: return;
	ljmp	00138$
00111$:
	C$u2f_hid.c$520$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:520: else if (cid == NULL || !cid->busy)
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00107$
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x08
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
	jnz	00112$
00107$:
	C$u2f_hid.c$523$2$197 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:523: return;
	ljmp	00138$
00112$:
	C$u2f_hid.c$526$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:526: if (!req->cid)
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00114$
	C$u2f_hid.c$528$2$198 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:528: stamp_error(req->cid, ERR_SYNC_FAIL);
	mov	a,#0x0b
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$529$2$198 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:529: return;
	ljmp	00138$
00114$:
	C$u2f_hid.c$534$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:534: if (req->cid == U2FHID_BROADCAST)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	cjne	@r0,#0xff,00123$
	inc	r0
	cjne	@r0,#0xff,00123$
	inc	r0
	cjne	@r0,#0xff,00123$
	inc	r0
	cjne	@r0,#0xff,00123$
	C$u2f_hid.c$536$2$199 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:536: if (!(req->pkt.init.cmd == U2FHID_INIT))
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x86,00207$
	sjmp	00116$
00207$:
	C$u2f_hid.c$538$3$200 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:538: stamp_error(req->cid, ERR_SYNC_FAIL);
	mov	a,#0x0b
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$539$3$200 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:539: return;
	ljmp	00138$
00116$:
	C$u2f_hid.c$541$2$199 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:541: cid = &BROADCAST_CID;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#(_CIDS + 0x0028)
	inc	r0
	mov	@r0,#((_CIDS + 0x0028) >> 8)
	inc	r0
	mov	@r0,#0x00
	C$u2f_hid.c$542$2$199 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:542: BROADCAST_CID.cid = U2FHID_BROADCAST;
	mov	dptr,#(_CIDS + 0x0028)
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00124$
00123$:
	C$u2f_hid.c$544$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:544: else if (U2FHID_IS_INIT(req->pkt.init.cmd) && cid == NULL)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	jb	acc.7,00208$
	ljmp	00124$
00208$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00209$
	ljmp	00124$
00209$:
	C$u2f_hid.c$546$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:546: add_new_cid(req->cid);
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_add_new_cid
	pop	ar2
	pop	ar3
	pop	ar4
	C$u2f_hid.c$547$2$201 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:547: cid = get_cid(req->cid);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar4
	push	ar3
	push	ar2
	lcall	_get_cid
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$u2f_hid.c$548$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:548: if (cid == NULL)
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00118$
	C$u2f_hid.c$550$3$202 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:550: return;
	ljmp	00138$
00118$:
	C$u2f_hid.c$552$2$201 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:552: cid->busy = 0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x08
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
	clr	a
	lcall	__gptrput
00124$:
	C$u2f_hid.c$559$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:559: if (req->pkt.init.cmd == U2FHID_INIT)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x86,00126$
	C$u2f_hid.c$561$2$203 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:561: cid->busy = 0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x08
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
	clr	a
	lcall	__gptrput
00126$:
	C$u2f_hid.c$564$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:564: hid_layer.current_cid = req->cid;
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(_hid_layer + 0x0001)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$565$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:565: hid_layer.last_buffered = get_ms();
	mov	dptr,#(_hid_layer + 0x0006)
	mov	a,__MS_
	movx	@dptr,a
	mov	a,(__MS_ + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__MS_ + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__MS_ + 3)
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$567$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:567: cid->last_used = get_ms();
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x04
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
	mov	a,__MS_
	lcall	__gptrput
	inc	dptr
	mov	a,(__MS_ + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(__MS_ + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(__MS_ + 3)
	lcall	__gptrput
	C$u2f_hid.c$572$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:572: if(hid_is_locked() && req->pkt.init.cmd != U2FHID_INIT)
	mov	dptr,#__hid_lockt
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,__MS_
	subb	a,r4
	mov	a,(__MS_ + 1)
	subb	a,r5
	mov	a,(__MS_ + 2)
	subb	a,r6
	mov	a,(__MS_ + 3)
	subb	a,r7
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00213$
	ljmp	00130$
00213$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x86,00214$
	sjmp	00130$
00214$:
	C$u2f_hid.c$574$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:574: if (!hid_is_lock_cid(req->cid))
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	dptr,#__hid_lock_cid
	movx	a,@dptr
	mov	r4,a
	inc	dptr
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
	mov	a,@r0
	cjne	a,ar4,00215$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00215$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00215$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00215$
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00130$
00215$:
	pop	ar4
	pop	ar3
	pop	ar2
	C$u2f_hid.c$576$3$205 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:576: stamp_error(req->cid, ERR_CHANNEL_BUSY);
	mov	a,#0x06
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$577$3$205 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:577: return;
	ljmp	00138$
00130$:
	C$u2f_hid.c$582$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:582: if ((req->pkt.init.cmd & TYPE_INIT) && !cid->busy)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	jnb	acc.7,00135$
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x08
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
	jnz	00135$
	C$u2f_hid.c$584$2$206 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:584: cid->last_cmd = req->pkt.init.cmd;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x09
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	C$u2f_hid.c$585$2$206 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:585: hid_layer.current_cmd = req->pkt.init.cmd;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_hid_layer + 0x0005)
	movx	@dptr,a
	C$u2f_hid.c$586$2$206 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:586: last_seq = -1;
	mov	dptr,#_u2f_hid_request_last_seq_1_193
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00136$
00135$:
	C$u2f_hid.c$594$2$207 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:594: hid_layer.last_buffered = get_ms();
	mov	dptr,#(_hid_layer + 0x0006)
	mov	a,__MS_
	movx	@dptr,a
	mov	a,(__MS_ + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__MS_ + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__MS_ + 3)
	inc	dptr
	movx	@dptr,a
	C$u2f_hid.c$595$2$207 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:595: if (last_seq + 1 != req->pkt.cont.seq)
	mov	dptr,#_u2f_hid_request_last_seq_1_193
	movx	a,@dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
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
	mov	r2,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00218$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00218$
	sjmp	00133$
00218$:
	C$u2f_hid.c$597$3$208 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:597: stamp_error(hid_layer.current_cid, ERR_INVALID_SEQ);
	mov	dptr,#(_hid_layer + 0x0001)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x04
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_stamp_error
	dec	sp
	C$u2f_hid.c$598$3$208 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:598: u2f_hid_reset_packet();
	lcall	_u2f_hid_reset_packet
	C$u2f_hid.c$599$3$208 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:599: return;
	sjmp	00138$
00133$:
	C$u2f_hid.c$601$2$207 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:601: last_seq = req->pkt.cont.seq;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_u2f_hid_request_last_seq_1_193
	movx	@dptr,a
	C$u2f_hid.c$603$2$207 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:603: hid_layer.current_cmd = cid->last_cmd;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x09
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
	mov	dptr,#(_hid_layer + 0x0005)
	movx	@dptr,a
00136$:
	C$u2f_hid.c$607$1$193 ==.
;	D:\Freelancer_projects\jan333\sdcc_project\src\u2f_hid.c:607: cid->busy = hid_u2f_parse(req);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x08
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
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_hid_u2f_parse
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
00138$:
	mov	sp,_bp
	pop	_bp
	C$u2f_hid.c$609$1$193 ==.
	XG$u2f_hid_request$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fu2f_hid$__str_0$0$0 == .
___str_0:
	.ascii "invalid cmd: "
	.db 0x00
Fu2f_hid$__str_1$0$0 == .
___str_1:
	.ascii "U2F HID FAIL"
	.db 0x0d
	.db 0x0a
	.db 0x00
Fu2f_hid$__str_2$0$0 == .
___str_2:
	.ascii "timeout cid "
	.db 0x00
	.area XINIT   (CODE)
Fu2f_hid$__xinit__hid_lockt$0$0 == .
__xinit___hid_lockt:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
Fu2f_hid$__xinit__hid_lock_cid$0$0 == .
__xinit___hid_lock_cid:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
Fu2f_hid$__xinit_CID_NUM$0$0 == .
__xinit__CID_NUM:
	.db #0x00	; 0
Fu2f_hid$__xinit__hid_offset$0$0 == .
__xinit___hid_offset:
	.db #0x00	; 0
Fu2f_hid$__xinit__hid_seq$0$0 == .
__xinit___hid_seq:
	.byte #0x00,#0x00	; 0
Fu2f_hid$__xinit__hid_in_session$0$0 == .
__xinit___hid_in_session:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
