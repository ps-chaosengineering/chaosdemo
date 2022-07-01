#########################
# Pausing After Actions #
#########################

cat ../chaosdemo/chaos/terminate-pod-pause.yaml

diff ../chaosdemo/chaos/terminate-pod-ssh.yaml ../chaosdemo/chaos/terminate-pod-pause.yaml

chaos run ../chaosdemo/chaos/terminate-pod-pause.yaml

echo $?

kubectl --namespace chaosdemo apply --filename ../chaosdemo/k8s/terminate-pods/pod.yaml
