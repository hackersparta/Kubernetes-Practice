# label-nodes.sh
kubectl label node mykubeapplicationcluster-m02 role=uat 
kubectl label node mykubeapplicationcluster-m03 role=qatest 
kubectl label node mykubeapplicationcluster-m04 role=production 


#overwrite
#kubectl label node mymastercluster-worker role=uat --overwrite
#kubectl label node mymastercluster-worker2 role=qatest --overwrite
#kubectl label node mymastercluster-worker3 role=production --overwrite
