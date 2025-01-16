## 쿠버네티스 클러스터 구축
### 순서
1. Controller node
   01, 02, 04, 05 실행
   이때
   [root@node1 k8s]# kubectl get pod -A
NAMESPACE          NAME                                        READY   STATUS    RESTARTS   AGE
calico-apiserver   calico-apiserver-7bdf74c6cc-djx6t           1/1     Running   0          5m12s
calico-apiserver   calico-apiserver-7bdf74c6cc-p6xjq           1/1     Running   0          5m12s
calico-system      calico-kube-controllers-7b6b9b5dc6-57cc8    1/1     Running   0          7m17s
calico-system      calico-node-fwp6p                           1/1     Running   0          7m18s
calico-system      calico-typha-56fb8f554d-wwt8z               1/1     Running   0          7m18s
calico-system      csi-node-driver-xqmdc                       2/2     Running   0          7m17s
kube-system        coredns-5d78c9869d-lnfgz                    1/1     Running   0          8m26s
kube-system        coredns-5d78c9869d-r2k2p                    1/1     Running   0          8m26s
kube-system        etcd-node1.example.com                      1/1     Running   0          8m40s
kube-system        kube-apiserver-node1.example.com            1/1     Running   0          8m40s
kube-system        kube-controller-manager-node1.example.com   1/1     Running   0          8m40s
kube-system        kube-proxy-mpzcq                            1/1     Running   0          8m26s
kube-system        kube-scheduler-node1.example.com            1/1     Running   0          8m40s
tigera-operator    tigera-operator-fdb77cb85-pc88g             1/1     Running   0          7m55s
모든 파드 들이 올라 와야 조인을 해야지 오류가 안난다

2. Compute node
   02 조인 실행

3. infra node
   04 실행
   
    
