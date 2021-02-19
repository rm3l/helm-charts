# ghost-export-to-s3

Automated backups of headless Ghost Blogs to AWS S3.
https://rm3l.org/leveraging-kubernetes-cronjobs-for-automated-backups-of-a-headless-ghost-blog-to-aws-s3/

[![Latest version](https://img.shields.io/badge/latest_version-0.13.0-blue)](https://artifacthub.io/packages/helm/rm3l/ghost-export-to-s3)

## Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-ghost-export-to-s3 rm3l/ghost-export-to-s3 --version 0.13.0
```

See https://artifacthub.io/packages/helm/rm3l/ghost-export-to-s3?modal=install

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| aws.accessKeyId | string | `"my-aws-access-key-id"` | AWS Access Key. Must have the permissions to write to the target bucket. |
| aws.s3 | object | `{"destination":"s3://path/to/my/s3-export.json"}` | Target destination (absolute) in AWS S3, where the backup file should be written |
| aws.secretKey | string | `"my-aws-secret-key"` | AWS Secret Key. Must have the permissions to write to the target bucket. |
| cronJob.backoffLimit | int | `1` |  |
| cronJob.concurrencyPolicy | string | `"Forbid"` |  |
| cronJob.init.image | string | `"curlimages/curl:7.74.0"` |  |
| cronJob.init.imagePullPolicy | string | `"IfNotPresent"` |  |
| cronJob.init.resources | object | `{}` |  |
| cronJob.main.image | string | `"amazon/aws-cli:2.1.22"` |  |
| cronJob.main.imagePullPolicy | string | `"IfNotPresent"` |  |
| cronJob.main.resources | object | `{}` |  |
| cronJob.parallelism | int | `1` |  |
| cronJob.restartPolicy | string | `"OnFailure"` |  |
| cronJob.schedule | string | `"@daily"` | How frequently the Backup job should run. Cron Syntax, as supported by Kubernetes CronJobs |
| cronJob.ttlSecondsAfterFinished | int | `300` |  |
| fullnameOverride | string | `""` |  |
| ghost.apiBaseUrl | string | `"https://my.ghost.blog/ghost"` | Base URL for the headless Ghost CMS targeted |
| ghost.password | string | `"my-ghost-password"` | Ghost CMS password |
| ghost.username | string | `"my-ghost-username"` | Ghost CMS username |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `nil` |  |
| tolerations | list | `[]` |  |

