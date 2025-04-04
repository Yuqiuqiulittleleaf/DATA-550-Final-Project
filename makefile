.NOTPARALLEL:

Final_Project_RMarkdown.html: Final_Project_RMarkdown.Rmd code/03_render_report.R
	@echo "Running 00_clean_data.R..."
	Rscript code/00_clean_data.R
	@echo "Running 01_make_table.R..."
	Rscript code/01_make_table.R
	@echo "Running 02_make_plot.R..."
	Rscript code/02_make_plot.R
	@echo "Running 03_render_report.R..."
	Rscript code/03_render_report.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f Final_Project_RMarkdown.html