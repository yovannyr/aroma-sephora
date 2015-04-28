#!/bin/bash
set -e

DEV_HOST="10.5.162.130"

boot2docker ssh "sudo touch /var/lib/boot2docker/profile && echo $'EXTRA_ARGS=\"--insecure-registry aroma-dev:5000\"' | sudo tee -a /var/lib/boot2docker/profile"
boot2docker ssh "echo $'$DEV_HOST    aroma-dev' | sudo tee -a /etc/hosts"
boot2docker ssh "echo $'10.6.237.204    www.fortytwo.arvato-systems.com git.fortytwo.arvato-systems.com mvn.fortytwo.arvato-systems.com' | sudo tee -a /etc/hosts"
boot2docker ssh "echo $'10.6.237.205    ci.fortytwo.arvato-systems.com' | sudo tee -a /etc/hosts"
boot2docker ssh "sudo /etc/init.d/docker restart"

echo "pls wait 10 seconds for docker restart..."
sleep 10

$(boot2docker shellinit)
