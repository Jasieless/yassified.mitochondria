## Aufgabe 2.2
setwd("~/Library/Mobile Documents/3L68KQB4HG~com~readdle~CommonDocuments/Documents/8. Semester/Bioinformatik/R")

read.table("alignedSequencesCalmodulin.txt")
Sequence12<-read.table("alignedSequencesCalmodulin.txt")
Sequences<-Sequence12$V1
s1<-Sequences[1]
s2<-Sequences[2]

library(Biostrings)

pair.align1<-pairwiseAlignment(s1, s2)
pair.align1
pid(pair.align1)  ## Result: 96.6%


## Aufgabe 2.3
pairwiseAlignment(s1, s2, substitutionMatrix= BLOSUM62)  ## Score: 730




