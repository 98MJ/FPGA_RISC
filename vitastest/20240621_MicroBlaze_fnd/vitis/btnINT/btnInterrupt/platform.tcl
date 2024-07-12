# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\FPGA_RISC\vitastest\20240621_MicroBlaze_fnd\vitis\btnINT\btnInterrupt\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\FPGA_RISC\vitastest\20240621_MicroBlaze_fnd\vitis\btnINT\btnInterrupt\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {btnInterrupt}\
-hw {D:\FPGA_RISC\vitastest\20240624_interrupt\btnInterrupt.xsa}\
-fsbl-target {psu_cortexa53_0} -out {D:/FPGA_RISC/vitastest/20240621_MicroBlaze_fnd/vitis/btnINT}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {btnInterrupt}
platform generate -quick
