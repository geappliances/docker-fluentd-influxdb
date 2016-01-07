FROM kiyoto/docker-fluentd:latest

ENV INFLUXDB_DBNAME fluentd
ENV INFLUXDB_HOST localhost
ENV INFLUXDB_PORT 8086
ENV INFLUXDB_USER user
ENV INFLUXDB_PASS pass

RUN fluent-gem install fluent-plugin-influxdb -v 0.1.8
ADD fluent.conf /etc/fluent/

ENTRYPOINT ["/usr/local/bin/fluentd", "-c", "/etc/fluent/fluent.conf", "-i", "'<match docker.all>\ntype influxdb\ndbname $INFLUXDB_DBNAME\nuser $INFLUXDB_USER\npassword $INFLUXDB_PASS\nflush_interval 10s\nhost $INFLUXDB_HOST\nport $INFLUXDB_PORT\n</match>'"]
