# RUN: llvm-mc -triple=riscv32 --mattr=+xcvmac -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.machhsn t0, t1, t2, 0
# CHECK-INSTR: cv.machhsn t0, t1, t2, 0
# CHECK-ENCODING: [0xdb,0x62,0x73,0x40]

cv.machhsn t0, t1, zero, 16
# CHECK-INSTR: cv.machhsn t0, t1, zero, 16
# CHECK-ENCODING: [0xdb,0x62,0x03,0x60]

cv.machhsn t0, t1, zero, 31
# CHECK-INSTR: cv.machhsn t0, t1, zero, 31
# CHECK-ENCODING: [0xdb,0x62,0x03,0x7e]
