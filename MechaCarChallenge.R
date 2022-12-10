# Part 1: Linear Regression to Predict MPG

library(dplyr)
library(tidyverse)

mecha_cars <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

logit_cars <- lm(mpg ~ ., data = mecha_cars)
summary(logit_cars)

logit_cars <- lm(mpg ~ vehicle_weight + ground_clearance, data = mecha_cars)
summary(logit_cars)


# Part 2: Summary Statistics on Suspension Coils

coil <- read.csv("Suspension_Coil.csv")

total_summary <- coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Part 3: T-Test on Suspension Coils

t.test(coil$PSI,mu=1500)

lot1 <- subset(coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(coil, Manufacturing_Lot == "Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
