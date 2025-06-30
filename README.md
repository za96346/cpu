quartus_sh --flow compile cpu

### 使用model Sim 模擬測試
```shell
# 進入 testbench/pc 資料夾
cd testbench/pc

# 建立工作資料夾（第一次執行）
vlib work

# 編譯所有檔案
vlog ../../src/interface/PC_Interface.sv ../../src/components/PC.sv PC_tb.sv

# 開始模擬
vsim PC_tb

# 如果你想看波形
# > 在 vsim CLI 中輸入：
#     add wave *
#     run -all

```
# REFERENCE

1. https://alg.manifoldapp.org/read/computer-organization/section/4e3aaa0a-6539-4d2b-a515-16e7efd99fc3