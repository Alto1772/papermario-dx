
.section .text00000000, "ax"

/* 000040 00000000 40806800 */  mtc0  $0, $13
/* 000044 00000004 40804800 */  mtc0  $0, $9
/* 000048 00000008 40805800 */  mtc0  $0, $11
/* 00004C 0000000C 3C08A470 */  lui   $8, 0xa470
/* 000050 00000010 25080000 */  addiu $8, $8, 0
/* 000054 00000014 8D09000C */  lw    $9, 0xc($8)
/* 000058 00000018 152000ED */  bnez  $9, .L000003D0
/* 00005C 0000001C 00000000 */   nop   
/* 000060 00000020 27BDFFE8 */  addiu $29, $29, -0x18
/* 000064 00000024 AFB30000 */  sw    $19, ($29)
/* 000068 00000028 AFB40004 */  sw    $20, 4($29)
/* 00006C 0000002C AFB50008 */  sw    $21, 8($29)
/* 000070 00000030 AFB6000C */  sw    $22, 0xc($29)
/* 000074 00000034 AFB70010 */  sw    $23, 0x10($29)
/* 000078 00000038 3C08A470 */  lui   $8, 0xa470
/* 00007C 0000003C 25080000 */  addiu $8, $8, 0
/* 000080 00000040 3C0AA3F8 */  lui   $10, %hi(D_A3F80004) # $10, 0xa3f8
/* 000084 00000044 3C0BA3F0 */  lui   $11, 0xa3f0
/* 000088 00000048 3C0CA430 */  lui   $12, 0xa430
/* 00008C 0000004C 258C0000 */  addiu $12, $12, 0
/* 000090 00000050 34090040 */  li    $9, 64
/* 000094 00000054 AD090004 */  sw    $9, 4($8)
/* 000098 00000058 24112260 */  li    $17, 8800
.L0000005C:
/* 00009C 0000005C 00000000 */  nop   
/* 0000A0 00000060 2231FFFF */  addi  $17, $17, -1
/* 0000A4 00000064 1620FFFD */  bnez  $17, .L0000005C
/* 0000A8 00000068 00000000 */   nop   
/* 0000AC 0000006C AD000008 */  sw    $0, 8($8)
/* 0000B0 00000070 34090014 */  li    $9, 20
/* 0000B4 00000074 AD09000C */  sw    $9, 0xc($8)
/* 0000B8 00000078 AD000000 */  sw    $0, ($8)
/* 0000BC 0000007C 24110004 */  li    $17, 4
.L00000080:
/* 0000C0 00000080 00000000 */  nop   
/* 0000C4 00000084 2231FFFF */  addi  $17, $17, -1
/* 0000C8 00000088 1620FFFD */  bnez  $17, .L00000080
/* 0000CC 0000008C 00000000 */   nop   
/* 0000D0 00000090 3409000E */  li    $9, 14
D_00000094:
/* 0000D4 00000094 AD090000 */  sw    $9, ($8)
/* 0000D8 00000098 24110020 */  li    $17, 32
.L0000009C:
/* 0000DC 0000009C 2231FFFF */  addi  $17, $17, -1
/* 0000E0 000000A0 1620FFFE */  bnez  $17, .L0000009C
/* 0000E4 000000A4 3409010F */   li    $9, 271
/* 0000E8 000000A8 AD890000 */  sw    $9, ($12)
/* 0000EC 000000AC 3C091808 */  lui   $9, (0x18082838 >> 16) # lui $9, 0x1808
/* 0000F0 000000B0 35292838 */  ori   $9, (0x18082838 & 0xFFFF) # ori $9, $9, 0x2838
/* 0000F4 000000B4 AD490008 */  sw    $9, %lo(D_A3F80008)($10)
/* 0000F8 000000B8 AD400014 */  sw    $0, %lo(D_A3F80014)($10)
/* 0000FC 000000BC 3C098000 */  lui   $9, 0x8000
/* 000100 000000C0 AD490004 */  sw    $9, %lo(D_A3F80004)($10)
/* 000104 000000C4 00006825 */  move  $13, $0
/* 000108 000000C8 00007025 */  move  $14, $0
/* 00010C 000000CC 3C0FA3F0 */  lui   $15, %hi(D_A3F00018) # $15, 0xa3f0
/* 000110 000000D0 0000C025 */  move  $24, $0
/* 000114 000000D4 3C19A3F0 */  lui   $25, 0xa3f0
/* 000118 000000D8 3C16A000 */  lui   $22, 0xa000
/* 00011C 000000DC 0000B825 */  move  $23, $0
/* 000120 000000E0 3C06A3F0 */  lui   $6, 0xa3f0
/* 000124 000000E4 3C07A000 */  lui   $7, 0xa000
/* 000128 000000E8 00009025 */  move  $18, $0
/* 00012C 000000EC 3C14A000 */  lui   $20, 0xa000
/* 000130 000000F0 27BDFFB8 */  addiu $29, $29, -0x48
/* 000134 000000F4 03A0F025 */  move  $30, $29
/* 000138 000000F8 3C10A430 */  lui   $16, %hi(D_A4300004) # $16, 0xa430
/* 00013C 000000FC 8E100004 */  lw    $16, %lo(D_A4300004)($16)
/* 000140 00000100 3C110101 */  lui   $17, %hi(D_01010101) # $17, 0x101
/* 000144 00000104 26310101 */  addiu $17, %lo(D_01010101) # addiu $17, $17, 0x101
/* 000148 00000108 16110005 */  bne   $16, $17, .L00000120
/* 00014C 0000010C 00000000 */   nop   
/* 000150 00000110 24100200 */  li    $16, 512
/* 000154 00000114 35714000 */  ori   $17, $11, 0x4000
/* 000158 00000118 10000003 */  b     .L00000128
/* 00015C 0000011C 00000000 */   nop   
.L00000120:
/* 000160 00000120 24100400 */  li    $16, 1024
/* 000164 00000124 35718000 */  ori   $17, $11, 0x8000
.L00000128:
/* 000168 00000128 AE2E0004 */  sw    $14, 4($17)
/* 00016C 0000012C 25F5000C */  addiu $21, $15, 0xc
/* 000170 00000130 0D0001DB */  jal   func_0400076C
/* 000174 00000134 00000000 */   nop   
/* 000178 00000138 10400038 */  beqz  $2, .L0000021C
/* 00017C 0000013C 00000000 */   nop   
/* 000180 00000140 AFA20000 */  sw    $2, ($29)
/* 000184 00000144 24092000 */  li    $9, 8192
/* 000188 00000148 AD890000 */  sw    $9, ($12)
/* 00018C 0000014C 8DEB0000 */  lw    $11, ($15)
/* 000190 00000150 3C08F0FF */  lui   $8, 0xf0ff
/* 000194 00000154 01685824 */  and   $11, $11, $8
/* 000198 00000158 AFAB0004 */  sw    $11, 4($29)
/* 00019C 0000015C 23BD0008 */  addi  $29, $29, 8
/* 0001A0 00000160 24091000 */  li    $9, 4096
/* 0001A4 00000164 AD890000 */  sw    $9, ($12)
/* 0001A8 00000168 3C08B019 */  lui   $8, 0xb019
/* 0001AC 0000016C 1568000C */  bne   $11, $8, .L000001A0
/* 0001B0 00000170 00000000 */   nop   
/* 0001B4 00000174 3C080800 */  lui   $8, 0x800
/* 0001B8 00000178 0308C020 */  add   $24, $24, $8
/* 0001BC 0000017C 0330C820 */  add   $25, $25, $16
/* 0001C0 00000180 0330C820 */  add   $25, $25, $16
/* 0001C4 00000184 3C080020 */  lui   $8, 0x20
/* 0001C8 00000188 02C8B020 */  add   $22, $22, $8
/* 0001CC 0000018C 0288A020 */  add   $20, $20, $8
/* 0001D0 00000190 00129040 */  sll   $18, $18, 1
/* 0001D4 00000194 22520001 */  addi  $18, $18, 1
/* 0001D8 00000198 10000003 */  b     .L000001A8
/* 0001DC 0000019C 00000000 */   nop   
.L000001A0:
/* 0001E0 000001A0 3C080010 */  lui   $8, 0x10
/* 0001E4 000001A4 0288A020 */  add   $20, $20, $8
.L000001A8:
/* 0001E8 000001A8 24082000 */  li    $8, 8192
/* 0001EC 000001AC AD880000 */  sw    $8, ($12)
/* 0001F0 000001B0 8DE90024 */  lw    $9, %lo(D_A3F00024)($15)
/* 0001F4 000001B4 8DFA0000 */  lw    $26, ($15)
/* 0001F8 000001B8 24081000 */  li    $8, 4096
/* 0001FC 000001BC AD880000 */  sw    $8, ($12)
/* 000200 000001C0 3129FFFF */  andi  $9, $9, 0xffff
/* 000204 000001C4 24080500 */  li    $8, 1280
/* 000208 000001C8 15280009 */  bne   $9, $8, .L000001F0
/* 00020C 000001CC 00000000 */   nop   
/* 000210 000001D0 3C1B0100 */  lui   $27, 0x100
/* 000214 000001D4 035BD024 */  and   $26, $26, $27
/* 000218 000001D8 17400005 */  bnez  $26, .L000001F0
/* 00021C 000001DC 00000000 */   nop   
/* 000220 000001E0 3C08101C */  lui   $8, (0x101C0A04 >> 16) # lui $8, 0x101c
D_000001E4:
/* 000224 000001E4 35080A04 */  ori   $8, (0x101C0A04 & 0xFFFF) # ori $8, $8, 0xa04
/* 000228 000001E8 ADE80018 */  sw    $8, %lo(D_A3F00018)($15)
/* 00022C 000001EC 10000003 */  b     .L000001FC
.L000001F0:
/* 000230 000001F0 3C08080C */   lui   $8, (0x080C1204 >> 16) # lui $8, 0x80c
/* 000234 000001F4 35081204 */  ori   $8, (0x080C1204 & 0xFFFF) # ori $8, $8, 0x1204
/* 000238 000001F8 ADE80018 */  sw    $8, %lo(D_A3F00018)($15)
.L000001FC:
/* 00023C 000001FC 3C080800 */  lui   $8, 0x800
/* 000240 00000200 01C87020 */  add   $14, $14, $8
/* 000244 00000204 01F07820 */  add   $15, $15, $16
/* 000248 00000208 01F07820 */  add   $15, $15, $16
/* 00024C 0000020C 25AD0001 */  addiu $13, $13, 1
/* 000250 00000210 2DA80008 */  sltiu $8, $13, 8
/* 000254 00000214 1500FFC4 */  bnez  $8, .L00000128
/* 000258 00000218 00000000 */   nop   
.L0000021C:
/* 00025C 0000021C 3C08C400 */  lui   $8, 0xc400
/* 000260 00000220 AD48000C */  sw    $8, %lo(D_A3F8000C)($10)
/* 000264 00000224 3C088000 */  lui   $8, 0x8000
/* 000268 00000228 AD480004 */  sw    $8, %lo(D_A3F80004)($10)
/* 00026C 0000022C 03C0E825 */  move  $29, $30
/* 000270 00000230 00001825 */  move  $3, $0
.L00000234:
/* 000274 00000234 8FA90004 */  lw    $9, 4($29)
/* 000278 00000238 3C08B009 */  lui   $8, 0xb009
/* 00027C 0000023C 15280016 */  bne   $9, $8, .L00000298
/* 000280 00000240 00000000 */   nop   
/* 000284 00000244 AE380004 */  sw    $24, 4($17)
/* 000288 00000248 2735000C */  addiu $21, $25, 0xc
/* 00028C 0000024C 8FA40000 */  lw    $4, ($29)
/* 000290 00000250 23BD0008 */  addi  $29, $29, 8
/* 000294 00000254 24050001 */  li    $5, 1
/* 000298 00000258 0D00028D */  jal   func_04000A34
/* 00029C 0000025C 00000000 */   nop   
/* 0002A0 00000260 8EC80000 */  lw    $8, ($22)
/* 0002A4 00000264 3C080008 */  lui   $8, 8
/* 0002A8 00000268 01164020 */  add   $8, $8, $22
/* 0002AC 0000026C 8D090000 */  lw    $9, ($8)
/* 0002B0 00000270 8EC80000 */  lw    $8, ($22)
/* 0002B4 00000274 3C080008 */  lui   $8, 8
/* 0002B8 00000278 01164020 */  add   $8, $8, $22
/* 0002BC 0000027C 8D090000 */  lw    $9, ($8)
/* 0002C0 00000280 3C080400 */  lui   $8, 0x400
/* 0002C4 00000284 01C87020 */  add   $14, $14, $8
/* 0002C8 00000288 0330C820 */  add   $25, $25, $16
/* 0002CC 0000028C 3C080010 */  lui   $8, 0x10
/* 0002D0 00000290 02C8B020 */  add   $22, $22, $8
/* 0002D4 00000294 10000021 */  b     .L0000031C
.L00000298:
/* 0002D8 00000298 AE370004 */   sw    $23, 4($17)
/* 0002DC 0000029C 24D5000C */  addiu $21, $6, 0xc
/* 0002E0 000002A0 8FA40000 */  lw    $4, ($29)
/* 0002E4 000002A4 23BD0008 */  addi  $29, $29, 8
/* 0002E8 000002A8 24050001 */  li    $5, 1
/* 0002EC 000002AC 0D00028D */  jal   func_04000A34
/* 0002F0 000002B0 00000000 */   nop   
/* 0002F4 000002B4 8CE80000 */  lw    $8, ($7)
/* 0002F8 000002B8 3C080008 */  lui   $8, 8
/* 0002FC 000002BC 01074020 */  add   $8, $8, $7
/* 000300 000002C0 8D090000 */  lw    $9, ($8)
/* 000304 000002C4 3C080010 */  lui   $8, 0x10
/* 000308 000002C8 01074020 */  add   $8, $8, $7
/* 00030C 000002CC 8D090000 */  lw    $9, ($8)
/* 000310 000002D0 3C080018 */  lui   $8, 0x18
/* 000314 000002D4 01074020 */  add   $8, $8, $7
/* 000318 000002D8 8D090000 */  lw    $9, ($8)
/* 00031C 000002DC 8CE80000 */  lw    $8, ($7)
/* 000320 000002E0 3C080008 */  lui   $8, 8
/* 000324 000002E4 01074020 */  add   $8, $8, $7
/* 000328 000002E8 8D090000 */  lw    $9, ($8)
/* 00032C 000002EC 3C080010 */  lui   $8, 0x10
/* 000330 000002F0 01074020 */  add   $8, $8, $7
/* 000334 000002F4 8D090000 */  lw    $9, ($8)
/* 000338 000002F8 3C080018 */  lui   $8, 0x18
/* 00033C 000002FC 01074020 */  add   $8, $8, $7
/* 000340 00000300 8D090000 */  lw    $9, ($8)
/* 000344 00000304 3C080800 */  lui   $8, 0x800
/* 000348 00000308 02E8B820 */  add   $23, $23, $8
/* 00034C 0000030C 00D03020 */  add   $6, $6, $16
/* 000350 00000310 00D03020 */  add   $6, $6, $16
/* 000354 00000314 3C080020 */  lui   $8, 0x20
/* 000358 00000318 00E83820 */  add   $7, $7, $8
.L0000031C:
/* 00035C 0000031C 24630001 */  addiu $3, $3, 1
/* 000360 00000320 006D402A */  slt   $8, $3, $13
/* 000364 00000324 1500FFC3 */  bnez  $8, .L00000234
/* 000368 00000328 00000000 */   nop   
/* 00036C 0000032C 3C0AA470 */  lui   $10, %hi(D_A4700010) # $10, 0xa470
/* 000370 00000330 001294C0 */  sll   $18, $18, 0x13
/* 000374 00000334 3C090006 */  lui   $9, (0x00063634 >> 16) # lui $9, 6
/* 000378 00000338 35293634 */  ori   $9, (0x00063634 & 0xFFFF) # ori $9, $9, 0x3634
/* 00037C 0000033C 01324825 */  or    $9, $9, $18
/* 000380 00000340 AD490010 */  sw    $9, %lo(D_A4700010)($10)
/* 000384 00000344 8D490010 */  lw    $9, %lo(D_A4700010)($10)
/* 000388 00000348 3C08A000 */  lui   $8, %hi(D_A0000018) # $8, 0xa000
/* 00038C 0000034C 35080300 */  ori   $8, (0xA0000300 & 0xFFFF) # ori $8, $8, 0x300
/* 000390 00000350 3C090FFF */  lui   $9, (0x0FFFFFFF >> 16) # lui $9, 0xfff
/* 000394 00000354 3529FFFF */  ori   $9, (0x0FFFFFFF & 0xFFFF) # ori $9, $9, 0xffff
/* 000398 00000358 02C9B024 */  and   $22, $22, $9
/* 00039C 0000035C AD160018 */  sw    $22, %lo(D_A0000018)($8)
/* 0003A0 00000360 03C0E825 */  move  $29, $30
/* 0003A4 00000364 27BD0048 */  addiu $29, $29, 0x48
/* 0003A8 00000368 8FB30000 */  lw    $19, ($29)
/* 0003AC 0000036C 8FB40004 */  lw    $20, 4($29)
/* 0003B0 00000370 8FB50008 */  lw    $21, 8($29)
/* 0003B4 00000374 8FB6000C */  lw    $22, 0xc($29)
/* 0003B8 00000378 8FB70010 */  lw    $23, 0x10($29)
/* 0003BC 0000037C 27BD0018 */  addiu $29, $29, 0x18
/* 0003C0 00000380 3C088000 */  lui   $8, 0x8000
/* 0003C4 00000384 25080000 */  addiu $8, $8, 0
/* 0003C8 00000388 25094000 */  addiu $9, $8, 0x4000
/* 0003CC 0000038C 2529FFE0 */  addiu $9, $9, -0x20
/* 0003D0 00000390 4080E000 */  mtc0  $0, $28
/* 0003D4 00000394 4080E800 */  mtc0  $0, $29
.L00000398:
/* 0003D8 00000398 BD080000 */  cache 8, ($8)
/* 0003DC 0000039C 0109082B */  sltu  $1, $8, $9
/* 0003E0 000003A0 1420FFFD */  bnez  $1, .L00000398
/* 0003E4 000003A4 25080020 */   addiu $8, $8, 0x20
/* 0003E8 000003A8 3C088000 */  lui   $8, 0x8000
/* 0003EC 000003AC 25080000 */  addiu $8, $8, 0
/* 0003F0 000003B0 25092000 */  addiu $9, $8, 0x2000
/* 0003F4 000003B4 2529FFF0 */  addiu $9, $9, -0x10
.L000003B8:
/* 0003F8 000003B8 BD090000 */  cache 9, ($8)
/* 0003FC 000003BC 0109082B */  sltu  $1, $8, $9
/* 000400 000003C0 1420FFFD */  bnez  $1, .L000003B8
/* 000404 000003C4 25080010 */   addiu $8, $8, 0x10
/* 000408 000003C8 10000013 */  b     .L00000418
/* 00040C 000003CC 00000000 */   nop   
.L000003D0:
/* 000410 000003D0 3C088000 */  lui   $8, 0x8000
/* 000414 000003D4 25080000 */  addiu $8, $8, 0
/* 000418 000003D8 25094000 */  addiu $9, $8, 0x4000
/* 00041C 000003DC 2529FFE0 */  addiu $9, $9, -0x20
/* 000420 000003E0 4080E000 */  mtc0  $0, $28
/* 000424 000003E4 4080E800 */  mtc0  $0, $29
.L000003E8:
/* 000428 000003E8 BD080000 */  cache 8, ($8)
/* 00042C 000003EC 0109082B */  sltu  $1, $8, $9
/* 000430 000003F0 1420FFFD */  bnez  $1, .L000003E8
/* 000434 000003F4 25080020 */   addiu $8, $8, 0x20
/* 000438 000003F8 3C088000 */  lui   $8, 0x8000
/* 00043C 000003FC 25080000 */  addiu $8, $8, 0
/* 000440 00000400 25092000 */  addiu $9, $8, 0x2000
/* 000444 00000404 2529FFF0 */  addiu $9, $9, -0x10
.L00000408:
/* 000448 00000408 BD010000 */  cache 1, ($8)
/* 00044C 0000040C 0109082B */  sltu  $1, $8, $9
/* 000450 00000410 1420FFFD */  bnez  $1, .L00000408
/* 000454 00000414 25080010 */   addiu $8, $8, 0x10
.L00000418:
/* 000458 00000418 3C0AA400 */  lui   $10, 0xa400
/* 00045C 0000041C 254A0000 */  addiu $10, $10, 0
/* 000460 00000420 3C0BFFF0 */  lui   $11, 0xfff0
/* 000464 00000424 3C090010 */  lui   $9, %hi(D_000FFFFF) # $9, 0x10
/* 000468 00000428 014B5024 */  and   $10, $10, $11
/* 00046C 0000042C 3C08A400 */  lui   $8, %hi(D_A40004C0) # $8, 0xa400
/* 000470 00000430 2529FFFF */  addiu $9, %lo(D_000FFFFF) # addiu $9, $9, -1
/* 000474 00000434 3C0BA400 */  lui   $11, %hi(D_A4000768) # $11, 0xa400
/* 000478 00000438 250804C0 */  addiu $8, %lo(D_A40004C0) # addiu $8, $8, 0x4c0
/* 00047C 0000043C 256B0768 */  addiu $11, %lo(D_A4000768) # addiu $11, $11, 0x768
/* 000480 00000440 01094024 */  and   $8, $8, $9
/* 000484 00000444 01695824 */  and   $11, $11, $9
/* 000488 00000448 3C09A000 */  lui   $9, 0xa000
/* 00048C 0000044C 010A4025 */  or    $8, $8, $10
/* 000490 00000450 016A5825 */  or    $11, $11, $10
/* 000494 00000454 25290000 */  addiu $9, $9, 0
.L00000458:
/* 000498 00000458 8D0D0000 */  lw    $13, ($8)
/* 00049C 0000045C 25080004 */  addiu $8, $8, 4
/* 0004A0 00000460 010B082B */  sltu  $1, $8, $11
/* 0004A4 00000464 25290004 */  addiu $9, $9, 4
/* 0004A8 00000468 1420FFFB */  bnez  $1, .L00000458
/* 0004AC 0000046C AD2DFFFC */   sw    $13, -4($9)
/* 0004B0 00000470 3C0C8000 */  lui   $12, 0x8000
/* 0004B4 00000474 258C0000 */  addiu $12, $12, 0
/* 0004B8 00000478 01800008 */  jr    $12
/* 0004BC 0000047C 00000000 */   nop   
/* 0004C0 00000480 3C0BB000 */  lui   $11, %hi(D_B0000008) # $11, 0xb000
/* 0004C4 00000484 8D690008 */  lw    $9, %lo(D_B0000008)($11)
/* 0004C8 00000488 3C0A1FFF */  lui   $10, (0x1FFFFFFF >> 16) # lui $10, 0x1fff
/* 0004CC 0000048C 354AFFFF */  ori   $10, (0x1FFFFFFF & 0xFFFF) # ori $10, $10, 0xffff
/* 0004D0 00000490 3C010010 */  lui   $1, 0x10
/* 0004D4 00000494 012A4824 */  and   $9, $9, $10
/* 0004D8 00000498 01214823 */  subu  $9, $9, $1
/* 0004DC 0000049C 3C01A460 */  lui   $1, 0xa460
/* 0004E0 000004A0 AC290000 */  sw    $9, ($1)
/* 0004E4 000004A4 3C08A460 */  lui   $8, %hi(D_A4600010) # $8, 0xa460
.L000004A8:
/* 0004E8 000004A8 8D080010 */  lw    $8, %lo(D_A4600010)($8)
/* 0004EC 000004AC 31080002 */  andi  $8, $8, 2
/* 0004F0 000004B0 5500FFFD */  bnezl $8, .L000004A8
/* 0004F4 000004B4 3C08A460 */   lui   $8, 0xa460
/* 0004F8 000004B8 24081000 */  li    $8, 4096
/* 0004FC 000004BC 010B4020 */  add   $8, $8, $11
/* 000500 000004C0 010A4024 */  and   $8, $8, $10
/* 000504 000004C4 3C01A460 */  lui   $1, %hi(D_A4600004) # $1, 0xa460
/* 000508 000004C8 AC280004 */  sw    $8, %lo(D_A4600004)($1)
/* 00050C 000004CC 3C0A0010 */  lui   $10, %hi(D_00100003) # $10, 0x10
/* 000510 000004D0 254A0003 */  addiu $10, %lo(D_00100003) # addiu $10, $10, 3
/* 000514 000004D4 3C01A460 */  lui   $1, %hi(D_A460000C) # $1, 0xa460
/* 000518 000004D8 AC2A000C */  sw    $10, %lo(D_A460000C)($1)
.L000004DC:
/* 00051C 000004DC 00000000 */  nop   
/* 000520 000004E0 00000000 */  nop   
/* 000524 000004E4 00000000 */  nop   
/* 000528 000004E8 00000000 */  nop   
/* 00052C 000004EC 00000000 */  nop   
/* 000530 000004F0 00000000 */  nop   
/* 000534 000004F4 00000000 */  nop   
/* 000538 000004F8 00000000 */  nop   
/* 00053C 000004FC 00000000 */  nop   
/* 000540 00000500 00000000 */  nop   
/* 000544 00000504 00000000 */  nop   
/* 000548 00000508 00000000 */  nop   
/* 00054C 0000050C 3C0BA460 */  lui   $11, %hi(D_A4600010) # $11, 0xa460
/* 000550 00000510 8D6B0010 */  lw    $11, %lo(D_A4600010)($11)
/* 000554 00000514 316B0001 */  andi  $11, $11, 1
/* 000558 00000518 1560FFF0 */  bnez  $11, .L000004DC
/* 00055C 0000051C 00000000 */   nop   
/* 000560 00000520 3C0BB000 */  lui   $11, %hi(D_B0000008) # $11, 0xb000
/* 000564 00000524 8D640008 */  lw    $4, %lo(D_B0000008)($11)
/* 000568 00000528 3C010010 */  lui   $1, 0x10
/* 00056C 0000052C 02C02825 */  move  $5, $22
/* 000570 00000530 00812023 */  subu  $4, $4, $1
/* 000574 00000534 3C016C07 */  lui   $1, (0x6C078965 >> 16) # lui $1, 0x6c07
/* 000578 00000538 34218965 */  ori   $1, (0x6C078965 & 0xFFFF) # ori $1, $1, 0x8965
/* 00057C 0000053C 00A10019 */  multu $5, $1
/* 000580 00000540 27BDFFE0 */  addiu $29, $29, -0x20
/* 000584 00000544 AFBF001C */  sw    $31, 0x1c($29)
/* 000588 00000548 AFB00014 */  sw    $16, 0x14($29)
/* 00058C 0000054C 3C1F0010 */  lui   $31, 0x10
/* 000590 00000550 00001825 */  move  $3, $0
/* 000594 00000554 00004025 */  move  $8, $0
/* 000598 00000558 00804825 */  move  $9, $4
/* 00059C 0000055C 240D0020 */  li    $13, 32
/* 0005A0 00000560 00001012 */  mflo  $2
/* 0005A4 00000564 24420001 */  addiu $2, $2, 1
/* 0005A8 00000568 00403825 */  move  $7, $2
/* 0005AC 0000056C 00405025 */  move  $10, $2
/* 0005B0 00000570 00405825 */  move  $11, $2
/* 0005B4 00000574 00408025 */  move  $16, $2
/* 0005B8 00000578 00403025 */  move  $6, $2
/* 0005BC 0000057C 00406025 */  move  $12, $2
.L00000580:
/* 0005C0 00000580 8D220000 */  lw    $2, ($9)
/* 0005C4 00000584 00E21821 */  addu  $3, $7, $2
/* 0005C8 00000588 0067082B */  sltu  $1, $3, $7
/* 0005CC 0000058C 10200002 */  beqz  $1, .L00000598
/* 0005D0 00000590 00602825 */   move  $5, $3
/* 0005D4 00000594 254A0001 */  addiu $10, $10, 1
.L00000598:
/* 0005D8 00000598 3043001F */  andi  $3, $2, 0x1f
/* 0005DC 0000059C 01A37823 */  subu  $15, $13, $3
/* 0005E0 000005A0 01E2C006 */  srlv  $24, $2, $15
/* 0005E4 000005A4 00627004 */  sllv  $14, $2, $3
/* 0005E8 000005A8 01D82025 */  or    $4, $14, $24
/* 0005EC 000005AC 00C2082B */  sltu  $1, $6, $2
/* 0005F0 000005B0 00A03825 */  move  $7, $5
/* 0005F4 000005B4 01625826 */  xor   $11, $11, $2
/* 0005F8 000005B8 10200004 */  beqz  $1, .L000005CC
/* 0005FC 000005BC 02048021 */   addu  $16, $16, $4
/* 000600 000005C0 00E2C826 */  xor   $25, $7, $2
/* 000604 000005C4 10000002 */  b     .L000005D0
/* 000608 000005C8 03263026 */   xor   $6, $25, $6
.L000005CC:
/* 00060C 000005CC 00C43026 */  xor   $6, $6, $4
.L000005D0:
/* 000610 000005D0 25080004 */  addiu $8, $8, 4
/* 000614 000005D4 00507826 */  xor   $15, $2, $16
/* 000618 000005D8 25290004 */  addiu $9, $9, 4
/* 00061C 000005DC 151FFFE8 */  bne   $8, $31, .L00000580
/* 000620 000005E0 01EC6021 */   addu  $12, $15, $12
/* 000624 000005E4 00EA7026 */  xor   $14, $7, $10
/* 000628 000005E8 01CB3821 */  addu  $7, $14, $11
/* 00062C 000005EC 0206C026 */  xor   $24, $16, $6
/* 000630 000005F0 030C8021 */  addu  $16, $24, $12
/* 000634 000005F4 3C0BB000 */  lui   $11, %hi(D_B0000014) # $11, 0xb000
/* 000638 000005F8 8D680010 */  lw    $8, %lo(D_B0000010)($11)
/* 00063C 000005FC 14E80006 */  bne   $7, $8, .L00000618
/* 000640 00000600 00000000 */   nop   
/* 000644 00000604 8D680014 */  lw    $8, %lo(D_B0000014)($11)
/* 000648 00000608 16080003 */  bne   $16, $8, .L00000618
/* 00064C 0000060C 00000000 */   nop   
/* 000650 00000610 04110003 */  bal   func_00000620
/* 000654 00000614 00000000 */   nop   
func_00000618:
.L00000618:
/* 000658 00000618 0411FFFF */  bal   func_00000618
/* 00065C 0000061C 00000000 */   nop   
func_00000620:
/* 000660 00000620 3C09A408 */  lui   $9, 0xa408
/* 000664 00000624 8D290000 */  lw    $9, ($9)
/* 000668 00000628 8FB00014 */  lw    $16, 0x14($29)
/* 00066C 0000062C 8FBF001C */  lw    $31, 0x1c($29)
/* 000670 00000630 11200006 */  beqz  $9, .L0000064C
/* 000674 00000634 27BD0020 */   addiu $29, $29, 0x20
/* 000678 00000638 240A0041 */  li    $10, 65
/* 00067C 0000063C 3C01A404 */  lui   $1, %hi(D_A4040010) # $1, 0xa404
/* 000680 00000640 AC2A0010 */  sw    $10, %lo(D_A4040010)($1)
/* 000684 00000644 3C01A408 */  lui   $1, 0xa408
/* 000688 00000648 AC200000 */  sw    $0, ($1)
.L0000064C:
/* 00068C 0000064C 3C0B00AA */  lui   $11, (0x00AAAAAE >> 16) # lui $11, 0xaa
/* 000690 00000650 356BAAAE */  ori   $11, (0x00AAAAAE & 0xFFFF) # ori $11, $11, 0xaaae
/* 000694 00000654 3C01A404 */  lui   $1, %hi(D_A4040010) # $1, 0xa404
/* 000698 00000658 AC2B0010 */  sw    $11, %lo(D_A4040010)($1)
/* 00069C 0000065C 3C01A430 */  lui   $1, %hi(D_A430000C) # $1, 0xa430
/* 0006A0 00000660 24080555 */  li    $8, 1365
/* 0006A4 00000664 AC28000C */  sw    $8, %lo(D_A430000C)($1)
/* 0006A8 00000668 3C01A480 */  lui   $1, %hi(D_A4800018) # $1, 0xa480
/* 0006AC 0000066C AC200018 */  sw    $0, %lo(D_A4800018)($1)
/* 0006B0 00000670 3C01A450 */  lui   $1, %hi(D_A450000C) # $1, 0xa450
/* 0006B4 00000674 AC20000C */  sw    $0, %lo(D_A450000C)($1)
/* 0006B8 00000678 3C01A430 */  lui   $1, 0xa430
/* 0006BC 0000067C 24090800 */  li    $9, 2048
/* 0006C0 00000680 AC290000 */  sw    $9, ($1)
/* 0006C4 00000684 24090002 */  li    $9, 2
/* 0006C8 00000688 3C01A460 */  lui   $1, %hi(D_A4600010) # $1, 0xa460
/* 0006CC 0000068C AC290010 */  sw    $9, %lo(D_A4600010)($1)
/* 0006D0 00000690 3C08A000 */  lui   $8, %hi(D_A0000008) # $8, 0xa000
/* 0006D4 00000694 35080300 */  ori   $8, (0xA0000300 & 0xFFFF) # ori $8, $8, 0x300
/* 0006D8 00000698 240917D7 */  li    $9, 6103
/* 0006DC 0000069C AD090010 */  sw    $9, %lo(D_A0000010)($8)
/* 0006E0 000006A0 AD140000 */  sw    $20, ($8)
/* 0006E4 000006A4 AD130004 */  sw    $19, %lo(D_A0000004)($8)
/* 0006E8 000006A8 AD15000C */  sw    $21, %lo(D_A000000C)($8)
/* 0006EC 000006AC 12600004 */  beqz  $19, .L000006C0
/* 0006F0 000006B0 AD170014 */   sw    $23, %lo(D_A0000014)($8)
/* 0006F4 000006B4 3C09A600 */  lui   $9, 0xa600
/* 0006F8 000006B8 10000003 */  b     .L000006C8
/* 0006FC 000006BC 25290000 */   addiu $9, $9, 0
.L000006C0:
/* 000700 000006C0 3C09B000 */  lui   $9, 0xb000
/* 000704 000006C4 25290000 */  addiu $9, $9, 0
.L000006C8:
/* 000708 000006C8 AD090008 */  sw    $9, %lo(D_A0000008)($8)
/* 00070C 000006CC 3C08A400 */  lui   $8, 0xa400
/* 000710 000006D0 25080000 */  addiu $8, $8, 0
/* 000714 000006D4 21091000 */  addi  $9, $8, 0x1000
/* 000718 000006D8 240AFFFF */  li    $10, -1
.L000006DC:
/* 00071C 000006DC 25080004 */  addiu $8, $8, 4
/* 000720 000006E0 1509FFFE */  bne   $8, $9, .L000006DC
/* 000724 000006E4 AD0AFFFC */   sw    $10, -4($8)
/* 000728 000006E8 3C08A400 */  lui   $8, %hi(D_A4001000) # $8, 0xa400
/* 00072C 000006EC 25081000 */  addiu $8, %lo(D_A4001000) # addiu $8, $8, 0x1000
/* 000730 000006F0 21091000 */  addi  $9, $8, 0x1000
.L000006F4:
/* 000734 000006F4 25080004 */  addiu $8, $8, 4
/* 000738 000006F8 1509FFFE */  bne   $8, $9, .L000006F4
/* 00073C 000006FC AD0AFFFC */   sw    $10, -4($8)
/* 000740 00000700 3C0AA400 */  lui   $10, %hi(D_A4001000) # $10, 0xa400
/* 000744 00000704 240B17D7 */  li    $11, 6103
/* 000748 00000708 AD4B1000 */  sw    $11, %lo(D_A4001000)($10)
/* 00074C 0000070C 3C0BB000 */  lui   $11, %hi(D_B0000008) # $11, 0xb000
/* 000750 00000710 254A1000 */  addiu $10, %lo(D_A4001000) # addiu $10, $10, 0x1000
/* 000754 00000714 8D690008 */  lw    $9, %lo(D_B0000008)($11)
/* 000758 00000718 3C010010 */  lui   $1, 0x10
/* 00075C 0000071C 01214823 */  subu  $9, $9, $1
/* 000760 00000720 01200008 */  jr    $9
/* 000764 00000724 00000000 */   nop   
/* 000768 00000728 00000000 */  nop   
/* 00076C 0000072C 27BDFF60 */  addiu $29, $29, -0xa0
/* 000770 00000730 AFB00040 */  sw    $16, 0x40($29)
/* 000774 00000734 AFB10044 */  sw    $17, 0x44($29)
/* 000778 00000738 00008825 */  move  $17, $0
/* 00077C 0000073C 00008025 */  move  $16, $0
/* 000780 00000740 AFA20000 */  sw    $2, ($29)
/* 000784 00000744 AFA30004 */  sw    $3, 4($29)
/* 000788 00000748 AFA40008 */  sw    $4, 8($29)
/* 00078C 0000074C AFA5000C */  sw    $5, 0xc($29)
/* 000790 00000750 AFA60010 */  sw    $6, 0x10($29)
/* 000794 00000754 AFA70014 */  sw    $7, 0x14($29)
/* 000798 00000758 AFA80018 */  sw    $8, 0x18($29)
/* 00079C 0000075C AFA9001C */  sw    $9, 0x1c($29)
/* 0007A0 00000760 AFAA0020 */  sw    $10, 0x20($29)
/* 0007A4 00000764 AFAB0024 */  sw    $11, 0x24($29)
/* 0007A8 00000768 AFAC0028 */  sw    $12, 0x28($29)
/* 0007AC 0000076C AFAD002C */  sw    $13, 0x2c($29)
/* 0007B0 00000770 AFAE0030 */  sw    $14, 0x30($29)
/* 0007B4 00000774 AFAF0034 */  sw    $15, 0x34($29)
/* 0007B8 00000778 AFB80038 */  sw    $24, 0x38($29)
/* 0007BC 0000077C AFB9003C */  sw    $25, 0x3c($29)
/* 0007C0 00000780 AFB20048 */  sw    $18, 0x48($29)
/* 0007C4 00000784 AFB3004C */  sw    $19, 0x4c($29)
/* 0007C8 00000788 AFB40050 */  sw    $20, 0x50($29)
/* 0007CC 0000078C AFB50054 */  sw    $21, 0x54($29)
/* 0007D0 00000790 AFB60058 */  sw    $22, 0x58($29)
/* 0007D4 00000794 AFB7005C */  sw    $23, 0x5c($29)
/* 0007D8 00000798 AFBE0060 */  sw    $30, 0x60($29)
/* 0007DC 0000079C AFBF0064 */  sw    $31, 0x64($29)
.L000007A0:
/* 0007E0 000007A0 0D00021D */  jal   func_04000874
/* 0007E4 000007A4 00000000 */   nop   
/* 0007E8 000007A8 26100001 */  addiu $16, $16, 1
/* 0007EC 000007AC 2A090004 */  slti  $9, $16, 4
/* 0007F0 000007B0 1520FFFB */  bnez  $9, .L000007A0
/* 0007F4 000007B4 02228821 */   addu  $17, $17, $2
/* 0007F8 000007B8 00112082 */  srl   $4, $17, 2
/* 0007FC 000007BC 0D00028D */  jal   func_04000A34
/* 000800 000007C0 24050001 */   li    $5, 1
/* 000804 000007C4 8FBF0064 */  lw    $31, 0x64($29)
/* 000808 000007C8 00111082 */  srl   $2, $17, 2
/* 00080C 000007CC 8FB10044 */  lw    $17, 0x44($29)
/* 000810 000007D0 8FA30004 */  lw    $3, 4($29)
/* 000814 000007D4 8FA40008 */  lw    $4, 8($29)
/* 000818 000007D8 8FA5000C */  lw    $5, 0xc($29)
/* 00081C 000007DC 8FA60010 */  lw    $6, 0x10($29)
/* 000820 000007E0 8FA70014 */  lw    $7, 0x14($29)
/* 000824 000007E4 8FA80018 */  lw    $8, 0x18($29)
/* 000828 000007E8 8FA9001C */  lw    $9, 0x1c($29)
/* 00082C 000007EC 8FAA0020 */  lw    $10, 0x20($29)
/* 000830 000007F0 8FAB0024 */  lw    $11, 0x24($29)
/* 000834 000007F4 8FAC0028 */  lw    $12, 0x28($29)
/* 000838 000007F8 8FAD002C */  lw    $13, 0x2c($29)
/* 00083C 000007FC 8FAE0030 */  lw    $14, 0x30($29)
/* 000840 00000800 8FAF0034 */  lw    $15, 0x34($29)
/* 000844 00000804 8FB80038 */  lw    $24, 0x38($29)
/* 000848 00000808 8FB9003C */  lw    $25, 0x3c($29)
/* 00084C 0000080C 8FB00040 */  lw    $16, 0x40($29)
/* 000850 00000810 8FB20048 */  lw    $18, 0x48($29)
/* 000854 00000814 8FB3004C */  lw    $19, 0x4c($29)
/* 000858 00000818 8FB40050 */  lw    $20, 0x50($29)
/* 00085C 0000081C 8FB50054 */  lw    $21, 0x54($29)
/* 000860 00000820 8FB60058 */  lw    $22, 0x58($29)
/* 000864 00000824 8FB7005C */  lw    $23, 0x5c($29)
/* 000868 00000828 8FBE0060 */  lw    $30, 0x60($29)
/* 00086C 0000082C 03E00008 */  jr    $31
/* 000870 00000830 27BD00A0 */   addiu $29, $29, 0xa0

