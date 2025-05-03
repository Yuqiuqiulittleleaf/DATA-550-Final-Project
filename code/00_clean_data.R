if (!require("here")) install.packages("here", repos = "http://cran.us.r-project.orgLinks to an external site.")
library(here)
here::i_am("code/00_clean_data.R")
absolute_path_to_data <- here::here("data", "filtered_data.csv")
dataset <- read.csv(absolute_path_to_data)
dataset <- dataset[dataset$activityID %in% c("lying", "sitting", "standing", "walking"), 1:2]
library(dplyr)

dataset <- dataset %>%
  select("heart_rate", "activityID") %>%
  group_by(activityID) %>%
  mutate(Time = row_number()) %>%
  ungroup()
saveRDS(
  dataset, 
  file = here::here("output/data_clean.rds")
)
