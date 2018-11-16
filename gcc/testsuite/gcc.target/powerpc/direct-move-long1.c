/* { dg-do compile { target { powerpc*-*-linux* && lp64 } } } */
/* { dg-skip-if "" { powerpc*-*-darwin* } } */
/* { dg-skip-if "" { powerpc*-*-*spe* } } */
/* { dg-require-effective-target powerpc_p8vector_ok } */
/* { dg-skip-if "do not override -mcpu" { powerpc*-*-* } { "-mcpu=*" } { "-mcpu=power8" } } */
/* { dg-options "-mcpu=power8 -O2" } */
/* { dg-final { scan-assembler "mtvsrd" } } */
/* { dg-final { scan-assembler "mfvsrd" } } */

/* Check code generation for direct move for long types.  */

#define TYPE long
#define IS_INT 1
#define NO_ALTIVEC 1
#define VSX_REG_ATTR "d"

#include "direct-move.h"
