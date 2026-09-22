#--------------------------#
#MB5370: Techniques in Marine Science 1 
# Programming Fundamentals
# Lauren Wetzel
# 15/09/2026
#-----------------#
#Workshop 01. Introdution ####
# R synatax and working in scripts ####
# This section introduces us to R by running simple calculations inside a script.##
2 + 1 
1:30 
##New section-- Funcations and Arguments
years_old <- 25.7 

round(years_old) #rounds up

floor(years_old) #rounds down 

years_olld <- 25.765

round (years_olld, 2) # comma after the object to specify argument 

# asking a question 
?round # use args in the console 
function (x, digits = 0)

#Objects and Assignment 
## This section focuses on understanding how data is stored in R and why that matters 
#Saving a single value
coral_count <- 42
# saving a vector of multiple fish lengths (in mm)
fish_lengths <- c(124, 251, 98, 221, 146)
### Use option - for <- 

coral_count + 1
coral_count + coral_count
# cases matter! 
Coral_Count <- 1 
coral_count + Coral_Count
## this is wrong and doesn't work 
01_age <- 25  # starts w/ a number
!_age <-  25 #no special symbols 
coral count <- 25 ## no spaces allowed 
`coral count` <- 25 #spaces used but w/ back ticks works
#better to be consistent and use __ 

##debugging code 
# Field survey data
quadrat_area_m2 <- 0.25
number_of_quadrats <- 16
total_area_surveyed <- quadrat_area_m2 * number_of_quadrats

# Let's print out the result
print(total_area_surveyed)
### it was missing an e 

#### Installing packages####
install.packages("tidyverse") #download and install
library(tidyverse) #load to current session 
library (dplyr)
library (ggplot2)
# Assign variable values
site_name <- "Heron_Island"
transect_depth_m <- 12.5
bleaching_present <- TRUE

# Check using function class()
class(site_name)
class(transect_depth_m)
class(bleaching_present)

# Check using function str()
str(site_name)
str(transect_depth_m)
str(bleaching_present)
## tracking the age of an old-growth Porites coral colony 
years_old <- 25.765
#Clean this up for our summary report 
round(years_old, 2)
## FIX the spelling error -- no error sign in output it was year_old then years_olld - it is now fixed 

# Make variables
years_old <- 25.765
rounded_age <- round(years_old, 1)
# Combine text and data variables
paste("Average colony age is", rounded_age, "years old")
## changed round(years_old, 2) to round(years_old,1) to have 1 decimal place per instructions 

#Vectors
fish_lengths
coral_spp <- c("Porites", "Acropora", "Montastrea")

class(fish_lengths)
class(coral_spp)

notes <- list("Acropora",27.5, TRUE)
notes[[1]]
###data frames and tibbles 
my_dataframe <- data.frame (no = c(1,2,3), c("Plectropomus", "Scarus", "Pomacentrus"), c(TRUE, FALSE, TRUE))
my_dataframe
str (my_dataframe)

##fixing the frame -- it guesses at the factors  
my_dataframe$no = as.factor(my_dataframe$no)
str (my_dataframe)


                          