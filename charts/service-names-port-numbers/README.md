# service-names-port-numbers

Microservice (GraphQL API) against the IANA Service Names And Port Numbers Registry.
https://github.com/rm3l/service-names-port-numbers

## Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-service-names-port-numbers rm3l/service-names-port-numbers --version 0.11.0
```

See https://artifacthub.io/packages/helm/rm3l/service-names-port-numbers?modal=install

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config | string | `"server.compression.enabled=true\ndatasources.etc_services=true\nmy.key=my.value\n"` | App Configuration. See https://github.com/rm3l/service-names-port-numbers/blob/master/application/src/main/resources/application.properties for more details. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"rm3l/service-names-port-numbers"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"service-names-port-numbers.local"` |  |
| ingress.hosts[0].paths | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe | object | `{"initialDelaySeconds":3,"periodSeconds":90,"timeoutSeconds":10}` | Configure the liveness healthcheck for the containers |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe | object | `{"initialDelaySeconds":3,"periodSeconds":4}` | Configure the readiness healthcheck for the containers |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |
| strategy | object | `{}` | Strategy used to replace old Pods by new ones |
| tolerations | list | `[]` |  |

