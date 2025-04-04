# PAMAP2 Physical Activity Analysis Project

This project analyzes data from the **PAMAP2 Physical Activity Monitoring dataset**, specifically focusing on Subject 1 and the activities of **lying, sitting, standing, and walking**. The primary variables of interest are **heart rate** and **hand temperature**.

---

## Data Description

The dataset originally contains data from **18 different physical activities** performed by **9 subjects** wearing **3 inertial measurement units and a heart rate monitor**. For this analysis, the activities were limited to **lying, sitting, standing, and walking** for Subject 1. The analysis aims to compare the variation of the interested variables between different activity groups and visualize their trends over time.

---

## Directory Structure

/PAMAP2_Project/ ├── code/ │ ├── 00_clean_data.R │ ├── 01_make_table.R │ ├── 02_make_plot.R │ ├── 03_render_report.R ├── output/ │ ├── data_clean.rds │ ├── table.rds │ ├── series_plot.png ├── Final_Project_RMarkdown.Rmd ├── Makefile ├── README.md

## How to Generate the Final Report

To generate the final report (`Final_Project_RMarkdown.html`), follow these steps:

### 1. **Using Makefile (Recommended)**

Run the following command in your terminal:

```bash
make