/* 000874 00000834 27BDFFE0 */  addiu $29, $29, -0x20
/* 000878 00000838 AFBF001C */  sw    $31, 0x1c($29)
/* 00087C 0000083C 00004825 */  move  $9, $0
/* 000880 00000840 00005825 */  move  $11, $0
/* 000884 00000844 00006025 */  move  $12, $0
.L00000848:
/* 000888 00000848 299A0040 */  slti  $26, $12, 0x40
/* 00088C 0000084C 53400018 */  beql  $26, $0, .L000008B0
/* 000890 00000850 00001025 */   move  $2, $0
/* 000894 00000854 0D000240 */  jal   func_04000900
/* 000898 00000858 01802025 */   move  $4, $12
/* 00089C 0000085C 58400008 */  blezl $2, .L00000880
/* 0008A0 00000860 293A0050 */   slti  $26, $9, 0x50
/* 0008A4 00000864 0049D023 */  subu  $26, $2, $9
/* 0008A8 00000868 034C0019 */  multu $26, $12
/* 0008AC 0000086C 00404825 */  move  $9, $2
/* 0008B0 00000870 0000D012 */  mflo  $26
/* 0008B4 00000874 017A5821 */  addu  $11, $11, $26
/* 0008B8 00000878 00000000 */  nop   
/* 0008BC 0000087C 293A0050 */  slti  $26, $9, 0x50
.L00000880:
/* 0008C0 00000880 1740FFF1 */  bnez  $26, .L00000848
/* 0008C4 00000884 258C0001 */   addiu $12, $12, 1
/* 0008C8 00000888 000B2080 */  sll   $4, $11, 2
/* 0008CC 0000088C 008B2023 */  subu  $4, $4, $11
/* 0008D0 00000890 00042080 */  sll   $4, $4, 2
/* 0008D4 00000894 008B2023 */  subu  $4, $4, $11
/* 0008D8 00000898 00042040 */  sll   $4, $4, 1
/* 0008DC 0000089C 0D00025D */  jal   func_04000974
/* 0008E0 000008A0 2484FC90 */   addiu $4, $4, -0x370
/* 0008E4 000008A4 10000003 */  b     .L000008B4
/* 0008E8 000008A8 8FBF001C */   lw    $31, 0x1c($29)
/* 0008EC 000008AC 00001025 */  move  $2, $0
.L000008B0:
/* 0008F0 000008B0 8FBF001C */  lw    $31, 0x1c($29)
.L000008B4:
/* 0008F4 000008B4 27BD0020 */  addiu $29, $29, 0x20
/* 0008F8 000008B8 03E00008 */  jr    $31
/* 0008FC 000008BC 00000000 */   nop   

