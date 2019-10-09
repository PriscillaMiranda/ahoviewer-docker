#!/bin/zsh

cd "$( dirname "${(%):-%x}" )"
sudo docker build -t ahoviewer .
