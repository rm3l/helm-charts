{{/*
Expand the name of the chart.
*/}}
{{- define "atuin.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "atuin.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "atuin.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "atuin.postgresqlConnectionString" -}}
{{- printf "postgresql://%s:%s@%s-postgresql.%s.svc.cluster.local:5432/%s" .Values.postgresql.auth.username .Values.postgresql.auth.password (include "atuin.fullname" .) .Release.Namespace .Values.postgresql.auth.database -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "atuin.labels" -}}
helm.sh/chart: {{ include "atuin.chart" . }}
{{ include "atuin.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "atuin.selectorLabels" -}}
app.kubernetes.io/name: {{ include "atuin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "atuin.backupLabels" -}}
helm.sh/chart: {{ include "atuin.chart" . }}
{{ include "atuin.backupSelectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "atuin.backupSelectorLabels" -}}
app.kubernetes.io/name: {{ include "atuin.name" . }}-backup
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "atuin.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "atuin.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
