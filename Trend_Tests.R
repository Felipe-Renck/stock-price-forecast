library("randtests")
library("trend")
library("utils")
library("dplyr")
library("Kendall")

df <- read.table('./data/Stock_Price_BRL 2016-2021.csv',
                 header = TRUE,
                 sep = ",")

values <- c(df$Close_Stock.BRL.)

MannKendall(values)
cox.stuart.test(values)
cs.test(values)