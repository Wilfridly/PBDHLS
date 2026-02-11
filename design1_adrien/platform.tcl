# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\MASTER_SESI\M2\PBDHLS\design1_adrien\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\MASTER_SESI\M2\PBDHLS\design1_adrien\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design1_adrien}\
-hw {D:\MASTER_SESI\M2\PBDTemp\design1_adrien.xsa}\
-fsbl-target {psu_cortexa53_0} -out {D:/MASTER_SESI/M2/PBDHLS}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design1_adrien}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
platform active {design1_adrien}
platform config -updatehw {D:/MASTER_SESI/M2/PBDTemp/xsafromAdrien/design_1_wrapper.xsa}
platform generate -domains 
platform clean
platform config -updatehw {D:/MASTER_SESI/M2/PBDTemp/xsafromAdrien/design_1_wrapper.xsa}
platform generate
