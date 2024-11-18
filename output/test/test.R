
# 
# The TCGA data is usually from array CGH, which is a microarray assay.
# Each probe registers an intensity, which relative to a baseline implies the copy ratio estimate
# for that probe -- usually represented in log2 scale, so 0.0 indicates neutral or normal copy number. 
# Segmentation groups together adjacent probes likely to have the same copy number in the sample's genome.
# is output format (see SEG), Num_Probes is the number of probes assigned to a segment,
# and Segment_Mean is the arithmetic mean of those probes' log2 copy ratio values.