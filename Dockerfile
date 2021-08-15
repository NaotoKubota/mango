###############################################################
# Dockerfile to build container images for Mango
# Based on miniconda3
################################################################

FROM conda/miniconda3:latest

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <n.kubota@bioreg.kyushu-u.ac.jp>"

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies first
RUN apt-get -qq update && apt-get -qq -y install r-base wget vim git less && \
    conda install -y -c bioconda bedtools bowtie macs2 && \
    R -e "install.packages('hash', repos='http://cran.rstudio.com/')" && \
    R -e "install.packages('Rcpp', repos='http://cran.rstudio.com/')" && \
    R -e "install.packages('optparse', repos='http://cran.rstudio.com/')" && \
    R -e "install.packages('readr', repos='http://cran.rstudio.com/')"
    
# Install Mango
RUN git clone https://github.com/dphansti/mango.git && \
    R CMD INSTALL --no-multiarch --with-keep.source mango

# Set working directory
WORKDIR /home
