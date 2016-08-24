# MariaDB builder with Docker

## Creating the image

   $ export HUB_UN=alvinr
   $ docker build -t $HUB_UN/mariadb-build .

## Running the image

    $ cd <your source tree>
    $ docker run -it --rm -v $PWD:/src $HUB_UN/mariadb-build

You will then have Ubuntu 14.04 bash propt, where you can build etc. e.g.

    # debian/autobake-deb.sh