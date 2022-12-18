#!/bin/bash

# "cd" into "25.0.2-fpm-alpine" before script running

# Preconditions:
# docker login https://harbor.smartvz.site # enter creds from https://harbor.smartvz.site

docker image rm infra/25.0.2-fpm-alpine
docker image rm 25.0.2-fpm-alpine
docker build . -t 25.0.2-fpm-alpine:latest
docker tag 25.0.2-fpm-alpine harbor.smartvz.site/infra/25.0.2-fpm-alpine:latest
docker push harbor.smartvz.site/infra/25.0.2-fpm-alpine:latest
