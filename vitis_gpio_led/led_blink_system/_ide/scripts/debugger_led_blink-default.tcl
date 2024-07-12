# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\FPGA_RISC\vitis_gpio_led\led_blink_system\_ide\scripts\debugger_led_blink-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\FPGA_RISC\vitis_gpio_led\led_blink_system\_ide\scripts\debugger_led_blink-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183B31917A" && level==0 && jtag_device_ctx=="jsn-Basys3-210183B31917A-0362d093-0"}
fpga -file D:/FPGA_RISC/vitis_gpio_led/led_blink/_ide/bitstream/led_design_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw D:/FPGA_RISC/vitis_gpio_led/led_design_wrapper/export/led_design_wrapper/hw/led_design_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow D:/FPGA_RISC/vitis_gpio_led/led_blink/Debug/led_blink.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
