# Makefile for lecture 1
# Noe Wiener
# NURP 6015


# Open connection to the data repository for the Gelman and Hill (2006) book
library(foreign)
heights <- read.dta("http://www.stat.columbia.edu/~gelman/arm/examples/earnings/heights.dta")

# Followig code from Gelman and Hill (2006) book: http://www.stat.columbia.edu/~gelman/arm/examples/earnings/earnings_setup.R 
# create variables for age and ethnicity categories

heights$age <- 90 - heights$yearbn                     # survey was conducted in 1990
heights$age[heights$age<18] <- NA
heights$age.category <- ifelse (heights$age<35, 1, ifelse (heights$age<50, 2, 3))
heights$eth <- ifelse (heights$race==2, 1, ifelse (heights$hisp==1, 2, ifelse (heights$race==1, 3, 4)))
heights$male <- 2 - heights$sex


# (for simplicity) remove cases with missing data
# and restrict to people with positive earnings born after 1925

ok <- !is.na (heights$earn+heights$height+heights$sex+heights$age) & heights$earn>0 & heights$yearbn>25
heights.clean <- as.data.frame (cbind (heights$earn, heights$height, heights$sex, heights$race, heights$hisp, heights$ed, heights$age, heights$age.category, heights$eth, heights$male)[ok,])
colnames(heights.clean) <- colnames(heights)[c(1,9,4,5,6,7,10,11,12,13)]
heights.clean$sex <- factor(heights.clean$sex, labels=c("Male", "Female"))


## Preparing the electric company dataset

data <- read.table("http://www.stat.columbia.edu/~gelman/arm/examples/electric.company/electric.dat", header=TRUE)
electric <- data.frame(post_test = c(data$treated.Posttest, data$control.Posttest),
                       pre_test = c(data$treated.Pretest, data$control.Pretest),
                       grade = rep(data$Grade, 2),
                       treatment = rep (c(1,0), rep(length(data$treated.Posttest),2)),
                       supp = c(as.numeric(data[,"Supplement."])-1, rep(NA,nrow(data))))
rm(data)

electric$grade <- paste("Grade", electric$grade)
electric$treatment <- factor(electric$treatment)
levels(electric$treatment) <- c("Test scores in control classes",
                                     "Test scores in treated classes")
