`include "processor_testbench_pkg.sv"

module top;
  import uvm_pkg::*;
  import processor_testbench_pkg::*;
  
  bit clk;
  
  //clock generation
  always #5 clk = ~clk;
  
  initial 
  begin
    clk = 0;
  end

  // Instantiate the interface
  processor_interface processor_if(clk);
	// Instantiate dut
Main_Processor dut(
    .clk(processor_if.clk),
    .inst_in(processor_if.inst_in),
    .pc_out(processor_if.pc_out),
    .inst_out(processor_if.inst_out),
    .jmp_val(processor_if.jmp_val),
    .jmp(processor_if.jmp),
    .eop(processor_if.eop),
    .regwr_out2(processor_if.regwr_out2),
    .dir_val_out2(processor_if.dir_val_out2),
    .memwr_out2(processor_if.memwr_out2),
    .ctrl_sel_out2(processor_if.ctrl_sel_out2),
    .wrbk_sel_out2(processor_if.wrbk_sel_out2),
    .aD_out2(processor_if.aD_out2),
    .dir_s1_out2(processor_if.dir_s1_out2),
    .dir_s2_out2(processor_if.dir_s2_out2),
    .s1_out2(processor_if.s1_out2),
    .s2_out2(processor_if.s2_out2),
    .alu_sel_out2(processor_if.alu_sel_out2),
    .pc_2(processor_if.pc_2),
    .reconfig_mul(processor_if.reconfig_mul),
    .reconfig_load(processor_if.reconfig_load),
    .reg_wr_out3(processor_if.reg_wr_out3),
    .mem_wr_out3(processor_if.mem_wr_out3),
    .wrbk_sel_out3(processor_if.wrbk_sel_out3),
    .aM_out3(processor_if.aM_out3),
    .aD_out3(processor_if.aD_out3),
    .alu_out3(processor_if.alu_out3),
    .dM_out3(processor_if.dM_out3),
    .wD_rf(processor_if.wD_rf),
    .w_en(processor_if.w_en),
    .aD_rf(processor_if.aD_rf),
    .s1_c0(processor_if.s1_c0),
    .s1_c1(processor_if.s1_c1),
    .s2_c0(processor_if.s2_c0),
    .s2_c1(processor_if.s2_c1),
    .inita(processor_if.inita),
    .initb(processor_if.initb),
    .pc_3(processor_if.pc_3),
    .inst_out_tb(processor_if.inst_out_tb),
    .mem_data_tb(processor_if.mem_data_tb),
    .mem_en_tb(processor_if.mem_en_tb),
    .mem_add_tb(processor_if.mem_add_tb)
);

  initial 
  begin
    
    // Place the interface into the UVM configuration database
    uvm_config_db#(virtual processor_interface)::set(null, "*", "processor_vif", processor_if);
    
    // Start the test
    run_test();
  end
 
endmodule
