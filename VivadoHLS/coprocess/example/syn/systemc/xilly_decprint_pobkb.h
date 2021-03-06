// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __xilly_decprint_pobkb_H__
#define __xilly_decprint_pobkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct xilly_decprint_pobkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 28;
  static const unsigned AddressRange = 10;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(xilly_decprint_pobkb_ram) {
        ram[0] = "0b1011100110101100101000000000";
        ram[1] = "0b0101111101011110000100000000";
        ram[2] = "0b0000100110001001011010000000";
        ram[3] = "0b0000000011110100001001000000";
        ram[4] = "0b0000000000011000011010100000";
        ram[5] = "0b0000000000000010011100010000";
        ram[6] = "0b0000000000000000001111101000";
        ram[7] = "0b0000000000000000000001100100";
        ram[8] = "0b0000000000000000000000001010";
        ram[9] = "0b0000000000000000000000000001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(xilly_decprint_pobkb) {


static const unsigned DataWidth = 28;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


xilly_decprint_pobkb_ram* meminst;


SC_CTOR(xilly_decprint_pobkb) {
meminst = new xilly_decprint_pobkb_ram("xilly_decprint_pobkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~xilly_decprint_pobkb() {
    delete meminst;
}


};//endmodule
#endif
