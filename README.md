# Fuel Plugin Builder (Dockerized)

[![](https://badge.imagelayers.io/as0bu/fpb:latest.svg)](https://imagelayers.io/?images=as0bu/fpb:latest 'Get your own badge on imagelayers.io')

## Description
This is a docker build used to build Mirantis Fuel Plugins.

## How to use (Pulls from DockerHub)
    docker run -v ${PWD}/plugins:/plugins as0bu/fpb <plugin> /plugins

This will git clone the repository, build the plugin, and then copy it to the
./plugins local directory on the Docker host.

## Example
    docker run -v ${PWD}/plugins:/plugins local/fpb fuel-plugin-lma-collector /plugins

The resulting file will be in the ./plugins directory
