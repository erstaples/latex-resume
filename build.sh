#!/bin/bash

IMAGE=blang/latex:ubuntu
docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" \
    latexmk -xelatex -cd -f -interaction=batchmode -pdf resume.tex

open resume.pdf