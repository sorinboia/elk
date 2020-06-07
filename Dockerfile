FROM sebp/elk:770

COPY 30-waf-logs-full-logstash.conf /etc/logstash/conf.d/
COPY nodes/ /var/lib/elasticsearch
