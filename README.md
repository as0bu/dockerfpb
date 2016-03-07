# Fuel Plugin Builder (Dockerized)

## Description
This is a docker build used to build Mirantis Fuel Plugins.

## How to use (Pulls from DockerHub)
    docker run -i -t as0bu/fpb /bin/bash

This will drop you into the shell to issue the 'fpb' command to build plugins
from a cloned repository.

## Example
    docker run -i -t as0bu/fpb /bin/bash
    (Inside the container)
    cd ~
    git clone https://github.com/openstack/fuel-plugin-lma-collector.git
    fpb --build fuel-plugin-lma-collector/

The resulting file will be in the fuel-plugin-lma-collector directory
