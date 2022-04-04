#!/usr/bin/env bash

PATH_ROOT=$(cd $(dirname "$0"); pwd)

cd "$PATH_ROOT" || exit 1

./init_yum.sh || exit 1
./init_ca.sh || exit 1
