#!/bin/bash
set -eux

CR_URL=registry.cn-hangzhou.aliyuncs.com/k8ops

kourier=gcr.io/knative-releases/knative.dev/net-kourier/cmd/kourier@sha256:00ec3aef7b58a91247f6bdecbe1f5fad876c13778716a72ec3b2b76e15069d92
docker pull $kourier
docker tag $kourier $CR_URL/knative.dev-net-kourier:v0.14.0
docker push $CR_URL/knative.dev-net-kourier:v0.14.0

serving_queue=gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:f32c20456c6349a4fe99c83060009c7e9f6ba0c644ef854a04514e1f8aca982e
docker pull $serving_queue
docker tag $serving_queue $CR_URL/knative.dev-serving-queue:v0.14.0
docker push $CR_URL/knative.dev-serving-queue:v0.14.0

serving_activator=gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:3b530bbcf892aff098444ae529a9d4150dfd0cd35c97babebd90eedae34ad8af
docker pull $serving_activator
docker tag $serving_activator $CR_URL/knative.dev-serving-activator:v0.14.0
docker push $CR_URL/knative.dev-serving-activator:v0.14.0

serving_autoscaler=gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:bd125e90fffb44b843a183aa00f481cddee2317c0cfde9151c2482c5c2a8ed71
docker pull $serving_autoscaler
docker tag $serving_autoscaler $CR_URL/knative.dev-serving-autoscaler:v0.14.0
docker push $CR_URL/knative.dev-serving-autoscaler:v0.14.0

serving_controller=gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:71f7c9f101e7e30e82a86d203fb98d6fa607c8d6ac2fcb73fd1defd365795223
docker pull $serving_controller
docker tag $serving_controller $CR_URL/knative.dev-serving-controller:v0.14.0
docker push $CR_URL/knative.dev-serving-controller:v0.14.0

serving_webhook=gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:90562a10f5e37965f4f3332b0412afec1cf3dd1c06caed530213ca0603e52082
docker pull $serving_webhook
docker tag $serving_webhook $CR_URL/knative.dev-serving-webhook:v0.14.0
docker push $CR_URL/knative.dev-serving-webhook:v0.14.0

kourier_proxy=maistra/proxyv2-ubi8:1.0.8
docker pull $kourier_proxy
docker tag $kourier_proxy $CR_URL/kourier-proxyv2-ubi8:1.0.8
docker push $CR_URL/kourier-proxyv2-ubi8:1.0.8
