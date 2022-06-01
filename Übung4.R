setwd("~/Library/Mobile Documents/3L68KQB4HG~com~readdle~CommonDocuments/Documents/8. Semester/Bioinformatik/R")

human.isoforms <- read.table("human_ACTG_Isoforms.txt")
split.human.isoform <- strsplit(human.isoforms$V1, "[1]")

my_matrix <- as.matrix(human.isoforms)
matrix.split <- strsplit(my_matrix, "")

for (i in 1:length(matrix.split)) {
  for (j in 1:length(matrix.split)) {
    
  }
}

sort(table(matrix.split),decreasing= TRUE)

