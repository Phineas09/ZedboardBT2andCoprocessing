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
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/project.cache/wt [current_project]
set_property parent.project_path D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/scaled_fixed2ieee.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xilly_decprint.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xilly_decprint_out.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xilly_decprint_pobkb.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_cud.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_dEe.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_eOg.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_fYi.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_g8j.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_hbi.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_ibs.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_jbC.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_kbM.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_lbW.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_mb6.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper_ncg.v
  D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper.xdc
set_property used_in_implementation false [get_files D:/ProjectsVivado/Coprocessing_BLE_Driver/VivadoHLS/coprocess/example/impl/verilog/xillybus_wrapper.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top xillybus_wrapper -part xc7z020clg484-1 -directive sdx_optimization_effort_high -mode out_of_context


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef xillybus_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file xillybus_wrapper_utilization_synth.rpt -pb xillybus_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]