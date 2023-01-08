#include <stdio.h>

long arith(long x, long y, long z)
{
    long t1 = x + y;
    long t2 = z + t1;
    long t3 = x + 4;
    long t4 = y * 48;
    long t5 = t3 + t4;
    long rval = t2 * t5;

    return rval;
}

/*

* objdump, ATT syntax:

0000000000401106 <arith>:
  401106:       48 8d 04 37             lea    (%rdi,%rsi,1),%rax
  40110a:       48 01 d0                add    %rdx,%rax
  40110d:       48 8d 14 76             lea    (%rsi,%rsi,2),%rdx
  401111:       48 c1 e2 04             shl    $0x4,%rdx
  401115:       48 8d 54 17 04          lea    0x4(%rdi,%rdx,1),%rdx
  40111a:       48 0f af c2             imul   %rdx,%rax
  40111e:       c3                      ret

* objdump, Intel syntax:

0000000000401106 <arith>:
  401106:       48 8d 04 37             lea    rax,[rdi+rsi*1]
  40110a:       48 01 d0                add    rax,rdx
  40110d:       48 8d 14 76             lea    rdx,[rsi+rsi*2]
  401111:       48 c1 e2 04             shl    rdx,0x4
  401115:       48 8d 54 17 04          lea    rdx,[rdi+rdx*1+0x4]
  40111a:       48 0f af c2             imul   rax,rdx
  40111e:       c3                      ret
*/

int main()
{
    long result = arith(2, 3, 1);
    return 0;
}