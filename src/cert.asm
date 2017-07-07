;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module cert
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RMASK
	.globl _WMASK
	.globl ___attest_size
	.globl ___attest
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$__attest$0$0 == .
___attest:
	.ascii "0"
	.db 0x82
	.db 0x01
	.ascii "z0"
	.db 0x82
	.db 0x01
	.ascii " "
	.db 0x02
	.db 0x09
	.db 0x00
	.db 0x91
	.ascii "P"
	.db 0x9a
	.db 0xea
	.ascii "("
	.db 0x11
	.db 0xef
	.ascii "|0"
	.db 0x0a
	.db 0x06
	.db 0x08
	.ascii "*"
	.db 0x86
	.ascii "H"
	.db 0xce
	.ascii "="
	.db 0x04
	.db 0x03
	.db 0x02
	.ascii "0E1"
	.db 0x0b
	.ascii "0"
	.db 0x09
	.db 0x06
	.db 0x03
	.ascii "U"
	.db 0x04
	.db 0x06
	.db 0x13
	.db 0x02
	.ascii "AU1"
	.db 0x13
	.ascii "0"
	.db 0x11
	.db 0x06
	.db 0x03
	.ascii "U"
	.db 0x04
	.db 0x08
	.db 0x0c
	.db 0x0a
	.ascii "Som"
	.ascii "e-State1!0"
	.db 0x1f
	.db 0x06
	.db 0x03
	.ascii "U"
	.db 0x04
	.db 0x0a
	.db 0x0c
	.db 0x18
	.ascii "Internet Widgits Pty Ltd0"
	.db 0x1e
	.db 0x17
	.db 0x0d
	.ascii "170128061749Z"
	.db 0x17
	.db 0x0d
	.ascii "170227061749Z0E1"
	.db 0x0b
	.ascii "0"
	.db 0x09
	.db 0x06
	.db 0x03
	.ascii "U"
	.db 0x04
	.db 0x06
	.db 0x13
	.db 0x02
	.ascii "AU1"
	.db 0x13
	.ascii "0"
	.db 0x11
	.db 0x06
	.db 0x03
	.ascii "U"
	.db 0x04
	.db 0x08
	.db 0x0c
	.db 0x0a
	.ascii "Some-State1!0"
	.db 0x1f
	.db 0x06
	.db 0x03
	.ascii "U"
	.db 0x04
	.db 0x0a
	.db 0x0c
	.db 0x18
	.ascii "Internet Widgits Pty Ltd0Y0"
	.db 0x13
	.db 0x06
	.db 0x07
	.ascii "*"
	.db 0x86
	.ascii "H"
	.db 0xce
	.ascii "="
	.db 0x02
	.db 0x01
	.db 0x06
	.db 0x08
	.ascii "*"
	.db 0x86
	.ascii "H"
	.db 0xce
	.ascii "="
	.db 0x03
	.db 0x01
	.db 0x07
	.db 0x03
	.ascii "B"
	.db 0x00
	.db 0x04
	.db 0x87
	.db 0x8f
	.ascii "T(Z"
	.db 0xd5
	.db 0x19
	.db 0xb4
	.db 0xc0
	.db 0x95
	.db 0x13
	.db 0xad
	.db 0x22
	.ascii "f"
	.db 0xec
	.ascii "j"
	.db 0x81
	.ascii "R"
	.db 0xe6
	.db 0x11
	.db 0xa9
	.ascii "3"
	.db 0xbb
	.ascii "="
	.db 0xdc
	.db 0xde
	.db 0x92
	.db 0xc2
	.ascii "@S"
	.db 0x9d
	.ascii "9"
	.db 0x91
	.db 0xea
	.db 0xf2
	.db 0x0a
	.db 0x96
	.ascii "a0/"
	.db 0xec
	.ascii "eL"
	.db 0x80
	.db 0xaa
	.db 0xba
	.db 0x15
	.db 0xeb
	.db 0x9a
	.ascii "pL"
	.db 0x80
	.ascii "Y"
	.db 0x93
	.ascii "zQ"
	.db 0xbe
	.db 0x07
	.db 0xc3
	.ascii "&"
	.db 0x85
	.db 0xab
	.db 0xb0
	.ascii "+0"
	.db 0x0a
	.db 0x06
	.db 0x08
	.ascii "*"
	.db 0x86
	.ascii "H"
	.db 0xce
	.ascii "="
	.db 0x04
	.db 0x03
	.db 0x02
	.db 0x03
	.ascii "H"
	.db 0x00
	.ascii "0E"
	.db 0x02
	.ascii "!"
	.db 0x00
	.db 0xed
	.ascii "q"
	.db 0xd4
	.db 0x19
	.db 0x01
	.db 0xa2
	.db 0xfe
	.db 0xa5
	.db 0xa8
	.ascii "n"
	.db 0xa9
	.db 0xa4
	.db 0x8c
	.db 0xf4
	.db 0xcb
	.db 0xc6
	.db 0x7f
	.db 0xc7
	.db 0x92
	.ascii "(V"
	.db 0xfa
	.db 0x05
	.db 0x01
	.db 0xa9
	.db 0xc9
	.db 0xbf
	.db 0xfb
	.ascii "."
	.db 0x83
	.ascii "$3"
	.db 0x02
	.ascii " <V"
	.db 0x15
	.ascii "|"
	.db 0x11
	.db 0x8b
	.ascii "F"
	.db 0xd2
	.ascii "S"
	.db 0xf9
	.db 0xac
	.db 0x96
	.db 0xf6
	.db 0xd0
	.db 0xab
	.ascii "M"
	.db 0x0f
	.db 0xf7
	.ascii "J"
	.db 0xf0
	.db 0xb0
	.db 0xaf
	.db 0xfb
	.db 0x8c
	.db 0xd0
	.db 0x18
	.db 0xee
	.db 0xf0
	.db 0xc3
	.ascii "shg"
	.db 0x00
G$__attest_size$0$0 == .
___attest_size:
	.byte #0x7e,#0x01	; 382
G$WMASK$0$0 == .
_WMASK:
	.db 0x9b
	.ascii "t"
	.db 0xbe
	.db 0xd4
	.db 0x00
	.db 0xea
	.ascii "R"
	.db 0x88
	.ascii "j"
	.db 0x9e
	.db 0xb9
	.db 0x5c
	.ascii "i*"
	.db 0x9c
	.ascii "p"
	.db 0x0a
	.ascii "O "
	.db 0xb5
	.ascii "f#"
	.db 0xa9
	.ascii "W"
	.db 0xaf
	.ascii "qY"
	.db 0xd8
	.db 0xe8
	.db 0xa6
	.ascii "nu/)Nb"
	.db 0x00
G$RMASK$0$0 == .
_RMASK:
	.ascii "HI"
	.db 0x97
	.db 0x13
	.ascii "G"
	.db 0xdb
	.db 0xa0
	.db 0x1d
	.ascii "$"
	.db 0xfd
	.db 0x5c
	.ascii "2"
	.db 0x15
	.ascii "f"
	.db 0xc6
	.db 0x9d
	.db 0x98
	.db 0x22
	.db 0x99
	.db 0xe9
	.db 0xa0
	.db 0x22
	.ascii "("
	.db 0x99
	.ascii "y"
	.db 0x0b
	.db 0xdd
	.db 0x0f
	.ascii "y"
	.db 0xa5
	.ascii ","
	.db 0xe2
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
