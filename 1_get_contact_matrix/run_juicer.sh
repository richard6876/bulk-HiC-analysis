#!/bin/bash

declare -a sample_names=("LQL220417-7" "LQL220417-17" "LQL220417-8" "LQL220417-18")


run_juicer() {
    local sample_name=$1
    local output_file="state_${sample_name}.txt"

    /home/wanghy/SARS-CoV-2/Hi-C/Huh7/juicer/scripts/juicer.sh \
        -z /home/wanghy/SARS-CoV-2/Hi-C/Huh7/juicer/reference/T2T-CoV2.fa \
        -p /home/wanghy/SARS-CoV-2/Hi-C/Huh7/juicer/reference/T2T-CoV2.GenomeSize.txt \
        -y /home/wanghy/SARS-CoV-2/Hi-C/Huh7/juicer/restriction_sites/T2T-CoV2_DpnII.txt \
        -d /home/wanghy/SARS-CoV-2/Hi-C/Huh7/juicer/work_JiaCe/${sample_name}/ \
        -D /home/wanghy/SARS-CoV-2/Hi-C/Huh7/juicer/ \
        -t 30 > "$output_file"
}


for sample in "${sample_names[@]}"; do
    run_juicer "$sample"
done