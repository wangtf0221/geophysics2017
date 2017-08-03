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
const int nx=320+2*bd;
const int nz=150+2*bd;
//const int nx=300+2*bd;
//const int nz=150+2*bd;

int main(int  argc,char **argv)
{
    int i,j,l,k;
    float** vp0=alloc_float_2d(nx,nz);
    float** vs0=alloc_float_2d(nx,nz);
    float** rho=alloc_float_2d(nx,nz);
    float vp,vs;
    FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
	char vx[256],vy[256];
	sprintf(vx,argv[1]);
	sprintf(vy,argv[2]);
    fp1=fopen(vx,"rb");
    //fp1=fopen("model/StrVelmodeloutput_500off_vp_stage15_it_5.bin","rb");
    for(i=0;i<nx;i++)
    {
        fread(vp0[i],sizeof(float),nz,fp1);
	}
    for(i=4;i<nx-4;i++)
    for(j=4;j<nz-4;j++)
	{
//		for(l=-1;l<2;l++)
		vs0[i][j]=+vp0[i][j-1]-2*vp0[i][j]+vp0[i][j+1];

	}
    fp2=fopen(vy,"wb");
    for(i=0;i<nx;i++)
    {
        fwrite(vs0[i],sizeof(float),nz,fp2);
    }

    fclose(fp1);
    fclose(fp2);
//  fclose(fp3);
//  fclose(fp4);
return 0;
}

