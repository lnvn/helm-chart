NS=monitoring

if kubectl get namespace "$NS" >/dev/null 2>&1; then
  echo "Namespace '$NS' already exists. Skipping..."
else
  echo "Namespace '$NS' not found. Creating it..."
  kubectl create namespace "$NS"
fi

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm upgrade -i prometheus oci://ghcr.io/prometheus-community/charts/kube-prometheus-stack -n monitoring --values values.yaml --version 80.10.0