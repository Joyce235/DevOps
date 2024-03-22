{{- define "frontend.labels" -}}
app: {{ .Values.frontend.selectorName  }}
env: {{ .Values.app.env  }}
{{- end -}}
{{- define "backend.labels" -}}
app: {{ .Values.backend.selectorName  }}
env: {{ .Values.app.env  }}
{{- end -}}