# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xczu9eg-ffvb1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.cache/wt [current_project]
set_property parent.project_path /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu102:part0:3.2 [current_project]
set_property ip_output_repo /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/mb_elf/mb_app.elf
set_property SCOPED_TO_REF sys_bd [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/mb_elf/mb_app.elf]
set_property SCOPED_TO_CELLS microblaze_0 [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/mb_elf/mb_app.elf]
read_verilog -library xil_defaultlib /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/hdl/sys_bd_wrapper.v
add_files /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/sys_bd.bd
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_zynq_ultra_ps_e_0_0/sys_bd_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_zynq_ultra_ps_e_0_0/sys_bd_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_cdma_0_0/sys_bd_axi_cdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_cdma_0_0/sys_bd_axi_cdma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_bram_ctrl_0_bram_0/sys_bd_axi_bram_ctrl_0_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_microblaze_0_0/sys_bd_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_microblaze_0_0/sys_bd_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_dlmb_v10_1/sys_bd_dlmb_v10_1.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_ilmb_v10_1/sys_bd_ilmb_v10_1.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_lmb_bram_1/sys_bd_lmb_bram_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_mdm_1_1/sys_bd_mdm_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_mdm_1_1/sys_bd_mdm_1_1_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_rst_ps8_0_99M_1/sys_bd_rst_ps8_0_99M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_rst_ps8_0_99M_1/sys_bd_rst_ps8_0_99M_1.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_microblaze_1_0/sys_bd_microblaze_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_microblaze_1_0/sys_bd_microblaze_1_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_dlmb_v10_2/sys_bd_dlmb_v10_2.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_ilmb_v10_2/sys_bd_ilmb_v10_2.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_lmb_bram_2/sys_bd_lmb_bram_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_1/bd_389c_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_1/bd_389c_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_2/bd_389c_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_3/bd_389c_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_4/bd_389c_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_5/bd_389c_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_6/bd_389c_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_10/bd_389c_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_11/bd_389c_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_12/bd_389c_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_13/bd_389c_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_14/bd_389c_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_15/bd_389c_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_16/bd_389c_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_17/bd_389c_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_18/bd_389c_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_19/bd_389c_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_20/bd_389c_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_21/bd_389c_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_23/bd_389c_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_24/bd_389c_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_25/bd_389c_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_26/bd_389c_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_27/bd_389c_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_axi_smc_1/bd_0/ip/ip_28/bd_389c_m01bn_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_ds_0/sys_bd_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_ds_0/sys_bd_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_ds_0/sys_bd_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_pc_0/sys_bd_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_pc_1/sys_bd_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_pc_2/sys_bd_auto_pc_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_us_0/sys_bd_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_us_0/sys_bd_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/ip/sys_bd_auto_us_0/sys_bd_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/alvin/xilinx/mpsoc/customers/jinyou/bspbram/bramback/zcu102_cdma.back/zcu12_cdma.srcs/sources_1/bd/sys_bd/sys_bd_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top sys_bd_wrapper -part xczu9eg-ffvb1156-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef sys_bd_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file sys_bd_wrapper_utilization_synth.rpt -pb sys_bd_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
