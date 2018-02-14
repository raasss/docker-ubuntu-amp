#!/usr/bin/env bash

source ./conf.sh

docker run -ti -P --rm $@ ${NAMESPACE}/${REPOSITORY}:${TAG}
