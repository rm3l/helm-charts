# mac-oui

Microservice for looking up manufacturers from MAC addresses.
https://github.com/rm3l/mac-oui

[![Latest version](https://img.shields.io/badge/latest_version-1.18.1-blue)](https://artifacthub.io/packages/helm/rm3l/mac-oui)

## Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-mac-oui rm3l/mac-oui --version 1.18.1
```

See https://artifacthub.io/packages/helm/rm3l/mac-oui?modal=install

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"rm3l/mac-oui"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts | list | `[{"host":"mac-oui.local","paths":[]}]` |  kubernetes.io/tls-acme: "true" |
| ingress.tls | list | `[]` |  |
| livenessProbe | object | `{"failureThreshold":5,"httpGet":{"path":"/health/live","port":8080},"initialDelaySeconds":3,"periodSeconds":10,"timeoutSeconds":3}` | Configure the liveness healthcheck for the mac-oui containers |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe | object | `{"failureThreshold":5,"httpGet":{"path":"/health/ready","port":8080},"initialDelaySeconds":3,"periodSeconds":10,"timeoutSeconds":3}` | Configure the readiness healthcheck for the mac-oui containers |
| replicaCount | int | `1` | (int) Number of replicas |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  If not set and create is true, a name is generated using the fullname template |
| strategy | object | `{}` | Strategy used to replace old Pods by new ones |
| tolerations | list | `[]` |  |

