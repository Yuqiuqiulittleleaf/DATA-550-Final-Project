here::i_am("Final_Project_RMarkdown.Rmd")
absolute_path_to_data <- here::here("data", "filtered_data.csv")
dataset <- read.csv(absolute_path_to_data)
dataset <- dataset[dataset$activityID %in% c("lying", "sitting", "standing", "walking"), ]
library(dplyr)

dataset <- dataset %>%
  select(heart_rate, activityID) %>%
  group_by(activityID) %>%
  mutate(Time = row_number()) %>%
  ungroup()
saveRDS(
  dataset, 
  file = here::here("output/data_clean.rds")
)
