library(ape)
library(phangorn)
fdir<-system.file("exdata/trees", package = "phangorn")
primates<-read.phyDat(file.path(fdir, "primates.dna"), format = "interleaved")

data(primates)

primates.matrix<-dist.ml(primates)

UPGMA.Baum<-upgma(primates.matrix)
NJ.Baum<-nj(primates.matrix)

primatesUPGMA<-plot(UPGMA.Baum, main="NJ")
primatesNJ<-plot(NJ.Baum, "unrooted", main="NJ")

plot(UPGMA.Baum, main="UPGMA")


