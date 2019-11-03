# k8s-php-fpm-example

This is a very simple demo of deploying a PHP-FPM service using Kubernetes.

If you are running a cluster locally using minikube, you should be able to create working deployment of this app with the following steps:

```bash
eval $(minikube docker-env) # Point your local Docker client to the K8s environment to build images there instead of on your host
./build.sh # Build a Docker image of the demo Symfony app in ./app
./deploy.sh # Apply the k8s.yaml config to deploy the app
curl -v "$(minikube ip):$(kubectl get services/app-service -o jsonpath='{.spec.ports[0].nodePort}')/healthz"
```
