#!/bin/bash
docker build -t evns/rpi-mosquitto:v3 --no-cache .
docker push evns/rpi-mosquitto:v3