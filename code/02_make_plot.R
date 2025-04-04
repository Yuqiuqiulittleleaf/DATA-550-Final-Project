here::i_am("code/02_make_scatter.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

library(ggplot2)

series_plot <- ggplot(data, aes(x = Time, y = heart_rate, color = activityID)) +
  geom_point(size = 0.5, alpha = 0.7) +  
  labs(
    title = "Trends of Heart Rate by Activity Type",
    x = "Time",  
    y = "Heart Rate (bpm)",  
    color = "Activity Type"  
  ) +
  theme_minimal() +  
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),  
    axis.title = element_text(size = 14),  
    legend.title = element_text(size = 12),  
    legend.text = element_text(size = 10)  
  ) +
  scale_color_manual(values = c("lying" = "blue", "sitting" = "green", 
                                "standing" = "red", "walking" = "purple")) +  
  theme(panel.grid.major = element_line(color = "grey80", linetype = "dashed"), 
        panel.grid.minor = element_line(color = "grey90", linetype = "dotted"))  

ggsave(
  here::here("output/series_plot.png"),
  plot = series_plot,
  device = "png",
  bg = "white"
)


