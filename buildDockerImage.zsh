#!/bin/zsh

cd "$( dirname "${(%):-%x}" )"
sudo docker build --build-arg VCS_REF=`git rev-parse --short HEAD` -t ahoviewer .
