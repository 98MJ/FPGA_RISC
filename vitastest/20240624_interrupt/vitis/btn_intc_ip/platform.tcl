# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\FPGA_RISC\vitastest\20240624_interrupt\vitis\btn_intc_ip\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\FPGA_RISC\vitastest\20240624_interrupt\vitis\btn_intc_ip\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {btn_intc_ip}\
-hw {D:\FPGA_RISC\vitastest\20240624_interrupt\btn_intc_ip.xsa}\
-fsbl-target {psu_cortexa53_0} -out {D:/FPGA_RISC/vitastest/20240624_interrupt/vitis}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {btn_intc_ip}
platform generate -quick
