#!/bin/bash

#https://github.com/aidenlab/juicer/wiki/HiCCUPS

java -jar "/home/wanghy/juicer tools/juicer_tools_1.22.01.jar" \
hiccups --cpu --threads 20 --ignore-sparsity \
"/home/wangher/data/hic/GSE145873_Pol1_untreated_downsampled_75mi_allValidPairs.hic" \
"/home/wanghy/enhancer&promoter/data/hic/hiccups_results2/"

