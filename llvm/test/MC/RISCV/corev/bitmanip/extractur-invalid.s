# RUN: not llvm-mc -triple=riscv32 --mattr=+xcvbitmanip %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ERROR

cv.extractur t0
# CHECK-ERROR: too few operands for instruction

cv.extractur t0, 0
# CHECK-ERROR: invalid operand for instruction

cv.extractur t0, t1, 0
# CHECK-ERROR: invalid operand for instruction

cv.extractur t0, t1
# CHECK-ERROR: too few operands for instruction

