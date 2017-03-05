#!/bin/bash

source ../assets/demo.env

fly -t conci l -c $CONCOURSE_URL
fly -t conci e -c ../tasks/demo.yml -i root=../../
fly -t conci sp -c ../pipelines/demo.yml -p demo -n
fly -t conci up -p demo 
fly -t conci tj -j 'demo/demo job' -w
