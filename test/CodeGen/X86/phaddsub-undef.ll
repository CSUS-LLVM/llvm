; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+ssse3              | FileCheck %s --check-prefixes=SSE,SSE-SLOW
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+ssse3,fast-hops    | FileCheck %s --check-prefixes=SSE,SSE-FAST
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx                | FileCheck %s --check-prefixes=AVX,AVX-SLOW,AVX1,AVX1-SLOW
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx,fast-hops      | FileCheck %s --check-prefixes=AVX,AVX-FAST,AVX1,AVX1-FAST
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx2               | FileCheck %s --check-prefixes=AVX,AVX-SLOW,AVX2,AVX2-SLOW
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx2,fast-hops     | FileCheck %s --check-prefixes=AVX,AVX-FAST,AVX2,AVX2-FAST
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx512vl           | FileCheck %s --check-prefixes=AVX,AVX-SLOW,AVX512,AVX512-SLOW
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx512vl,fast-hops | FileCheck %s --check-prefixes=AVX,AVX-FAST,AVX512,AVX512-FAST

; Verify that we correctly fold horizontal binop even in the presence of UNDEFs.

define <8 x i32> @test14_undef(<8 x i32> %a, <8 x i32> %b) {
; SSE-LABEL: test14_undef:
; SSE:       # %bb.0:
; SSE-NEXT:    phaddd %xmm2, %xmm0
; SSE-NEXT:    retq
;
; AVX1-LABEL: test14_undef:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vphaddd %xmm1, %xmm0, %xmm0
; AVX1-NEXT:    retq
;
; AVX2-LABEL: test14_undef:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vphaddd %ymm1, %ymm0, %ymm0
; AVX2-NEXT:    retq
;
; AVX512-LABEL: test14_undef:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vphaddd %ymm1, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %vecext = extractelement <8 x i32> %a, i32 0
  %vecext1 = extractelement <8 x i32> %a, i32 1
  %add = add i32 %vecext, %vecext1
  %vecinit = insertelement <8 x i32> undef, i32 %add, i32 0
  %vecext2 = extractelement <8 x i32> %b, i32 2
  %vecext3 = extractelement <8 x i32> %b, i32 3
  %add4 = add i32 %vecext2, %vecext3
  %vecinit5 = insertelement <8 x i32> %vecinit, i32 %add4, i32 3
  ret <8 x i32> %vecinit5
}

