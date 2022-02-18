# check-pod-network-during-termination
bash scipt for cheking networking during POD termination (from SIGTERM till SIGKILL)

container: `ymuski/check-pod-network-during-termination`

## Usage:

```sh
# Create deployment
kubectl create deployment network-checker --image=ymuski/check-pod-network-during-termination --replicas=1

# Kill pod
kubectl rollout restart deployment network-checker

# check for 'SIGTERM' in logs, and network still working during next 30sec (default termination timeout)
kubectl logs deployment/network-checker -f --since 1m

# remove deployment
kubectl delete deployment network-checker
```
