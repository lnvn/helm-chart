# helm-chart

### Elastic Search
```
cd ./efk/elasticsearch
helm repo add elastic https://helm.elastic.co
helm install elasticsearch elastic/elasticsearch --version 8.5.1 -n logging -f values.yaml
```

### Kibana
```
cd ./efk/kibana
helm repo add elastic https://helm.elastic.co
helm install kibana elastic/kibana --version 8.5.1 -n logging -f values.yaml
```

### Fluentd
```
cd ./efk/fluentd
helm repo add fluent https://fluent.github.io/helm-charts
helm install fluentd fluent/fluentd --version 0.5.3 -n logging -f values.yaml
```