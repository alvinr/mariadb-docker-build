# MariaDB builder with Docker

## Pre-reqs

    1. You have Docker installed and setup (i.e. you can already run a Docker image)

## Linux Distros
Specifc instructions for each linux distro below.

### CentOS Image

#### Build the Docker image

    $ docker build -t $HUB_UN/mariadb-build:centos -f Dockerfile.centos7 .

#### Run the image

    $ docker run -it --rm --name centos-builder $HUB_UN/mariadb-build:centos


### Ubuntu Image

#### Build the Docker image

    $ docker build -t $HUB_UN/mariadb-build:ubuntu -f Dockerfile.ubuntu .

#### Run the image

    $ docker run -it --rm --name ubuntu-builder $HUB_UN/mariadb-build:ubuntu

## Compliing & Building
Once you run the image, you will be at a bash prompt. You can then cloen the code repsoitory, build etc.

    # git clone https://github.com/MariaDB/server.git mariadb-server
    # cd mariadb-server
    # git checkout bb-10.2-compatibility
    # cmake . -DBUILD_CONFIG=mysql_release -DWITH_JEMALLOC=yes
    # make
    # make install


## Notes
1. Docker image exposes a mount point for /src. 

    $ docker run -it --rm -v $PWD:/src --name centos-builder $HUB_UN/mariadb-build:centos

However, if you mount your local git directory to this mount point, then you get various cmake issues, for example

    storage/maria/unittest/CMakeFiles/ma_pagecache_consist_1kWR-t.dir/depend.make:4: *** missing separator.  Stop.

This needs further investigation - it would be nice to avoid cloning the repo into the Docker container each time.
