FROM docker.elastic.co/logstash/logstash:8.5.3

COPY --chmod=0644 --chown=logstash:logstash logstash.yml /usr/share/logstash/config/logstash.yml
COPY --chmod=0644 --chown=logstash:logstash ./conf /usr/share/logstash/pipeline
