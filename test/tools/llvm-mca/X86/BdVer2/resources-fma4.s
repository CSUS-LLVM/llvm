# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=bdver2 -instruction-tables < %s | FileCheck %s

vfmaddpd    %xmm0, %xmm1, %xmm2, %xmm3
vfmaddpd    (%rax), %xmm1, %xmm2, %xmm3
vfmaddpd    %xmm0, (%rax), %xmm2, %xmm3

vfmaddpd    %ymm0, %ymm1, %ymm2, %ymm3
vfmaddpd    (%rax), %ymm1, %ymm2, %ymm3
vfmaddpd    %ymm0, (%rax), %ymm2, %ymm3

vfmaddps    %xmm0, %xmm1, %xmm2, %xmm3
vfmaddps    (%rax), %xmm1, %xmm2, %xmm3
vfmaddps    %xmm0, (%rax), %xmm2, %xmm3

vfmaddps    %ymm0, %ymm1, %ymm2, %ymm3
vfmaddps    (%rax), %ymm1, %ymm2, %ymm3
vfmaddps    %ymm0, (%rax), %ymm2, %ymm3

vfmaddsd    %xmm0, %xmm1, %xmm2, %xmm3
vfmaddsd    (%rax), %xmm1, %xmm2, %xmm3
vfmaddsd    %xmm0, (%rax), %xmm2, %xmm3

vfmaddss    %xmm0, %xmm1, %xmm2, %xmm3
vfmaddss    (%rax), %xmm1, %xmm2, %xmm3
vfmaddss    %xmm0, (%rax), %xmm2, %xmm3

vfmaddsubpd %xmm0, %xmm1, %xmm2, %xmm3
vfmaddsubpd (%rax), %xmm1, %xmm2, %xmm3
vfmaddsubpd %xmm0, (%rax), %xmm2, %xmm3

vfmaddsubpd %ymm0, %ymm1, %ymm2, %ymm3
vfmaddsubpd (%rax), %ymm1, %ymm2, %ymm3
vfmaddsubpd %ymm0, (%rax), %ymm2, %ymm3

vfmaddsubps %xmm0, %xmm1, %xmm2, %xmm3
vfmaddsubps (%rax), %xmm1, %xmm2, %xmm3
vfmaddsubps %xmm0, (%rax), %xmm2, %xmm3

vfmaddsubps %ymm0, %ymm1, %ymm2, %ymm3
vfmaddsubps (%rax), %ymm1, %ymm2, %ymm3
vfmaddsubps %ymm0, (%rax), %ymm2, %ymm3

vfmsubaddpd %xmm0, %xmm1, %xmm2, %xmm3
vfmsubaddpd (%rax), %xmm1, %xmm2, %xmm3
vfmsubaddpd %xmm0, (%rax), %xmm2, %xmm3

vfmsubaddpd %ymm0, %ymm1, %ymm2, %ymm3
vfmsubaddpd (%rax), %ymm1, %ymm2, %ymm3
vfmsubaddpd %ymm0, (%rax), %ymm2, %ymm3

vfmsubaddps %xmm0, %xmm1, %xmm2, %xmm3
vfmsubaddps (%rax), %xmm1, %xmm2, %xmm3
vfmsubaddps %xmm0, (%rax), %xmm2, %xmm3

vfmsubaddps %ymm0, %ymm1, %ymm2, %ymm3
vfmsubaddps (%rax), %ymm1, %ymm2, %ymm3
vfmsubaddps %ymm0, (%rax), %ymm2, %ymm3

vfmsubpd    %xmm0, %xmm1, %xmm2, %xmm3
vfmsubpd    (%rax), %xmm1, %xmm2, %xmm3
vfmsubpd    %xmm0, (%rax), %xmm2, %xmm3

vfmsubpd    %ymm0, %ymm1, %ymm2, %ymm3
vfmsubpd    (%rax), %ymm1, %ymm2, %ymm3
vfmsubpd    %ymm0, (%rax), %ymm2, %ymm3

