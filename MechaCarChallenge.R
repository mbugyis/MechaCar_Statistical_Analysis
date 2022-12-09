# Part 1: Linear Regression to Predict MPG

library(dplyr)
library(tidyverse)

mecha_cars <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

logit_cars <- lm(mpg ~ ., data = mecha_cars)
summary(logit_cars)

logit_cars <- lm(mpg ~ vehicle_weight + ground_clearance, data = mecha_cars)
summary(logit_cars)


# Part 2: Create Visualizations for the Trip Analysis

coil <- read.csv("Suspension_Coil.csv")

total_summary <- coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI))
