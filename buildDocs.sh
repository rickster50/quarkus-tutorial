#!/bin/bash 

[[ -d gh-pages ]] && rm -rf gh-pages && rm -rf .cache

site=${1:-'site.yml'}

podman run -it --rm -v `pwd`:/antora:z  antora/antora:2.0.0 $site --stacktrace
