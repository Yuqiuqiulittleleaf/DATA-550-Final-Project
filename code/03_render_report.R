here::i_am("code/03_render_report.R")

library(rmarkdown)
# rendering a report in production mode
render("Final_Project_RMarkdown.Rmd",
       output_file = "Final_Project_RMarkdown.html")
