#!/bin/bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install rabbitmq bitnami/rabbitmq --namespace rabbitmq