/* 000900 000008C0 27BDFFD8 */  addiu $29, $29, -0x28
/* 000904 000008C4 AFBF001C */  sw    $31, 0x1c($29)
/* 000908 000008C8 00001025 */  move  $2, $0
/* 00090C 000008CC 0D00028D */  jal   func_04000A34
/* 000910 000008D0 24050002 */   li    $5, 2
/* 000914 000008D4 0000F025 */  move  $30, $0
/* 000918 000008D8 241AFFFF */  li    $26, -1
.L000008DC:
/* 00091C 000008DC AE9A0004 */  sw    $26, 4($20)
/* 000920 000008E0 8E830004 */  lw    $3, 4($20)
/* 000924 000008E4 AE9A0000 */  sw    $26, ($20)
/* 000928 000008E8 AE9A0000 */  sw    $26, ($20)
/* 00092C 000008EC 0000E025 */  move  $28, $0
/* 000930 000008F0 00031C02 */  srl   $3, $3, 0x10
.L000008F4:
/* 000934 000008F4 307A0001 */  andi  $26, $3, 1
/* 000938 000008F8 53400003 */  beql  $26, $0, .L00000908
/* 00093C 000008FC 279C0001 */   addiu $28, $28, 1
/* 000940 00000900 24420001 */  addiu $2, $2, 1
/* 000944 00000904 279C0001 */  addiu $28, $28, 1
.L00000908:
/* 000948 00000908 2B9A0008 */  slti  $26, $28, 8
/* 00094C 0000090C 1740FFF9 */  bnez  $26, .L000008F4
/* 000950 00000910 00031842 */   srl   $3, $3, 1
/* 000954 00000914 27DE0001 */  addiu $30, $30, 1
/* 000958 00000918 2BDA000A */  slti  $26, $30, 0xa
/* 00095C 0000091C 5740FFEF */  bnezl $26, .L000008DC
/* 000960 00000920 241AFFFF */   li    $26, -1
/* 000964 00000924 8FBF001C */  lw    $31, 0x1c($29)
/* 000968 00000928 27BD0028 */  addiu $29, $29, 0x28
/* 00096C 0000092C 03E00008 */  jr    $31
/* 000970 00000930 00000000 */   nop   

