kubectl --namespace chaosdemo describe pod chaosdemo

cat ../chaosdemo/chaos/terminate-pod-phase.yaml

diff ../chaosdemo/chaos/terminate-pod-pause.yaml ../chaosdemo/chaos/terminate-pod-phase.yaml

chaos run ../chaosdemo/chaos/terminate-pod-phase.yaml

echo $?

kubectl --namespace chaosdemo logs chaosdemo

kubectl --namespace chaosdemo apply --filename chaosdemo/k8s/db

kubectl --namespace chaosdemo  rollout status deployment chaosdemo-db

kubectl --namespace chaosdemo  get pods

# Repeat the previous command until the `chaosdemo` Pod `STATUS` is `Running`

chaos run ../chaosdemo/chaos/terminate-pod-phase.yaml

echo $?
