# PAMAP2 Physical Activity Analysis Project

This project analyzes data from the **PAMAP2 Physical Activity Monitoring dataset**, specifically focusing on Subject 1 and the activities of **lying, sitting, standing, and walking**. The primary variables of interest are **heart rate** and **hand temperature**.

---

## Data Description

The dataset originally contains data from **18 different physical activities** performed by **9 subjects** wearing **3 inertial measurement units and a heart rate monitor**. For this analysis, the activities were limited to **lying, sitting, standing, and walking** for Subject 1. The analysis aims to compare the variation of the interested variables between different activity groups and visualize their trends over time.

---
## Project Directory Structure

### **1. `code/` Directory**

This directory contains all the R scripts used for data processing, analysis, and visualization:

- **`00_clean_data.R`** - Cleans the original dataset and outputs the cleaned data as `data_clean.rds`.
- **`01_make_table.R`** - Generates a summary table of variables and saves it as `table.rds`.
- **`02_make_plot.R`** - Creates a plot visualizing heart rate trends over time and saves it as `series_plot.png`.
- **`03_render_report.R`** - Renders the final report using the `Final_Project_RMarkdown.Rmd` file.

---

### **2. `output/` Directory**

This directory stores all the processed data files and generated plots:

- **`data_clean.rds`** - The cleaned dataset produced by `00_clean_data.R`.
- **`table.rds`** - The summary table produced by `01_make_table.R`.
- **`series_plot.png`** - The plot visualizing heart rate trends produced by `02_make_plot.R`.

---

### **3. Root Files (Located in `PAMAP2_Project/`)**

- **`Final_Project_RMarkdown.Rmd`** - The R Markdown file containing the main analysis and report generation process.
- **`Makefile`** - Defines the process for building the project by running the R scripts in the correct order.
- **`README.md`** - This documentation file explaining the project structure and usage.

---

## How to Generate the Final Report

To generate the final report (`Final_Project_RMarkdown.html`), follow these steps:

### 1. **Using Makefile (Recommended)**

Run the following command in your terminal:

```bash
make

### 2. **Synchronize project environment**

Run the following command in your terminal:

```bash
make install

---
## How to Download the data

Run the following command in your terminal:

```bash
brew install git-lfs
git lfs install
git lfs pull
