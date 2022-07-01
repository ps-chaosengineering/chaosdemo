az login

az provider register -n Microsoft.Network

az provider register -n Microsoft.Storage

az provider register -n Microsoft.Compute

az provider register -n Microsoft.ContainerService

export CLUSTER_NAME=chaos

az group create --name $CLUSTER_NAME  --location eastus

az aks create --resource-group $CLUSTER_NAME --name $CLUSTER_NAME --node-count 1 --node-vm-size Standard_D4s_v3 --generate-ssh-keys

az aks get-credentials  --resource-group $CLUSTER_NAME --name $CLUSTER_NAME
