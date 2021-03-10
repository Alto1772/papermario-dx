.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024106C_9F5AAC
/* 9F5AAC 8024106C 27BDFF88 */  addiu     $sp, $sp, -0x78
/* 9F5AB0 80241070 AFB3004C */  sw        $s3, 0x4c($sp)
/* 9F5AB4 80241074 0080982D */  daddu     $s3, $a0, $zero
/* 9F5AB8 80241078 AFBF0054 */  sw        $ra, 0x54($sp)
/* 9F5ABC 8024107C AFB40050 */  sw        $s4, 0x50($sp)
/* 9F5AC0 80241080 AFB20048 */  sw        $s2, 0x48($sp)
/* 9F5AC4 80241084 AFB10044 */  sw        $s1, 0x44($sp)
/* 9F5AC8 80241088 AFB00040 */  sw        $s0, 0x40($sp)
/* 9F5ACC 8024108C F7BA0070 */  sdc1      $f26, 0x70($sp)
/* 9F5AD0 80241090 F7B80068 */  sdc1      $f24, 0x68($sp)
/* 9F5AD4 80241094 F7B60060 */  sdc1      $f22, 0x60($sp)
/* 9F5AD8 80241098 F7B40058 */  sdc1      $f20, 0x58($sp)
/* 9F5ADC 8024109C 8E710148 */  lw        $s1, 0x148($s3)
/* 9F5AE0 802410A0 00A0902D */  daddu     $s2, $a1, $zero
/* 9F5AE4 802410A4 86240008 */  lh        $a0, 8($s1)
/* 9F5AE8 802410A8 0C00EABB */  jal       get_npc_unsafe
/* 9F5AEC 802410AC 00C0A02D */   daddu    $s4, $a2, $zero
/* 9F5AF0 802410B0 0040802D */  daddu     $s0, $v0, $zero
/* 9F5AF4 802410B4 C6200078 */  lwc1      $f0, 0x78($s1)
/* 9F5AF8 802410B8 46800020 */  cvt.s.w   $f0, $f0
/* 9F5AFC 802410BC 46000021 */  cvt.d.s   $f0, $f0
/* 9F5B00 802410C0 3C014059 */  lui       $at, 0x4059
/* 9F5B04 802410C4 44811800 */  mtc1      $at, $f3
/* 9F5B08 802410C8 44801000 */  mtc1      $zero, $f2
/* 9F5B0C 802410CC 8602008E */  lh        $v0, 0x8e($s0)
/* 9F5B10 802410D0 9603008E */  lhu       $v1, 0x8e($s0)
/* 9F5B14 802410D4 46220003 */  div.d     $f0, $f0, $f2
/* 9F5B18 802410D8 46200620 */  cvt.s.d   $f24, $f0
/* 9F5B1C 802410DC C6200088 */  lwc1      $f0, 0x88($s1)
/* 9F5B20 802410E0 46800020 */  cvt.s.w   $f0, $f0
/* 9F5B24 802410E4 46000021 */  cvt.d.s   $f0, $f0
/* 9F5B28 802410E8 46220003 */  div.d     $f0, $f0, $f2
/* 9F5B2C 802410EC 46200020 */  cvt.s.d   $f0, $f0
/* 9F5B30 802410F0 18400003 */  blez      $v0, .L80241100
/* 9F5B34 802410F4 4600C680 */   add.s    $f26, $f24, $f0
/* 9F5B38 802410F8 2462FFFF */  addiu     $v0, $v1, -1
/* 9F5B3C 802410FC A602008E */  sh        $v0, 0x8e($s0)
.L80241100:
/* 9F5B40 80241100 8E220070 */  lw        $v0, 0x70($s1)
/* 9F5B44 80241104 18400034 */  blez      $v0, .L802411D8
/* 9F5B48 80241108 00000000 */   nop
/* 9F5B4C 8024110C C62C0074 */  lwc1      $f12, 0x74($s1)
/* 9F5B50 80241110 46806320 */  cvt.s.w   $f12, $f12
/* 9F5B54 80241114 44820000 */  mtc1      $v0, $f0
/* 9F5B58 80241118 00000000 */  nop
/* 9F5B5C 8024111C 46800020 */  cvt.s.w   $f0, $f0
/* 9F5B60 80241120 46000021 */  cvt.d.s   $f0, $f0
/* 9F5B64 80241124 46220003 */  div.d     $f0, $f0, $f2
/* 9F5B68 80241128 0C00A8BB */  jal       sin_deg
/* 9F5B6C 8024112C 462005A0 */   cvt.s.d  $f22, $f0
/* 9F5B70 80241130 8E020000 */  lw        $v0, ($s0)
/* 9F5B74 80241134 30420008 */  andi      $v0, $v0, 8
/* 9F5B78 80241138 10400003 */  beqz      $v0, .L80241148
/* 9F5B7C 8024113C 46000506 */   mov.s    $f20, $f0
/* 9F5B80 80241140 08090462 */  j         .L80241188
/* 9F5B84 80241144 0000102D */   daddu    $v0, $zero, $zero
.L80241148:
/* 9F5B88 80241148 27A50028 */  addiu     $a1, $sp, 0x28
/* 9F5B8C 8024114C 27A6002C */  addiu     $a2, $sp, 0x2c
/* 9F5B90 80241150 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9F5B94 80241154 C602003C */  lwc1      $f2, 0x3c($s0)
/* 9F5B98 80241158 C6040040 */  lwc1      $f4, 0x40($s0)
/* 9F5B9C 8024115C 3C01447A */  lui       $at, 0x447a
/* 9F5BA0 80241160 44813000 */  mtc1      $at, $f6
/* 9F5BA4 80241164 27A20034 */  addiu     $v0, $sp, 0x34
/* 9F5BA8 80241168 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9F5BAC 8024116C E7A2002C */  swc1      $f2, 0x2c($sp)
/* 9F5BB0 80241170 E7A40030 */  swc1      $f4, 0x30($sp)
/* 9F5BB4 80241174 E7A60034 */  swc1      $f6, 0x34($sp)
/* 9F5BB8 80241178 AFA20010 */  sw        $v0, 0x10($sp)
/* 9F5BBC 8024117C 8E040080 */  lw        $a0, 0x80($s0)
/* 9F5BC0 80241180 0C0372DF */  jal       func_800DCB7C
/* 9F5BC4 80241184 27A70030 */   addiu    $a3, $sp, 0x30
.L80241188:
/* 9F5BC8 80241188 10400007 */  beqz      $v0, .L802411A8
/* 9F5BCC 8024118C 00000000 */   nop
/* 9F5BD0 80241190 4616A082 */  mul.s     $f2, $f20, $f22
/* 9F5BD4 80241194 00000000 */  nop
/* 9F5BD8 80241198 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 9F5BDC 8024119C 46180000 */  add.s     $f0, $f0, $f24
/* 9F5BE0 802411A0 0809046D */  j         .L802411B4
/* 9F5BE4 802411A4 46020000 */   add.s    $f0, $f0, $f2
.L802411A8:
/* 9F5BE8 802411A8 4616A002 */  mul.s     $f0, $f20, $f22
/* 9F5BEC 802411AC 00000000 */  nop
/* 9F5BF0 802411B0 4600D000 */  add.s     $f0, $f26, $f0
.L802411B4:
/* 9F5BF4 802411B4 E600003C */  swc1      $f0, 0x3c($s0)
/* 9F5BF8 802411B8 8E220074 */  lw        $v0, 0x74($s1)
/* 9F5BFC 802411BC 2442000A */  addiu     $v0, $v0, 0xa
/* 9F5C00 802411C0 44826000 */  mtc1      $v0, $f12
/* 9F5C04 802411C4 00000000 */  nop
/* 9F5C08 802411C8 0C00A6C9 */  jal       clamp_angle
/* 9F5C0C 802411CC 46806320 */   cvt.s.w  $f12, $f12
/* 9F5C10 802411D0 4600020D */  trunc.w.s $f8, $f0
/* 9F5C14 802411D4 E6280074 */  swc1      $f8, 0x74($s1)
.L802411D8:
/* 9F5C18 802411D8 8E220090 */  lw        $v0, 0x90($s1)
/* 9F5C1C 802411DC 1C400040 */  bgtz      $v0, .L802412E0
/* 9F5C20 802411E0 2442FFFF */   addiu    $v0, $v0, -1
/* 9F5C24 802411E4 860200A8 */  lh        $v0, 0xa8($s0)
/* 9F5C28 802411E8 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9F5C2C 802411EC 44821000 */  mtc1      $v0, $f2
/* 9F5C30 802411F0 00000000 */  nop
/* 9F5C34 802411F4 468010A0 */  cvt.s.w   $f2, $f2
/* 9F5C38 802411F8 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 9F5C3C 802411FC 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 9F5C40 80241200 46020000 */  add.s     $f0, $f0, $f2
/* 9F5C44 80241204 3C014024 */  lui       $at, 0x4024
/* 9F5C48 80241208 44812800 */  mtc1      $at, $f5
/* 9F5C4C 8024120C 44802000 */  mtc1      $zero, $f4
/* 9F5C50 80241210 C442002C */  lwc1      $f2, 0x2c($v0)
/* 9F5C54 80241214 46000021 */  cvt.d.s   $f0, $f0
/* 9F5C58 80241218 46240000 */  add.d     $f0, $f0, $f4
/* 9F5C5C 8024121C 460010A1 */  cvt.d.s   $f2, $f2
/* 9F5C60 80241220 4620103C */  c.lt.d    $f2, $f0
/* 9F5C64 80241224 00000000 */  nop
/* 9F5C68 80241228 4500002E */  bc1f      .L802412E4
/* 9F5C6C 8024122C 0280202D */   daddu    $a0, $s4, $zero
/* 9F5C70 80241230 24020001 */  addiu     $v0, $zero, 1
/* 9F5C74 80241234 AFA20010 */  sw        $v0, 0x10($sp)
/* 9F5C78 80241238 8E460024 */  lw        $a2, 0x24($s2)
/* 9F5C7C 8024123C 8E470028 */  lw        $a3, 0x28($s2)
/* 9F5C80 80241240 0C01242D */  jal       func_800490B4
/* 9F5C84 80241244 0220282D */   daddu    $a1, $s1, $zero
/* 9F5C88 80241248 10400026 */  beqz      $v0, .L802412E4
/* 9F5C8C 8024124C 0000202D */   daddu    $a0, $zero, $zero
/* 9F5C90 80241250 0200282D */  daddu     $a1, $s0, $zero
/* 9F5C94 80241254 0000302D */  daddu     $a2, $zero, $zero
/* 9F5C98 80241258 2412000C */  addiu     $s2, $zero, 0xc
/* 9F5C9C 8024125C 860300A8 */  lh        $v1, 0xa8($s0)
/* 9F5CA0 80241260 3C013F80 */  lui       $at, 0x3f80
/* 9F5CA4 80241264 44810000 */  mtc1      $at, $f0
/* 9F5CA8 80241268 3C014000 */  lui       $at, 0x4000
/* 9F5CAC 8024126C 44811000 */  mtc1      $at, $f2
/* 9F5CB0 80241270 3C01C1A0 */  lui       $at, 0xc1a0
/* 9F5CB4 80241274 44812000 */  mtc1      $at, $f4
/* 9F5CB8 80241278 44834000 */  mtc1      $v1, $f8
/* 9F5CBC 8024127C 00000000 */  nop
/* 9F5CC0 80241280 46804220 */  cvt.s.w   $f8, $f8
/* 9F5CC4 80241284 44074000 */  mfc1      $a3, $f8
/* 9F5CC8 80241288 27A20038 */  addiu     $v0, $sp, 0x38
/* 9F5CCC 8024128C AFB2001C */  sw        $s2, 0x1c($sp)
/* 9F5CD0 80241290 AFA20020 */  sw        $v0, 0x20($sp)
/* 9F5CD4 80241294 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9F5CD8 80241298 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9F5CDC 8024129C 0C01BFA4 */  jal       fx_emote
/* 9F5CE0 802412A0 E7A40018 */   swc1     $f4, 0x18($sp)
/* 9F5CE4 802412A4 0200202D */  daddu     $a0, $s0, $zero
/* 9F5CE8 802412A8 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 9F5CEC 802412AC C480003C */  lwc1      $f0, 0x3c($a0)
/* 9F5CF0 802412B0 3C060020 */  lui       $a2, 0x20
/* 9F5CF4 802412B4 0C012530 */  jal       func_800494C0
/* 9F5CF8 802412B8 E4800064 */   swc1     $f0, 0x64($a0)
/* 9F5CFC 802412BC 8E220018 */  lw        $v0, 0x18($s1)
/* 9F5D00 802412C0 9442002A */  lhu       $v0, 0x2a($v0)
/* 9F5D04 802412C4 30420001 */  andi      $v0, $v0, 1
/* 9F5D08 802412C8 10400003 */  beqz      $v0, .L802412D8
/* 9F5D0C 802412CC 2402000A */   addiu    $v0, $zero, 0xa
/* 9F5D10 802412D0 080904E0 */  j         .L80241380
/* 9F5D14 802412D4 AE620070 */   sw       $v0, 0x70($s3)
.L802412D8:
/* 9F5D18 802412D8 080904E0 */  j         .L80241380
/* 9F5D1C 802412DC AE720070 */   sw       $s2, 0x70($s3)
.L802412E0:
/* 9F5D20 802412E0 AE220090 */  sw        $v0, 0x90($s1)
.L802412E4:
/* 9F5D24 802412E4 8602008C */  lh        $v0, 0x8c($s0)
/* 9F5D28 802412E8 14400025 */  bnez      $v0, .L80241380
/* 9F5D2C 802412EC 00000000 */   nop
/* 9F5D30 802412F0 8602008E */  lh        $v0, 0x8e($s0)
/* 9F5D34 802412F4 1C400022 */  bgtz      $v0, .L80241380
/* 9F5D38 802412F8 00000000 */   nop
/* 9F5D3C 802412FC 8E620074 */  lw        $v0, 0x74($s3)
/* 9F5D40 80241300 2442FFFF */  addiu     $v0, $v0, -1
/* 9F5D44 80241304 1840001D */  blez      $v0, .L8024137C
/* 9F5D48 80241308 AE620074 */   sw       $v0, 0x74($s3)
/* 9F5D4C 8024130C 8E220018 */  lw        $v0, 0x18($s1)
/* 9F5D50 80241310 9442002A */  lhu       $v0, 0x2a($v0)
/* 9F5D54 80241314 30420010 */  andi      $v0, $v0, 0x10
/* 9F5D58 80241318 14400007 */  bnez      $v0, .L80241338
/* 9F5D5C 8024131C 00000000 */   nop
/* 9F5D60 80241320 C600000C */  lwc1      $f0, 0xc($s0)
/* 9F5D64 80241324 3C014334 */  lui       $at, 0x4334
/* 9F5D68 80241328 44816000 */  mtc1      $at, $f12
/* 9F5D6C 8024132C 0C00A6C9 */  jal       clamp_angle
/* 9F5D70 80241330 460C0300 */   add.s    $f12, $f0, $f12
/* 9F5D74 80241334 E600000C */  swc1      $f0, 0xc($s0)
.L80241338:
/* 9F5D78 80241338 0C00A67F */  jal       rand_int
/* 9F5D7C 8024133C 240403E8 */   addiu    $a0, $zero, 0x3e8
/* 9F5D80 80241340 3C032E8B */  lui       $v1, 0x2e8b
/* 9F5D84 80241344 3463A2E9 */  ori       $v1, $v1, 0xa2e9
/* 9F5D88 80241348 00430018 */  mult      $v0, $v1
/* 9F5D8C 8024134C 00021FC3 */  sra       $v1, $v0, 0x1f
/* 9F5D90 80241350 00004010 */  mfhi      $t0
/* 9F5D94 80241354 00082043 */  sra       $a0, $t0, 1
/* 9F5D98 80241358 00832023 */  subu      $a0, $a0, $v1
/* 9F5D9C 8024135C 00041840 */  sll       $v1, $a0, 1
/* 9F5DA0 80241360 00641821 */  addu      $v1, $v1, $a0
/* 9F5DA4 80241364 00031880 */  sll       $v1, $v1, 2
/* 9F5DA8 80241368 00641823 */  subu      $v1, $v1, $a0
/* 9F5DAC 8024136C 00431023 */  subu      $v0, $v0, $v1
/* 9F5DB0 80241370 24420005 */  addiu     $v0, $v0, 5
/* 9F5DB4 80241374 080904E0 */  j         .L80241380
/* 9F5DB8 80241378 A602008E */   sh       $v0, 0x8e($s0)
.L8024137C:
/* 9F5DBC 8024137C AE600070 */  sw        $zero, 0x70($s3)
.L80241380:
/* 9F5DC0 80241380 8FBF0054 */  lw        $ra, 0x54($sp)
/* 9F5DC4 80241384 8FB40050 */  lw        $s4, 0x50($sp)
/* 9F5DC8 80241388 8FB3004C */  lw        $s3, 0x4c($sp)
/* 9F5DCC 8024138C 8FB20048 */  lw        $s2, 0x48($sp)
/* 9F5DD0 80241390 8FB10044 */  lw        $s1, 0x44($sp)
/* 9F5DD4 80241394 8FB00040 */  lw        $s0, 0x40($sp)
/* 9F5DD8 80241398 D7BA0070 */  ldc1      $f26, 0x70($sp)
/* 9F5DDC 8024139C D7B80068 */  ldc1      $f24, 0x68($sp)
/* 9F5DE0 802413A0 D7B60060 */  ldc1      $f22, 0x60($sp)
/* 9F5DE4 802413A4 D7B40058 */  ldc1      $f20, 0x58($sp)
/* 9F5DE8 802413A8 03E00008 */  jr        $ra
/* 9F5DEC 802413AC 27BD0078 */   addiu    $sp, $sp, 0x78