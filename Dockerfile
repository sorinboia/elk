FROM sebp/elk:740
RUN apt-get update
RUN apt-get install telnet tcpdump -y
COPY 30-waf-logs-full-logstash.conf /etc/logstash/conf.d/
COPY dashboards.tar.gz /root/
RUN cd /root/ && tar xvzf dashboards.tar.gz -C /var/lib/elasticsearch 
#COPY nodes/ /var/lib/elasticsearch
