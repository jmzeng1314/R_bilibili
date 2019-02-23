rm(list = ls())
options(stringsAsFactors = F)
suppressPackageStartupMessages(library(CLL))
data(sCLLex)
sCLLex
exprSet=exprs(sCLLex)
pd=pData(sCLLex)
library(hgu95av2.db) 
ids=toTable(hgu95av2SYMBOL)
head(ids)
boxplot(exprSet['1939_at',] ~ pd$Disease) ## sig
boxplot(exprSet['1974_s_at',] ~ pd$Disease)
boxplot(exprSet['31618_at',] ~ pd$Disease)



