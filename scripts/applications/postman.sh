#!/bin/sh
set -e

wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
tar -xf postman.tar.gz -C $HOME/dev