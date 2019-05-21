#!/usr/bin/env bash


#####################################################################
#
#
#
# A simple screensaver that decreases brightness and loads cmatrix
#
#
#
#####################################################################

# For the moment, we will do this blindly using `light`
min_lum=20
lum_raw=$(light)
lum=${lum_raw%.*}  # Eww

while [[ $lum -gt $min_lum ]]
do
	lum=$(($lum-1))
	light -S $lum
	sleep 0.01 # flat time interval. variable might be better
done

cmatrix -su 15  
light -S $lum_raw

