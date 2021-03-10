.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241614_9D8634
/* 9D8634 80241614 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 9D8638 80241618 AFB40058 */  sw        $s4, 0x58($sp)
/* 9D863C 8024161C 0080A02D */  daddu     $s4, $a0, $zero
/* 9D8640 80241620 AFBF0060 */  sw        $ra, 0x60($sp)
/* 9D8644 80241624 AFB5005C */  sw        $s5, 0x5c($sp)
/* 9D8648 80241628 AFB30054 */  sw        $s3, 0x54($sp)
/* 9D864C 8024162C AFB20050 */  sw        $s2, 0x50($sp)
/* 9D8650 80241630 AFB1004C */  sw        $s1, 0x4c($sp)
/* 9D8654 80241634 AFB00048 */  sw        $s0, 0x48($sp)
/* 9D8658 80241638 8E910148 */  lw        $s1, 0x148($s4)
/* 9D865C 8024163C 86240008 */  lh        $a0, 8($s1)
/* 9D8660 80241640 0C00EABB */  jal       get_npc_unsafe
/* 9D8664 80241644 00A0802D */   daddu    $s0, $a1, $zero
/* 9D8668 80241648 8E83000C */  lw        $v1, 0xc($s4)
/* 9D866C 8024164C 0280202D */  daddu     $a0, $s4, $zero
/* 9D8670 80241650 8C650000 */  lw        $a1, ($v1)
/* 9D8674 80241654 0C0B1EAF */  jal       get_variable
/* 9D8678 80241658 0040902D */   daddu    $s2, $v0, $zero
/* 9D867C 8024165C AFA00018 */  sw        $zero, 0x18($sp)
/* 9D8680 80241660 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9D8684 80241664 8C630094 */  lw        $v1, 0x94($v1)
/* 9D8688 80241668 AFA3001C */  sw        $v1, 0x1c($sp)
/* 9D868C 8024166C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9D8690 80241670 8C630080 */  lw        $v1, 0x80($v1)
/* 9D8694 80241674 AFA30020 */  sw        $v1, 0x20($sp)
/* 9D8698 80241678 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9D869C 8024167C 8C630088 */  lw        $v1, 0x88($v1)
/* 9D86A0 80241680 AFA30024 */  sw        $v1, 0x24($sp)
/* 9D86A4 80241684 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9D86A8 80241688 8C63008C */  lw        $v1, 0x8c($v1)
/* 9D86AC 8024168C 27B50018 */  addiu     $s5, $sp, 0x18
/* 9D86B0 80241690 AFA30028 */  sw        $v1, 0x28($sp)
/* 9D86B4 80241694 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9D86B8 80241698 3C014282 */  lui       $at, 0x4282
/* 9D86BC 8024169C 44810000 */  mtc1      $at, $f0
/* 9D86C0 802416A0 8C630090 */  lw        $v1, 0x90($v1)
/* 9D86C4 802416A4 0040982D */  daddu     $s3, $v0, $zero
/* 9D86C8 802416A8 E7A00030 */  swc1      $f0, 0x30($sp)
/* 9D86CC 802416AC A7A00034 */  sh        $zero, 0x34($sp)
/* 9D86D0 802416B0 16000005 */  bnez      $s0, .L802416C8
/* 9D86D4 802416B4 AFA3002C */   sw       $v1, 0x2c($sp)
/* 9D86D8 802416B8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9D86DC 802416BC 30420004 */  andi      $v0, $v0, 4
/* 9D86E0 802416C0 10400044 */  beqz      $v0, .L802417D4
/* 9D86E4 802416C4 00000000 */   nop
.L802416C8:
/* 9D86E8 802416C8 2404F7FF */  addiu     $a0, $zero, -0x801
/* 9D86EC 802416CC AE800070 */  sw        $zero, 0x70($s4)
/* 9D86F0 802416D0 A640008E */  sh        $zero, 0x8e($s2)
/* 9D86F4 802416D4 8E2200CC */  lw        $v0, 0xcc($s1)
/* 9D86F8 802416D8 8E430000 */  lw        $v1, ($s2)
/* 9D86FC 802416DC 8C420000 */  lw        $v0, ($v0)
/* 9D8700 802416E0 00641824 */  and       $v1, $v1, $a0
/* 9D8704 802416E4 AE430000 */  sw        $v1, ($s2)
/* 9D8708 802416E8 AE420028 */  sw        $v0, 0x28($s2)
/* 9D870C 802416EC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9D8710 802416F0 8C420098 */  lw        $v0, 0x98($v0)
/* 9D8714 802416F4 54400005 */  bnel      $v0, $zero, .L8024170C
/* 9D8718 802416F8 2402FDFF */   addiu    $v0, $zero, -0x201
/* 9D871C 802416FC 34620200 */  ori       $v0, $v1, 0x200
/* 9D8720 80241700 2403FFF7 */  addiu     $v1, $zero, -9
/* 9D8724 80241704 080905C5 */  j         .L80241714
/* 9D8728 80241708 00431024 */   and      $v0, $v0, $v1
.L8024170C:
/* 9D872C 8024170C 00621024 */  and       $v0, $v1, $v0
/* 9D8730 80241710 34420008 */  ori       $v0, $v0, 8
.L80241714:
/* 9D8734 80241714 AE420000 */  sw        $v0, ($s2)
/* 9D8738 80241718 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9D873C 8024171C 30420004 */  andi      $v0, $v0, 4
/* 9D8740 80241720 10400008 */  beqz      $v0, .L80241744
/* 9D8744 80241724 24020063 */   addiu    $v0, $zero, 0x63
/* 9D8748 80241728 AE820070 */  sw        $v0, 0x70($s4)
/* 9D874C 8024172C AE800074 */  sw        $zero, 0x74($s4)
/* 9D8750 80241730 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9D8754 80241734 2403FFFB */  addiu     $v1, $zero, -5
/* 9D8758 80241738 00431024 */  and       $v0, $v0, $v1
/* 9D875C 8024173C 080905DC */  j         .L80241770
/* 9D8760 80241740 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80241744:
/* 9D8764 80241744 8E220000 */  lw        $v0, ($s1)
/* 9D8768 80241748 3C034000 */  lui       $v1, 0x4000
/* 9D876C 8024174C 00431024 */  and       $v0, $v0, $v1
/* 9D8770 80241750 10400007 */  beqz      $v0, .L80241770
/* 9D8774 80241754 3C03BFFF */   lui      $v1, 0xbfff
/* 9D8778 80241758 2402000C */  addiu     $v0, $zero, 0xc
/* 9D877C 8024175C AE820070 */  sw        $v0, 0x70($s4)
/* 9D8780 80241760 8E220000 */  lw        $v0, ($s1)
/* 9D8784 80241764 3463FFFF */  ori       $v1, $v1, 0xffff
/* 9D8788 80241768 00431024 */  and       $v0, $v0, $v1
/* 9D878C 8024176C AE220000 */  sw        $v0, ($s1)
.L80241770:
/* 9D8790 80241770 27A50038 */  addiu     $a1, $sp, 0x38
/* 9D8794 80241774 27A6003C */  addiu     $a2, $sp, 0x3c
/* 9D8798 80241778 C6400038 */  lwc1      $f0, 0x38($s2)
/* 9D879C 8024177C 864200A8 */  lh        $v0, 0xa8($s2)
/* 9D87A0 80241780 3C0142C8 */  lui       $at, 0x42c8
/* 9D87A4 80241784 44812000 */  mtc1      $at, $f4
/* 9D87A8 80241788 44823000 */  mtc1      $v0, $f6
/* 9D87AC 8024178C 00000000 */  nop
/* 9D87B0 80241790 468031A0 */  cvt.s.w   $f6, $f6
/* 9D87B4 80241794 27A20044 */  addiu     $v0, $sp, 0x44
/* 9D87B8 80241798 E7A00038 */  swc1      $f0, 0x38($sp)
/* 9D87BC 8024179C C640003C */  lwc1      $f0, 0x3c($s2)
/* 9D87C0 802417A0 C6420040 */  lwc1      $f2, 0x40($s2)
/* 9D87C4 802417A4 46060000 */  add.s     $f0, $f0, $f6
/* 9D87C8 802417A8 E7A40044 */  swc1      $f4, 0x44($sp)
/* 9D87CC 802417AC E7A20040 */  swc1      $f2, 0x40($sp)
/* 9D87D0 802417B0 E7A0003C */  swc1      $f0, 0x3c($sp)
/* 9D87D4 802417B4 AFA20010 */  sw        $v0, 0x10($sp)
/* 9D87D8 802417B8 8E440080 */  lw        $a0, 0x80($s2)
/* 9D87DC 802417BC 0C0372DF */  jal       func_800DCB7C
/* 9D87E0 802417C0 27A70040 */   addiu    $a3, $sp, 0x40
/* 9D87E4 802417C4 10400003 */  beqz      $v0, .L802417D4
/* 9D87E8 802417C8 00000000 */   nop
/* 9D87EC 802417CC C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 9D87F0 802417D0 E640003C */  swc1      $f0, 0x3c($s2)
.L802417D4:
/* 9D87F4 802417D4 8E830070 */  lw        $v1, 0x70($s4)
/* 9D87F8 802417D8 2C620064 */  sltiu     $v0, $v1, 0x64
/* 9D87FC 802417DC 10400042 */  beqz      $v0, L802418E8_9D8908
/* 9D8800 802417E0 00031080 */   sll      $v0, $v1, 2
/* 9D8804 802417E4 3C018025 */  lui       $at, %hi(jtbl_80254630_9EB650)
/* 9D8808 802417E8 00220821 */  addu      $at, $at, $v0
/* 9D880C 802417EC 8C224630 */  lw        $v0, %lo(jtbl_80254630_9EB650)($at)
/* 9D8810 802417F0 00400008 */  jr        $v0
/* 9D8814 802417F4 00000000 */   nop
glabel L802417F8_9D8818
/* 9D8818 802417F8 0280202D */  daddu     $a0, $s4, $zero
/* 9D881C 802417FC 0260282D */  daddu     $a1, $s3, $zero
/* 9D8820 80241800 0C0902A0 */  jal       func_80240A80_9D7AA0
/* 9D8824 80241804 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241808_9D8828
/* 9D8828 80241808 0280202D */  daddu     $a0, $s4, $zero
/* 9D882C 8024180C 0260282D */  daddu     $a1, $s3, $zero
/* 9D8830 80241810 0C0902F6 */  jal       func_80240BD8_9D7BF8
/* 9D8834 80241814 02A0302D */   daddu    $a2, $s5, $zero
/* 9D8838 80241818 0809063A */  j         L802418E8_9D8908
/* 9D883C 8024181C 00000000 */   nop
glabel L80241820_9D8840
/* 9D8840 80241820 0280202D */  daddu     $a0, $s4, $zero
/* 9D8844 80241824 0260282D */  daddu     $a1, $s3, $zero
/* 9D8848 80241828 0C0903A0 */  jal       nok_02_UnkNpcAIFunc1
/* 9D884C 8024182C 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241830_9D8850
/* 9D8850 80241830 0280202D */  daddu     $a0, $s4, $zero
/* 9D8854 80241834 0260282D */  daddu     $a1, $s3, $zero
/* 9D8858 80241838 0C0903D0 */  jal       func_80240F40_9D7F60
/* 9D885C 8024183C 02A0302D */   daddu    $a2, $s5, $zero
/* 9D8860 80241840 0809063A */  j         L802418E8_9D8908
/* 9D8864 80241844 00000000 */   nop
glabel L80241848_9D8868
/* 9D8868 80241848 0280202D */  daddu     $a0, $s4, $zero
/* 9D886C 8024184C 0260282D */  daddu     $a1, $s3, $zero
/* 9D8870 80241850 0C09043F */  jal       func_802410FC_9D811C
/* 9D8874 80241854 02A0302D */   daddu    $a2, $s5, $zero
/* 9D8878 80241858 0809063A */  j         L802418E8_9D8908
/* 9D887C 8024185C 00000000 */   nop
glabel L80241860_9D8880
/* 9D8880 80241860 0280202D */  daddu     $a0, $s4, $zero
/* 9D8884 80241864 0260282D */  daddu     $a1, $s3, $zero
/* 9D8888 80241868 0C09046C */  jal       nok_02_NpcJumpFunc2
/* 9D888C 8024186C 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241870_9D8890
/* 9D8890 80241870 0280202D */  daddu     $a0, $s4, $zero
/* 9D8894 80241874 0260282D */  daddu     $a1, $s3, $zero
/* 9D8898 80241878 0C090489 */  jal       nok_02_NpcJumpFunc
/* 9D889C 8024187C 02A0302D */   daddu    $a2, $s5, $zero
/* 9D88A0 80241880 0809063A */  j         L802418E8_9D8908
/* 9D88A4 80241884 00000000 */   nop
glabel L80241888_9D88A8
/* 9D88A8 80241888 0280202D */  daddu     $a0, $s4, $zero
/* 9D88AC 8024188C 0260282D */  daddu     $a1, $s3, $zero
/* 9D88B0 80241890 0C0904A7 */  jal       nok_02_UnkNpcAIFunc13
/* 9D88B4 80241894 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241898_9D88B8
/* 9D88B8 80241898 0280202D */  daddu     $a0, $s4, $zero
/* 9D88BC 8024189C 0260282D */  daddu     $a1, $s3, $zero
/* 9D88C0 802418A0 0C0904F3 */  jal       func_802413CC_9D83EC
/* 9D88C4 802418A4 02A0302D */   daddu    $a2, $s5, $zero
/* 9D88C8 802418A8 0809063A */  j         L802418E8_9D8908
/* 9D88CC 802418AC 00000000 */   nop
glabel L802418B0_9D88D0
/* 9D88D0 802418B0 0280202D */  daddu     $a0, $s4, $zero
/* 9D88D4 802418B4 0260282D */  daddu     $a1, $s3, $zero
/* 9D88D8 802418B8 0C09053B */  jal       nok_02_UnkNpcDurationFlagFunc
/* 9D88DC 802418BC 02A0302D */   daddu    $a2, $s5, $zero
/* 9D88E0 802418C0 0809063A */  j         L802418E8_9D8908
/* 9D88E4 802418C4 00000000 */   nop
glabel L802418C8_9D88E8
/* 9D88E8 802418C8 0280202D */  daddu     $a0, $s4, $zero
/* 9D88EC 802418CC 0260282D */  daddu     $a1, $s3, $zero
/* 9D88F0 802418D0 0C090555 */  jal       func_80241554_9D8574
/* 9D88F4 802418D4 02A0302D */   daddu    $a2, $s5, $zero
/* 9D88F8 802418D8 0809063A */  j         L802418E8_9D8908
/* 9D88FC 802418DC 00000000 */   nop
glabel L802418E0_9D8900
/* 9D8900 802418E0 0C0129CF */  jal       func_8004A73C
/* 9D8904 802418E4 0280202D */   daddu    $a0, $s4, $zero
glabel L802418E8_9D8908
/* 9D8908 802418E8 8FBF0060 */  lw        $ra, 0x60($sp)
/* 9D890C 802418EC 8FB5005C */  lw        $s5, 0x5c($sp)
/* 9D8910 802418F0 8FB40058 */  lw        $s4, 0x58($sp)
/* 9D8914 802418F4 8FB30054 */  lw        $s3, 0x54($sp)
/* 9D8918 802418F8 8FB20050 */  lw        $s2, 0x50($sp)
/* 9D891C 802418FC 8FB1004C */  lw        $s1, 0x4c($sp)
/* 9D8920 80241900 8FB00048 */  lw        $s0, 0x48($sp)
/* 9D8924 80241904 0000102D */  daddu     $v0, $zero, $zero
/* 9D8928 80241908 03E00008 */  jr        $ra
/* 9D892C 8024190C 27BD0068 */   addiu    $sp, $sp, 0x68