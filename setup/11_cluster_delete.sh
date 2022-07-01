#######################
# Destroy the cluster #
#######################
export CLUSTER_NAME=chaos

az group delete --name $CLUSTER_NAME --yes

kubectl config delete-cluster $CLUSTER_NAME

kubectl config delete-context $CLUSTER_NAME

kubectl config unset users.clusterUser_$CLUSTER_NAME_$CLUSTER_NAME
