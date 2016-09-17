#!/bin/bash
set -e

# Get project dir
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Create conda environment
conda env create -f environment.yml
source activate example
# Install Theano and Lasagne (bleeding-edge version)
#pip install --upgrade https://github.com/Theano/Theano/archive/master.zip
#pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip
