# 1. 
FROM rocker/tidyverse as base

# 2. 
WORKDIR /home/rstudio/project

RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libnode-dev \
    && rm -rf /var/lib/apt/lists/*

# 3. 
RUN mkdir -p renv
COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

# 4. 
RUN mkdir renv/.cache
ENV RENV_PATHS_CACHE renv/.cache

# 5. 
RUN R -e "renv::restore()"
#RUN Rscript -e "install.packages(c('broom', 'broom.helpers', 'cardx', 'car', 'parameters'), repos = 'https://cloud.r-project.org')"

###### DO NOT EDIT STAGE 1 BUILD LINES ABOVE ######

FROM rocker/tidyverse

WORKDIR /home/rstudio/project
COPY --from=base /usr/local/lib/R /usr/local/lib/R
COPY --from=base /home/rstudio/project .

#ENV WHICH_CONFIG=default

COPY makefile .
COPY Final_Project_RMarkdown.Rmd .

RUN mkdir -p code output data final_report
COPY data/filtered_data.csv ./data/filtered_data.csv

COPY code ./code
ENTRYPOINT sh -c "make && cp Final_Project_RMarkdown.html final_report/"
