#include "tool.h"
#include <iostream>
#include <math.h>
#include <fstream>
#include <string>
#include <sstream>
#include <iomanip>
#include <stdio.h>
#include <stdlib.h>
#include <cjbsegy.h>
using namespace std;

const int bd=0;
const int nx=1+2*bd;
const int nz=2000+2*bd;

int main(int  argc,char **argv)
{
    int i,j,k;
    float** f=alloc_float_2d(nx,nz);
    float** g=alloc_float_2d(nx,nz);
    float** u2=alloc_float_2d(nx,nz);
    float vp,vs,rho1;
    float t,sx,sy,gx,gy;
    char vx[256],vy[256];
    FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
    cjbsegy *tr=(cjbsegy*)calloc(1,sizeof(cjbsegy));
        sprintf(vx,"Vertical_Component_forKernel");
//      sprintf(vx,"model/newinit3.vs.backup");
//      sprintf(vx,"model/newinit3.vp");
    fp1=fopen(vx,"rb");
    for(i=0;i<nx;i++)
        fread(f[i],sizeof(float),nz,fp1);
    fclose(fp1);
    for(i=0;i<nx;i++)
    for(j=0;j<nz;j++){
        if(j>1156)
        f[i][j]=0;
//      if(f[i][j]>1201&&j<15)
//      if(f[i][j]<1148&&j<15)
//      f[i][j]=1148;
    }
    sprintf(vx,"PP");
    fp2=fopen(vx,"wb");
    for(i=0;i<nx;i++)
        fwrite(f[i],sizeof(float),nz,fp2);
    fclose(fp2);

return 0;
}

