#!/usr/bin/env bash

set -ex

source ./conf.sh

docker run -ti -p 10080:80 -p 10443:443 -v "${PWD}/html/:/var/www/html/" --rm --name ${REPOSITORY} $@ ${NAMESPACE}/${REPOSITORY}:${TAG}

