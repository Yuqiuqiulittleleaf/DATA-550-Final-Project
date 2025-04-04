here::i_am("code/01_make_table.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

library(labelled)
library(gtsummary)

var_label(data) <- list(
  activityID = "Name of Activity",
  heart_rate = "Heart Rate",
  hand.temperature...C. = "Hand Temperature (°C)")

table <- data |>
  select("activityID", "heart_rate", "hand.temperature...C.") |>
  tbl_summary(by = activityID) |>
  modify_spanning_header(c("stat_1","stat_2","stat_3","stat_4") ~ "**Distribution of Characteristic in Activity Groups**") |>
  add_overall() 

saveRDS(
  table,
  file = here::here("output/table.rds")
)