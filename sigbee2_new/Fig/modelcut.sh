g++ init.cpp -o modifyvs.e
./modifyvs.e
smooth2 < Cut.vs n1=160 n2=420 r1=10 r2=10 win=0,15,0,420> Cutsmooth.vs

g++ cutboundary.cpp 
./a.out true.vp True.vp
./a.out true.vs True.vs
./a.out init.vp Init.vp
./a.out init.vs Init.vs
./a.out goodinit.vp RTI.vp
./a.out Cutsmooth.vs RTI.vs
./a.out 320_160_vp_stage4_it_30.bin EFWI_RTI.vp
./a.out 320_160_vs_stage4_it_30.bin EFWI_RTI.vs
#./a.out goodinit_vp_stage4_it_40.bin EFWI_RTI.vp
#./a.out goodinit_vs_stage4_it_40.bin EFWI_RTI.vs
./a.out RTI_vp_stage1_it_1.bin imageRTI.vp
./a.out RTI_vs_stage1_it_1.bin imageRTI.vs
./a.out imageTRUE_vp_stage1_it_1.bin imageTRUE.vp
./a.out imageTRUE_vs_stage1_it_1.bin imageTRUE.vs
./a.out imageInitial_vp_stage1_it_1.bin imageInitial.vp
./a.out imageInitial_vs_stage1_it_1.bin imageInitial.vs
./a.out Cut7Hz_vp_stage3_it_40.bin Cut7Hz.vp
./a.out Cut7Hz_vs_stage3_it_40.bin Cut7Hz.vs
./a.out Cut5Hz_vp_stage4_it_40.bin Cut5Hz.vp
./a.out Cut5Hz_vs_stage4_it_40.bin Cut5Hz.vs
./a.out Cut3Hz_vp_stage4_it_40.bin Cut3Hz.vp
./a.out Cut3Hz_vs_stage4_it_40.bin Cut3Hz.vs
