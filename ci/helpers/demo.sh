#!/bin/bash

source ../assets/demo.env

fly -t conci l -c $CONCOURSE_URL
fly -t conci e -c ../tasks/demo.yml
fly -t conci sp -c ../pipelines/demo.yml -p demo -n
