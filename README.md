# 6admin Server Management Functional Tests

This is the Docker based repository for functional tests (end user tests).

## How to run the tests ?

Prerequisites : You should have installed Docker and have a valid Docker daemon running on your machine.

### Installation and configuration

Clone this repository and build the image :

    git clone git@github.com:6admin/test.git
    docker build -t 6admin/test .

### Running the container

You first need to build the image and enter on it with :

    docker run -ti -v $(pwd)/6admin:/opt/6admin --name 6admin 6admin/test /bin/bash

And then, install 6admin manager like in a usual system :

    curl -sS https://raw.githubusercontent.com/6admin/installer/master/ubuntu-16.04/installer.sh | sudo bash

### Develop and test

Now your CLI should be inside the container with a clean ubuntu for running the tests.

Also, the `/opt/6admin` from the container is mounted on the `6admin` folder inside this project.