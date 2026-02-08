/*
#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xil_types.h"
*/

#include <math.h>
#include <string.h>

#define IMGWIDTH 29
#define IMGHEIGHT 29
#define tour 1


#define SIGMOID(x) (1.7159*tanh(0.66666667*x))
#define DSIGMOID(S) (0.66666667/1.7159*(1.7159+(S))*(1.7159-(S)))

void calculateLayer1(float* input, float* Layer1_Neurons_CPU);
void calculateLayer2(float* Layer1_Neurons_CPU, float* Layer2_Neurons_CPU);
void calculateLayer3(float* Layer2_Neurons_CPU, float* Layer3_Neurons_CPU);
void calculateLayer4(float* Layer3_Neurons_CPU, float* Layer4_Neurons_CPU);
void calculateLayer34(float Layer2_Neurons_CPU[], float* Layer4_Neurons_CPU );


void calculateLayer5(float* Layer4_Neurons_CPU, double* Layer5_Neurons_CPU);




void calculateLayer1(float* input, float* Layer1_Neurons_CPU){
	memcpy(Layer1_Neurons_CPU, input, IMGWIDTH*IMGHEIGHT*sizeof(float));
}

void calculateLayer2(float* Layer1_Neurons_CPU, float* Layer2_Neurons_CPU){
	float somme;
	int i,j,k,m,n;
	for(i=0;i<6;i++)
		for(j=0;j<13;j++)
			for(k=0;k<13;k++){
				somme = Layer1_Weights_CPU[26*i];
				for(m=0;m<5;m++)
					for(n=0;n<5;n++)
						somme += Layer1_Weights_CPU[26*i+5*m+n+1] * Layer1_Neurons_CPU[29*(m+2*j)+n+2*k];
				Layer2_Neurons_CPU[13*13*i+13*j+k] = (float) SIGMOID(somme);
			}
}

void calculateLayer3(float* Layer2_Neurons_CPU, float* Layer3_Neurons_CPU){
	float somme_tmp[5];
//#pragma HLS pipeline II=2
	float somme;
	int i,j,k,m,n;
	for( i=0;i<50;i++)
		for(j=0;j<5;j++)
			for(k=0;k<5;k++){
				somme = Layer2_Weights_CPU[26*6*i];

				for( m=0;m<5;m++) {
//#pragma HLS unroll
					for( n=0;n<5;n++){
//#pragma HLS unroll
						somme_tmp[n] = Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+n)]
						       + Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+n)]
						       + Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+n)]
						       + Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+n)]
						       + Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+n)]
						       + Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+n)];

					}
				somme += somme_tmp[0] + somme_tmp[1] + somme_tmp[2] + somme_tmp[3] + somme_tmp[4];
				}
				Layer3_Neurons_CPU[5*5*i+5*j+k] = (float) SIGMOID(somme);
			}
}

void calculateLayer4(float* Layer3_Neurons_CPU, float* Layer4_Neurons_CPU){
	float somme;
	float somme_tmp[5];
	int i, j, k, m;
	for( i=0;i<100;i++){
		#pragma HLS pipeline II=1
		somme = Layer3_Weights_CPU[i*(1+50*25)];
		for( j=0;j<50;j++)
			for( k=0;k<5;k++) {
				for ( m=0;m<5;m++){
//#pragma HLS unroll
					somme_tmp[m] = Layer3_Weights_CPU[i*(1+50*25)+1 + m + k*5 + j*25] * Layer3_Neurons_CPU[m+5*k+25*j];
				}
				somme = somme_tmp[0] + somme_tmp[1] + somme_tmp[2] + somme_tmp[3] + somme_tmp[4];
			}
		Layer4_Neurons_CPU[i] = (float) SIGMOID(somme);
	}

}

void calculateLayer5(float* Layer4_Neurons_CPU, double* Layer5_Neurons_CPU){
	float somme;
	int i, j;
	for( i=0;i<10;i++){
		somme = Layer4_Weights_CPU[101*i];
		for( j=0;j<100;j++)
			somme += Layer4_Weights_CPU[1+101*i+j] * Layer4_Neurons_CPU[j];
		Layer5_Neurons_CPU[i] = SIGMOID(somme);
	}
}

void calculateLayer34(float Layer2_Neurons_CPU[], float* Layer4_Neurons_CPU) {
    static float Layer3_Neurons_CPU[50*5*5];
	/* #pragma HLS array_partition complete variable=Layer3_Neurons_CPU
	#pragma HLS array_partition complete variable=Layer2_Neurons_CPU
	#pragma HLS array_partition complete variable=Layer2_Weights_CPU */

    // Pragmas HLS pour définir les interfaces AXI
#pragma HLS inline
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    #pragma HLS INTERFACE s_axilite port=Layer2_Neurons_CPU bundle=control
	#pragma HLS INTERFACE s_axilite port=Layer4_Neurons_CPU bundle=control

    #pragma HLS INTERFACE m_axi depth=1014 port=Layer2_Neurons_CPU offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi depth=100 port=Layer4_Neurons_CPU offset=slave bundle=gmem1

    #pragma HLS INTERFACE ap_ctrl_hs port=return

#pragma HLS ARRAY_PARTITION variable=Layer2_Neurons_CPU block dim=1 factor=507
#pragma HLS ARRAY_PARTITION variable=Layer2_Weights_CPU block dim=1 factor=507
#pragma HLS ARRAY_PARTITION variable=Layer3_Neurons_CPU block dim=1 factor=625

/* #pragma HLS interface m_axi port=Layer2_Neurons_CPU bundle=l2_n_mem offset=slave depth=1024
#pragma HLS interface m_axi port=Layer2_Weights_CPU bundle=l2_w_mem offset=slave depth=7800
#pragma HLS interface m_axi port=Layer3_Neurons_CPU bundle=l3_n_mem offset=slave depth=1250

#pragma HLS interface s_axilite port=Layer2_Neurons_CPU bundle=control_n2
#pragma HLS interface s_axilite port=Layer2_Neurons_CPU bundle=control_w2
#pragma HLS interface s_axilite port=Layer2_Neurons_CPU bundle=control_n3 */

    calculateLayer3(Layer2_Neurons_CPU, Layer3_Neurons_CPU);
    calculateLayer4(Layer3_Neurons_CPU, Layer4_Neurons_CPU);
}
