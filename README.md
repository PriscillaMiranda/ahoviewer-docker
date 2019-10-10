# ahoviewer-docker

Docker image for [ahoviewer](https://github.com/ahodesuka/ahoviewer).
Usable with [x11docker](https://github.com/mviereck/x11docker).

## Docker image

[![](https://images.microbadger.com/badges/image/priscillamiranda/ahoviewer:latest.svg)](https://microbadger.com/images/priscillamiranda/ahoviewer:latest)
[![](https://img.shields.io/docker/automated/priscillamiranda/ahoviewer.svg)](https://hub.docker.com/r/priscillamiranda/ahoviewer/builds/)
[![](https://img.shields.io/docker/pulls/priscillamiranda/ahoviewer.svg)](https://hub.docker.com/r/priscillamiranda/ahoviewer/)
[![](https://img.shields.io/docker/stars/priscillamiranda/ahoviewer.svg)](https://hub.docker.com/r/priscillamiranda/ahoviewer/)

## Build Dockerfile

I included a shellscript to build the image.
Just run `buildDockerImage.zsh`.

## Start ahoviewer

Open start.zsh and edit the path to your pictures.
Then just run `start.zsh`.
You should have `x11docker` in your PATH.
