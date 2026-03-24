{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "cluster-probes.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "cluster-probes.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := include "cluster-probes.name" . -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cluster-probes.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels following app.kubernetes.io and giantswarm.io standards.
*/}}
{{- define "cluster-probes.labels" -}}
helm.sh/chart: {{ include "cluster-probes.chart" . }}
app.kubernetes.io/name: {{ include "cluster-probes.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
giantswarm.io/managed-by: {{ .Chart.Name }}
{{- if .Chart.Annotations }}
{{- with index .Chart.Annotations "io.giantswarm.application.team" }}
application.giantswarm.io/team: {{ . }}
{{- end }}
{{- end }}
{{- end -}}

{{/*
Selector labels.
*/}}
{{- define "cluster-probes.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cluster-probes.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}