FROM ubuntu:16.04

MAINTAINER Martin Callaghan <m.callaghan@leeds.ac.uk> 

RUN apt-get -y update && apt-get install -y build-essential

RUN apt-get install -y apt-utils

RUN apt-get install -y gfortran

RUN apt-get install -y libopenblas-base

RUN apt-get install -y wget

#Add required libraries for GEOS etc.

RUN apt-get install -y libgdal-dev libproj-dev
RUN apt-get install -y libgeos-dev

RUN apt-get install -y nano

# Install R
RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | tee -a /etc/apt/sources.list

RUN gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9

RUN gpg -a --export E084DAB9 | apt-key add -

RUN apt-get -y update

RUN apt-get -y install r-base r-base-dev

#Install R packages
RUN wget 
RUN R CMD BATCH install-packages.R


#Set stub /nobackup directory for Singularity

RUN mkdir -p /nobackup

