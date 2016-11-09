#!/bin/bash
virtualenv venv
. venv/bin/activate
pip install -e 'git+https://github.com/ckan/ckan.git@ckan-2.6.0#egg=ckan'

