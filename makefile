Final_Project_RMarkdown.html: Final_Project_RMarkdown.Rmd code/03_render_report.R make_data
	Rscript code/03_render_report.R

make_data:
	Rscript code/00_clean_data.R
	Rscript code/01_make_table.R
	Rscript code/02_make_plot.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f Final_Project_RMarkdown.html