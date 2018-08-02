#!/bin/bash

# 'C:/Program Files/VCG/MeshLab/meshlab.exe' 'C:/users/Thomas/Desktop/ml_test/test1.obj'
# mesh.sh raupach richardson 003 p2
dir=$1'/*.obj'
touch 'C:/local/src/meshlab/temp.txt'

for i in $dir; do 'C:/Program Files/VCG/MeshLab/meshlab.exe' $i & \
sleep .3 & \
name=$(basename $i) && echo ${name::-04} > C:/local/src/meshlab/temp.txt && \
cat C:/local/src/meshlab/temp.txt|clip.exe && \
'C:/local/src/meshlab/meshlab.exe' && sleep .5;
 done