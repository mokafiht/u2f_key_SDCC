M:i2c
S:Li2c.aligned_alloc$size$1$93({2}SI:U),B,1,-4
S:Li2c.aligned_alloc$alignment$1$93({2}SI:U),B,1,1
F:G$smb_read$0$0({2}DF,SC:U),Z,0,0,0,0,0
S:Li2c.smb_read$dest$1$123({3}DG,SC:U),B,1,-5
S:Li2c.smb_read$count$1$123({1}SC:U),B,1,-6
S:Li2c.smb_read$addr$1$123({1}SC:U),R,0,0,[r7]
F:G$smb_write$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Li2c.smb_write$buf$1$127({3}DG,SC:U),B,1,-5
S:Li2c.smb_write$len$1$127({1}SC:U),B,1,-6
S:Li2c.smb_write$addr$1$127({1}SC:U),R,0,0,[r7]
F:G$smb_set_ext_write$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Li2c.smb_set_ext_write$extlen$1$131({1}SC:U),B,1,-3
S:Li2c.smb_set_ext_write$extbuf$1$131({3}DG,SC:U),R,0,0,[r5,r6,r7]
F:G$feed_crc$0$0({2}DF,SI:U),Z,0,0,0,0,0
S:Li2c.feed_crc$b$1$134({1}SC:U),B,1,-3
S:Li2c.feed_crc$crc$1$134({2}SI:U),R,0,0,[r6,r7]
F:G$reverse_bits$0$0({2}DF,SI:U),Z,0,0,0,0,0
S:Li2c.reverse_bits$crc$1$136({2}SI:U),R,0,0,[r6,r7]
F:G$smb_init$0$0({2}DF,SV:S),Z,0,0,0,0,0
T:Fi2c$SI_UU32[({0}S:S$u32$0$0({4}SL:U),Z,0,0)({0}S:S$s32$0$0({4}SL:S),Z,0,0)({0}S:S$uu16$0$0({4}DA2d,STSI_UU16:S),Z,0,0)({0}S:S$u16$0$0({4}DA2d,SI:U),Z,0,0)({0}S:S$s16$0$0({4}DA2d,SI:S),Z,0,0)({0}S:S$u8$0$0({4}DA4d,SC:U),Z,0,0)({0}S:S$s8$0$0({4}DA4d,SC:S),Z,0,0)]
T:Fi2c$SI_UU16[({0}S:S$u16$0$0({2}SI:U),Z,0,0)({0}S:S$s16$0$0({2}SI:S),Z,0,0)({0}S:S$u8$0$0({2}DA2d,SC:U),Z,0,0)({0}S:S$s8$0$0({2}DA2d,SC:S),Z,0,0)]
T:Fi2c$u2f_hid_nonce[({0}S:S$nonce$0$0({8}DA8d,SC:U),Z,0,0)]
T:Fi2c$config_msg[({0}S:S$cmd$0$0({1}SC:U),Z,0,0)({1}S:S$buf$0$0({63}DA63d,SC:U),Z,0,0)]
T:Fi2c$SI_GEN_PTR[({0}S:S$u8$0$0({3}DA3d,SC:U),Z,0,0)({0}S:S$gptr$0$0({3}ST__00000000:S),Z,0,0)]
T:Fi2c$__00000000[({0}S:S$memtype$0$0({1}SC:U),Z,0,0)({1}S:S$address$0$0({2}STSI_UU16:S),Z,0,0)]
T:Fi2c$__00000010[({0}S:S$bits$0$0({1}ST__00000011:S),Z,0,0)({0}S:S$c$0$0({1}SC:U),Z,0,0)]
T:Fi2c$__00000001[({0}S:S$bmRequestType$0$0({1}ST__00000002:S),Z,0,0)({1}S:S$bRequest$0$0({1}SC:U),Z,0,0)({2}S:S$wValue$0$0({2}SI:U),Z,0,0)({4}S:S$wIndex$0$0({2}SI:U),Z,0,0)({6}S:S$wLength$0$0({2}SI:U),Z,0,0)]
T:Fi2c$__00000011[({0}S:S$callback$0$0({1}SB0$1:U),Z,0,0)({0}S:S$outPacketPending$0$0({1}SB1$1:U),Z,0,0)({0}S:S$inPacketPending$0$0({1}SB2$1:U),Z,0,0)({0}S:S$waitForRead$0$0({1}SB3$1:U),Z,0,0)]
T:Fi2c$__00000002[({0}S:S$Recipient$0$0({1}SB0$5:U),Z,0,0)({0}S:S$Type$0$0({1}SB5$2:U),Z,0,0)({0}S:S$Direction$0$0({1}SB7$1:U),Z,0,0)]
T:Fi2c$__00000012[({0}S:S$configurationValue$0$0({1}SC:U),Z,0,0)({1}S:S$numberOfStrings$0$0({1}SC:U),Z,0,0)({2}S:S$state$0$0({1}SC:U),Z,0,0)({3}S:S$savedState$0$0({1}SC:U),Z,0,0)({4}S:S$setup$0$0({8}ST__00000001:S),Z,0,0)({12}S:S$ep0String$0$0({1}ST__00000013:S),Z,0,0)({13}S:S$ep0$0$0({7}ST__00000009:S),Z,0,0)({20}S:S$ep1in$0$0({7}ST__00000009:S),Z,0,0)({27}S:S$ep1out$0$0({7}ST__00000009:S),Z,0,0)({34}S:S$deviceDescriptor$0$0({3}DG,ST__00000004:S),Z,0,0)({37}S:S$configDescriptor$0$0({3}DG,ST__00000005:S),Z,0,0)({40}S:S$stringDescriptors$0$0({3}DG,DG,DG,SC:U),Z,0,0)]
T:Fi2c$__00000003[({0}S:S$setup$0$0({8}ST__00000001:S),Z,0,0)({0}S:S$c$0$0({8}DA8d,SC:U),Z,0,0)({0}S:S$i$0$0({8}DA4d,SI:U),Z,0,0)]
T:Fi2c$__00000013[({0}S:S$encoding$0$0({1}ST__00000014:S),Z,0,0)({0}S:S$c$0$0({1}SC:U),Z,0,0)]
T:Fi2c$__00000004[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$bcdUSB$0$0({2}SI:U),Z,0,0)({4}S:S$bDeviceClass$0$0({1}SC:U),Z,0,0)({5}S:S$bDeviceSubClass$0$0({1}SC:U),Z,0,0)({6}S:S$bDeviceProtocol$0$0({1}SC:U),Z,0,0)({7}S:S$bMaxPacketSize0$0$0({1}SC:U),Z,0,0)({8}S:S$idVendor$0$0({2}SI:U),Z,0,0)({10}S:S$idProduct$0$0({2}SI:U),Z,0,0)({12}S:S$bcdDevice$0$0({2}SI:U),Z,0,0)({14}S:S$iManufacturer$0$0({1}SC:U),Z,0,0)({15}S:S$iProduct$0$0({1}SC:U),Z,0,0)({16}S:S$iSerialNumber$0$0({1}SC:U),Z,0,0)({17}S:S$bNumConfigurations$0$0({1}SC:U),Z,0,0)]
T:Fi2c$__00000014[({0}S:S$type$0$0({1}SB0$7:U),Z,0,0)({0}S:S$init$0$0({1}SB7$1:U),Z,0,0)]
T:Fi2c$__00000005[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$wTotalLength$0$0({2}SI:U),Z,0,0)({4}S:S$bNumInterfaces$0$0({1}SC:U),Z,0,0)({5}S:S$bConfigurationValue$0$0({1}SC:U),Z,0,0)({6}S:S$iConfiguration$0$0({1}SC:U),Z,0,0)({7}S:S$bmAttributes$0$0({1}SC:U),Z,0,0)({8}S:S$bMaxPower$0$0({1}SC:U),Z,0,0)]
T:Fi2c$__00000015[({0}S:S$init$0$0({60}ST__00000016:S),Z,0,0)({0}S:S$cont$0$0({60}ST__00000017:S),Z,0,0)]
T:Fi2c$__00000006[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$bInterfaceNumber$0$0({1}SC:U),Z,0,0)({3}S:S$bAlternateSetting$0$0({1}SC:U),Z,0,0)({4}S:S$bNumEndpoints$0$0({1}SC:U),Z,0,0)({5}S:S$bInterfaceClass$0$0({1}SC:U),Z,0,0)({6}S:S$bInterfaceSubClass$0$0({1}SC:U),Z,0,0)({7}S:S$bInterfaceProtocol$0$0({1}SC:U),Z,0,0)({8}S:S$iInterface$0$0({1}SC:U),Z,0,0)]
T:Fi2c$__00000016[({0}S:S$cmd$0$0({1}SC:U),Z,0,0)({1}S:S$bcnth$0$0({1}SC:U),Z,0,0)({2}S:S$bcntl$0$0({1}SC:U),Z,0,0)({3}S:S$payload$0$0({57}DA57d,SC:U),Z,0,0)]
T:Fi2c$__00000007[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$bEndpointAddress$0$0({1}SC:U),Z,0,0)({3}S:S$bmAttributes$0$0({1}SC:U),Z,0,0)({4}S:S$wMaxPacketSize$0$0({2}SI:U),Z,0,0)({6}S:S$bInterval$0$0({1}SC:U),Z,0,0)]
T:Fi2c$__00000017[({0}S:S$seq$0$0({1}SC:U),Z,0,0)({1}S:S$payload$0$0({59}DA59d,SC:U),Z,0,0)]
T:Fi2c$__00000008[({0}S:S$deviceDescriptor$0$0({3}DG,ST__00000004:S),Z,0,0)({3}S:S$configDescriptor$0$0({3}DG,SC:U),Z,0,0)({6}S:S$stringDescriptors$0$0({3}DG,DG,DG,SC:U),Z,0,0)({9}S:S$numberOfStrings$0$0({1}SC:U),Z,0,0)]
T:Fi2c$u2f_hid_msg[({0}S:S$cid$0$0({4}SL:U),Z,0,0)({4}S:S$pkt$0$0({60}ST__00000015:S),Z,0,0)]
T:Fi2c$__00000009[({0}S:S$buf$0$0({3}DG,SC:U),Z,0,0)({3}S:S$remaining$0$0({2}SI:U),Z,0,0)({5}S:S$state$0$0({1}SC:U),Z,0,0)({6}S:S$misc$0$0({1}ST__00000010:S),Z,0,0)]
T:Fi2c$APP_DATA[({0}S:S$tmp$0$0({70}DA70d,SC:U),Z,0,0)]
T:Fi2c$u2f_hid_init_response[({0}S:S$cid$0$0({4}SL:U),Z,0,0)({4}S:S$version_id$0$0({1}SC:U),Z,0,0)({5}S:S$version_major$0$0({1}SC:U),Z,0,0)({6}S:S$version_minor$0$0({1}SC:U),Z,0,0)({7}S:S$version_build$0$0({1}SC:U),Z,0,0)({8}S:S$cflags$0$0({1}SC:U),Z,0,0)]
T:Fi2c$smb_interrupt_interface[({0}S:S$addr$0$0({1}SC:U),Z,0,0)({1}S:S$crc$0$0({2}SI:U),Z,0,0)({3}S:S$crc_offset$0$0({1}SC:U),Z,0,0)({4}S:S$write_buf$0$0({3}DG,SC:U),Z,0,0)({7}S:S$write_len$0$0({1}SC:U),Z,0,0)({8}S:S$write_offset$0$0({1}SC:U),Z,0,0)({9}S:S$read_len$0$0({1}SC:U),Z,0,0)({10}S:S$read_offset$0$0({1}SC:U),Z,0,0)({11}S:S$read_buf$0$0({3}DG,SC:U),Z,0,0)({14}S:S$write_ext_buf$0$0({3}DG,SC:U),Z,0,0)({17}S:S$write_ext_len$0$0({1}SC:U),Z,0,0)({18}S:S$write_ext_offset$0$0({1}SC:U),Z,0,0)({19}S:S$preflags$0$0({1}SC:U),Z,0,0)]
S:G$SMB_addr$0$0({1}SC:U),E,0,0
S:G$SMB_write_len$0$0({1}SC:U),E,0,0
S:G$SMB_write_offset$0$0({1}SC:U),E,0,0
S:G$SMB_read_len$0$0({1}SC:U),E,0,0
S:G$SMB_read_offset$0$0({1}SC:U),E,0,0
S:G$SMB_write_ext_len$0$0({1}SC:U),E,0,0
S:G$SMB_write_ext_offset$0$0({1}SC:U),E,0,0
S:G$SMB_crc_offset$0$0({1}SC:U),E,0,0
S:G$SMB_FLAGS$0$0({1}SC:U),E,0,0
S:G$appdata$0$0({70}STAPP_DATA:S),E,0,0
S:G$_MS_$0$0({4}SL:U),E,0,0
S:G$SMB_write_buf$0$0({3}DG,SC:U),F,0,0
S:G$SMB_read_buf$0$0({3}DG,SC:U),F,0,0
S:G$SMB_write_ext_buf$0$0({3}DG,SC:U),F,0,0
S:G$SMB_preflags$0$0({1}SC:U),F,0,0
S:G$SMB_crc$0$0({2}SI:U),F,0,0
S:G$hidmsgbuf$0$0({64}DA64d,SC:U),F,0,0
S:G$myUsbDevice$0$0({43}ST__00000012:S),F,0,0
S:G$ACC$0$0({1}SC:U),I,0,0
S:G$ADC0AC$0$0({1}SC:U),I,0,0
S:G$ADC0CF$0$0({1}SC:U),I,0,0
S:G$ADC0CN0$0$0({1}SC:U),I,0,0
S:G$ADC0CN1$0$0({1}SC:U),I,0,0
S:G$ADC0GTH$0$0({1}SC:U),I,0,0
S:G$ADC0GTL$0$0({1}SC:U),I,0,0
S:G$ADC0H$0$0({1}SC:U),I,0,0
S:G$ADC0L$0$0({1}SC:U),I,0,0
S:G$ADC0LTH$0$0({1}SC:U),I,0,0
S:G$ADC0LTL$0$0({1}SC:U),I,0,0
S:G$ADC0MX$0$0({1}SC:U),I,0,0
S:G$ADC0PWR$0$0({1}SC:U),I,0,0
S:G$ADC0TK$0$0({1}SC:U),I,0,0
S:G$B$0$0({1}SC:U),I,0,0
S:G$CKCON0$0$0({1}SC:U),I,0,0
S:G$CKCON1$0$0({1}SC:U),I,0,0
S:G$CLKSEL$0$0({1}SC:U),I,0,0
S:G$CMP0CN0$0$0({1}SC:U),I,0,0
S:G$CMP0CN1$0$0({1}SC:U),I,0,0
S:G$CMP0MD$0$0({1}SC:U),I,0,0
S:G$CMP0MX$0$0({1}SC:U),I,0,0
S:G$CMP1CN0$0$0({1}SC:U),I,0,0
S:G$CMP1CN1$0$0({1}SC:U),I,0,0
S:G$CMP1MD$0$0({1}SC:U),I,0,0
S:G$CMP1MX$0$0({1}SC:U),I,0,0
S:G$CRC0CN0$0$0({1}SC:U),I,0,0
S:G$CRC0CN1$0$0({1}SC:U),I,0,0
S:G$CRC0CNT$0$0({1}SC:U),I,0,0
S:G$CRC0DAT$0$0({1}SC:U),I,0,0
S:G$CRC0FLIP$0$0({1}SC:U),I,0,0
S:G$CRC0IN$0$0({1}SC:U),I,0,0
S:G$CRC0ST$0$0({1}SC:U),I,0,0
S:G$DERIVID$0$0({1}SC:U),I,0,0
S:G$DEVICEID$0$0({1}SC:U),I,0,0
S:G$DPH$0$0({1}SC:U),I,0,0
S:G$DPL$0$0({1}SC:U),I,0,0
S:G$EIE1$0$0({1}SC:U),I,0,0
S:G$EIE2$0$0({1}SC:U),I,0,0
S:G$EIP1$0$0({1}SC:U),I,0,0
S:G$EIP1H$0$0({1}SC:U),I,0,0
S:G$EIP2$0$0({1}SC:U),I,0,0
S:G$EIP2H$0$0({1}SC:U),I,0,0
S:G$EMI0CN$0$0({1}SC:U),I,0,0
S:G$FLKEY$0$0({1}SC:U),I,0,0
S:G$HFO0CAL$0$0({1}SC:U),I,0,0
S:G$HFO1CAL$0$0({1}SC:U),I,0,0
S:G$HFOCN$0$0({1}SC:U),I,0,0
S:G$I2C0CN0$0$0({1}SC:U),I,0,0
S:G$I2C0DIN$0$0({1}SC:U),I,0,0
S:G$I2C0DOUT$0$0({1}SC:U),I,0,0
S:G$I2C0FCN0$0$0({1}SC:U),I,0,0
S:G$I2C0FCN1$0$0({1}SC:U),I,0,0
S:G$I2C0FCT$0$0({1}SC:U),I,0,0
S:G$I2C0SLAD$0$0({1}SC:U),I,0,0
S:G$I2C0STAT$0$0({1}SC:U),I,0,0
S:G$IE$0$0({1}SC:U),I,0,0
S:G$IP$0$0({1}SC:U),I,0,0
S:G$IPH$0$0({1}SC:U),I,0,0
S:G$IT01CF$0$0({1}SC:U),I,0,0
S:G$LFO0CN$0$0({1}SC:U),I,0,0
S:G$P0$0$0({1}SC:U),I,0,0
S:G$P0MASK$0$0({1}SC:U),I,0,0
S:G$P0MAT$0$0({1}SC:U),I,0,0
S:G$P0MDIN$0$0({1}SC:U),I,0,0
S:G$P0MDOUT$0$0({1}SC:U),I,0,0
S:G$P0SKIP$0$0({1}SC:U),I,0,0
S:G$P1$0$0({1}SC:U),I,0,0
S:G$P1MASK$0$0({1}SC:U),I,0,0
S:G$P1MAT$0$0({1}SC:U),I,0,0
S:G$P1MDIN$0$0({1}SC:U),I,0,0
S:G$P1MDOUT$0$0({1}SC:U),I,0,0
S:G$P1SKIP$0$0({1}SC:U),I,0,0
S:G$P2$0$0({1}SC:U),I,0,0
S:G$P2MASK$0$0({1}SC:U),I,0,0
S:G$P2MAT$0$0({1}SC:U),I,0,0
S:G$P2MDIN$0$0({1}SC:U),I,0,0
S:G$P2MDOUT$0$0({1}SC:U),I,0,0
S:G$P2SKIP$0$0({1}SC:U),I,0,0
S:G$P3$0$0({1}SC:U),I,0,0
S:G$P3MDIN$0$0({1}SC:U),I,0,0
S:G$P3MDOUT$0$0({1}SC:U),I,0,0
S:G$PCA0CENT$0$0({1}SC:U),I,0,0
S:G$PCA0CLR$0$0({1}SC:U),I,0,0
S:G$PCA0CN0$0$0({1}SC:U),I,0,0
S:G$PCA0CPH0$0$0({1}SC:U),I,0,0
S:G$PCA0CPH1$0$0({1}SC:U),I,0,0
S:G$PCA0CPH2$0$0({1}SC:U),I,0,0
S:G$PCA0CPL0$0$0({1}SC:U),I,0,0
S:G$PCA0CPL1$0$0({1}SC:U),I,0,0
S:G$PCA0CPL2$0$0({1}SC:U),I,0,0
S:G$PCA0CPM0$0$0({1}SC:U),I,0,0
S:G$PCA0CPM1$0$0({1}SC:U),I,0,0
S:G$PCA0CPM2$0$0({1}SC:U),I,0,0
S:G$PCA0H$0$0({1}SC:U),I,0,0
S:G$PCA0L$0$0({1}SC:U),I,0,0
S:G$PCA0MD$0$0({1}SC:U),I,0,0
S:G$PCA0POL$0$0({1}SC:U),I,0,0
S:G$PCA0PWM$0$0({1}SC:U),I,0,0
S:G$PCON0$0$0({1}SC:U),I,0,0
S:G$PCON1$0$0({1}SC:U),I,0,0
S:G$PFE0CN$0$0({1}SC:U),I,0,0
S:G$PRTDRV$0$0({1}SC:U),I,0,0
S:G$PSCTL$0$0({1}SC:U),I,0,0
S:G$PSW$0$0({1}SC:U),I,0,0
S:G$REF0CN$0$0({1}SC:U),I,0,0
S:G$REG0CN$0$0({1}SC:U),I,0,0
S:G$REG1CN$0$0({1}SC:U),I,0,0
S:G$REVID$0$0({1}SC:U),I,0,0
S:G$RSTSRC$0$0({1}SC:U),I,0,0
S:G$SBCON1$0$0({1}SC:U),I,0,0
S:G$SBRLH1$0$0({1}SC:U),I,0,0
S:G$SBRLL1$0$0({1}SC:U),I,0,0
S:G$SBUF0$0$0({1}SC:U),I,0,0
S:G$SBUF1$0$0({1}SC:U),I,0,0
S:G$SCON0$0$0({1}SC:U),I,0,0
S:G$SCON1$0$0({1}SC:U),I,0,0
S:G$SFRPAGE$0$0({1}SC:U),I,0,0
S:G$SFRPGCN$0$0({1}SC:U),I,0,0
S:G$SFRSTACK$0$0({1}SC:U),I,0,0
S:G$SMB0ADM$0$0({1}SC:U),I,0,0
S:G$SMB0ADR$0$0({1}SC:U),I,0,0
S:G$SMB0CF$0$0({1}SC:U),I,0,0
S:G$SMB0CN0$0$0({1}SC:U),I,0,0
S:G$SMB0DAT$0$0({1}SC:U),I,0,0
S:G$SMB0FCN0$0$0({1}SC:U),I,0,0
S:G$SMB0FCN1$0$0({1}SC:U),I,0,0
S:G$SMB0FCT$0$0({1}SC:U),I,0,0
S:G$SMB0RXLN$0$0({1}SC:U),I,0,0
S:G$SMB0TC$0$0({1}SC:U),I,0,0
S:G$SMOD1$0$0({1}SC:U),I,0,0
S:G$SP$0$0({1}SC:U),I,0,0
S:G$SPI0CFG$0$0({1}SC:U),I,0,0
S:G$SPI0CKR$0$0({1}SC:U),I,0,0
S:G$SPI0CN0$0$0({1}SC:U),I,0,0
S:G$SPI0DAT$0$0({1}SC:U),I,0,0
S:G$SPI0FCN0$0$0({1}SC:U),I,0,0
S:G$SPI0FCN1$0$0({1}SC:U),I,0,0
S:G$SPI0FCT$0$0({1}SC:U),I,0,0
S:G$TCON$0$0({1}SC:U),I,0,0
S:G$TH0$0$0({1}SC:U),I,0,0
S:G$TH1$0$0({1}SC:U),I,0,0
S:G$TL0$0$0({1}SC:U),I,0,0
S:G$TL1$0$0({1}SC:U),I,0,0
S:G$TMOD$0$0({1}SC:U),I,0,0
S:G$TMR2CN0$0$0({1}SC:U),I,0,0
S:G$TMR2CN1$0$0({1}SC:U),I,0,0
S:G$TMR2H$0$0({1}SC:U),I,0,0
S:G$TMR2L$0$0({1}SC:U),I,0,0
S:G$TMR2RLH$0$0({1}SC:U),I,0,0
S:G$TMR2RLL$0$0({1}SC:U),I,0,0
S:G$TMR3CN0$0$0({1}SC:U),I,0,0
S:G$TMR3CN1$0$0({1}SC:U),I,0,0
S:G$TMR3H$0$0({1}SC:U),I,0,0
S:G$TMR3L$0$0({1}SC:U),I,0,0
S:G$TMR3RLH$0$0({1}SC:U),I,0,0
S:G$TMR3RLL$0$0({1}SC:U),I,0,0
S:G$TMR4CN0$0$0({1}SC:U),I,0,0
S:G$TMR4CN1$0$0({1}SC:U),I,0,0
S:G$TMR4H$0$0({1}SC:U),I,0,0
S:G$TMR4L$0$0({1}SC:U),I,0,0
S:G$TMR4RLH$0$0({1}SC:U),I,0,0
S:G$TMR4RLL$0$0({1}SC:U),I,0,0
S:G$UART1FCN0$0$0({1}SC:U),I,0,0
S:G$UART1FCN1$0$0({1}SC:U),I,0,0
S:G$UART1FCT$0$0({1}SC:U),I,0,0
S:G$UART1LIN$0$0({1}SC:U),I,0,0
S:G$USB0ADR$0$0({1}SC:U),I,0,0
S:G$USB0AEC$0$0({1}SC:U),I,0,0
S:G$USB0CDCF$0$0({1}SC:U),I,0,0
S:G$USB0CDCN$0$0({1}SC:U),I,0,0
S:G$USB0CDSTA$0$0({1}SC:U),I,0,0
S:G$USB0CF$0$0({1}SC:U),I,0,0
S:G$USB0DAT$0$0({1}SC:U),I,0,0
S:G$USB0XCN$0$0({1}SC:U),I,0,0
S:G$VDM0CN$0$0({1}SC:U),I,0,0
S:G$WDTCN$0$0({1}SC:U),I,0,0
S:G$XBR0$0$0({1}SC:U),I,0,0
S:G$XBR1$0$0({1}SC:U),I,0,0
S:G$XBR2$0$0({1}SC:U),I,0,0
S:G$ADC0GT$0$0({2}SI:U),I,0,0
S:G$ADC0$0$0({2}SI:U),I,0,0
S:G$ADC0LT$0$0({2}SI:U),I,0,0
S:G$DP$0$0({2}SI:U),I,0,0
S:G$PCA0CP0$0$0({2}SI:U),I,0,0
S:G$PCA0CP1$0$0({2}SI:U),I,0,0
S:G$PCA0CP2$0$0({2}SI:U),I,0,0
S:G$PCA0$0$0({2}SI:U),I,0,0
S:G$SBRL1$0$0({2}SI:U),I,0,0
S:G$TMR2$0$0({2}SI:U),I,0,0
S:G$TMR2RL$0$0({2}SI:U),I,0,0
S:G$TMR3$0$0({2}SI:U),I,0,0
S:G$TMR3RL$0$0({2}SI:U),I,0,0
S:G$TMR4$0$0({2}SI:U),I,0,0
S:G$TMR4RL$0$0({2}SI:U),I,0,0
S:G$_XPAGE$0$0({1}SC:U),I,0,0
S:G$ACC_ACC0$0$0({1}SX:U),J,0,0
S:G$ACC_ACC1$0$0({1}SX:U),J,0,0
S:G$ACC_ACC2$0$0({1}SX:U),J,0,0
S:G$ACC_ACC3$0$0({1}SX:U),J,0,0
S:G$ACC_ACC4$0$0({1}SX:U),J,0,0
S:G$ACC_ACC5$0$0({1}SX:U),J,0,0
S:G$ACC_ACC6$0$0({1}SX:U),J,0,0
S:G$ACC_ACC7$0$0({1}SX:U),J,0,0
S:G$ADC0CN0_ADCM0$0$0({1}SX:U),J,0,0
S:G$ADC0CN0_ADCM1$0$0({1}SX:U),J,0,0
S:G$ADC0CN0_ADCM2$0$0({1}SX:U),J,0,0
S:G$ADC0CN0_ADWINT$0$0({1}SX:U),J,0,0
S:G$ADC0CN0_ADBUSY$0$0({1}SX:U),J,0,0
S:G$ADC0CN0_ADINT$0$0({1}SX:U),J,0,0
S:G$ADC0CN0_ADBMEN$0$0({1}SX:U),J,0,0
S:G$ADC0CN0_ADEN$0$0({1}SX:U),J,0,0
S:G$B_B0$0$0({1}SX:U),J,0,0
S:G$B_B1$0$0({1}SX:U),J,0,0
S:G$B_B2$0$0({1}SX:U),J,0,0
S:G$B_B3$0$0({1}SX:U),J,0,0
S:G$B_B4$0$0({1}SX:U),J,0,0
S:G$B_B5$0$0({1}SX:U),J,0,0
S:G$B_B6$0$0({1}SX:U),J,0,0
S:G$B_B7$0$0({1}SX:U),J,0,0
S:G$IE_EX0$0$0({1}SX:U),J,0,0
S:G$IE_ET0$0$0({1}SX:U),J,0,0
S:G$IE_EX1$0$0({1}SX:U),J,0,0
S:G$IE_ET1$0$0({1}SX:U),J,0,0
S:G$IE_ES0$0$0({1}SX:U),J,0,0
S:G$IE_ET2$0$0({1}SX:U),J,0,0
S:G$IE_ESPI0$0$0({1}SX:U),J,0,0
S:G$IE_EA$0$0({1}SX:U),J,0,0
S:G$IP_PX0$0$0({1}SX:U),J,0,0
S:G$IP_PT0$0$0({1}SX:U),J,0,0
S:G$IP_PX1$0$0({1}SX:U),J,0,0
S:G$IP_PT1$0$0({1}SX:U),J,0,0
S:G$IP_PS0$0$0({1}SX:U),J,0,0
S:G$IP_PT2$0$0({1}SX:U),J,0,0
S:G$IP_PSPI0$0$0({1}SX:U),J,0,0
S:G$P0_B0$0$0({1}SX:U),J,0,0
S:G$P0_B1$0$0({1}SX:U),J,0,0
S:G$P0_B2$0$0({1}SX:U),J,0,0
S:G$P0_B3$0$0({1}SX:U),J,0,0
S:G$P0_B4$0$0({1}SX:U),J,0,0
S:G$P0_B5$0$0({1}SX:U),J,0,0
S:G$P0_B6$0$0({1}SX:U),J,0,0
S:G$P0_B7$0$0({1}SX:U),J,0,0
S:G$P1_B0$0$0({1}SX:U),J,0,0
S:G$P1_B1$0$0({1}SX:U),J,0,0
S:G$P1_B2$0$0({1}SX:U),J,0,0
S:G$P1_B3$0$0({1}SX:U),J,0,0
S:G$P1_B4$0$0({1}SX:U),J,0,0
S:G$P1_B5$0$0({1}SX:U),J,0,0
S:G$P1_B6$0$0({1}SX:U),J,0,0
S:G$P1_B7$0$0({1}SX:U),J,0,0
S:G$P2_B0$0$0({1}SX:U),J,0,0
S:G$P2_B1$0$0({1}SX:U),J,0,0
S:G$P2_B2$0$0({1}SX:U),J,0,0
S:G$P2_B3$0$0({1}SX:U),J,0,0
S:G$P3_B0$0$0({1}SX:U),J,0,0
S:G$P3_B1$0$0({1}SX:U),J,0,0
S:G$PCA0CN0_CCF0$0$0({1}SX:U),J,0,0
S:G$PCA0CN0_CCF1$0$0({1}SX:U),J,0,0
S:G$PCA0CN0_CCF2$0$0({1}SX:U),J,0,0
S:G$PCA0CN0_CR$0$0({1}SX:U),J,0,0
S:G$PCA0CN0_CF$0$0({1}SX:U),J,0,0
S:G$PSW_PARITY$0$0({1}SX:U),J,0,0
S:G$PSW_F1$0$0({1}SX:U),J,0,0
S:G$PSW_OV$0$0({1}SX:U),J,0,0
S:G$PSW_RS0$0$0({1}SX:U),J,0,0
S:G$PSW_RS1$0$0({1}SX:U),J,0,0
S:G$PSW_F0$0$0({1}SX:U),J,0,0
S:G$PSW_AC$0$0({1}SX:U),J,0,0
S:G$PSW_CY$0$0({1}SX:U),J,0,0
S:G$SCON0_RI$0$0({1}SX:U),J,0,0
S:G$SCON0_TI$0$0({1}SX:U),J,0,0
S:G$SCON0_RB8$0$0({1}SX:U),J,0,0
S:G$SCON0_TB8$0$0({1}SX:U),J,0,0
S:G$SCON0_REN$0$0({1}SX:U),J,0,0
S:G$SCON0_MCE$0$0({1}SX:U),J,0,0
S:G$SCON0_SMODE$0$0({1}SX:U),J,0,0
S:G$SCON1_RI$0$0({1}SX:U),J,0,0
S:G$SCON1_TI$0$0({1}SX:U),J,0,0
S:G$SCON1_RBX$0$0({1}SX:U),J,0,0
S:G$SCON1_TBX$0$0({1}SX:U),J,0,0
S:G$SCON1_REN$0$0({1}SX:U),J,0,0
S:G$SCON1_PERR$0$0({1}SX:U),J,0,0
S:G$SCON1_OVR$0$0({1}SX:U),J,0,0
S:G$SMB0CN0_SI$0$0({1}SX:U),J,0,0
S:G$SMB0CN0_ACK$0$0({1}SX:U),J,0,0
S:G$SMB0CN0_ARBLOST$0$0({1}SX:U),J,0,0
S:G$SMB0CN0_ACKRQ$0$0({1}SX:U),J,0,0
S:G$SMB0CN0_STO$0$0({1}SX:U),J,0,0
S:G$SMB0CN0_STA$0$0({1}SX:U),J,0,0
S:G$SMB0CN0_TXMODE$0$0({1}SX:U),J,0,0
S:G$SMB0CN0_MASTER$0$0({1}SX:U),J,0,0
S:G$SPI0CN0_SPIEN$0$0({1}SX:U),J,0,0
S:G$SPI0CN0_TXNF$0$0({1}SX:U),J,0,0
S:G$SPI0CN0_NSSMD0$0$0({1}SX:U),J,0,0
S:G$SPI0CN0_NSSMD1$0$0({1}SX:U),J,0,0
S:G$SPI0CN0_RXOVRN$0$0({1}SX:U),J,0,0
S:G$SPI0CN0_MODF$0$0({1}SX:U),J,0,0
S:G$SPI0CN0_WCOL$0$0({1}SX:U),J,0,0
S:G$SPI0CN0_SPIF$0$0({1}SX:U),J,0,0
S:G$TCON_IT0$0$0({1}SX:U),J,0,0
S:G$TCON_IE0$0$0({1}SX:U),J,0,0
S:G$TCON_IT1$0$0({1}SX:U),J,0,0
S:G$TCON_IE1$0$0({1}SX:U),J,0,0
S:G$TCON_TR0$0$0({1}SX:U),J,0,0
S:G$TCON_TF0$0$0({1}SX:U),J,0,0
S:G$TCON_TR1$0$0({1}SX:U),J,0,0
S:G$TCON_TF1$0$0({1}SX:U),J,0,0
S:G$TMR2CN0_T2XCLK0$0$0({1}SX:U),J,0,0
S:G$TMR2CN0_T2XCLK1$0$0({1}SX:U),J,0,0
S:G$TMR2CN0_TR2$0$0({1}SX:U),J,0,0
S:G$TMR2CN0_T2SPLIT$0$0({1}SX:U),J,0,0
S:G$TMR2CN0_TF2CEN$0$0({1}SX:U),J,0,0
S:G$TMR2CN0_TF2LEN$0$0({1}SX:U),J,0,0
S:G$TMR2CN0_TF2L$0$0({1}SX:U),J,0,0
S:G$TMR2CN0_TF2H$0$0({1}SX:U),J,0,0
S:G$TMR4CN0_T4XCLK0$0$0({1}SX:U),J,0,0
S:G$TMR4CN0_T4XCLK1$0$0({1}SX:U),J,0,0
S:G$TMR4CN0_TR4$0$0({1}SX:U),J,0,0
S:G$TMR4CN0_T4SPLIT$0$0({1}SX:U),J,0,0
S:G$TMR4CN0_TF4CEN$0$0({1}SX:U),J,0,0
S:G$TMR4CN0_TF4LEN$0$0({1}SX:U),J,0,0
S:G$TMR4CN0_TF4L$0$0({1}SX:U),J,0,0
S:G$TMR4CN0_TF4H$0$0({1}SX:U),J,0,0
S:G$UART1FCN1_RIE$0$0({1}SX:U),J,0,0
S:G$UART1FCN1_RXTO0$0$0({1}SX:U),J,0,0
S:G$UART1FCN1_RXTO1$0$0({1}SX:U),J,0,0
S:G$UART1FCN1_RFRQ$0$0({1}SX:U),J,0,0
S:G$UART1FCN1_TIE$0$0({1}SX:U),J,0,0
S:G$UART1FCN1_TXHOLD$0$0({1}SX:U),J,0,0
S:G$UART1FCN1_TXNF$0$0({1}SX:U),J,0,0
S:G$UART1FCN1_TFRQ$0$0({1}SX:U),J,0,0
S:G$U2F_BUTTON$0$0({1}SX:U),J,0,0
S:G$U2F_BUTTON_VAL$0$0({1}SX:U),J,0,0
S:G$U2F_RED$0$0({1}SX:U),J,0,0
S:G$U2F_GREEN$0$0({1}SX:U),J,0,0
S:G$U2F_BLUE$0$0({1}SX:U),J,0,0
S:G$memcpy$0$0({2}DF,DG,SV:S),C,0,0
S:G$memmove$0$0({2}DF,DG,SV:S),C,0,0
S:G$strcpy$0$0({2}DF,DG,SC:U),C,0,0
S:G$strncpy$0$0({2}DF,DG,SC:U),C,0,0
S:G$strcat$0$0({2}DF,DG,SC:U),C,0,0
S:G$strncat$0$0({2}DF,DG,SC:U),C,0,0
S:G$memcmp$0$0({2}DF,SI:S),C,0,0
S:G$strcmp$0$0({2}DF,SI:S),C,0,0
S:G$strncmp$0$0({2}DF,SI:S),C,0,0
S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
S:G$memchr$0$0({2}DF,DG,SV:S),C,0,0
S:G$strchr$0$0({2}DF,DG,SC:U),C,0,0
S:G$strcspn$0$0({2}DF,SI:U),C,0,0
S:G$strpbrk$0$0({2}DF,DG,SC:U),C,0,0
S:G$strrchr$0$0({2}DF,DG,SC:U),C,0,0
S:G$strspn$0$0({2}DF,SI:U),C,0,0
S:G$strstr$0$0({2}DF,DG,SC:U),C,0,0
S:G$strtok$0$0({2}DF,DG,SC:U),C,0,0
S:G$memset$0$0({2}DF,DG,SV:S),C,0,0
S:G$strlen$0$0({2}DF,SI:U),C,0,0
S:G$USBD_SetUsbState$0$0({2}DF,SV:S),C,0,0
S:G$USBDCH9_SetupCmd$0$0({2}DF,SC:U),C,0,0
S:G$USBD_AbortAllTransfers$0$0({2}DF,SV:S),C,0,0
S:G$USBD_AbortTransfer$0$0({2}DF,SC:S),C,0,0
S:G$USBD_Connect$0$0({2}DF,SV:S),C,0,0
S:G$USBD_Disconnect$0$0({2}DF,SV:S),C,0,0
S:G$USBD_EpIsBusy$0$0({2}DF,SB0$1:U),C,0,0
S:G$USBD_GetUsbState$0$0({2}DF,SC:U),C,0,0
S:G$USBD_Init$0$0({2}DF,SC:S),C,0,0
S:G$USBD_Read$0$0({2}DF,SC:S),C,0,0
S:G$USBD_RemoteWakeup$0$0({2}DF,SC:S),C,0,0
S:G$USBD_StallEp$0$0({2}DF,SC:S),C,0,0
S:G$USBD_Stop$0$0({2}DF,SV:S),C,0,0
S:G$USBD_Suspend$0$0({2}DF,SV:S),C,0,0
S:G$USBD_UnStallEp$0$0({2}DF,SC:S),C,0,0
S:G$USBD_Write$0$0({2}DF,SC:S),C,0,0
S:G$USBD_EnterHandler$0$0({2}DF,SV:S),C,0,0
S:G$USBD_ExitHandler$0$0({2}DF,SV:S),C,0,0
S:G$USBD_ResetCb$0$0({2}DF,SV:S),C,0,0
S:G$USBD_SofCb$0$0({2}DF,SV:S),C,0,0
S:G$USBD_DeviceStateChangeCb$0$0({2}DF,SV:S),C,0,0
S:G$USBD_IsSelfPoweredCb$0$0({2}DF,SB0$1:U),C,0,0
S:G$USBD_SetupCmdCb$0$0({2}DF,SC:U),C,0,0
S:G$USBD_SetInterfaceCb$0$0({2}DF,SC:U),C,0,0
S:G$USBD_RemoteWakeupCb$0$0({2}DF,SB0$1:U),C,0,0
S:G$USBD_RemoteWakeupDelay$0$0({2}DF,SV:S),C,0,0
S:G$USBD_Run$0$0({2}DF,SV:S),C,0,0
S:G$USBD_XferCompleteCb$0$0({2}DF,SI:U),C,0,0
S:G$USB_ReadFIFO$0$0({2}DF,SV:S),C,0,0
S:G$USB_WriteFIFO$0$0({2}DF,SV:S),C,0,0
S:G$USB_GetIntsEnabled$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_IsRegulatorEnabled$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_IsPrefetchEnabled$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_SuspendOscillator$0$0({2}DF,SV:S),C,0,0
S:G$USB_SetIndex$0$0({2}DF,SV:S),C,0,0
S:G$USB_GetCommonInts$0$0({2}DF,SC:U),C,0,0
S:G$USB_GetInInts$0$0({2}DF,SC:U),C,0,0
S:G$USB_GetOutInts$0$0({2}DF,SC:U),C,0,0
S:G$USB_GetIndex$0$0({2}DF,SC:U),C,0,0
S:G$USB_IsSuspended$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_GetSetupEnd$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_Ep0SentStall$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_Ep0InPacketReady$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_Ep0OutPacketReady$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_Ep0GetCount$0$0({2}DF,SC:U),C,0,0
S:G$USB_EpnInGetSentStall$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_EpnGetInPacketReady$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_EpnOutGetSentStall$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_EpnGetOutPacketReady$0$0({2}DF,SB0$1:U),C,0,0
S:G$USB_EpOutGetCount$0$0({2}DF,SI:U),C,0,0
S:G$USB_GetSofNumber$0$0({2}DF,SI:U),C,0,0
S:G$USB_AbortInEp$0$0({2}DF,SV:S),C,0,0
S:G$USB_AbortOutEp$0$0({2}DF,SV:S),C,0,0
S:G$USB_ActivateEp$0$0({2}DF,SV:S),C,0,0
S:G$atof$0$0({2}DF,SF:S),C,0,0
S:G$atoi$0$0({2}DF,SI:S),C,0,0
S:G$atol$0$0({2}DF,SL:S),C,0,0
S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
S:G$_itoa$0$0({2}DF,SV:S),C,0,0
S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
S:G$rand$0$0({2}DF,SI:S),C,0,0
S:G$srand$0$0({2}DF,SV:S),C,0,0
S:G$calloc$0$0({2}DF,DX,SV:S),C,0,0
S:G$malloc$0$0({2}DF,DX,SV:S),C,0,0
S:G$realloc$0$0({2}DF,DX,SV:S),C,0,0
S:G$aligned_alloc$0$0({2}DF,DG,SV:S),C,0,2
S:G$free$0$0({2}DF,SV:S),C,0,0
S:G$abs$0$0({2}DF,SI:S),C,0,0
S:G$labs$0$0({2}DF,SL:S),C,0,0
S:G$mblen$0$0({2}DF,SI:S),C,0,0
S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
S:G$wctomb$0$0({2}DF,SI:S),C,0,0
S:G$u2f_hid_init$0$0({2}DF,SV:S),C,0,0
S:G$u2f_hid_set_len$0$0({2}DF,SV:S),C,0,0
S:G$u2f_hid_writeback$0$0({2}DF,SV:S),C,0,0
S:G$u2f_hid_flush$0$0({2}DF,SV:S),C,0,0
S:G$u2f_hid_request$0$0({2}DF,SV:S),C,0,0
S:G$u2f_hid_check_timeouts$0$0({2}DF,SV:S),C,0,0
S:G$u2f_print_hid_check_timeouts$0$0({2}DF,SV:S),C,0,0
S:G$set_app_u2f_hid_msg$0$0({2}DF,SV:S),C,0,0
S:G$set_app_error$0$0({2}DF,SV:S),C,0,0
S:G$get_app_error$0$0({2}DF,SC:U),C,0,0
S:G$get_app_state$0$0({2}DF,SC:U),C,0,0
S:G$set_app_state$0$0({2}DF,SV:S),C,0,0
S:G$rgb$0$0({2}DF,SV:S),C,0,0
S:G$app_wink$0$0({2}DF,SV:S),C,0,0
S:G$u2f_init$0$0({2}DF,SV:S),C,0,0
S:G$u2f_wipe_keys$0$0({2}DF,SC:S),C,0,0
S:G$u2f_delay$0$0({2}DF,SV:S),C,0,0
S:G$usb_write$0$0({2}DF,SV:S),C,0,0
S:G$putf$0$0({2}DF,SV:S),C,0,0
S:G$dump_hex$0$0({2}DF,SV:S),C,0,0
S:G$u2f_prints$0$0({2}DF,SV:S),C,0,0
S:G$__int2strn$0$0({2}DF,DG,SC:U),C,0,0
S:G$u2f_putd$0$0({2}DF,SV:S),C,0,0
S:G$u2f_putx$0$0({2}DF,SV:S),C,0,0
S:G$u2f_printd$0$0({2}DF,SV:S),C,0,0
S:G$u2f_printx$0$0({2}DF,SV:S),C,0,0
S:G$u2f_printb$0$0({2}DF,SV:S),C,0,0
S:G$u2f_printlx$0$0({2}DF,SV:S),C,0,0
S:G$ReportDescriptor0$0$0({34}DA34d,SC:U),D,0,0
S:G$deviceDesc$0$0({0}DA0d,SC:U),D,0,0
S:G$configDesc$0$0({0}DA0d,SC:U),D,0,0
S:G$initstruct$0$0({10}ST__00000008:S),D,0,0
S:G$WMASK$0$0({0}DA0d,SC:U),D,0,0
S:G$RMASK$0$0({0}DA0d,SC:U),D,0,0
