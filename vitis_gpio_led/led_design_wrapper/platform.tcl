# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\FPGA_RISC\vitis_gpio_led\led_design_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\FPGA_RISC\vitis_gpio_led\led_design_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {led_design_wrapper}\
-hw {D:\FPGA_RISC\20240619_Microblaze_gpio\led_design_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {D:/FPGA_RISC/vitis_gpio_led}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {led_design_wrapper}
platform generate -quick
platform generate
platform write
