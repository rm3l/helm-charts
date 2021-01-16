# ghost-export-to-s3

Helm Chart for backing up a headless Ghost Blog to AWS S3

[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/ghost-export-to-s3)](https://artifacthub.io/packages/search?repo=ghost-export-to-s3) ![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

## Installation

```bash
# Add repository
helm repo add ghost-export-to-s3 https://raw.githubusercontent.com/rm3l/ghost-export-to-s3/main
# Install Chart
helm install my-ghost-export-to-s3 ghost-export-to-s3/ghost-export-to-s3 --version 0.0.1
```

See https://artifacthub.io/packages/helm/ghost-export-to-s3/ghost-export-to-s3?modal=install

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
| cronJob.main.image | string | `"amazon/aws-cli:2.1.15"` |  |
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

