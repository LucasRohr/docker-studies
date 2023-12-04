# create your custom drupal image here, based of official drupal

# base image FROM
FROM drupal:9


# install Git and clean up
RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

# change dir
WORKDIR /var/www/html/themes

# clone theme and change permission to root on file access
RUN git clone --branch 8.x-4.x --single-branch --depth 1 https://git.drupalcode.org/project/bootstrap.git \
    && chown -R www-data:www-data bootstrap

# change dir to default
WORKDIR /var/www/html