/* 000974 00000934 27BDFFD8 */  addiu $29, $29, -0x28
/* 000978 00000938 AFBF001C */  sw    $31, 0x1c($29)
/* 00097C 0000093C AFA40020 */  sw    $4, 0x20($29)
/* 000980 00000940 A3A00027 */  sb    $0, 0x27($29)
/* 000984 00000944 00004025 */  move  $8, $0
/* 000988 00000948 00005025 */  move  $10, $0
/* 00098C 0000094C 340DC800 */  li    $13, 51200
/* 000990 00000950 00007025 */  move  $14, $0
/* 000994 00000954 29DA0040 */  slti  $26, $14, 0x40
.L00000958:
/* 000998 00000958 57400004 */  bnezl $26, .L0000096C
/* 00099C 0000095C 01C02025 */   move  $4, $14
/* 0009A0 00000960 10000020 */  b     .L000009E4
/* 0009A4 00000964 00001025 */   move  $2, $0
/* 0009A8 00000968 01C02025 */  move  $4, $14
.L0000096C:
/* 0009AC 0000096C 0D00028D */  jal   func_04000A34
/* 0009B0 00000970 24050001 */   li    $5, 1
/* 0009B4 00000974 0D0002B1 */  jal   func_04000AC4
/* 0009B8 00000978 27A40027 */   addiu $4, $29, 0x27
/* 0009BC 0000097C 0D0002B1 */  jal   func_04000AC4
/* 0009C0 00000980 27A40027 */   addiu $4, $29, 0x27
/* 0009C4 00000984 93BA0027 */  lbu   $26, 0x27($29)
/* 0009C8 00000988 241B0320 */  li    $27, 800
/* 0009CC 0000098C 8FA40020 */  lw    $4, 0x20($29)
/* 0009D0 00000990 035B0019 */  multu $26, $27
/* 0009D4 00000994 00004012 */  mflo  $8
/* 0009D8 00000998 0104D023 */  subu  $26, $8, $4
/* 0009DC 0000099C 07430003 */  bgezl $26, .L000009AC
/* 0009E0 000009A0 034DD82A */   slt   $27, $26, $13
/* 0009E4 000009A4 0088D023 */  subu  $26, $4, $8
/* 0009E8 000009A8 034DD82A */  slt   $27, $26, $13
.L000009AC:
/* 0009EC 000009AC 53600004 */  beql  $27, $0, .L000009C0
/* 0009F0 000009B0 8FA40020 */   lw    $4, 0x20($29)
/* 0009F4 000009B4 03406825 */  move  $13, $26
/* 0009F8 000009B8 01C05025 */  move  $10, $14
/* 0009FC 000009BC 8FA40020 */  lw    $4, 0x20($29)
.L000009C0:
/* 000A00 000009C0 0104D82A */  slt   $27, $8, $4
/* 000A04 000009C4 53600006 */  beql  $27, $0, .L000009E0
/* 000A08 000009C8 014E1021 */   addu  $2, $10, $14
/* 000A0C 000009CC 25CE0001 */  addiu $14, $14, 1
/* 000A10 000009D0 29DB0041 */  slti  $27, $14, 0x41
/* 000A14 000009D4 5760FFE0 */  bnezl $27, .L00000958
/* 000A18 000009D8 29DA0040 */   slti  $26, $14, 0x40
/* 000A1C 000009DC 014E1021 */  addu  $2, $10, $14
.L000009E0:
/* 000A20 000009E0 00021042 */  srl   $2, $2, 1
.L000009E4:
/* 000A24 000009E4 8FBF001C */  lw    $31, 0x1c($29)
/* 000A28 000009E8 27BD0028 */  addiu $29, $29, 0x28
/* 000A2C 000009EC 03E00008 */  jr    $31
/* 000A30 000009F0 00000000 */   nop   

