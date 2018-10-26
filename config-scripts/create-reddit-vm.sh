#!/bin/bash
set -e

gcloud compute instances create reddit-app \
 --zone europe-west1-d \
 --image-family reddit-full \
 --image-project aidjek-infrastructure \
 --machine-type=g1-small \
 --tags puma-server \
 --restart-on-failure
