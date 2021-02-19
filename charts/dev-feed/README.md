# dev-feed

GraphQL-based API exposing a list of daily curated content from top engineering blogs and articles.
https://github.com/rm3l/dev-feed

## Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-dev-feed rm3l/dev-feed --version 0.8.0
```

See https://artifacthub.io/packages/helm/rm3l/dev-feed?modal=install

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mariadb | 9.3.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| auth.password | string | `"r3allyPl34s3Ch4ng3M3"` |  |
| config | string | `"logging.level.org.rm3l.devfeed=INFO\ndatasource.poolSize=2\nexecutor.thread-pool.size=20\n#article.screenshot.service=pagespeedonline\n#pagespeedonline.api.timeoutSeconds=300\n"` |  |
| crawlers.discoverdev_io.affinity | object | `{}` |  |
| crawlers.discoverdev_io.articleMaxAgeDays | int | `365` |  |
| crawlers.discoverdev_io.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.discoverdev_io.enabled | bool | `true` |  |
| crawlers.discoverdev_io.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.discoverdev_io.image.repository | string | `"rm3l/dev-feed-crawler-discoverdev_io"` |  |
| crawlers.discoverdev_io.restartPolicy | string | `"OnFailure"` |  |
| crawlers.discoverdev_io.schedule | string | `"0 0 * * 0"` |  |
| crawlers.discoverdev_io.startingDeadlineSeconds | int | `3600` |  |
| crawlers.discoverdev_io.ttlSecondsAfterFinished | int | `900` |  |
| crawlers.engineeringblogs_xyz.affinity | object | `{}` |  |
| crawlers.engineeringblogs_xyz.articleMaxAgeDays | int | `365` |  |
| crawlers.engineeringblogs_xyz.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.engineeringblogs_xyz.enabled | bool | `true` |  |
| crawlers.engineeringblogs_xyz.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.engineeringblogs_xyz.image.repository | string | `"rm3l/dev-feed-crawler-engineeringblogs-xyz"` |  |
| crawlers.engineeringblogs_xyz.restartPolicy | string | `"OnFailure"` |  |
| crawlers.engineeringblogs_xyz.schedule | string | `"*/30 * * * *"` |  |
| crawlers.engineeringblogs_xyz.startingDeadlineSeconds | int | `3600` |  |
| crawlers.engineeringblogs_xyz.ttlSecondsAfterFinished | int | `900` |  |
| crawlers.rm3l_org.affinity | object | `{}` |  |
| crawlers.rm3l_org.articleMaxAgeDays | int | `365` |  |
| crawlers.rm3l_org.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.rm3l_org.enabled | bool | `true` |  |
| crawlers.rm3l_org.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.rm3l_org.image.repository | string | `"rm3l/dev-feed-crawler-rm3l_org"` |  |
| crawlers.rm3l_org.restartPolicy | string | `"OnFailure"` |  |
| crawlers.rm3l_org.schedule | string | `"0 0 * * *"` |  |
| crawlers.rm3l_org.startingDeadlineSeconds | int | `3600` |  |
| crawlers.rm3l_org.ttlSecondsAfterFinished | int | `900` |  |
| datasource.password | string | `"pl34s3Ch4ng3M3"` |  |
| datasource.user | string | `"db-user"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"rm3l/dev-feed-api"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"dev-feed-api.local"` |  |
| ingress.hosts[0].paths | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe | object | `{"timeoutSeconds":10}` | Configure the liveness healthcheck for the containers |
| mariadb.auth.database | string | `"dev-feed"` |  |
| mariadb.auth.password | string | `"pl34s3Ch4ng3M3"` |  |
| mariadb.auth.replicationPassword | string | `"pl34s3Ch4ng3M3"` |  |
| mariadb.auth.replicationUser | string | `"replicator"` |  |
| mariadb.auth.username | string | `"db-user"` |  |
| mariadb.enabled | bool | `true` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe | object | `{"timeoutSeconds":10}` | Configure the readiness healthcheck for the containers |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `28080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |
| startupProbe | object | `{"failureThreshold":5,"initialDelaySeconds":120,"periodSeconds":4,"timeoutSeconds":10}` | Configure the startup healthcheck for the containers |
| strategy | object | `{}` | Strategy used to replace old Pods by new ones |
| tolerations | list | `[]` |  |