/* 000A34 000009F4 27BDFFD8 */  addiu $29, $29, -0x28
/* 000A38 000009F8 308400FF */  andi  $4, $4, 0xff
/* 000A3C 000009FC 241B0001 */  li    $27, 1
/* 000A40 00000A00 3884003F */  xori  $4, $4, 0x3f
/* 000A44 00000A04 AFBF001C */  sw    $31, 0x1c($29)
/* 000A48 00000A08 14BB0003 */  bne   $5, $27, .L00000A18
/* 000A4C 00000A0C 3C0F4600 */   lui   $15, 0x4600
/* 000A50 00000A10 3C1A8000 */  lui   $26, 0x8000
/* 000A54 00000A14 01FA7825 */  or    $15, $15, $26
.L00000A18:
/* 000A58 00000A18 309A0001 */  andi  $26, $4, 1
/* 000A5C 00000A1C 001AD180 */  sll   $26, $26, 6
/* 000A60 00000A20 01FA7825 */  or    $15, $15, $26
/* 000A64 00000A24 309A0002 */  andi  $26, $4, 2
/* 000A68 00000A28 001AD340 */  sll   $26, $26, 0xd
/* 000A6C 00000A2C 01FA7825 */  or    $15, $15, $26
/* 000A70 00000A30 309A0004 */  andi  $26, $4, 4
/* 000A74 00000A34 001AD500 */  sll   $26, $26, 0x14
/* 000A78 00000A38 01FA7825 */  or    $15, $15, $26
/* 000A7C 00000A3C 309A0008 */  andi  $26, $4, 8
/* 000A80 00000A40 001AD100 */  sll   $26, $26, 4
/* 000A84 00000A44 01FA7825 */  or    $15, $15, $26
/* 000A88 00000A48 309A0010 */  andi  $26, $4, 0x10
/* 000A8C 00000A4C 001AD2C0 */  sll   $26, $26, 0xb
/* 000A90 00000A50 01FA7825 */  or    $15, $15, $26
/* 000A94 00000A54 309A0020 */  andi  $26, $4, 0x20
/* 000A98 00000A58 001AD480 */  sll   $26, $26, 0x12
/* 000A9C 00000A5C 01FA7825 */  or    $15, $15, $26
/* 000AA0 00000A60 241B0001 */  li    $27, 1
/* 000AA4 00000A64 14BB0003 */  bne   $5, $27, .L00000A74
/* 000AA8 00000A68 AEAF0000 */   sw    $15, ($21)
/* 000AAC 00000A6C 3C1AA430 */  lui   $26, 0xa430
/* 000AB0 00000A70 AF400000 */  sw    $0, ($26)
.L00000A74:
/* 000AB4 00000A74 8FBF001C */  lw    $31, 0x1c($29)
/* 000AB8 00000A78 27BD0028 */  addiu $29, $29, 0x28
/* 000ABC 00000A7C 03E00008 */  jr    $31
/* 000AC0 00000A80 00000000 */   nop   

