#!/bin/bash

source ../assets/demo.env

fly -t conci l -c $CONCOURSE_URL
fly -t conci e -c ../tasks/build-grafana.yml
