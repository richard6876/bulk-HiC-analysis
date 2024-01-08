#!/bin/bash

# Define the path and file name
input_dir="/home/baix/SARS-CoV-2/Hi-C/Huh7/juicer/work_JiaCe"
samples=(
  "LQL220417-7"
  "LQL220417-17"
  "LQL220417-8"
  "LQL220417-18"
)

# Define function
run_fastp() {
  local sample=$1
  local input_dir=$2
  local r1_input="${input_dir}/${sample}/${sample}_R1.fq.gz"
  local r2_input="${input_dir}/${sample}/${sample}_R2.fq.gz"
  local r1_output="${sample}_R1.fastq.gz"
  local r2_output="${sample}_R2.fastq.gz"
  
  cd "${input_dir}/${sample}"
  fastp -i "$r1_input" -o "$r1_output" -I "$r2_input" -O "$r2_output" --thread=10 --compression=5
}

# Run the fastp command
for sample in "${samples[@]}"; do
  run_fastp "$sample" "$input_dir"
done