#!/usr/bin/env bash

set -ex

source ./conf.sh

docker run -ti -P --rm $@ ${NAMESPACE}/${REPOSITORY}:${TAG} /bin/bash
