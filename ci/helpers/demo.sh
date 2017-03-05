#!/bin/bash

source ../assets/demo.env
echo -n Enter GitHub Password: ; read -s GITPASS

fly -t conci l -c $CONCOURSE_URL
secret=demo fly -t conci e -c ../tasks/demo.yml -i root=../../
fly -t conci sp -c ../pipelines/demo.yml -l ../assets/demo.yml -v github-password=$GITPASS -p demo -n
fly -t conci up -p demo 
fly -t conci tj -j 'demo/demo job' -w
