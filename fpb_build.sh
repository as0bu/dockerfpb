#!/bin/bash

set -e

PLUGIN_NAME=$1
DIRECTORY=$2

if [ $1 = '--help' ]; then
  echo "Please specify the plugin to build."
  echo ""
  echo "An example would be:"
  echo "docker run as0bu/fpb fuel-plugin-lma-collector /plugins"
elif [ -z $2 ]; then
  echo "Please specify a directory"
else
  echo "Cloning plugin $1"
  git clone https://github.com/openstack/$1.git
  echo "Building plugin $1"
  fpb --build $1
  if [[ $? == 0 ]]; then
    echo "Plugin built successfully"
    echo "Copying plugin to $2"
    ls $1/*.noarch.rpm | xargs -i cp {} /plugins/.
  else
    echo "Error with plugin build"
  fi
fi
