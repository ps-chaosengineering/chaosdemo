cat  ../chaosdemo/chaos/terminate-pod-ssh.yaml

diff ../chaosdemo/chaos/terminate-pod.yaml  ../chaosdemo/chaos/terminate-pod-ssh.yaml

chaos run ../chaosdemo/chaos/terminate-pod-ssh.yaml

echo $?

kubectl --namespace chaosdemo apply --filename ../chaosdemo/k8s/terminate-pods/pod.yaml

chaos run ../chaosdemo/chaos/terminate-pod-ssh.yaml

echo $?

kubectl --namespace chaosdemo apply --filename ../chaosdemo/k8s/terminate-pods/pod.yaml
