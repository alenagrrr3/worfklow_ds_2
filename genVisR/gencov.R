
# gencov


# Before we get started we need to do some preliminary data preparation to use genCov(). 
# https://genviz.org/module-03-genvisr/0003/04/01/gencov_GenVisR/
# 
#   First off genCov() expects coverage data to be in the form of a named list
# of data frames with list names corresonding to sample id’s and column names “chromosome”, 
# “end”, and “cov”    
#   

# the data for function gen con is an example data, and comes from  http://genomedata.org
  

# GC content

# exons have higher GC content than introns

#  https://www.researchgate.net/figure/The-Relationship-between-the-Exon-Intron-Differential-GC-Content-and-the-Inclusion-Level_fig12_230567763

# We can see that there are  ... isoforms,
# we can further view the gc content proportion for each feature in this region.

#The BSgenome class is a container for storing the full genome sequences of a given organism
# https://www.rdocumentation.org/packages/BSgenome/versions/1.40.1/topics/BSgenome-class


BiocManager::install("BSgenome.Hsapiens.UCSC.hg19")

library(BSgenome.Celegans.UCSC.ce2)



library(BSgenome.Hsapiens.UCSC.hg19)
# BSgenome.Hsapiens.UCSC.hg19

## Number of sequences in this genome:
length(Hsapiens) 

## Display a summary of the sequences:
Hsapiens

## Index of single sequences:
seqnames(Hsapiens)

## Lengths (i.e. number of nucleotides) of the single sequences:
seqlengths(Hsapiens)

## Load chromosome 6 from disk to memory (hence takes some time)
## and keep a reference to it:
chr6 <- Hsapiens[["chr6"]]  # equivalent to Celegans$chr6

Hsapiens$chr6

chr6
class(chr6)   # a DNAString instance
length(chr6)  

start(chr6)

"start"(x)



#https://www.rdocumentation.org/packages/BSgenome/versions/1.40.1/topics/BSgenome-class



library(BSgenome.Celegans.UCSC.ce2)

library(BSgenome.Hsapiens.UCSC.hg19)

## Number of sequences in this genome:
length(Celegans) 

length(Hsapiens)

## Display a summary of the sequences:
Celegans

Hsapiens

## Index of single sequences:
seqnames(Celegans)

seqnames(Hsapiens)

## Lengths (i.e. number of nucleotides) of the single sequences:
seqlengths(Celegans)

## Load chromosome I from disk to memory (hence takes some time)
## and keep a reference to it:
chrI <- Celegans[["chrI"]]  # equivalent to Celegans$chrI

chr2 <-  Hsapiens[["chr2"]]

chr2
chrI



class(chr2)   # a DNAString instance
length(chr2)  # with 243199373 nucleotides

###################
# determine chromosomal boundarie with  BSgenome  


library(BSgenome)
library(GenomicFeatures)
library(GenomeInfoDbData)


##load BSgenome.Hsapiens.UCSC.hg38 on current workspace
library(BSgenome.Hsapiens.UCSC.hg38)

##assign hg38 genone to `hg38` variable to save on typing the long name
hg38 <- getChromInfoFromUCSC("hg38")

##get cordinates of hg38 in GRaanges formart
hg38.cordinates <- GRanges(seqnames = hg38[,1],ranges=IRanges(end=hg38[,2],width = hg38[,2]))
ranges(hg38.cordinates)

###save as df and write out as a bed file
hg38.cordinates.dt <- cbind(hg38[,1],as.data.frame(ranges(hg38.cordinates)[,c(1,2)]))
dim(hg38.cordinates.dt)

write.table(file="output/hg38.cordinates.bed",hg38.cordinates.dt,sep="\t",quote=F,row.names=F, col.names = c("chr","start","end","width"))


####################  cnSpec

library(GenVisR)
# Create data
x <- matrix(sample(100000,500), nrow=50, ncol=10, dimnames=list(0:49,paste0("Sample",1:10)))
# Call plot function
covBars(x)


cnSpec(LucCNseg, genome = "hg19")


head(LucCNseg)


data(LucCNseg)


?LucCNseg

unique(LucCNseg$sample)
