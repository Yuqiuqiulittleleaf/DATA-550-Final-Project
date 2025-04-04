here::i_am("code/01_make_table.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

library(labelled)
library(gtsummary)

var_label(data$activityID) <- "Name of Activity"
var_label(data$heart_rate) <- "Heart Rate"
#var_label(data$hand.temperature...C.) <- "Hand Temperature (°C)"

table <- data |>
  select("activityID", "heart_rate") |>
  tbl_summary(by = activityID) |>
  modify_spanning_header(c("stat_1","stat_2","stat_3","stat_4") ~ "**Distribution of Characteristic in Activity Groups**") |>
  add_overall() 

saveRDS(
  table,
  file = here::here("output/table.rds")
)
