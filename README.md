# gh-oauth-example

## [localhost](https://github.com/tullo/gh-oauth-example/releases/tag/v0.1.0)

```sh
./run.sh
```

---

## [okteto](https://github.com/tullo/gh-oauth-example/releases/tag/v0.2.0)

```sh
okteto up
./run.sh
```

Open [gh-oauth-example-dev-tullo.cloud.okteto.net/]() and authenticate.

---

## [civo](https://github.com/tullo/gh-oauth-example/releases/tag/v0.4.0)

```sh
kubectl apply -f manifests/
kubectl set image deployment/gh-oauth-example gh-oauth-example=docker.io/tullo/gh-oauth-example:civo
```

Open [gh-oauth-example.ac2c224e-978f-454a-8780-7af4740383ae.k8s.civo.com/](https://gh-oauth-example.ac2c224e-978f-454a-8780-7af4740383ae.k8s.civo.com/) and authenticate.

---
