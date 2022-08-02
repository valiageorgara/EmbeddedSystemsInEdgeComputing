#include <vector>
#include <iostream>

#define KERNEL_DIM 3
//#define KERNEL_DIM 5
//#define KERNEL_DIM 7

#define INPUT_IMG_DIM 128
#define OUTPUT_IMG_DIM (INPUT_IMG_DIM-KERNEL_DIM+1)

// Convolution function dealing with dynamically allocated 2D arrays.
void convolute(int output[OUTPUT_IMG_DIM][OUTPUT_IMG_DIM], int input[INPUT_IMG_DIM][INPUT_IMG_DIM], int kernel[KERNEL_DIM][KERNEL_DIM]);

