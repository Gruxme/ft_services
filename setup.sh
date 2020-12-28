#!/bin/zsh

#Startup
#minikube start
#minikube docker-env
#eval $(minikube docker-env)

#Containers Creation
docker build srcs/influxdb -t influxdb-local
docker build srcs/wordpress -t wordpress-local
docker build srcs/mysql -t mysql-local
docker build srcs/phpmyadmin -t phpmyadmin-local
docker build srcs/nginx -t nginx-local
docker build srcs/grafana -t grafana-local
docker build srcs/ftps -t ftps-local

#MetalLB Setup
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

#Services & Deployments
kubectl apply -f srcs/yamls/metallb.yaml
kubectl apply -f srcs/yamls/wordpress.yaml
kubectl apply -f srcs/yamls/phpmyadmin.yaml
kubectl apply -f srcs/yamls/mysql.yaml
kubectl apply -f srcs/yamls/nginx.yaml
kubectl apply -f srcs/yamls/grafana.yaml
kubectl apply -f srcs/yamls/influxdb.yaml
kubectl apply -f srcs/yamls/ftps.yaml