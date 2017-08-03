#include "tool.h"
#include <iostream>
#include <math.h>
#include <fstream>
#include <string>
#include <sstream>
#include <iomanip>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

const int bd=0;
const int nx=420+2*bd;
const int nz=160+2*bd;

int main(int  argc,char **argv)
{
    int i,j,k;
    float** vp0=alloc_float_2d(nx,nz);
    float** vs0=alloc_float_2d(nx,nz);
    float** rho=alloc_float_2d(nx,nz);
    float vp,vs;
    FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
    fp1=fopen("goodinit.vs","rb");
    fp4=fopen("Cut.vs","wb");
  //  fp3=fopen("init.rho","wb");
    for(i=0;i<nx;i++)
    {
        fread(vs0[i],sizeof(float),nz,fp1);
	}
    for(i=0;i<nx;i++)
    for(j=0;j<nz;j++){
		if(j<15&&vs0[i][j]>1200){
		vs0[i][j]=1080;
		}
	}
    for(i=0;i<nx;i++)
    {
        fwrite(vs0[i],sizeof(float),nz,fp4);
    }
    free_2d(vp0,nx);
    free_2d(vs0,nx);

    fclose(fp1);
	fclose(fp4);
return 0;
}

