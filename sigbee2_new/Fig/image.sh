g++ laplacian.cpp -o Laplacian.filter
##############  Plot Vp model ############
bclip=65.4967 wclip=-58.0462
data=imageTRUE.vp
out=imageTRUEvp
output=imageTRUEvp.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
epspdf ${out}.eps

./Laplacian.filter imageTRUE.vs imageTRUE_filtered.vs
bclip=57.2188 wclip=-57.9264
data=imageTRUE_filtered.vs
out=imageTRUEvs
output=imageTRUEvs.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
epspdf ${out}.eps

bclip=10 wclip=-10.
data=imageInitial.vp
out=imageInitialvp
output=imageInitialvp.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
epspdf ${out}.eps

bclip=4.96662 wclip=-4.7511
data=imageInitial.vs
out=imageInitialvs
output=imageInitialvs.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}';datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
epspdf ${out}.eps

bclip=65.4967 wclip=-58.0462
data=imageRTI.vp
out=imageRTIvp
output=imageRTIvp.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
epspdf ${out}.eps

./Laplacian.filter imageRTI.vs imageRTI_filtered.vs
bclip=57.2188 wclip=-57.9264
data=imageRTI_filtered.vs
out=imageRTIvs
output=imageRTIvs.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
epspdf ${out}.eps
