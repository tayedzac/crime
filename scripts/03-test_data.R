#### Preamble ####
# Purpose: Tests the properties of the dataset
# Author: Tayedza Chikumbirike
# Data: 19 April 2023
# Contact: t.chikumbirike@mail.utoronto.ca
# Pre-requisites: N/A
# Any other information needed? N/A

#### Workspace setup ####
library(tidyverse)
# Read in data
clean_data <- 
  read_csv(here::here("inputs/data/clean_data.csv"))

#### Test data ####
clean_data$premises_type |>
  class() == "character"

clean_data$occ_dow |>
  class() == "character"

clean_data$occ_year |>
  class() == "numeric"

clean_data$occ_year |>
  max() == 2014