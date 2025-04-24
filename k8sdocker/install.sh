helm repo add datadog https://helm.datadoghq.com
helm install datadog-operator datadog/datadog-operator
kubectl create secret generic datadog-secret --from-literal api-key=XX

# create configmap
kubectl create configmap confd-config --from-file=custom-check.yaml
# check configmap
kubectl get configmap confd-config -o yaml

# create configmap
kubectl create configmap checksd-config --from-file=custom-check.py
# check configmap
kubectl get configmap checksd-config -o yaml
