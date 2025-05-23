report:
	mkdir -p mounted
	docker run --rm -it \
		-v /"$$(pwd)/mounted":/home/rstudio/project/final_report \
		yuqiuqiulittleleaf/final-project:latest

Macreport:
	mkdir -p mounted
	docker run --rm -it \
	--platform linux/amd64 \
		-v "$$(pwd)/mounted":/home/rstudio/project/final_report \
		yuqiuqiulittleleaf/final-project:latest

Final_Project_RMarkdown.html: Final_Project_RMarkdown.Rmd code/03_render_report.R
	Rscript code/00_clean_data.R
	Rscript code/01_make_table.R
	Rscript code/02_make_plot.R
	Rscript code/03_render_report.R
	
install:
	Rscript -e 'renv::restore()'

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f Final_Project_RMarkdown.html
