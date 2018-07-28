# Created by Abhinav Raghunathan
# Licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License

library(ggplot2)
library(ggthemes)
library(caret)
library(forecast)
library(tseries)
library(TSA)
library(lubridate)
library(dplyr)
library(caTools)

source("helpers/multiplot.R") # required for multiple ggplots in the same image

temperatures <- read.csv('data/temperatures.csv', stringsAsFactors = F)
#source("helpers/temperature_analysis.R")

flares <- read.csv("data/flares.csv", stringsAsFactors = F)
#source("helpers/flare_analysis.R")

guns <- read.csv('data/guns.csv', stringsAsFactors = F)
#source("helpers/guns_analysis.R")

names <- read.csv('data/names.csv', stringsAsFactors = F)
#source("helpers/names_analysis.R")

cars <- read.csv('data/cars.csv', stringsAsFactors = F)
#source("helpers/cars_analysis.R")
