# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\FPGA_RISC\vitastest\20240624_interrupt\vitis\btnIntc_system\_ide\scripts\debugger_btnintc-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\FPGA_RISC\vitastest\20240624_interrupt\vitis\btnIntc_system\_ide\scripts\debugger_btnintc-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183B31917A" && level==0 && jtag_device_ctx=="jsn-Basys3-210183B31917A-0362d093-0"}
fpga -file D:/FPGA_RISC/vitastest/20240624_interrupt/vitis/btnIntc/_ide/bitstream/finalfinalintc.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw D:/FPGA_RISC/vitastest/20240624_interrupt/vitis/finalfinalintc/export/finalfinalintc/hw/finalfinalintc.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow D:/FPGA_RISC/vitastest/20240624_interrupt/vitis/btnIntc/Debug/btnIntc.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
