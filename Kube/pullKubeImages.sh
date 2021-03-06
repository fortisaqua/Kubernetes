# !/bin/bash

docker pull registry.cn-hangzhou.aliyuncs.com/nickel/kube-apiserver-amd64:v1.11.1
docker pull registry.cn-hangzhou.aliyuncs.com/nickel/kube-controller-manager-amd64:v1.11.1
docker pull registry.cn-hangzhou.aliyuncs.com/nickel/kube-scheduler-amd64:v1.11.1
docker pull registry.cn-hangzhou.aliyuncs.com/nickel/kube-proxy-amd64:v1.11.1
docker pull registry.cn-hangzhou.aliyuncs.com/nickel/pause:3.1
docker pull registry.cn-hangzhou.aliyuncs.com/nickel/etcd-amd64:3.2.18
docker pull registry.cn-hangzhou.aliyuncs.com/nickel/coredns:1.1.3

docker tag registry.cn-hangzhou.aliyuncs.com/nickel/kube-apiserver-amd64:v1.11.1 k8s.gcr.io/kube-apiserver-amd64:v1.11.1
docker tag registry.cn-hangzhou.aliyuncs.com/nickel/kube-controller-manager-amd64:v1.11.1 k8s.gcr.io/kube-controller-manager-amd64:v1.11.1
docker tag registry.cn-hangzhou.aliyuncs.com/nickel/kube-scheduler-amd64:v1.11.1 k8s.gcr.io/kube-scheduler-amd64:v1.11.1
docker tag registry.cn-hangzhou.aliyuncs.com/nickel/kube-proxy-amd64:v1.11.1 k8s.gcr.io/kube-proxy-amd64:v1.11.1
docker tag registry.cn-hangzhou.aliyuncs.com/nickel/pause:3.1 k8s.gcr.io/pause:3.1
docker tag registry.cn-hangzhou.aliyuncs.com/nickel/etcd-amd64:3.2.18 k8s.gcr.io/etcd-amd64:3.2.18
docker tag registry.cn-hangzhou.aliyuncs.com/nickel/coredns:1.1.3 k8s.gcr.io/coredns:1.1.3
