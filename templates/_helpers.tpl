{{- define "dnsmasq.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "dnsmasq.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}
