.NOTPARALLEL:

Final_Project_RMarkdown.html: Final_Project_RMarkdown.Rmd code/03_render_report.R
	@echo "Step 1: Running 00_clean_data.R..."
	Rscript --vanilla code/00_clean_data.R
	@echo "Step 2: Running 01_make_table.R..."
	sleep 2  # 等待2秒，确保前一个Rscript进程完全退出
	Rscript --vanilla code/01_make_table.R
	@echo "Step 3: Running 02_make_plot.R..."
	sleep 2  # 等待2秒
	Rscript --vanilla code/02_make_plot.R
	@echo "Step 4: Running 03_render_report.R..."
	sleep 2  # 等待2秒
	Rscript --vanilla code/03_render_report.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f Final_Project_RMarkdown.html