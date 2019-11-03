#!/bin/sh

kubectl apply -f k8s.yaml

port=$(kubectl get service/app-service -o jsonpath='{.spec.ports[0].nodePort}')

echo "You should now be able to make a GET request to {YOUR K8S IP HERE}:$port/healthz"