/* 000AC4 00000A84 27BDFFD8 */  addiu $29, $29, -0x28
/* 000AC8 00000A88 AFBF001C */  sw    $31, 0x1c($29)
/* 000ACC 00000A8C 241A2000 */  li    $26, 8192
/* 000AD0 00000A90 3C1BA430 */  lui   $27, 0xa430
/* 000AD4 00000A94 AF7A0000 */  sw    $26, ($27)
/* 000AD8 00000A98 0000F025 */  move  $30, $0
/* 000ADC 00000A9C 8EBE0000 */  lw    $30, ($21)
/* 000AE0 00000AA0 241A1000 */  li    $26, 4096
/* 000AE4 00000AA4 AF7A0000 */  sw    $26, ($27)
/* 000AE8 00000AA8 241B0040 */  li    $27, 64
/* 000AEC 00000AAC 037ED824 */  and   $27, $27, $30
/* 000AF0 00000AB0 001BD982 */  srl   $27, $27, 6
/* 000AF4 00000AB4 0000D025 */  move  $26, $0
/* 000AF8 00000AB8 035BD025 */  or    $26, $26, $27
/* 000AFC 00000ABC 241B4000 */  li    $27, 16384
/* 000B00 00000AC0 037ED824 */  and   $27, $27, $30
/* 000B04 00000AC4 001BDB42 */  srl   $27, $27, 0xd
/* 000B08 00000AC8 035BD025 */  or    $26, $26, $27
/* 000B0C 00000ACC 3C1B0040 */  lui   $27, 0x40
/* 000B10 00000AD0 037ED824 */  and   $27, $27, $30
/* 000B14 00000AD4 001BDD02 */  srl   $27, $27, 0x14
/* 000B18 00000AD8 035BD025 */  or    $26, $26, $27
/* 000B1C 00000ADC 241B0080 */  li    $27, 128
/* 000B20 00000AE0 037ED824 */  and   $27, $27, $30
/* 000B24 00000AE4 001BD902 */  srl   $27, $27, 4
/* 000B28 00000AE8 035BD025 */  or    $26, $26, $27
/* 000B2C 00000AEC 341B8000 */  li    $27, 32768
/* 000B30 00000AF0 037ED824 */  and   $27, $27, $30
/* 000B34 00000AF4 001BDAC2 */  srl   $27, $27, 0xb
/* 000B38 00000AF8 035BD025 */  or    $26, $26, $27
/* 000B3C 00000AFC 3C1B0080 */  lui   $27, 0x80
/* 000B40 00000B00 037ED824 */  and   $27, $27, $30
/* 000B44 00000B04 001BDC82 */  srl   $27, $27, 0x12
/* 000B48 00000B08 035BD025 */  or    $26, $26, $27
/* 000B4C 00000B0C A09A0000 */  sb    $26, ($4)
/* 000B50 00000B10 8FBF001C */  lw    $31, 0x1c($29)
/* 000B54 00000B14 27BD0028 */  addiu $29, $29, 0x28
/* 000B58 00000B18 03E00008 */  jr    $31
/* 000B5C 00000B1C 00000000 */   nop   

/* 000B60 00000B20 00000000 */  nop   
/* 000B64 00000B24 00000000 */  nop   
/* 000B68 00000B28 00000000 */  nop   
/* 000B6C 00000B2C 00000000 */  nop   