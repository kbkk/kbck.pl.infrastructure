#!/usr/bin/env bash

# shellcheck disable=SC2046
export $(cat .env) > /dev/null 2>&1;
docker stack deploy -c docker-compose.yml kbck
