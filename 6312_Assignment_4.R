# Loading the library 'deplyr'
library(dplyr)

# Loading the library 'heplots'
library(heplots)

#loading the library
library(agricolae)

# Installing package 'psych' library and loading the library
install.packages("psych")
library(psych)

# Loading the library 'lsmeans'
library(lsmeans)

# Loading the library 'stats'
library(stats)

packageVersion("dplyr")
packageVersion("heplots")
packageVersion("agricolae")
packageVersion("psych")
packageVersion("lsmeans")
packageVersion("stats")

# Loading dataset and visualization of descriptive statistics of dependent and independent variables 
aristocrats_data <- read.table("Aristocrats.dat", header = TRUE)
names(aristocrats_data) <- c("Combo", "Temp", "NetProfit")
summary(aristocrats_data)

# Sample Size
num_rows <- nrow(aristocrats_data)
print(num_rows)

# Assigning Stevens' levels of typology, only 'Combo' is Discreet data here
aristocrats_data$Combo <- as.factor(aristocrats_data$Combo)
aristocrats_data$Temp <- as.numeric(aristocrats_data$Temp)
aristocrats_data$NetProfit <- as.numeric(aristocrats_data$NetProfit)

# Are 'Combo'(discreet) and 'Temp'(continuous) related?
etasq(lm(Temp~Combo, data = aristocrats_data), anova = TRUE, partial = FALSE)

# Bivariate Level (Y = 'Net profit'(continuous) & x = 'Combo'(discreet))

# Catagory Profile for 'Combo'(discreet)
describeBy(aristocrats_data$NetProfit, aristocrats_data$Combo)

# Analysis of variance (ANOVA) between 'Net Profit'(continuous) and 'Combo'(discreet). Here, Combo 1 is our 'reference group'
aristocrats_data_anova <- lm(NetProfit~Combo, data = aristocrats_data)
summary(aristocrats_data_anova)

# To determine the 'Unique' predictive power of 'Combo'(discreet)
etasq(aristocrats_data_anova, anova = TRUE, partial = FALSE)

# To determine the 'Unique' predictive power of 'Temp'(continuous)
etasq(lm(NetProfit~Temp, data = aristocrats_data), anova = TRUE, partial = FALSE)

# A-Posteriori Test (Scheffe Test)
scheffe.test(aristocrats_data_anova, "Combo", group = TRUE, console = TRUE, main = "Scheffe Test")

# Multivariate level (Y ='Net profit'(continuous) x1 = 'Combo'(discreet) & x2 = 'Temp'(continuous))

# Analysis of Covariance (ANACOVA) between 'Net Profit'(continuous), 'Combo'(discreet) and 'Temp'(continuous)
etasq(lm(NetProfit~Combo + Temp, data = aristocrats_data), anova = TRUE, partial = FALSE)
aristocrats_anacova <- lm(NetProfit~Combo + Temp, data = aristocrats_data)
lsmeans(aristocrats_anacova, "Combo")

# An estimate of the magnitude of confounding 
magnitude_estimation <- (0.0427-0.0161)/0.0427
print(magnitude_estimation)