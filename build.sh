#!/usr/bin/env bash

set -ex

source ./conf.sh

docker build -t ${NAMESPACE}/${REPOSITORY}:${TAG} .
