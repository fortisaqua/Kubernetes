# !/bin/bash

swapoff -a
kubeadm join 192.168.1.105:6443 --token 0ewh5s.6b2d808ypd0g966e --discovery-token-ca-cert-hash sha256:ffca0799d4854c845a1812355724e6474d3258670e5da8bf5e9c1ba1a38492f2
