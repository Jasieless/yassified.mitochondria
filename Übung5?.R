## Übung 5: k-mer Identifikation

DNA1 <- "ACGTTGCATGTCGCATGATGCATGAGAGCT"
DNA <- strsplit(DNA1, split=NULL)

Pattern.Count <- function(DNA.equence, Pattern){
  count <- 0
  for(i in length(Pattern):length(DNA.sequence) - length(Pattern)){
    ifelse(paste(DNA.sequence[(i+1):(i + 1 + length(Pattern) - 1)], collapse='')==paste(Pattern, collapse=''), count <- count + 1, count <- count + 0)
  }return(count)}

Frequent.Words <- function(DNA.sequence, k){
  Frequent.Patterns <- vector(mode = "list",length = length(DNA.sequence) + 1 -k)
  counter <- vector(mode = "list",length = length(DNA.sequence) + 1 -k)
  pattern <- vector(mode = "list",length = length(DNA.sequence) + 1 -k)
  for (i in k:length(DNA.sequence) + 1 - k) {
    pattern <- (DNA.sequence[i : (i+ k - 1)]) 
    counter[i] <- Pattern.Count(DNA.sequence, pattern)}
  counter <- unlist(counter)
  maxcount <- max(counter)
  for (i in k:length(DNA.sequence) + 1 - k){
    Pattern[i:(i + k -1)] <- (DNA.sequence[ i:(i + k - 1) ])
    if(counter[i] == maxcount){
      Frequent.Patterns[i] <- paste(Pattern[ i:(i + k - 1)], collapse = '')}}
  Frequent.Patterns1 <- unique(Frequent.Patterns, incomparables = F)
  return(Frequent.Patterns1)} 

## k-kmere Ergebnisse:
Frequent.Words(DNA, 1)
Frequent.Words(DNA, 2)
Frequent.Words(DNA, 3)
Frequent.Words(DNA, 4)
Frequent.Words(DNA, 5)

## habe diesen Code vorhin laufen lassen & die ergebnisse kamen richtig raus aber
## bei einem neuen Versuch kommt eine Fehlanzeige zu der ersten Schleife auf .. 
