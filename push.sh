#!/usr/bin/env bash

set -ex

source ./conf.sh

docker push ${NAMESPACE}/${REPOSITORY}:${TAG}
