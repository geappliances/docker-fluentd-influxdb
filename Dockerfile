FROM kiyoto/docker-fluentd:latest
RUN fluent-gem install fluent-plugin-influxdb -v 0.1.8
ADD fluent.conf /etc/fluent/
ENTRYPOINT ["/usr/local/bin/fluentd", "-c", "/etc/fluent/fluent.conf"]
