cat ../chaosdemo/chaos/terminate-pod.yaml

chaos run ../chaosdemo/chaos/terminate-pod.yaml

echo $?

kubectl --namespace chaosdemo get pods

