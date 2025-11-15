#load necessary libraries
library(rio)
library(tidyverse)
library(corrplot)
library(ggplot2)
library(dplyr)
library(rstatix)
library(readr)
#load the dataset to R
evolutionn_dataset <- read_csv("C:/Users/LINDSEY KHALUMBA/OneDrive/Desktop/evolutionn_dataset.csv", 
                              comment = "#", 
                              show_col_types = FALSE)


View(evolutionn_dataset)
str(evolutionn_dataset)
ls(evolutionn_dataset)
# Clean column names and handle missing values
colnames(evolutionn_dataset)
# Summary of missing values by column
colSums(is.na(evolutionn_dataset))

# Performing descriptive statistics
species_summary <- evolutionn_dataset %>%
  group_by(genus_species) %>%
  summarise(
    count = n(),
    mean_time = mean(time, na.rm = TRUE),
    mean_cranial_capacity = mean(cranial_capacity, na.rm = TRUE),
    mean_height = mean(height, na.rm = TRUE),
    sd_cranial = sd(cranial_capacity, na.rm = TRUE),
    sd_height = sd(height, na.rm = TRUE)  # Added height standard deviation
  )

# To see it in a nice table format
View(species_summary)
print(species_summary)

#testing for normality
# Set up multi-panel plot
par(mfrow = c(2, 2))

# Histogram for cranial capacity
hist(evolutionn_dataset$cranial_capacity, 
     main = "Histogram: Cranial Capacity",
     xlab = "Cranial Capacity", 
     col = "lightblue",
     probability = TRUE)
curve(dnorm(x, 
            mean = mean(evolutionn_dataset$cranial_capacity),
            sd = sd(evolutionn_dataset$cranial_capacity)), 
      add = TRUE, col = "red", lwd = 2)
# Histogram for height
hist(evolutionn_dataset$height, 
     main = "Histogram: Height",
     xlab = "Height", 
     col = "lightgreen",
     probability = TRUE)
curve(dnorm(x, 
            mean = mean(evolutionn_dataset$height),
            sd = sd(evolutionn_dataset$height)), 
      add = TRUE, col = "red", lwd = 2)
# Histogram for time
hist(evolutionn_dataset$time, 
     main = "Histogram: Time",
     xlab = "Time", 
     col = "lightyellow",
     probability = TRUE)
curve(dnorm(x, 
            mean = mean(evolutionn_dataset$time),
            sd = sd(evolutionn_dataset$time)), 
      add = TRUE, col = "red", lwd = 2)

# Reset plot layout
par(mfrow = c(1, 1))
# Performing statistical tests
# Correlation between numerical variables
cor_test_cranial_height <- cor.test(evolutionn_dataset$cranial_capacity,
                                    evolutionn_dataset$height,
                                    method = "spearman")
print(cor_test_cranial_height)
cor_test_time_height <- cor.test(evolutionn_dataset$time, 
                                 evolutionn_dataset$height, 
                                 method = "spearman")
print(cor_test_time_height)
cor_test_cranial_height <- cor.test(evolutionn_dataset$cranial_capacity, 
                                    evolutionn_dataset$height, 
                                    method = "spearman")
print(cor_test_cranial_height)

# See all unique species and how many there are
unique(evolutionn_dataset$genus_species)
table(evolutionn_dataset$genus_species)

# Count the number of groups
n_distinct(evolutionn_dataset$genus_species)

# For multiple species comparison
kruskal.test(cranial_capacity ~ genus_species, data = evolutionn_dataset)

# For multiple locations
kruskal.test(cranial_capacity ~ location, data = evolutionn_dataset)

# For multiple habitat types
kruskal.test(cranial_capacity ~ habitat, data = evolutionn_dataset)
# Association between two categorical variables
chisq.test(evolutionn_dataset$diet, evolutionn_dataset$location)
