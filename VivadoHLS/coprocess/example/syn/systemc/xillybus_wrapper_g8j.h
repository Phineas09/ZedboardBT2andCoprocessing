// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __xillybus_wrapper_g8j_H__
#define __xillybus_wrapper_g8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct xillybus_wrapper_g8j_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 30;
  static const unsigned AddressRange = 256;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(xillybus_wrapper_g8j_ram) {
        ram[0] = "0b100000000000000000000000000000";
        ram[1] = "0b011111111111111101100010000110";
        ram[2] = "0b011111111111110110001000010111";
        ram[3] = "0b011111111111101001110010110100";
        ram[4] = "0b011111111111011000100001100001";
        ram[5] = "0b011111111111000010010100011110";
        ram[6] = "0b011111111110100111001011110000";
        ram[7] = "0b011111111110000111000111011011";
        ram[8] = "0b011111111101100010000111100100";
        ram[9] = "0b011111111100111000001100010000";
        ram[10] = "0b011111111100001001010101100110";
        ram[11] = "0b011111111011010101100011101101";
        ram[12] = "0b011111111010011100110110101101";
        ram[13] = "0b011111111001011111001110101111";
        ram[14] = "0b011111111000011100101011111101";
        ram[15] = "0b011111110111010101001110100000";
        ram[16] = "0b011111110110001000110110100100";
        ram[17] = "0b011111110100110111100100010100";
        ram[18] = "0b011111110011100001010111111110";
        ram[19] = "0b011111110010000110010001101101";
        ram[20] = "0b011111110000100110010001110001";
        ram[21] = "0b011111101111000001011000011000";
        ram[22] = "0b011111101101010111100101110010";
        ram[23] = "0b011111101011101000111010001110";
        ram[24] = "0b011111101001110101010101111111";
        ram[25] = "0b011111100111111100111001010110";
        ram[26] = "0b011111100101111111100100100101";
        ram[27] = "0b011111100011111101011000000000";
        ram[28] = "0b011111100001110110010011111011";
        ram[29] = "0b011111011111101010011000101010";
        ram[30] = "0b011111011101011001100110100100";
        ram[31] = "0b011111011011000011111101111110";
        ram[32] = "0b011111011000101001011111010000";
        ram[33] = "0b011111010110001010001010110010";
        ram[34] = "0b011111010011100110000000111011";
        ram[35] = "0b011111010000111101000010000110";
        ram[36] = "0b011111001110001111001110101101";
        ram[37] = "0b011111001011011100100111001001";
        ram[38] = "0b011111001000100101001011111000";
        ram[39] = "0b011111000101101000111101010100";
        ram[40] = "0b011111000010100111111011111100";
        ram[41] = "0b011110111111100010001000001100";
        ram[42] = "0b011110111100010111100010100100";
        ram[43] = "0b011110111001001000001011100011";
        ram[44] = "0b011110110101110100000011101000";
        ram[45] = "0b011110110010011011001011010100";
        ram[46] = "0b011110101110111101100011001001";
        ram[47] = "0b011110101011011011001011101001";
        ram[48] = "0b011110100111110100000101010111";
        ram[49] = "0b011110100100001000010000110110";
        ram[50] = "0b011110100000010111101110101011";
        ram[51] = "0b011110011100100010011111011100";
        ram[52] = "0b011110011000101000100011101100";
        ram[53] = "0b011110010100101001111100000101";
        ram[54] = "0b011110010000100110101001001011";
        ram[55] = "0b011110001100011110101011101001";
        ram[56] = "0b011110001000010010000100000101";
        ram[57] = "0b011110000100000000110011001010";
        ram[58] = "0b011101111111101010111001100010";
        ram[59] = "0b011101111011010000010111111000";
        ram[60] = "0b011101110110110001001110110111";
        ram[61] = "0b011101110010001101011111001011";
        ram[62] = "0b011101101101100101001001100010";
        ram[63] = "0b011101101000111000001110101010";
        ram[64] = "0b011101100100000110101111001111";
        ram[65] = "0b011101011111010000101100000011";
        ram[66] = "0b011101011010010110000101110100";
        ram[67] = "0b011101010101010110111101010011";
        ram[68] = "0b011101010000010011010011010010";
        ram[69] = "0b011101001011001011001000100001";
        ram[70] = "0b011101000101111110011101110101";
        ram[71] = "0b011101000000101101010011111111";
        ram[72] = "0b011100111011010111101011110101";
        ram[73] = "0b011100110101111101100110001010";
        ram[74] = "0b011100110000011111000011110100";
        ram[75] = "0b011100101010111100000101101010";
        ram[76] = "0b011100100101010100101100100001";
        ram[77] = "0b011100011111101000111001010010";
        ram[78] = "0b011100011001111000101100110101";
        ram[79] = "0b011100010100000100001000000001";
        ram[80] = "0b011100001110001011001011110010";
        ram[81] = "0b011100001000001101111001000000";
        ram[82] = "0b011100000010001100010000100111";
        ram[83] = "0b011011111100000110010011100010";
        ram[84] = "0b011011110101111100000010101101";
        ram[85] = "0b011011101111101101011111000101";
        ram[86] = "0b011011101001011010101001101000";
        ram[87] = "0b011011100011000011100011010011";
        ram[88] = "0b011011011100101000001101000101";
        ram[89] = "0b011011010110001000100111111111";
        ram[90] = "0b011011001111100100110100111111";
        ram[91] = "0b011011001000111100110101000111";
        ram[92] = "0b011011000010010000101001011000";
        ram[93] = "0b011010111011100000010010110101";
        ram[94] = "0b011010110100101011110010011110";
        ram[95] = "0b011010101101110011001001011001";
        ram[96] = "0b011010100110110110011000101001";
        ram[97] = "0b011010011111110101100001010011";
        ram[98] = "0b011010011000110000100100011011";
        ram[99] = "0b011010010001100111100011001000";
        ram[100] = "0b011010001010011010011110100001";
        ram[101] = "0b011010000011001001010111101011";
        ram[102] = "0b011001111011110100001111110000";
        ram[103] = "0b011001110100011011000111110110";
        ram[104] = "0b011001101100111110000001001000";
        ram[105] = "0b011001100101011100111100101111";
        ram[106] = "0b011001011101110111111011110101";
        ram[107] = "0b011001010110001110111111100101";
        ram[108] = "0b011001001110100010001001001010";
        ram[109] = "0b011001000110110001011001110000";
        ram[110] = "0b011000111110111100110010100100";
        ram[111] = "0b011000110111000100010100110011";
        ram[112] = "0b011000101111001000000001101011";
        ram[113] = "0b011000100111000111111010011011";
        ram[114] = "0b011000011111000100000000010000";
        ram[115] = "0b011000010110111100010100011011";
        ram[116] = "0b011000001110110000111000001100";
        ram[117] = "0b011000000110100001101100110100";
        ram[118] = "0b010111111110001110110011100100";
        ram[119] = "0b010111110101111000001101101101";
        ram[120] = "0b010111101101011101111100100011";
        ram[121] = "0b010111100101000000000001011000";
        ram[122] = "0b010111011100011110011101011111";
        ram[123] = "0b010111010011111001010010001110";
        ram[124] = "0b010111001011010000100000111000";
        ram[125] = "0b010111000010100100001010110100";
        ram[126] = "0b010110111001110100010001010101";
        ram[127] = "0b010110110001000000110101110100";
        ram[128] = "0b011001001000011111101101010100";
        ram[129] = "0b011001001000011111000011111110";
        ram[130] = "0b011001001000011101000111111101";
        ram[131] = "0b011001001000011001111001010000";
        ram[132] = "0b011001001000010101010111111000";
        ram[133] = "0b011001001000001111100011110101";
        ram[134] = "0b011001001000001000011101001000";
        ram[135] = "0b011001001000000000000011110001";
        ram[136] = "0b011001000111110110010111110001";
        ram[137] = "0b011001000111101011011001001010";
        ram[138] = "0b011001000111011111000111111011";
        ram[139] = "0b011001000111010001100100000111";
        ram[140] = "0b011001000111000010101101101110";
        ram[141] = "0b011001000110110010100100110011";
        ram[142] = "0b011001000110100001001001010101";
        ram[143] = "0b011001000110001110011011011000";
        ram[144] = "0b011001000101111010011010111100";
        ram[145] = "0b011001000101100101001000000100";
        ram[146] = "0b011001000101001110100010110001";
        ram[147] = "0b011001000100110110101011000110";
        ram[148] = "0b011001000100011101100001000101";
        ram[149] = "0b011001000100000011000100110000";
        ram[150] = "0b011001000011100111010110001010";
        ram[151] = "0b011001000011001010010101010101";
        ram[152] = "0b011001000010101100000010010011";
        ram[153] = "0b011001000010001100011101001001";
        ram[154] = "0b011001000001101011100101111000";
        ram[155] = "0b011001000001001001011100100011";
        ram[156] = "0b011001000000100110000001001110";
        ram[157] = "0b011001000000000001010011111101";
        ram[158] = "0b011000111111011011010100110001";
        ram[159] = "0b011000111110110100000011110000";
        ram[160] = "0b011000111110001011100000111100";
        ram[161] = "0b011000111101100001101100011010";
        ram[162] = "0b011000111100110110100110001101";
        ram[163] = "0b011000111100001010001110011001";
        ram[164] = "0b011000111011011100100101000010";
        ram[165] = "0b011000111010101101101010001101";
        ram[166] = "0b011000111001111101011101111110";
        ram[167] = "0b011000111001001100000000011001";
        ram[168] = "0b011000111000011001010001100011";
        ram[169] = "0b011000110111100101010001100000";
        ram[170] = "0b011000110110110000000000010110";
        ram[171] = "0b011000110101111001011110001001";
        ram[172] = "0b011000110101000001101010111110";
        ram[173] = "0b011000110100001000100110111011";
        ram[174] = "0b011000110011001110010010000101";
        ram[175] = "0b011000110010010010101100100000";
        ram[176] = "0b011000110001010101110110010100";
        ram[177] = "0b011000110000010111101111100100";
        ram[178] = "0b011000101111011000011000011000";
        ram[179] = "0b011000101110010111110000110101";
        ram[180] = "0b011000101101010101111001000000";
        ram[181] = "0b011000101100010010110001000000";
        ram[182] = "0b011000101011001110011000111100";
        ram[183] = "0b011000101010001000110000111001";
        ram[184] = "0b011000101001000001111000111101";
        ram[185] = "0b011000100111111001110001010000";
        ram[186] = "0b011000100110110000011001111001";
        ram[187] = "0b011000100101100101110010111101";
        ram[188] = "0b011000100100011001111100100011";
        ram[189] = "0b011000100011001100110110110100";
        ram[190] = "0b011000100001111110100001110101";
        ram[191] = "0b011000100000101110111101101110";
        ram[192] = "0b011000011111011110001010100111";
        ram[193] = "0b011000011110001100001000100110";
        ram[194] = "0b011000011100111000110111110100";
        ram[195] = "0b011000011011100100011000011000";
        ram[196] = "0b011000011010001110101010011010";
        ram[197] = "0b011000011000110111101110000010";
        ram[198] = "0b011000010111011111100011010111";
        ram[199] = "0b011000010110000110001010100011";
        ram[200] = "0b011000010100101011100011101100";
        ram[201] = "0b011000010011001111101110111101";
        ram[202] = "0b011000010001110010101100011100";
        ram[203] = "0b011000010000010100011100010010";
        ram[204] = "0b011000001110110100111110101001";
        ram[205] = "0b011000001101010100010011101010";
        ram[206] = "0b011000001011110010011011011100";
        ram[207] = "0b011000001010001111010110001001";
        ram[208] = "0b011000001000101011000011111010";
        ram[209] = "0b011000000111000101100100111000";
        ram[210] = "0b011000000101011110111001001101";
        ram[211] = "0b011000000011110111000001000011";
        ram[212] = "0b011000000010001101111100100010";
        ram[213] = "0b011000000000100011101011110100";
        ram[214] = "0b010111111110111000001111000011";
        ram[215] = "0b010111111101001011100110011010";
        ram[216] = "0b010111111011011101110010000010";
        ram[217] = "0b010111111001101110110010000101";
        ram[218] = "0b010111110111111110100110101101";
        ram[219] = "0b010111110110001101010000000101";
        ram[220] = "0b010111110100011010101110010110";
        ram[221] = "0b010111110010100111000001101101";
        ram[222] = "0b010111110000110010001010010011";
        ram[223] = "0b010111101110111100001000010011";
        ram[224] = "0b010111101101000100111011111000";
        ram[225] = "0b010111101011001100100101001100";
        ram[226] = "0b010111101001010011000100011100";
        ram[227] = "0b010111100111011000011001110001";
        ram[228] = "0b010111100101011100100101011000";
        ram[229] = "0b010111100011011111100111011100";
        ram[230] = "0b010111100001100001100000001000";
        ram[231] = "0b010111011111100010001111100111";
        ram[232] = "0b010111011101100001110110000110";
        ram[233] = "0b010111011011100000010011110000";
        ram[234] = "0b010111011001011101101000110010";
        ram[235] = "0b010111010111011001110101010110";
        ram[236] = "0b010111010101010100111001101010";
        ram[237] = "0b010111010011001110110101111001";
        ram[238] = "0b010111010001000111101010010000";
        ram[239] = "0b010111001110111111010110111010";
        ram[240] = "0b010111001100110101111100000110";
        ram[241] = "0b010111001010101011011001111110";
        ram[242] = "0b010111001000011111110000110001";
        ram[243] = "0b010111000110010011000000101010";
        ram[244] = "0b010111000100000101001001110111";
        ram[245] = "0b010111000001110110001100100101";
        ram[246] = "0b010110111111100110001001000000";
        ram[247] = "0b010110111101010100111111010110";
        ram[248] = "0b010110111011000010101111110100";
        ram[249] = "0b010110111000101111011010101000";
        ram[250] = "0b010110110110011010111111111110";
        ram[251] = "0b010110110100000101100000000110";
        ram[252] = "0b010110110001101110111011001100";
        ram[253] = "0b010110101111010111010001011101";
        ram[254] = "0b010110101100111110100011001001";
        ram[255] = "0b010110101010100100110000011101";


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


SC_MODULE(xillybus_wrapper_g8j) {


static const unsigned DataWidth = 30;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


xillybus_wrapper_g8j_ram* meminst;


SC_CTOR(xillybus_wrapper_g8j) {
meminst = new xillybus_wrapper_g8j_ram("xillybus_wrapper_g8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~xillybus_wrapper_g8j() {
    delete meminst;
}


};//endmodule
#endif
