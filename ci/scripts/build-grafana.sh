#!/bin/sh

env

export GOPATH=`pwd`
go get github.com/grafana/grafana

cd $GOPATH/src/github.com/grafana/grafana
go run build.go setup
go run build.go build

npm install -g yarn
yarn install --pure-lockfile
npm install -g grunt-cli
grunt
