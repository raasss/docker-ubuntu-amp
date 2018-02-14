#!/usr/bin/env bash

source ./conf.sh

docker push ${NAMESPACE}/${REPOSITORY}:${TAG}
