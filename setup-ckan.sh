#!/bin/bash

VENV_HOME=venv
CKAN_HOME=$VENV_HOME/src/ckan

# 1. system dependencies
echo "Installing system dependencies..."
sudo apt-get install -y python-dev libpq-dev python-pip python-virtualenv git-core redis-server

# 2. create virtualenv
if ![ -d "$VENV_HOME" ]; then
    echo "Creating virtualenv..."
    virtualenv $VENV_HOME
fi

echo "Activating virtualenv..."
. venv/bin/activate

# 3. install CKAN source, latest master
echo "Installing latest CKAN master from source.."
pip install -e 'git+https://github.com/ckan/ckan.git#egg=ckan'

echo "Installing CKAN requirements..."
pip install -r $CKAN_HOME/requirements.txt

echo "Reloading virtualenv to use its binaries..."
deactivate
. venv/bin/activate

