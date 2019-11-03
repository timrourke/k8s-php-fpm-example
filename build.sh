#!/bin/sh

echo 'Note: this script assumes that you have already pointed your local Docker'
echo 'client to the Kubernetes client, as it depends upon local images.'
echo ''

docker build app -t=k8s-php-fpm-example

echo ''
echo 'To deploy the app, run:'
echo 'kubectl apply -f k8s.yaml'
