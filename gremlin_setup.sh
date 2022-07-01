helm repo add gremlin https://helm.gremlin.com
kubectl create namespace gremlin
export GREMLIN_TEAM_ID="copy this from gremlin dashboard"
export GREMLIN_CLUSTER_ID="name of your cluster"
export GREMLIN_TEAM_SECRET="copy secret id from gremlin dashboard"

helm install gremlin gremlin/gremlin --namespace gremlin --set gremlin.secret.managed=true --set gremlin.secret.type=secret --set gremlin.collect.processes=false --set gremlin.hostPID=true --set gremlin.secret.teamID=$GREMLIN_TEAM_ID --set gremlin.secret.clusterID=$GREMLIN_CLUSTER_ID --set gremlin.secret.teamSecret=$GREMLIN_TEAM_SECRET --set gremlin.container.driver=docker-runc
