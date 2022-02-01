# Notes

https://github.com/settings/developers

- New OAuth App: `https://github.com/settings/applications/new`
- Homepage URL: http://localhost:8080/
- Authorization callback URL: http://localhost:8080/oauth/redirect
- Take note of `Client ID` & `Client secrets`

---

## github:
- [Creating an OAuth App](https://docs.github.com/en/developers/apps/building-oauth-apps/creating-an-oauth-app)
- [Authorizing OAuth Apps](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps)
- [Scopes for OAuth Apps](https://docs.github.com/en/developers/apps/building-oauth-apps/scopes-for-oauth-apps)
- [Creating a custom badge](https://docs.github.com/en/developers/apps/building-oauth-apps/creating-a-custom-badge-for-your-oauth-app)

## api.github.com/user

The Users API allows to get public and private information about the authenticated user.

[Get the authenticated user](https://docs.github.com/en/rest/reference/users)

---

## credit
[Creating an OAuth2 Client in Golang](https://www.sohamkamani.com/golang/oauth/)

---

## letsencrypt

```yaml
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-prod
spec:
  acme:
    server: https://acme-v02.api.letsencrypt.org/directory
    email: hello@example.com
    privateKeySecretRef:
      name: letsencrypt-prod
    solvers:
    - http01:
        ingress:
          class: traefik
```

---

## How can I do a backup of my SealedSecrets?

```sh
kubectl get secret -n kube-system \
    -l sealedsecrets.bitnami.com/sealed-secrets-key=active \
    -o yaml > master.key.yaml
```

https://github.com/bitnami-labs/sealed-secrets#how-can-i-do-a-backup-of-my-sealedsecrets

---
