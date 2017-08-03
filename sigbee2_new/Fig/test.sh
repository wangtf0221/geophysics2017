##############  Plot Vp model ############
data=True.vp
out=Truevp
output=Truevp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=Init.vp
out=Initvp
output=Initvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=RTI.vp
out=RTIvp
output=RTIvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=EFWI_RTI.vp
out=EFWI_RTIvp
output=EFWI_RTIvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=Cut3Hz.vp
out=Cut3Hzvp
output=Cut3Hzvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=Cut5Hz.vp
out=Cut5Hzvp
output=Cut5Hzvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=Cut7Hz.vp
out=Cut7Hzvp
output=Cut7Hzvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

##############  Plot Vs model ############
data=True.vs
out=Truevs
output=Truevs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=Init.vs
out=Initvs
output=Initvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=RTI.vs
out=RTIvs
output=RTIvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=EFWI_RTI.vs
out=EFWI_RTIvs
output=EFWI_RTIvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps
data=True.vs
out=Truevs
output=Truevs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=Cut3Hz.vs
out=Cut3Hzvs
output=Cut3Hzvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=Cut5Hz.vs
out=Cut5Hzvs
output=Cut5Hzvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=Cut7Hz.vs
out=Cut7Hzvs
output=Cut7Hzvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

