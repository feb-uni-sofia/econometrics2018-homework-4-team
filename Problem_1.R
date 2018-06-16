## Homework 4, Problem 1

library(dplyr)

## Read the data
houseWork <-
  read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/houseWork.csv')
str(houseWork)

## a)

summary(houseWork)

## b)

muf <- mean(subset(houseWork$hours, houseWork$sex == 'f'))
mum <- mean(subset(houseWork$hours, houseWork$sex == 'm'))

## c)
## /score -0.5 for using character 'TRUE'/'FALSE' instead of logical values
## TRUE/FALSE
houseWork <- within(houseWork, {
  female <- ifelse(sex == 'f', 'TRUE', 'FALSE')
  male <- ifelse(sex == 'm', 'TRUE', 'FALSE')
})

houseWork

## d)

fit <- lm(hours ~ female, data = houseWork)
summary(fit)

## e)
## kein Bezug zur Aufgabe /score -2
##Intercept ist Schätzer für b0
##femaleTRUE ist Schätzer für b1, auch die Neigung
##Die beide werden Regressionskoeffizienten genannt

## f)
## /score -2 (kein Bezug zur Aufgabe)
##The null hypothesis states, that the average house-work hours for women is
##less or equal to the house-work for men. The alternative states, that the house-work for women
##is greater than the house-work for men.

## g)
## /score -2
T <- (-14.4555 - 32.8138) / 0.3186

pt(-T, df = 2)

## h)

## We do not reject the null hypothesis, because the P-value is greater than 0.05

## i)
## /score -2
## j)
## /score -2
fit1 <- lm(hours ~ female + male, data = houseWork)
summary(fit1)
