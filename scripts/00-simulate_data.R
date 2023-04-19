#### Preamble ####
# Purpose: Simulates a sample dataset
# Author: Tayedza Chikumbirike
# Data: 19 April 2023
# Contact: t.chikumbirike@mail.utoronto.ca
# Pre-requisites: N/A
# Any other information needed? N/A


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(743)
sample_data <-
  tibble(
    "offense" = sample(c("Assault", "Break and Enter", "Robbery", "Theft Over", "Auto Theft")),
    "num_occurrence" = sample(c(2304, 6234, 3674, 547, 4550),
                                   size = 5,
                                   replace = FALSE))
sample_data



