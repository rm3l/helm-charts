# dev-feed

GraphQL-based API exposing a list of daily curated content from top engineering blogs and articles.
https://github.com/rm3l/dev-feed

[![Latest version](https://img.shields.io/badge/latest_version-1.1.1-blue)](https://artifacthub.io/packages/helm/rm3l/dev-feed)

## Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-dev-feed rm3l/dev-feed --version 1.1.1
```

See https://artifacthub.io/packages/helm/rm3l/dev-feed?modal=install

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mariadb | 9.6.2 |
| https://charts.bitnami.com/bitnami | mongodb | 10.27.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| auth.password | string | `"r3allyPl34s3Ch4ng3M3"` |  |
| config | string | `"logging.level.org.rm3l.devfeed=INFO\ndatasource.poolSize=2\nexecutor.thread-pool.size=20\n#article.screenshot.service=pagespeedonline\n#pagespeedonline.api.timeoutSeconds=300\n"` |  |
| crawlers.discoverdev_io.activeDeadlineSeconds | int | `1800` |  |
| crawlers.discoverdev_io.affinity | object | `{}` |  |
| crawlers.discoverdev_io.articleMaxAgeDays | int | `365` |  |
| crawlers.discoverdev_io.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.discoverdev_io.enabled | bool | `true` |  |
| crawlers.discoverdev_io.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.discoverdev_io.image.repository | string | `"rm3l/dev-feed-crawler-discoverdev_io"` |  |
| crawlers.discoverdev_io.imagePullSecrets | list | `[]` |  |
| crawlers.discoverdev_io.podAnnotations | object | `{}` |  |
| crawlers.discoverdev_io.podSecurityContext.runAsNonRoot | bool | `true` |  |
| crawlers.discoverdev_io.restartPolicy | string | `"OnFailure"` |  |
| crawlers.discoverdev_io.schedule | string | `"0 0 * * 0"` |  |
| crawlers.discoverdev_io.startingDeadlineSeconds | int | `3600` |  |
| crawlers.discoverdev_io.ttlSecondsAfterFinished | int | `900` |  |
| crawlers.engineeringblogs_xyz.activeDeadlineSeconds | int | `1800` |  |
| crawlers.engineeringblogs_xyz.affinity | object | `{}` |  |
| crawlers.engineeringblogs_xyz.articleMaxAgeDays | int | `365` |  |
| crawlers.engineeringblogs_xyz.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.engineeringblogs_xyz.enabled | bool | `true` |  |
| crawlers.engineeringblogs_xyz.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.engineeringblogs_xyz.image.repository | string | `"rm3l/dev-feed-crawler-engineeringblogs_xyz"` |  |
| crawlers.engineeringblogs_xyz.imagePullSecrets | list | `[]` |  |
| crawlers.engineeringblogs_xyz.podAnnotations | object | `{}` |  |
| crawlers.engineeringblogs_xyz.podSecurityContext.runAsNonRoot | bool | `true` |  |
| crawlers.engineeringblogs_xyz.restartPolicy | string | `"OnFailure"` |  |
| crawlers.engineeringblogs_xyz.schedule | string | `"*/30 * * * *"` |  |
| crawlers.engineeringblogs_xyz.startingDeadlineSeconds | int | `3600` |  |
| crawlers.engineeringblogs_xyz.ttlSecondsAfterFinished | int | `900` |  |
| crawlers.rm3l_org.activeDeadlineSeconds | int | `1800` |  |
| crawlers.rm3l_org.affinity | object | `{}` |  |
| crawlers.rm3l_org.articleMaxAgeDays | int | `365` |  |
| crawlers.rm3l_org.concurrencyPolicy | string | `"Forbid"` |  |
| crawlers.rm3l_org.enabled | bool | `true` |  |
| crawlers.rm3l_org.image.pullPolicy | string | `"IfNotPresent"` |  |
| crawlers.rm3l_org.image.repository | string | `"rm3l/dev-feed-crawler-rm3l_org"` |  |
| crawlers.rm3l_org.imagePullSecrets | list | `[]` |  |
| crawlers.rm3l_org.podAnnotations | object | `{}` |  |
| crawlers.rm3l_org.podSecurityContext.runAsNonRoot | bool | `true` |  |
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
| ingress.hosts | list | `[{"host":"dev-feed-api.local","paths":[]}]` |  kubernetes.io/tls-acme: "true" |
| ingress.tls | list | `[]` |  |
| livenessProbe | object | `{"timeoutSeconds":10}` | Configure the liveness healthcheck for the containers |
| livenessProbe.timeoutSeconds | int | `10` |  periodSeconds: 90 |
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
| readinessProbe | object | `{"timeoutSeconds":10}` | Configure the readiness healthcheck for the containers |
| readinessProbe.timeoutSeconds | int | `10` |  periodSeconds: 4 |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"2048Mi"` |  |
| resources.requests.cpu | string | `"500m"` |  |
| resources.requests.memory | string | `"1024Mi"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |    drop:   - ALL |
| securityContext.runAsGroup | int | `65534` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `65534` |  |
| service.port | int | `28080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  If not set and create is true, a name is generated using the fullname template |
| startupProbe | object | `{"failureThreshold":10,"initialDelaySeconds":180,"periodSeconds":4,"timeoutSeconds":10}` | Configure the startup healthcheck for the containers |
| strategy | object | `{}` | Strategy used to replace old Pods by new ones |
| tolerations | list | `[]` |  |

