#### Preamble ####
# Purpose: Cleans the raw data to contain the variables that will be used in the analysis.
# Author: Tayedza Chikumbirike
# Data: April 4 2023
# Contact: t.chikumbirike@mail.utoronto.ca
# Pre-requisites: Download the data
# Any other information needed? n/a


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(tidyr)

#### Clean data ####
raw_data <- read_csv("inputs/data/raw_data.csv")

clean_data <- clean_names(raw_data) |>
  select(
    occ_dow,
    premises_type,
    offence
  ) |>
  drop_na(
    occ_dow,
    premises_type,
    offence)

#### Save data ####
write_csv(clean_data, "inputs/data/clean_data.csv")

