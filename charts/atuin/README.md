# atuin

Unofficial Chart for Atuin, the magical shell history.
The server provides fully encrypted synchronization of the shell history across machines.
https://github.com/ellie/atuin

[![Latest version](https://img.shields.io/badge/latest_version-0.5.0-blue)](https://artifacthub.io/packages/helm/rm3l/atuin)

## Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-atuin rm3l/atuin --version 0.5.0
```

See https://artifacthub.io/packages/helm/rm3l/atuin?modal=install

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 12.5.6 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| atuin.openRegistration | bool | `true` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/ellie/atuin"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgresql.auth.database | string | `"atuin"` |  |
| postgresql.auth.existingSecret | string | `""` |  |
| postgresql.auth.existingSecretKey | string | `"ATUIN_DB_URI"` |  |
| postgresql.auth.password | string | `"pl34s3Ch4ng3M3"` |  |
| postgresql.auth.username | string | `"db-user"` |  |
| postgresql.enabled | bool | `true` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8888` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| sqlite.enabled | bool | `false` | Experimental support of SQLite. Enable this and disable postgresql.enabled to use it. |
| sqlite.image.pullPolicy | string | `"Always"` |  |
| sqlite.image.repository | string | `"ghcr.io/rm3l/atuin-server-sqlite"` |  |
| sqlite.image.tag | string | `"main"` |  |
| sqlite.persistence.volumeClaimSpec.accessModes[0] | string | `"ReadWriteOnce"` |  |
| sqlite.persistence.volumeClaimSpec.resources.requests.storage | string | `"1Gi"` |  |
| storage.config.volumeClaimSpec.accessModes[0] | string | `"ReadWriteOnce"` |  |
| storage.config.volumeClaimSpec.resources.requests.storage | string | `"50Mi"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)