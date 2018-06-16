## Homework 4, Problem 2
##install.packages(c('dplyr', 'ggplot2'))

library(dplyr)
library(ggplot2)

crime <-
  read.delim(
    'https://s3.eu-central-1.amazonaws.com/econometrics2018/data/crime.csv',
    stringsAsFactors = FALSE
  )
str(crime)

## a)

fit <- lm(C ~ HS, data = crime)
summary(fit)

## /score -1 kein Bezug auf die Fragestellung.

##Intercept ist Schätzer für b0
##HS ist Schätzer für b1, auch die Neigung
##Die beide werden Regressionskoeffizienten genannt

## b)

pairs( ~ C + U + I + HS, data = crime)

## c)

fit1 <- lm(C ~ HS + U, data = crime)
summary(fit1)

## /score -1 kein Bezug auf die Fragestellung.
##Intercept ist Schätzer für b0
##HS ist Schätzer für b1, auch die Neigung
##U ist Schätzer für b2
##With U in the model the value of the Estimated coefficient
##becomes less than withou U in the model.

## d)

pairs( ~ C + HS, data = crime)

## /score -2 kein Bezug auf das geschaetzte Modell!
##The politician's claims that the lower education spending will reduce the crime rates are wrong.
##We can see from the scatterplot matrix, that the lower HS bring more crimes and vice versa.

## e)

fit3 <- lm(C ~ HS + U + I, data = crime)
summary(fit3)

## /score -5
