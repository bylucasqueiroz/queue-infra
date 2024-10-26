This project is part of another repository called `queue-server`.

## Setup

Make sure you have Minikube configured on your computer, and the image should be built from the other repository.

``` bash
eval $(minikube docker-env)  # Configure the terminal to use Docker with Minikube
docker build -f cmd/server/Dockerfile -t server:latest .
docker build -f cmd/client/Dockerfile -t client:latest .
```

Now you can apply the manifests

``` bash
kubectl apply -f k8s/server/deployment.yaml
kubectl apply -f k8s/server/service.yaml
kubectl apply -f k8s/client/deployment.yaml
kubectl apply -f k8s/client/service.yaml
```

Run:

``` bash
bash scripts/deploy.sh
```

Access Minikube:

``` bash
minikube service server
minikube service client
```