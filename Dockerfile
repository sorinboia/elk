FROM sebp/elk:770
RUN apt-get update
RUN apt-get install telnet tcpdump -y
COPY 30-waf-logs-full-logstash.conf /etc/logstash/conf.d/
COPY nodes/ /var/lib/elasticsearch
