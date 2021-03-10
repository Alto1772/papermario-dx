#include "common.h"

char spaces[] = "                                ";
char zeroes[] = "00000000000000000000000000000000";

INCLUDE_ASM(s32, "os/code_3FEA0", _Printf);

INCLUDE_ASM(s32, "os/code_3FEA0", _Putfld);

INCLUDE_ASM(int, "os/code_3FEA0", sprintf, char* s, const char* fmt, ...);

INCLUDE_ASM(s32, "os/code_3FEA0", proutSprintf);