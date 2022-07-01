#################################
# Making The App Fault-Tolerant #
#################################

cat ../chaosdemo/k8s/terminate-pods/deployment.yaml

kubectl --namespace chaosdemo apply --filename ../chaosdemo/k8s/terminate-pods/deployment.yaml

kubectl --namespace chaosdemo rollout status deployment chaosdemo

chaos run ../chaosdemo/chaos/terminate-pod-phase.yaml
