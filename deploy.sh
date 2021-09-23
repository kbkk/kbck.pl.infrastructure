#!/usr/bin/env bash

docker build -f backup.Dockerfile . -t kbck/backup

# shellcheck disable=SC2046
export $(cat .env) > /dev/null 2>&1;
docker stack deploy -c docker-compose.yml kbck
