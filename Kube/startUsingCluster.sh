# !/bin/bash

kubeadm init --config kubeadm.conf
rm -f /root/.kube/config
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://git.io/weave-kube-1.6
#  kubectl taint nodes --all node-role.kubernetes.io/master-
