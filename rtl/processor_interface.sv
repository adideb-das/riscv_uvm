interface processor_interface(input clk); 

    // PC and Instruction word
    logic [7:0] pc, pc_out;
    logic [15:0] inst_out;
    logic [15:0] inst_in;
    
    // Register file Signals
    logic [15:0] reg_data;
    logic [1:0] reg_en;
    logic [2:0] reg_add;

    // Data Memory Signals
    logic [15:0] mem_data;
    logic mem_en;
    logic [2:0] mem_add;
    
    // Additional signals for Main_Processor
    logic [2:0] jmp_val;
    logic jmp;
    logic eop;
    logic [1:0] regwr_out2, dir_val_out2;
    logic memwr_out2, ctrl_sel_out2, wrbk_sel_out2;
    logic [2:0] aD_out2, dir_s2_out2;
    logic [3:0] alu_sel_out2;
    logic [7:0] dir_s1_out2;
    logic [15:0] s1_out2, s2_out2;
    logic [1:0] reg_wr_out3, reconfig_mul, reconfig_load;
    logic mem_wr_out3, wrbk_sel_out3;
    logic [2:0] aM_out3, aD_out3;
    logic [15:0] alu_out3, dM_out3;
    logic [15:0] wD_rf;
    logic [1:0] w_en;
    logic [2:0] aD_rf;
    logic s1_c0, s1_c1, s2_c0, s2_c1;
    logic [1:0] inita;
    logic [2:0] initb;
    logic [15:0] pc_2, pc_3, inst_out_tb;
    logic [15:0] mem_data_tb;
    logic mem_en_tb;
    logic [2:0] mem_add_tb;

    clocking driver_cb @ (negedge clk);
        output inst_in;
    endclocking : driver_cb
    
    clocking monitor_cb @ (negedge clk);
        input pc;
        input inst_out;
        input reg_data;
        input reg_en;
        input reg_add;
        input mem_data;
        input mem_en;
        input mem_add;
    endclocking : monitor_cb

    modport driver_if_mp (clocking driver_cb);
    modport monitor_if_mp (clocking monitor_cb);
  
endinterface
