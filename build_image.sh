#!/usr/bin/env bash

PATH_ROOT=$(cd $(dirname "$0"); pwd)

cd "$PATH_ROOT"/docker || exit 1

docker build -t nordvpn-proxy:1.0 .