rule callpeak:
    input: 
        treatment="results/bams_sorted/{sample}_{genome}.sorted.bam"
    output:
        xls="results/macs2/{sample}_{genome}_peaks.xls",
        narrowPeak="results/macs2/{sample}_{genome}_peaks.narrowPeak"
    params:
        "-f BAM -g hs"
    wrapper:
        "0.74.0/bio/macs2/callpeak"