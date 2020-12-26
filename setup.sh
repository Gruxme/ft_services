#!/bin/zsh

#Startup
#minikube start
#eval $(minikube docker-env)

#Containers Creation
docker build --privileged srcs/wordpress -t wordpress-local
docker build --privileged srcs/mysql -t mysql-local
docker build --privileged srcs/phpmyadmin -t phpmyadmin-local
docker build --privileged srcs/nginx -t nginx-local
#docker build --privileged srcs/grafana -t grafana-local
#docker build --privileged srcs/influxdb -t influxdb-local
#docker build --privileged srcs/ftps -t ftps-local

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
#kubectl apply -f srcs/yamls/grafana.yaml
#kubectl apply -f srcs/yamls/influxdb.yaml
#kubectl apply -f srcs/yamls/ftps.yaml