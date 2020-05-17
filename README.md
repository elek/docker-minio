# [Minio](https://github.com/minio/minio/) Docker image and Kubernetes resource definitions

Docker image: `elek/minio`

Using in Kubernetes:

Install [flekszible](https://github.com/elek/flekszible)

```
cd /tmp/test
flekszible init
flekszible source add github.com/elek/docker-minio
flekszible app add minio
flekszible generate
kubectl apply -f
```
