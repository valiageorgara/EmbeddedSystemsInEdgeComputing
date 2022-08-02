#include "functions.hpp"

// System includes
#include <iostream>
#include <string>
#include <sstream>
#include <fstream>
#include <algorithm>


// Regular convolution function.
void convolute(int output[OUTPUT_IMG_DIM][OUTPUT_IMG_DIM], int input[INPUT_IMG_DIM][INPUT_IMG_DIM], int kernel[KERNEL_DIM][KERNEL_DIM])
{
    int convolute; // This holds the convolution results for an index.
    // Fill output matrix: rows and columns are i and j respectively
	Row: for (int i = 0; i < OUTPUT_IMG_DIM; i++)
	{
		Column:for (int j = 0; j < OUTPUT_IMG_DIM; j++)
		{
			convolute = 0;
			// Kernel rows and columns are k and l respectively
			Product_k: for (int k = 0; k < KERNEL_DIM; k++)
			{
				Product_l: for (int l = 0; l < KERNEL_DIM; l++)
				{
					// Convolute here.
					convolute += kernel[k][l] * input[i+k][j+l];
				}
			}
			output[i][j] = convolute; // Add result to output matrix.
		}
	}
}
