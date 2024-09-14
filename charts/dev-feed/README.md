# dev-feed

GraphQL-based API exposing a list of daily curated content from top engineering blogs and articles.
https://github.com/rm3l/dev-feed

[![Latest version](https://img.shields.io/badge/latest_version-3.1.0-blue)](https://artifacthub.io/packages/helm/rm3l/dev-feed)

## Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-dev-feed rm3l/dev-feed --version 3.1.0
```

See https://artifacthub.io/packages/helm/rm3l/dev-feed?modal=install

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mariadb | 19.0.5 |
| https://charts.bitnami.com/bitnami | mongodb | 15.6.21 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| auth.password | string | `"r3allyPl34s3Ch4ng3M3"` |  |
| config | string | `"logging.level.org.rm3l.devfeed=INFO\ndatasource.poolSize=2\nexecutor.thread-pool.size=20\n#article.screenshot.service=pagespeedonline\n#pagespeedonline.api.timeoutSeconds=300\n"` |  |
| crawlers.discoverdev_io.cronjob.activeDeadlineSeconds | int | `1800` |  |
| crawlers.discoverdev_io.cronjob.affinity | object | `{}` |  |
| crawlers.discoverdev_io.cronjob.articleMaxAgeDays | int | `365` |  |
| crawlers.discoverdev_io.cronjob.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.discoverdev_io.cronjob.enabled | bool | `false` |  |
| crawlers.discoverdev_io.cronjob.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.discoverdev_io.cronjob.image.repository | string | `"rm3l/dev-feed-crawler-discoverdev_io"` |  |
| crawlers.discoverdev_io.cronjob.imagePullSecrets | list | `[]` |  |
| crawlers.discoverdev_io.cronjob.podAnnotations | object | `{}` |  |
| crawlers.discoverdev_io.cronjob.podSecurityContext.runAsNonRoot | bool | `true` |  |
| crawlers.discoverdev_io.cronjob.resources | object | `{}` |  |
| crawlers.discoverdev_io.cronjob.restartPolicy | string | `"OnFailure"` |  |
| crawlers.discoverdev_io.cronjob.schedule | string | `"0 0 * * 0"` |  |
| crawlers.discoverdev_io.cronjob.startingDeadlineSeconds | int | `3600` |  |
| crawlers.discoverdev_io.cronjob.ttlSecondsAfterFinished | int | `900` |  |
| crawlers.discoverdev_io.enabled | bool | `true` |  |
| crawlers.dummy.enabled | bool | `false` |  |
| crawlers.engineeringblogs_xyz.cronjob.activeDeadlineSeconds | int | `1800` |  |
| crawlers.engineeringblogs_xyz.cronjob.affinity | object | `{}` |  |
| crawlers.engineeringblogs_xyz.cronjob.articleMaxAgeDays | int | `365` |  |
| crawlers.engineeringblogs_xyz.cronjob.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.engineeringblogs_xyz.cronjob.enabled | bool | `false` |  |
| crawlers.engineeringblogs_xyz.cronjob.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.engineeringblogs_xyz.cronjob.image.repository | string | `"rm3l/dev-feed-crawler-engineeringblogs_xyz"` |  |
| crawlers.engineeringblogs_xyz.cronjob.imagePullSecrets | list | `[]` |  |
| crawlers.engineeringblogs_xyz.cronjob.podAnnotations | object | `{}` |  |
| crawlers.engineeringblogs_xyz.cronjob.podSecurityContext.runAsNonRoot | bool | `true` |  |
| crawlers.engineeringblogs_xyz.cronjob.resources | object | `{}` |  |
| crawlers.engineeringblogs_xyz.cronjob.restartPolicy | string | `"OnFailure"` |  |
| crawlers.engineeringblogs_xyz.cronjob.schedule | string | `"*/30 * * * *"` |  |
| crawlers.engineeringblogs_xyz.cronjob.startingDeadlineSeconds | int | `3600` |  |
| crawlers.engineeringblogs_xyz.cronjob.ttlSecondsAfterFinished | int | `900` |  |
| crawlers.engineeringblogs_xyz.enabled | bool | `true` |  |
| crawlers.rm3l_org.cronjob.activeDeadlineSeconds | int | `1800` |  |
| crawlers.rm3l_org.cronjob.affinity | object | `{}` |  |
| crawlers.rm3l_org.cronjob.articleMaxAgeDays | int | `365` |  |
| crawlers.rm3l_org.cronjob.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.rm3l_org.cronjob.enabled | bool | `false` |  |
| crawlers.rm3l_org.cronjob.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.rm3l_org.cronjob.image.repository | string | `"rm3l/dev-feed-crawler-rm3l_org"` |  |
| crawlers.rm3l_org.cronjob.imagePullSecrets | list | `[]` |  |
| crawlers.rm3l_org.cronjob.podAnnotations | object | `{}` |  |
| crawlers.rm3l_org.cronjob.podSecurityContext.runAsNonRoot | bool | `true` |  |
| crawlers.rm3l_org.cronjob.resources | object | `{}` |  |
| crawlers.rm3l_org.cronjob.restartPolicy | string | `"OnFailure"` |  |
| crawlers.rm3l_org.cronjob.schedule | string | `"0 0 * * *"` |  |
| crawlers.rm3l_org.cronjob.startingDeadlineSeconds | int | `3600` |  |
| crawlers.rm3l_org.cronjob.ttlSecondsAfterFinished | int | `900` |  |
| crawlers.rm3l_org.enabled | bool | `true` |  |
| datasource.password | string | `""` |  |
| datasource.url | string | `""` |  |
| datasource.user | string | `""` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"rm3l/dev-feed-api"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"dev-feed-api.local"` |  |
| ingress.hosts[0].paths | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe | object | `{"initialDelaySeconds":3,"periodSeconds":90,"timeoutSeconds":10}` | Configure the liveness healthcheck for the containers |
| mariadb.auth.database | string | `"dev-feed"` |  |
| mariadb.auth.password | string | `"pl34s3Ch4ng3M3"` |  |
| mariadb.auth.replicationPassword | string | `"pl34s3Ch4ng3M3"` |  |
| mariadb.auth.replicationUser | string | `"replicator"` |  |
| mariadb.auth.username | string | `"db-user"` |  |
| mariadb.enabled | bool | `true` |  |
| mongodb.auth.database | string | `"dev-feed"` |  |
| mongodb.auth.password | string | `"pl34s3Ch4ng3M3"` |  |
| mongodb.auth.rootPassword | string | `"pl34s3Ch4ng3M3"` |  |
| mongodb.auth.username | string | `"db-user"` |  |
| mongodb.enabled | bool | `false` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| readinessProbe | object | `{"initialDelaySeconds":3,"periodSeconds":4,"timeoutSeconds":10}` | Configure the readiness healthcheck for the containers |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsGroup | int | `65534` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `65534` |  |
| service.port | int | `28080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |
| startupProbe | object | `{"failureThreshold":10,"initialDelaySeconds":180,"periodSeconds":4,"timeoutSeconds":10}` | Configure the startup healthcheck for the containers |
| strategy | object | `{}` | Strategy used to replace old Pods by new ones |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)