                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module cert
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _RMASK
                                     12 	.globl _WMASK
                                     13 	.globl ___attest_size
                                     14 	.globl ___attest
                                     15 ;--------------------------------------------------------
                                     16 ; special function registers
                                     17 ;--------------------------------------------------------
                                     18 	.area RSEG    (ABS,DATA)
      000000                         19 	.org 0x0000
                                     20 ;--------------------------------------------------------
                                     21 ; special function bits
                                     22 ;--------------------------------------------------------
                                     23 	.area RSEG    (ABS,DATA)
      000000                         24 	.org 0x0000
                                     25 ;--------------------------------------------------------
                                     26 ; overlayable register banks
                                     27 ;--------------------------------------------------------
                                     28 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         29 	.ds 8
                                     30 ;--------------------------------------------------------
                                     31 ; internal ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DSEG    (DATA)
                                     34 ;--------------------------------------------------------
                                     35 ; overlayable items in internal ram 
                                     36 ;--------------------------------------------------------
                                     37 ;--------------------------------------------------------
                                     38 ; indirectly addressable internal ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area ISEG    (DATA)
                                     41 ;--------------------------------------------------------
                                     42 ; absolute internal ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area IABS    (ABS,DATA)
                                     45 	.area IABS    (ABS,DATA)
                                     46 ;--------------------------------------------------------
                                     47 ; bit data
                                     48 ;--------------------------------------------------------
                                     49 	.area BSEG    (BIT)
                                     50 ;--------------------------------------------------------
                                     51 ; paged external ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area PSEG    (PAG,XDATA)
                                     54 ;--------------------------------------------------------
                                     55 ; external ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area XSEG    (XDATA)
                                     58 ;--------------------------------------------------------
                                     59 ; absolute external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area XABS    (ABS,XDATA)
                                     62 ;--------------------------------------------------------
                                     63 ; external initialized ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XISEG   (XDATA)
                                     66 	.area HOME    (CODE)
                                     67 	.area GSINIT0 (CODE)
                                     68 	.area GSINIT1 (CODE)
                                     69 	.area GSINIT2 (CODE)
                                     70 	.area GSINIT3 (CODE)
                                     71 	.area GSINIT4 (CODE)
                                     72 	.area GSINIT5 (CODE)
                                     73 	.area GSINIT  (CODE)
                                     74 	.area GSFINAL (CODE)
                                     75 	.area CSEG    (CODE)
                                     76 ;--------------------------------------------------------
                                     77 ; global & static initialisations
                                     78 ;--------------------------------------------------------
                                     79 	.area HOME    (CODE)
                                     80 	.area GSINIT  (CODE)
                                     81 	.area GSFINAL (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 ;--------------------------------------------------------
                                     84 ; Home
                                     85 ;--------------------------------------------------------
                                     86 	.area HOME    (CODE)
                                     87 	.area HOME    (CODE)
                                     88 ;--------------------------------------------------------
                                     89 ; code
                                     90 ;--------------------------------------------------------
                                     91 	.area CSEG    (CODE)
                                     92 	.area CSEG    (CODE)
                                     93 	.area CONST   (CODE)
                           000000    94 G$__attest$0$0 == .
      005FA6                         95 ___attest:
      005FA6 30                      96 	.ascii "0"
      005FA7 82                      97 	.db 0x82
      005FA8 01                      98 	.db 0x01
      005FA9 7A 30                   99 	.ascii "z0"
      005FAB 82                     100 	.db 0x82
      005FAC 01                     101 	.db 0x01
      005FAD 20                     102 	.ascii " "
      005FAE 02                     103 	.db 0x02
      005FAF 09                     104 	.db 0x09
      005FB0 00                     105 	.db 0x00
      005FB1 91                     106 	.db 0x91
      005FB2 50                     107 	.ascii "P"
      005FB3 9A                     108 	.db 0x9a
      005FB4 EA                     109 	.db 0xea
      005FB5 28                     110 	.ascii "("
      005FB6 11                     111 	.db 0x11
      005FB7 EF                     112 	.db 0xef
      005FB8 7C 30                  113 	.ascii "|0"
      005FBA 0A                     114 	.db 0x0a
      005FBB 06                     115 	.db 0x06
      005FBC 08                     116 	.db 0x08
      005FBD 2A                     117 	.ascii "*"
      005FBE 86                     118 	.db 0x86
      005FBF 48                     119 	.ascii "H"
      005FC0 CE                     120 	.db 0xce
      005FC1 3D                     121 	.ascii "="
      005FC2 04                     122 	.db 0x04
      005FC3 03                     123 	.db 0x03
      005FC4 02                     124 	.db 0x02
      005FC5 30 45 31               125 	.ascii "0E1"
      005FC8 0B                     126 	.db 0x0b
      005FC9 30                     127 	.ascii "0"
      005FCA 09                     128 	.db 0x09
      005FCB 06                     129 	.db 0x06
      005FCC 03                     130 	.db 0x03
      005FCD 55                     131 	.ascii "U"
      005FCE 04                     132 	.db 0x04
      005FCF 06                     133 	.db 0x06
      005FD0 13                     134 	.db 0x13
      005FD1 02                     135 	.db 0x02
      005FD2 41 55 31               136 	.ascii "AU1"
      005FD5 13                     137 	.db 0x13
      005FD6 30                     138 	.ascii "0"
      005FD7 11                     139 	.db 0x11
      005FD8 06                     140 	.db 0x06
      005FD9 03                     141 	.db 0x03
      005FDA 55                     142 	.ascii "U"
      005FDB 04                     143 	.db 0x04
      005FDC 08                     144 	.db 0x08
      005FDD 0C                     145 	.db 0x0c
      005FDE 0A                     146 	.db 0x0a
      005FDF 53 6F 6D               147 	.ascii "Som"
      005FE2 65 2D 53 74 61 74 65   148 	.ascii "e-State1!0"
             31 21 30
      005FEC 1F                     149 	.db 0x1f
      005FED 06                     150 	.db 0x06
      005FEE 03                     151 	.db 0x03
      005FEF 55                     152 	.ascii "U"
      005FF0 04                     153 	.db 0x04
      005FF1 0A                     154 	.db 0x0a
      005FF2 0C                     155 	.db 0x0c
      005FF3 18                     156 	.db 0x18
      005FF4 49 6E 74 65 72 6E 65   157 	.ascii "Internet Widgits Pty Ltd0"
             74 20 57 69 64 67 69
             74 73 20 50 74 79 20
             4C 74 64 30
      00600D 1E                     158 	.db 0x1e
      00600E 17                     159 	.db 0x17
      00600F 0D                     160 	.db 0x0d
      006010 31 37 30 31 32 38 30   161 	.ascii "170128061749Z"
             36 31 37 34 39 5A
      00601D 17                     162 	.db 0x17
      00601E 0D                     163 	.db 0x0d
      00601F 31 37 30 32 32 37 30   164 	.ascii "170227061749Z0E1"
             36 31 37 34 39 5A 30
             45 31
      00602F 0B                     165 	.db 0x0b
      006030 30                     166 	.ascii "0"
      006031 09                     167 	.db 0x09
      006032 06                     168 	.db 0x06
      006033 03                     169 	.db 0x03
      006034 55                     170 	.ascii "U"
      006035 04                     171 	.db 0x04
      006036 06                     172 	.db 0x06
      006037 13                     173 	.db 0x13
      006038 02                     174 	.db 0x02
      006039 41 55 31               175 	.ascii "AU1"
      00603C 13                     176 	.db 0x13
      00603D 30                     177 	.ascii "0"
      00603E 11                     178 	.db 0x11
      00603F 06                     179 	.db 0x06
      006040 03                     180 	.db 0x03
      006041 55                     181 	.ascii "U"
      006042 04                     182 	.db 0x04
      006043 08                     183 	.db 0x08
      006044 0C                     184 	.db 0x0c
      006045 0A                     185 	.db 0x0a
      006046 53 6F 6D 65 2D 53 74   186 	.ascii "Some-State1!0"
             61 74 65 31 21 30
      006053 1F                     187 	.db 0x1f
      006054 06                     188 	.db 0x06
      006055 03                     189 	.db 0x03
      006056 55                     190 	.ascii "U"
      006057 04                     191 	.db 0x04
      006058 0A                     192 	.db 0x0a
      006059 0C                     193 	.db 0x0c
      00605A 18                     194 	.db 0x18
      00605B 49 6E 74 65 72 6E 65   195 	.ascii "Internet Widgits Pty Ltd0Y0"
             74 20 57 69 64 67 69
             74 73 20 50 74 79 20
             4C 74 64 30 59 30
      006076 13                     196 	.db 0x13
      006077 06                     197 	.db 0x06
      006078 07                     198 	.db 0x07
      006079 2A                     199 	.ascii "*"
      00607A 86                     200 	.db 0x86
      00607B 48                     201 	.ascii "H"
      00607C CE                     202 	.db 0xce
      00607D 3D                     203 	.ascii "="
      00607E 02                     204 	.db 0x02
      00607F 01                     205 	.db 0x01
      006080 06                     206 	.db 0x06
      006081 08                     207 	.db 0x08
      006082 2A                     208 	.ascii "*"
      006083 86                     209 	.db 0x86
      006084 48                     210 	.ascii "H"
      006085 CE                     211 	.db 0xce
      006086 3D                     212 	.ascii "="
      006087 03                     213 	.db 0x03
      006088 01                     214 	.db 0x01
      006089 07                     215 	.db 0x07
      00608A 03                     216 	.db 0x03
      00608B 42                     217 	.ascii "B"
      00608C 00                     218 	.db 0x00
      00608D 04                     219 	.db 0x04
      00608E 87                     220 	.db 0x87
      00608F 8F                     221 	.db 0x8f
      006090 54 28 5A               222 	.ascii "T(Z"
      006093 D5                     223 	.db 0xd5
      006094 19                     224 	.db 0x19
      006095 B4                     225 	.db 0xb4
      006096 C0                     226 	.db 0xc0
      006097 95                     227 	.db 0x95
      006098 13                     228 	.db 0x13
      006099 AD                     229 	.db 0xad
      00609A 22                     230 	.db 0x22
      00609B 66                     231 	.ascii "f"
      00609C EC                     232 	.db 0xec
      00609D 6A                     233 	.ascii "j"
      00609E 81                     234 	.db 0x81
      00609F 52                     235 	.ascii "R"
      0060A0 E6                     236 	.db 0xe6
      0060A1 11                     237 	.db 0x11
      0060A2 A9                     238 	.db 0xa9
      0060A3 33                     239 	.ascii "3"
      0060A4 BB                     240 	.db 0xbb
      0060A5 3D                     241 	.ascii "="
      0060A6 DC                     242 	.db 0xdc
      0060A7 DE                     243 	.db 0xde
      0060A8 92                     244 	.db 0x92
      0060A9 C2                     245 	.db 0xc2
      0060AA 40 53                  246 	.ascii "@S"
      0060AC 9D                     247 	.db 0x9d
      0060AD 39                     248 	.ascii "9"
      0060AE 91                     249 	.db 0x91
      0060AF EA                     250 	.db 0xea
      0060B0 F2                     251 	.db 0xf2
      0060B1 0A                     252 	.db 0x0a
      0060B2 96                     253 	.db 0x96
      0060B3 61 30 2F               254 	.ascii "a0/"
      0060B6 EC                     255 	.db 0xec
      0060B7 65 4C                  256 	.ascii "eL"
      0060B9 80                     257 	.db 0x80
      0060BA AA                     258 	.db 0xaa
      0060BB BA                     259 	.db 0xba
      0060BC 15                     260 	.db 0x15
      0060BD EB                     261 	.db 0xeb
      0060BE 9A                     262 	.db 0x9a
      0060BF 70 4C                  263 	.ascii "pL"
      0060C1 80                     264 	.db 0x80
      0060C2 59                     265 	.ascii "Y"
      0060C3 93                     266 	.db 0x93
      0060C4 7A 51                  267 	.ascii "zQ"
      0060C6 BE                     268 	.db 0xbe
      0060C7 07                     269 	.db 0x07
      0060C8 C3                     270 	.db 0xc3
      0060C9 26                     271 	.ascii "&"
      0060CA 85                     272 	.db 0x85
      0060CB AB                     273 	.db 0xab
      0060CC B0                     274 	.db 0xb0
      0060CD 2B 30                  275 	.ascii "+0"
      0060CF 0A                     276 	.db 0x0a
      0060D0 06                     277 	.db 0x06
      0060D1 08                     278 	.db 0x08
      0060D2 2A                     279 	.ascii "*"
      0060D3 86                     280 	.db 0x86
      0060D4 48                     281 	.ascii "H"
      0060D5 CE                     282 	.db 0xce
      0060D6 3D                     283 	.ascii "="
      0060D7 04                     284 	.db 0x04
      0060D8 03                     285 	.db 0x03
      0060D9 02                     286 	.db 0x02
      0060DA 03                     287 	.db 0x03
      0060DB 48                     288 	.ascii "H"
      0060DC 00                     289 	.db 0x00
      0060DD 30 45                  290 	.ascii "0E"
      0060DF 02                     291 	.db 0x02
      0060E0 21                     292 	.ascii "!"
      0060E1 00                     293 	.db 0x00
      0060E2 ED                     294 	.db 0xed
      0060E3 71                     295 	.ascii "q"
      0060E4 D4                     296 	.db 0xd4
      0060E5 19                     297 	.db 0x19
      0060E6 01                     298 	.db 0x01
      0060E7 A2                     299 	.db 0xa2
      0060E8 FE                     300 	.db 0xfe
      0060E9 A5                     301 	.db 0xa5
      0060EA A8                     302 	.db 0xa8
      0060EB 6E                     303 	.ascii "n"
      0060EC A9                     304 	.db 0xa9
      0060ED A4                     305 	.db 0xa4
      0060EE 8C                     306 	.db 0x8c
      0060EF F4                     307 	.db 0xf4
      0060F0 CB                     308 	.db 0xcb
      0060F1 C6                     309 	.db 0xc6
      0060F2 7F                     310 	.db 0x7f
      0060F3 C7                     311 	.db 0xc7
      0060F4 92                     312 	.db 0x92
      0060F5 28 56                  313 	.ascii "(V"
      0060F7 FA                     314 	.db 0xfa
      0060F8 05                     315 	.db 0x05
      0060F9 01                     316 	.db 0x01
      0060FA A9                     317 	.db 0xa9
      0060FB C9                     318 	.db 0xc9
      0060FC BF                     319 	.db 0xbf
      0060FD FB                     320 	.db 0xfb
      0060FE 2E                     321 	.ascii "."
      0060FF 83                     322 	.db 0x83
      006100 24 33                  323 	.ascii "$3"
      006102 02                     324 	.db 0x02
      006103 20 3C 56               325 	.ascii " <V"
      006106 15                     326 	.db 0x15
      006107 7C                     327 	.ascii "|"
      006108 11                     328 	.db 0x11
      006109 8B                     329 	.db 0x8b
      00610A 46                     330 	.ascii "F"
      00610B D2                     331 	.db 0xd2
      00610C 53                     332 	.ascii "S"
      00610D F9                     333 	.db 0xf9
      00610E AC                     334 	.db 0xac
      00610F 96                     335 	.db 0x96
      006110 F6                     336 	.db 0xf6
      006111 D0                     337 	.db 0xd0
      006112 AB                     338 	.db 0xab
      006113 4D                     339 	.ascii "M"
      006114 0F                     340 	.db 0x0f
      006115 F7                     341 	.db 0xf7
      006116 4A                     342 	.ascii "J"
      006117 F0                     343 	.db 0xf0
      006118 B0                     344 	.db 0xb0
      006119 AF                     345 	.db 0xaf
      00611A FB                     346 	.db 0xfb
      00611B 8C                     347 	.db 0x8c
      00611C D0                     348 	.db 0xd0
      00611D 18                     349 	.db 0x18
      00611E EE                     350 	.db 0xee
      00611F F0                     351 	.db 0xf0
      006120 C3                     352 	.db 0xc3
      006121 73 68 67               353 	.ascii "shg"
      006124 00                     354 	.db 0x00
                           00017F   355 G$__attest_size$0$0 == .
      006125                        356 ___attest_size:
      006125 7E 01                  357 	.byte #0x7e,#0x01	; 382
                           000181   358 G$WMASK$0$0 == .
      006127                        359 _WMASK:
      006127 9B                     360 	.db 0x9b
      006128 74                     361 	.ascii "t"
      006129 BE                     362 	.db 0xbe
      00612A D4                     363 	.db 0xd4
      00612B 00                     364 	.db 0x00
      00612C EA                     365 	.db 0xea
      00612D 52                     366 	.ascii "R"
      00612E 88                     367 	.db 0x88
      00612F 6A                     368 	.ascii "j"
      006130 9E                     369 	.db 0x9e
      006131 B9                     370 	.db 0xb9
      006132 5C                     371 	.db 0x5c
      006133 69 2A                  372 	.ascii "i*"
      006135 9C                     373 	.db 0x9c
      006136 70                     374 	.ascii "p"
      006137 0A                     375 	.db 0x0a
      006138 4F 20                  376 	.ascii "O "
      00613A B5                     377 	.db 0xb5
      00613B 66 23                  378 	.ascii "f#"
      00613D A9                     379 	.db 0xa9
      00613E 57                     380 	.ascii "W"
      00613F AF                     381 	.db 0xaf
      006140 71 59                  382 	.ascii "qY"
      006142 D8                     383 	.db 0xd8
      006143 E8                     384 	.db 0xe8
      006144 A6                     385 	.db 0xa6
      006145 6E 75 2F 29 4E 62      386 	.ascii "nu/)Nb"
      00614B 00                     387 	.db 0x00
                           0001A6   388 G$RMASK$0$0 == .
      00614C                        389 _RMASK:
      00614C 48 49                  390 	.ascii "HI"
      00614E 97                     391 	.db 0x97
      00614F 13                     392 	.db 0x13
      006150 47                     393 	.ascii "G"
      006151 DB                     394 	.db 0xdb
      006152 A0                     395 	.db 0xa0
      006153 1D                     396 	.db 0x1d
      006154 24                     397 	.ascii "$"
      006155 FD                     398 	.db 0xfd
      006156 5C                     399 	.db 0x5c
      006157 32                     400 	.ascii "2"
      006158 15                     401 	.db 0x15
      006159 66                     402 	.ascii "f"
      00615A C6                     403 	.db 0xc6
      00615B 9D                     404 	.db 0x9d
      00615C 98                     405 	.db 0x98
      00615D 22                     406 	.db 0x22
      00615E 99                     407 	.db 0x99
      00615F E9                     408 	.db 0xe9
      006160 A0                     409 	.db 0xa0
      006161 22                     410 	.db 0x22
      006162 28                     411 	.ascii "("
      006163 99                     412 	.db 0x99
      006164 79                     413 	.ascii "y"
      006165 0B                     414 	.db 0x0b
      006166 DD                     415 	.db 0xdd
      006167 0F                     416 	.db 0x0f
      006168 79                     417 	.ascii "y"
      006169 A5                     418 	.db 0xa5
      00616A 2C                     419 	.ascii ","
      00616B E2                     420 	.db 0xe2
      00616C 00                     421 	.db 0x00
                                    422 	.area XINIT   (CODE)
                                    423 	.area CABS    (ABS,CODE)
