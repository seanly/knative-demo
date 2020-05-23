# install 
```
k apply -f ./serving-crds.yaml
k apply -f ./serving-core.yaml
k apply -f ./net-kourier.yaml

kubectl patch configmap/config-network \
  --namespace knative-serving \
  --type merge \
  --patch '{"data":{"ingress.class":"kourier.ingress.networking.knative.dev"}}'

k create ns knative-demo
k apply -f ./helloworld-go-app.yaml -n knative-demo

```
