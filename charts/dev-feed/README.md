## dev-feed

GraphQL-based API exposing a list of daily curated content from top engineering blogs and articles.
https://github.com/rm3l/dev-feed

### Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-dev-feed rm3l/dev-feed --version 0.1.0
```

See https://artifacthub.io/packages/helm/rm3l/dev-feed?modal=install

### Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mariadb | 9.3.0 |

### Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| auth.password | string | `"r3allyPl34s3Ch4ng3M3"` |  |
| config | string | `"logging.level.org.rm3l.devfeed=INFO\ndatasource.poolSize=2\n\n# Crawlers disabled because they are now deployed as independent Kubernetes CronJobs (1 per crawler service)\ncrawlers.task.fetch-articles=false\nexecutor.thread-pool.size=20\n\n#article.screenshot.service=pagespeedonline\n#pagespeedonline.api.timeoutSeconds=300\n"` |  |
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
| strategy | object | `{}` | Strategy used to replace old Pods by new ones  |
| tolerations | list | `[]` |  |

#