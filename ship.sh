#!/bin/bash
#$ -cwd
#$ -j y
#$ -m bea
#$ -M k.ai@qmul.ac.uk
#$ -pe smp 4
#$ -l h_rt=24:0:0
#$ -l h_vmem=4G

module load ansys
fluent 3ddp $FLUENT_OPTS -g -t4 -rsh -i ship.jou

