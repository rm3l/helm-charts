{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "dev-feed.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "dev-feed.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Return the JDBC URL
*/}}
{{- define "dev-feed.databaseJdbcUrl" -}}
{{- if .Values.mariadb.enabled }}
{{- printf "jdbc:mariadb://%s-mariadb.%s.svc.cluster.local:3306/dev-feed" (include "dev-feed.fullname" .) .Release.Namespace -}}
{{- else -}}
{{- printf "jdbc:h2:mem:%s;DB_CLOSE_DELAY=-1" (include "dev-feed.fullname" .) -}}
{{- end -}}
{{- end -}}

{{/*
Return the JDBC Driver
*/}}
{{- define "dev-feed.databaseJdbcDriver" -}}
{{- if .Values.mariadb.enabled }}
{{- printf "org.mariadb.jdbc.Driver" -}}
{{- else -}}
{{- printf "org.h2.Driver" -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "dev-feed.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "dev-feed.labels" -}}
helm.sh/chart: {{ include "dev-feed.chart" . }}
{{ include "dev-feed.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "dev-feed.selectorLabels" -}}
app.kubernetes.io/name: {{ include "dev-feed.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "dev-feed.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "dev-feed.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}
