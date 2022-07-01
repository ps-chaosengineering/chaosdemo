#############################
# Deploying The Application #
#############################
kubectl create namespace chaosdemo
cat chaosdemo/k8s/terminate-pods/pod.yaml
kubectl --namespace chaosdemo  apply --filename ../chaosdemo/k8s/terminate-pods/pod.yaml