vfmsubps    %xmm0, %xmm1, %xmm2, %xmm3
vfmsubps    (%rax), %xmm1, %xmm2, %xmm3
vfmsubps    %xmm0, (%rax), %xmm2, %xmm3

vfmsubps    %ymm0, %ymm1, %ymm2, %ymm3
vfmsubps    (%rax), %ymm1, %ymm2, %ymm3
vfmsubps    %ymm0, (%rax), %ymm2, %ymm3

vfmsubsd    %xmm0, %xmm1, %xmm2, %xmm3
vfmsubsd    (%rax), %xmm1, %xmm2, %xmm3
vfmsubsd    %xmm0, (%rax), %xmm2, %xmm3

vfmsubss    %xmm0, %xmm1, %xmm2, %xmm3
vfmsubss    (%rax), %xmm1, %xmm2, %xmm3
vfmsubss    %xmm0, (%rax), %xmm2, %xmm3

vfnmaddpd   %xmm0, %xmm1, %xmm2, %xmm3
vfnmaddpd   (%rax), %xmm1, %xmm2, %xmm3
vfnmaddpd   %xmm0, (%rax), %xmm2, %xmm3

vfnmaddpd   %ymm0, %ymm1, %ymm2, %ymm3
vfnmaddpd   (%rax), %ymm1, %ymm2, %ymm3
vfnmaddpd   %ymm0, (%rax), %ymm2, %ymm3

vfnmaddps   %xmm0, %xmm1, %xmm2, %xmm3
vfnmaddps   (%rax), %xmm1, %xmm2, %xmm3
vfnmaddps   %xmm0, (%rax), %xmm2, %xmm3

vfnmaddps   %ymm0, %ymm1, %ymm2, %ymm3
vfnmaddps   (%rax), %ymm1, %ymm2, %ymm3
vfnmaddps   %ymm0, (%rax), %ymm2, %ymm3

vfnmaddsd   %xmm0, %xmm1, %xmm2, %xmm3
vfnmaddsd   (%rax), %xmm1, %xmm2, %xmm3
vfnmaddsd   %xmm0, (%rax), %xmm2, %xmm3

vfnmaddss   %xmm0, %xmm1, %xmm2, %xmm3
vfnmaddss   (%rax), %xmm1, %xmm2, %xmm3
vfnmaddss   %xmm0, (%rax), %xmm2, %xmm3

vfnmsubpd   %xmm0, %xmm1, %xmm2, %xmm3
vfnmsubpd   (%rax), %xmm1, %xmm2, %xmm3
vfnmsubpd   %xmm0, (%rax), %xmm2, %xmm3

vfnmsubpd   %ymm0, %ymm1, %ymm2, %ymm3
vfnmsubpd   (%rax), %ymm1, %ymm2, %ymm3
vfnmsubpd   %ymm0, (%rax), %ymm2, %ymm3

vfnmsubps   %xmm0, %xmm1, %xmm2, %xmm3
vfnmsubps   (%rax), %xmm1, %xmm2, %xmm3
vfnmsubps   %xmm0, (%rax), %xmm2, %xmm3

vfnmsubps   %ymm0, %ymm1, %ymm2, %ymm3
vfnmsubps   (%rax), %ymm1, %ymm2, %ymm3
vfnmsubps   %ymm0, (%rax), %ymm2, %ymm3

vfnmsubsd   %xmm0, %xmm1, %xmm2, %xmm3
vfnmsubsd   (%rax), %xmm1, %xmm2, %xmm3
vfnmsubsd   %xmm0, (%rax), %xmm2, %xmm3