; integer horizontal adds instead of two scalar adds followed by vector inserts.
define <8 x i32> @test15_undef(<8 x i32> %a, <8 x i32> %b) {
; SSE-LABEL: test15_undef:
; SSE:       # %bb.0:
; SSE-NEXT:    movd %xmm0, %eax
; SSE-NEXT:    pshufd {{.*#+}} xmm0 = xmm0[1,1,2,3]
; SSE-NEXT:    movd %xmm0, %ecx
; SSE-NEXT:    addl %eax, %ecx
; SSE-NEXT:    movd %xmm3, %eax
; SSE-NEXT:    pshufd {{.*#+}} xmm0 = xmm3[1,1,2,3]
; SSE-NEXT:    movd %xmm0, %edx
; SSE-NEXT:    addl %eax, %edx
; SSE-NEXT:    movd %ecx, %xmm0
; SSE-NEXT:    movd %edx, %xmm1
; SSE-NEXT:    pshufd {{.*#+}} xmm1 = xmm1[0,1,0,1]
; SSE-NEXT:    retq
;
; AVX1-LABEL: test15_undef:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vmovd %xmm0, %eax
; AVX1-NEXT:    vpextrd $1, %xmm0, %ecx
; AVX1-NEXT:    addl %eax, %ecx
; AVX1-NEXT:    vextractf128 $1, %ymm1, %xmm0
; AVX1-NEXT:    vmovd %xmm0, %eax
; AVX1-NEXT:    vpextrd $1, %xmm0, %edx
; AVX1-NEXT:    addl %eax, %edx
; AVX1-NEXT:    vmovd %ecx, %xmm0
; AVX1-NEXT:    vmovd %edx, %xmm1
; AVX1-NEXT:    vpshufd {{.*#+}} xmm1 = xmm1[0,1,0,1]
; AVX1-NEXT:    vinsertf128 $1, %xmm1, %ymm0, %ymm0
; AVX1-NEXT:    retq
;
; AVX2-LABEL: test15_undef:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vphaddd %ymm0, %ymm0, %ymm0
; AVX2-NEXT:    retq
;
; AVX512-LABEL: test15_undef:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vphaddd %ymm0, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %vecext = extractelement <8 x i32> %a, i32 0
  %vecext1 = extractelement <8 x i32> %a, i32 1
  %add = add i32 %vecext, %vecext1
  %vecinit = insertelement <8 x i32> undef, i32 %add, i32 0
  %vecext2 = extractelement <8 x i32> %b, i32 4
  %vecext3 = extractelement <8 x i32> %b, i32 5
  %add4 = add i32 %vecext2, %vecext3
  %vecinit5 = insertelement <8 x i32> %vecinit, i32 %add4, i32 6
  ret <8 x i32> %vecinit5
}

define <8 x i32> @test16_undef(<8 x i32> %a, <8 x i32> %b) {
; SSE-LABEL: test16_undef:
; SSE:       # %bb.0:
; SSE-NEXT:    phaddd %xmm0, %xmm0
; SSE-NEXT:    retq
;
; AVX1-LABEL: test16_undef:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vphaddd %xmm0, %xmm0, %xmm0
; AVX1-NEXT:    retq
;
; AVX2-LABEL: test16_undef:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vphaddd %ymm0, %ymm0, %ymm0
; AVX2-NEXT:    retq
;
; AVX512-LABEL: test16_undef:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vphaddd %ymm0, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %vecext = extractelement <8 x i32> %a, i32 0
  %vecext1 = extractelement <8 x i32> %a, i32 1
  %add = add i32 %vecext, %vecext1
  %vecinit = insertelement <8 x i32> undef, i32 %add, i32 0
  %vecext2 = extractelement <8 x i32> %a, i32 2
  %vecext3 = extractelement <8 x i32> %a, i32 3
  %add4 = add i32 %vecext2, %vecext3
  %vecinit5 = insertelement <8 x i32> %vecinit, i32 %add4, i32 1
  ret <8 x i32> %vecinit5
}

define <16 x i32> @test16_v16i32_undef(<16 x i32> %a, <16 x i32> %b) {
; SSE-LABEL: test16_v16i32_undef:
; SSE:       # %bb.0:
; SSE-NEXT:    phaddd %xmm0, %xmm0
; SSE-NEXT:    retq
;
; AVX1-LABEL: test16_v16i32_undef:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vphaddd %xmm0, %xmm0, %xmm0
; AVX1-NEXT:    retq
;
; AVX2-LABEL: test16_v16i32_undef:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vphaddd %ymm0, %ymm0, %ymm0
; AVX2-NEXT:    retq
;
; AVX512-LABEL: test16_v16i32_undef:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vphaddd %xmm0, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %vecext = extractelement <16 x i32> %a, i32 0
  %vecext1 = extractelement <16 x i32> %a, i32 1
  %add = add i32 %vecext, %vecext1
  %vecinit = insertelement <16 x i32> undef, i32 %add, i32 0
  %vecext2 = extractelement <16 x i32> %a, i32 2
  %vecext3 = extractelement <16 x i32> %a, i32 3
  %add4 = add i32 %vecext2, %vecext3
  %vecinit5 = insertelement <16 x i32> %vecinit, i32 %add4, i32 1
  ret <16 x i32> %vecinit5
}

define <8 x i32> @test17_undef(<8 x i32> %a, <8 x i32> %b) {
; SSE-LABEL: test17_undef:
; SSE:       # %bb.0:
; SSE-NEXT:    phaddd %xmm1, %xmm0
; SSE-NEXT:    retq
;
; AVX1-LABEL: test17_undef:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vextractf128 $1, %ymm0, %xmm1
; AVX1-NEXT:    vphaddd %xmm1, %xmm0, %xmm0
; AVX1-NEXT:    retq
;
; AVX2-LABEL: test17_undef:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vextracti128 $1, %ymm0, %xmm1
; AVX2-NEXT:    vphaddd %xmm1, %xmm0, %xmm0
; AVX2-NEXT:    retq
;
; AVX512-LABEL: test17_undef:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vextracti128 $1, %ymm0, %xmm1
; AVX512-NEXT:    vphaddd %xmm1, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %vecext = extractelement <8 x i32> %a, i32 0
  %vecext1 = extractelement <8 x i32> %a, i32 1
  %add1 = add i32 %vecext, %vecext1
  %vecinit1 = insertelement <8 x i32> undef, i32 %add1, i32 0
  %vecext2 = extractelement <8 x i32> %a, i32 2
  %vecext3 = extractelement <8 x i32> %a, i32 3
  %add2 = add i32 %vecext2, %vecext3
  %vecinit2 = insertelement <8 x i32> %vecinit1, i32 %add2, i32 1
  %vecext4 = extractelement <8 x i32> %a, i32 4
  %vecext5 = extractelement <8 x i32> %a, i32 5
  %add3 = add i32 %vecext4, %vecext5
  %vecinit3 = insertelement <8 x i32> %vecinit2, i32 %add3, i32 2
  %vecext6 = extractelement <8 x i32> %a, i32 6
  %vecext7 = extractelement <8 x i32> %a, i32 7
  %add4 = add i32 %vecext6, %vecext7
  %vecinit4 = insertelement <8 x i32> %vecinit3, i32 %add4, i32 3
  ret <8 x i32> %vecinit4
}

define <16 x i32> @test17_v16i32_undef(<16 x i32> %a, <16 x i32> %b) {
; SSE-LABEL: test17_v16i32_undef:
; SSE:       # %bb.0:
; SSE-NEXT:    phaddd %xmm1, %xmm0
; SSE-NEXT:    retq
;
; AVX1-LABEL: test17_v16i32_undef:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vextractf128 $1, %ymm0, %xmm1
; AVX1-NEXT:    vphaddd %xmm1, %xmm0, %xmm0
; AVX1-NEXT:    retq
;
; AVX2-LABEL: test17_v16i32_undef:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vextracti128 $1, %ymm0, %xmm1
; AVX2-NEXT:    vphaddd %xmm1, %xmm0, %xmm0
; AVX2-NEXT:    retq
;
; AVX512-LABEL: test17_v16i32_undef:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vextracti128 $1, %ymm0, %xmm1
; AVX512-NEXT:    vphaddd %xmm1, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %vecext = extractelement <16 x i32> %a, i32 0
  %vecext1 = extractelement <16 x i32> %a, i32 1
  %add1 = add i32 %vecext, %vecext1
  %vecinit1 = insertelement <16 x i32> undef, i32 %add1, i32 0
  %vecext2 = extractelement <16 x i32> %a, i32 2
  %vecext3 = extractelement <16 x i32> %a, i32 3
  %add2 = add i32 %vecext2, %vecext3
  %vecinit2 = insertelement <16 x i32> %vecinit1, i32 %add2, i32 1
  %vecext4 = extractelement <16 x i32> %a, i32 4
  %vecext5 = extractelement <16 x i32> %a, i32 5
  %add3 = add i32 %vecext4, %vecext5
  %vecinit3 = insertelement <16 x i32> %vecinit2, i32 %add3, i32 2
  %vecext6 = extractelement <16 x i32> %a, i32 6
  %vecext7 = extractelement <16 x i32> %a, i32 7
  %add4 = add i32 %vecext6, %vecext7
  %vecinit4 = insertelement <16 x i32> %vecinit3, i32 %add4, i32 3
  ret <16 x i32> %vecinit4
}

