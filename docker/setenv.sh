#!/bin/bash
set -e

DEV_HOST="192.168.11.5"

boot2docker ssh "sudo touch /var/lib/boot2docker/profile && echo $'EXTRA_ARGS=\"--insecure-registry aroma-dev:5000\"' | sudo tee -a /var/lib/boot2docker/profile"
boot2docker ssh "echo $'$DEV_HOST aroma-dev' | sudo tee -a /etc/hosts"
boot2docker ssh "sudo /etc/init.d/docker restart"

sleep 10

$(boot2docker shellinit)