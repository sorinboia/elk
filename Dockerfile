FROM isclab/elk:latest

COPY 30-waf-logs-full-logstash.conf /etc/logstash/conf.d/
