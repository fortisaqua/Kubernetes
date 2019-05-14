# !/bin/bash

swapoff -a
kubeadm join 192.168.1.105:6443 --token 1y6eav.7m01xjvgqxu5spd2 --discovery-token-ca-cert-hash sha256:c4ba8694dc1b3872b0ea63a4e0eff3552c976e92a14699cf6737d83a205a3be8
