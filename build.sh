#!/usr/bin/env bash

source ./conf.sh

docker build -t ${NAMESPACE}/${REPOSITORY}:${TAG} .