vfnmsubss   %xmm0, %xmm1, %xmm2, %xmm3
vfnmsubss   (%rax), %xmm1, %xmm2, %xmm3
vfnmsubss   %xmm0, (%rax), %xmm2, %xmm3

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      5     0.50                        vfmaddpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfmaddpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmaddpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmaddpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfmaddps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfmaddps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmaddps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmaddps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfmaddsd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddsd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddsd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  1      5     0.50                        vfmaddss	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddss	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddss	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  1      5     0.50                        vfmaddsubpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddsubpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddsubpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfmaddsubpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmaddsubpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmaddsubpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfmaddsubps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddsubps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmaddsubps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfmaddsubps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmaddsubps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmaddsubps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfmsubaddpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubaddpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubaddpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfmsubaddpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmsubaddpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmsubaddpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfmsubaddps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubaddps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubaddps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfmsubaddps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmsubaddps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmsubaddps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfmsubpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfmsubpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmsubpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmsubpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfmsubps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfmsubps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmsubps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfmsubps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfmsubsd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubsd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubsd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  1      5     0.50                        vfmsubss	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubss	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfmsubss	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  1      5     0.50                        vfnmaddpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmaddpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmaddpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfnmaddpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfnmaddpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfnmaddpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfnmaddps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmaddps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmaddps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfnmaddps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfnmaddps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfnmaddps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfnmaddsd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmaddsd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmaddsd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  1      5     0.50                        vfnmaddss	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmaddss	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmaddss	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  1      5     0.50                        vfnmsubpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmsubpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmsubpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfnmsubpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfnmsubpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfnmsubpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfnmsubps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmsubps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmsubps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  2      5     0.50                        vfnmsubps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfnmsubps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT:  2      10    1.00    *                   vfnmsubps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  1      5     0.50                        vfnmsubsd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmsubsd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmsubsd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  1      5     0.50                        vfnmsubss	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmsubss	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT:  1      10    0.50    *                   vfnmsubss	%xmm0, (%rax), %xmm2, %xmm3

# CHECK:      Resources:
# CHECK-NEXT: [0.0] - PdAGLU01
# CHECK-NEXT: [0.1] - PdAGLU01
# CHECK-NEXT: [1]   - PdBranch
# CHECK-NEXT: [2]   - PdCount
# CHECK-NEXT: [3]   - PdDiv
# CHECK-NEXT: [4]   - PdEX0
# CHECK-NEXT: [5]   - PdEX1
# CHECK-NEXT: [6]   - PdFPCVT
# CHECK-NEXT: [7.0] - PdFPFMA
# CHECK-NEXT: [7.1] - PdFPFMA
# CHECK-NEXT: [8.0] - PdFPMAL
# CHECK-NEXT: [8.1] - PdFPMAL
# CHECK-NEXT: [9]   - PdFPMMA
# CHECK-NEXT: [10]  - PdFPSTO
# CHECK-NEXT: [11]  - PdFPU0
# CHECK-NEXT: [12]  - PdFPU1
# CHECK-NEXT: [13]  - PdFPU2
# CHECK-NEXT: [14]  - PdFPU3
# CHECK-NEXT: [15]  - PdFPXBR
# CHECK-NEXT: [16]  - PdMul

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0.0]  [0.1]  [1]    [2]    [3]    [4]    [5]    [6]    [7.0]  [7.1]  [8.0]  [8.1]  [9]    [10]   [11]   [12]   [13]   [14]   [15]   [16]
# CHECK-NEXT: 44.00  44.00   -      -      -      -      -      -     48.00  48.00   -      -      -      -     24.00  24.00  24.00  24.00   -      -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0.0]  [0.1]  [1]    [2]    [3]    [4]    [5]    [6]    [7.0]  [7.1]  [8.0]  [8.1]  [9]    [10]   [11]   [12]   [13]   [14]   [15]   [16]   Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddss	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddss	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddss	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmaddsubps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubaddps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubsd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubsd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubsd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubss	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubss	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfmsubss	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddsd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddsd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddsd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddss	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddss	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmaddss	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubpd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubpd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubpd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubpd	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubpd	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubpd	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubps	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubps	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubps	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubps	%ymm0, %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubps	(%rax), %ymm1, %ymm2, %ymm3
# CHECK-NEXT: 1.00   1.00    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubps	%ymm0, (%rax), %ymm2, %ymm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubsd	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubsd	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubsd	%xmm0, (%rax), %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubss	%xmm0, %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubss	(%rax), %xmm1, %xmm2, %xmm3
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -      -      -     0.25   0.25   0.25   0.25    -      -     vfnmsubss	%xmm0, (%rax), %xmm2, %xmm3
