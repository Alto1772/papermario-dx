.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802B75E8_E206F8
/* E206F8 802B75E8 3C05802B */  lui       $a1, %hi(D_802B7CB8_E20DC8)
/* E206FC 802B75EC 24A57CB8 */  addiu     $a1, $a1, %lo(D_802B7CB8_E20DC8)
/* E20700 802B75F0 8CA30000 */  lw        $v1, ($a1)
/* E20704 802B75F4 90620021 */  lbu       $v0, 0x21($v1)
/* E20708 802B75F8 90640022 */  lbu       $a0, 0x22($v1)
/* E2070C 802B75FC 00441021 */  addu      $v0, $v0, $a0
/* E20710 802B7600 A0620021 */  sb        $v0, 0x21($v1)
/* E20714 802B7604 8CA30000 */  lw        $v1, ($a1)
/* E20718 802B7608 80620021 */  lb        $v0, 0x21($v1)
/* E2071C 802B760C 3C068011 */  lui       $a2, %hi(gPlayerStatus)
/* E20720 802B7610 24C6EFC8 */  addiu     $a2, $a2, %lo(gPlayerStatus)
/* E20724 802B7614 28420005 */  slti      $v0, $v0, 5
/* E20728 802B7618 14400006 */  bnez      $v0, .L802B7634
/* E2072C 802B761C 2402FFFF */   addiu    $v0, $zero, -1
/* E20730 802B7620 A0620022 */  sb        $v0, 0x22($v1)
/* E20734 802B7624 8CA30000 */  lw        $v1, ($a1)
/* E20738 802B7628 24020004 */  addiu     $v0, $zero, 4
/* E2073C 802B762C A0620021 */  sb        $v0, 0x21($v1)
/* E20740 802B7630 8CA30000 */  lw        $v1, ($a1)
.L802B7634:
/* E20744 802B7634 80620021 */  lb        $v0, 0x21($v1)
/* E20748 802B7638 2842FFFC */  slti      $v0, $v0, -4
/* E2074C 802B763C 10400005 */  beqz      $v0, .L802B7654
/* E20750 802B7640 24020001 */   addiu    $v0, $zero, 1
/* E20754 802B7644 A0620022 */  sb        $v0, 0x22($v1)
/* E20758 802B7648 8CA30000 */  lw        $v1, ($a1)
/* E2075C 802B764C 2402FFFC */  addiu     $v0, $zero, -4
/* E20760 802B7650 A0620021 */  sb        $v0, 0x21($v1)
.L802B7654:
/* E20764 802B7654 8CA40000 */  lw        $a0, ($a1)
/* E20768 802B7658 C4C00028 */  lwc1      $f0, 0x28($a2)
/* E2076C 802B765C C4820000 */  lwc1      $f2, ($a0)
/* E20770 802B7660 46020001 */  sub.s     $f0, $f0, $f2
/* E20774 802B7664 3C013F2A */  lui       $at, 0x3f2a
/* E20778 802B7668 34217EFA */  ori       $at, $at, 0x7efa
/* E2077C 802B766C 44812000 */  mtc1      $at, $f4
/* E20780 802B7670 00000000 */  nop
/* E20784 802B7674 46040182 */  mul.s     $f6, $f0, $f4
/* E20788 802B7678 00000000 */  nop
/* E2078C 802B767C 46061080 */  add.s     $f2, $f2, $f6
/* E20790 802B7680 E4820000 */  swc1      $f2, ($a0)
/* E20794 802B7684 C4C00030 */  lwc1      $f0, 0x30($a2)
/* E20798 802B7688 C4820008 */  lwc1      $f2, 8($a0)
/* E2079C 802B768C 46020001 */  sub.s     $f0, $f0, $f2
/* E207A0 802B7690 46040182 */  mul.s     $f6, $f0, $f4
/* E207A4 802B7694 00000000 */  nop
/* E207A8 802B7698 80830021 */  lb        $v1, 0x21($a0)
/* E207AC 802B769C 46061080 */  add.s     $f2, $f2, $f6
/* E207B0 802B76A0 C4840004 */  lwc1      $f4, 4($a0)
/* E207B4 802B76A4 44833000 */  mtc1      $v1, $f6
/* E207B8 802B76A8 00000000 */  nop
/* E207BC 802B76AC 468031A0 */  cvt.s.w   $f6, $f6
/* E207C0 802B76B0 E4820008 */  swc1      $f2, 8($a0)
/* E207C4 802B76B4 84C200B0 */  lh        $v0, 0xb0($a2)
/* E207C8 802B76B8 C4C0002C */  lwc1      $f0, 0x2c($a2)
/* E207CC 802B76BC 44821000 */  mtc1      $v0, $f2
/* E207D0 802B76C0 00000000 */  nop
/* E207D4 802B76C4 468010A0 */  cvt.s.w   $f2, $f2
/* E207D8 802B76C8 8CC20004 */  lw        $v0, 4($a2)
/* E207DC 802B76CC 46020080 */  add.s     $f2, $f0, $f2
/* E207E0 802B76D0 30421000 */  andi      $v0, $v0, 0x1000
/* E207E4 802B76D4 3C014000 */  lui       $at, 0x4000
/* E207E8 802B76D8 44810000 */  mtc1      $at, $f0
/* E207EC 802B76DC 54400005 */  bnel      $v0, $zero, .L802B76F4
/* E207F0 802B76E0 46001000 */   add.s    $f0, $f2, $f0
/* E207F4 802B76E4 3C014100 */  lui       $at, 0x4100
/* E207F8 802B76E8 44810000 */  mtc1      $at, $f0
/* E207FC 802B76EC 00000000 */  nop
/* E20800 802B76F0 46001000 */  add.s     $f0, $f2, $f0
.L802B76F4:
/* E20804 802B76F4 46060000 */  add.s     $f0, $f0, $f6
/* E20808 802B76F8 46040001 */  sub.s     $f0, $f0, $f4
/* E2080C 802B76FC 3C013E80 */  lui       $at, 0x3e80
/* E20810 802B7700 44811000 */  mtc1      $at, $f2
/* E20814 802B7704 00000000 */  nop
/* E20818 802B7708 46020182 */  mul.s     $f6, $f0, $f2
/* E2081C 802B770C 00000000 */  nop
/* E20820 802B7710 3C02802B */  lui       $v0, %hi(D_802B7CB8_E20DC8)
/* E20824 802B7714 8C427CB8 */  lw        $v0, %lo(D_802B7CB8_E20DC8)($v0)
/* E20828 802B7718 C4400004 */  lwc1      $f0, 4($v0)
/* E2082C 802B771C 46060000 */  add.s     $f0, $f0, $f6
/* E20830 802B7720 03E00008 */  jr        $ra
/* E20834 802B7724 E4400004 */   swc1     $f0, 4($v0)