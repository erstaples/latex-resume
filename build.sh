#!/bin/bash

IMAGE=blang/latex:ubuntu
docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" \
    latexmk -xelatex -cd -f -interaction=batchmode -pdf resume.tex

datetime=$(date +%Y-%m-%d-%H.%M.%S)
cp resume.pdf $HOME/Documents/eric-staples-resume-$datetime.pdf 
cp resume.pdf $HOME/Documents/eric-staples-resume--latest.pdf
open resume.pdf
