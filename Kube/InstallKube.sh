# !/bin/bash

wget https://raw.githubusercontent.com/EagleChen/kubernetes_init/master/kube_apt_key.gpg
cat kube_apt_key.gpg | sudo apt-key add -
echo "deb [arch=amd64] https://mirrors.ustc.edu.cn/kubernetes/apt kubernetes-$(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list
apt-get update
apt-get install kubernetes-cni=0.6.0-00
apt-get install kubelet=1.11.1-00 kubeadm=1.11.1-00 kubectl=1.11.1-00
sysctl net.bridge.bridge-nf-call-iptables=1
sed -i "s,ExecStart=$,Environment=\"KUBELET_EXTRA_ARGS=--pod-infra-container-image=registry.cn-hangzhou.aliyuncs.com/google_containers/pause-amd64:3.1\"\nExecStart=,g" /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
systemctl daemon-reload
systemctl restart kubelet
