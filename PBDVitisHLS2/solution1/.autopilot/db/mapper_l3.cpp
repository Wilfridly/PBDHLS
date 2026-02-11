#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void l3(int*, int, int);
extern "C" void apatb_l3_hw(volatile void * __xlx_apatb_param_Layer2_Neurons_CPU, volatile void * __xlx_apatb_param_Layer3_Neurons_CPU) {
  // Collect __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__tmp_vec
  vector<sc_bv<32> >__xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__tmp_vec.push_back(((int*)__xlx_apatb_param_Layer2_Neurons_CPU)[j]);
  }
  int __xlx_size_param_Layer2_Neurons_CPU = 1;
  int __xlx_offset_param_Layer2_Neurons_CPU = 0;
  int __xlx_offset_byte_param_Layer2_Neurons_CPU = 0*4;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__tmp_vec.push_back(((int*)__xlx_apatb_param_Layer3_Neurons_CPU)[j]);
  }
  int __xlx_size_param_Layer3_Neurons_CPU = 1;
  int __xlx_offset_param_Layer3_Neurons_CPU = 1;
  int __xlx_offset_byte_param_Layer3_Neurons_CPU = 1*4;
  int* __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__input_buffer= new int[__xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__tmp_vec.size()];
  for (int i = 0; i < __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__tmp_vec.size(); ++i) {
    __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__input_buffer[i] = __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  l3(__xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__input_buffer, __xlx_offset_byte_param_Layer2_Neurons_CPU, __xlx_offset_byte_param_Layer3_Neurons_CPU);
// print __xlx_apatb_param_Layer2_Neurons_CPU
  sc_bv<32>*__xlx_Layer2_Neurons_CPU_output_buffer = new sc_bv<32>[__xlx_size_param_Layer2_Neurons_CPU];
  for (int i = 0; i < __xlx_size_param_Layer2_Neurons_CPU; ++i) {
    __xlx_Layer2_Neurons_CPU_output_buffer[i] = __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__input_buffer[i+__xlx_offset_param_Layer2_Neurons_CPU];
  }
  for (int i = 0; i < __xlx_size_param_Layer2_Neurons_CPU; ++i) {
    ((int*)__xlx_apatb_param_Layer2_Neurons_CPU)[i] = __xlx_Layer2_Neurons_CPU_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_Layer3_Neurons_CPU
  sc_bv<32>*__xlx_Layer3_Neurons_CPU_output_buffer = new sc_bv<32>[__xlx_size_param_Layer3_Neurons_CPU];
  for (int i = 0; i < __xlx_size_param_Layer3_Neurons_CPU; ++i) {
    __xlx_Layer3_Neurons_CPU_output_buffer[i] = __xlx_Layer2_Neurons_CPU_Layer3_Neurons_CPU__input_buffer[i+__xlx_offset_param_Layer3_Neurons_CPU];
  }
  for (int i = 0; i < __xlx_size_param_Layer3_Neurons_CPU; ++i) {
    ((int*)__xlx_apatb_param_Layer3_Neurons_CPU)[i] = __xlx_Layer3_Neurons_CPU_output_buffer[i].to_uint64();
  }
}
