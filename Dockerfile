# Use an official R base image
FROM r-base:4.3.1

MAINTAINER Marina Reixachs <marina.reixachs@gmail.com>

# System dependencies for required R packages
RUN  rm -f /var/lib/dpkg/available \
  && rm -rf  /var/cache/apt/* \
  && apt-get update -qq \
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    libssl-dev \
    libcurl4-openssl-dev \
    libxml2-dev \
    git \
    pandoc

COPY . /app/

WORKDIR /app

RUN Rscript install_packages.R

RUN chmod +x ./generate_report.R

# Run the Rmarkdown script with arguments
ENTRYPOINT ["Rscript", "--vanilla", "generate_report.R"]
