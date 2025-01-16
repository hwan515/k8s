#!/bin/bash

helm repo add projectcalico https://docs.tigera.io/calico/charts
kubectl create namespace tigera-operator
helm install calico projectcalico/tigera-operator --version v3.27.5 --namespace tigera-operator

### controller 아래 명령어를 실행하면 컨트롤러 노드에도 pod가 생성됨
# kubectl taint node node1.example.com node-role.kubernetes.io/control-plane:NoSchedule-

kubectl apply -f calico-quay-crd.yaml
kubectl -n calico-system get pod 
