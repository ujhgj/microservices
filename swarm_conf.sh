#!/usr/bin/env bash

ENVIRONMENT=$1
ln -sf environment/$ENVIRONMENT.env .env
docker-compose -f docker-compose.infra.yml -f docker-compose.yml config
