#!/bin/bash

kubectl apply -f k8s/namespace.yaml

# Create Postgres Infra
kubectl apply -f k8s/db/configmap.yaml
kubectl apply -f k8s/db/storageclass.yaml
kubectl apply -f k8s/db/pv.yaml
kubectl apply -f k8s/db/pvc.yaml
kubectl apply -f k8s/db/deployment.yaml
kubectl apply -f k8s/db/service.yaml

# Create Services Infra
kubectl apply -f k8s/server/deployment.yaml
kubectl apply -f k8s/server/service.yaml
kubectl apply -f k8s/client/deployment.yaml
kubectl apply -f k8s/client/service.yaml
