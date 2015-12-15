FROM tianon/apache2

MAINTAINER raphael.pinson@camptocamp.com

RUN apt-get update \
  && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/camptocamp/puppet-catalog-diff-viewer.git /var/www/catalog_diff
