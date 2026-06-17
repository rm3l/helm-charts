{{/*
Expand the name of the chart.
*/}}
{{- define "adguard-home.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "adguard-home.fullname" -}}
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
{{- define "adguard-home.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "adguard-home.labels" -}}
helm.sh/chart: {{ include "adguard-home.chart" . }}
{{ include "adguard-home.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "adguard-home.selectorLabels" -}}
app.kubernetes.io/name: {{ include "adguard-home.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "adguard-home.backupLabels" -}}
helm.sh/chart: {{ include "adguard-home.chart" . }}
{{ include "adguard-home.backupSelectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "adguard-home.backupSelectorLabels" -}}
app.kubernetes.io/name: {{ include "adguard-home.name" . }}-backup
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "adguard-home.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "adguard-home.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Return the image registry to use, preferring:
1) .Values.image.registry
2) .Values.global.imageRegistry
3) docker.io
*/}}
{{- define "adguard-home.imageRegistry" -}}
{{- default "docker.io" (coalesce .Values.image.registry .Values.global.imageRegistry) -}}
{{- end -}}

{{/*
Return true when the repository already contains a registry (FQDN, localhost, or host:port).
Logic based on Docker's reference rules: if the first path component contains '.' or ':'
or is exactly 'localhost', it is treated as a registry host.
*/}}
{{- define "adguard-home.repositoryHasRegistry" -}}
{{- $repo := (toString .) -}}
{{- $first := (first (splitList "/" $repo)) -}}
{{- if or (eq $first "localhost") (contains "." $first) (contains ":" $first) -}}
true
{{- else -}}
false
{{- end -}}
{{- end -}}

{{/*
Return an image repository qualified with a registry (FQDN).
If .Values.image.repository already contains a registry, it is returned as-is.
Otherwise, the configured registry is prepended.
*/}}
{{- define "adguard-home.imageRepository" -}}
{{- $repo := .Values.image.repository -}}
{{- if eq (include "adguard-home.repositoryHasRegistry" $repo | trim) "true" -}}
{{- $repo -}}
{{- else -}}
{{- printf "%s/%s" (include "adguard-home.imageRegistry" .) $repo -}}
{{- end -}}
{{- end -}}

{{/*
Return the fully qualified AdGuard Home image (repository + tag).
*/}}
{{- define "adguard-home.image" -}}
{{- printf "%s:%s" (include "adguard-home.imageRepository" .) (.Values.image.tag | default .Chart.AppVersion) -}}
{{- end -}}
