FROM kiyoto/docker-fluentd:latest

ENV INFLUXDB_DBNAME fluentd
ENV INFLUXDB_HOST localhost
ENV INFLUXDB_PORT 8086

RUN fluent-gem install fluent-plugin-influxdb

ADD fluent.conf /etc/fluent/

CMD /usr/local/bin/fluentd -c /etc/fluent/fluent.conf -i'<match docker.all>\ntype influxdb\ndbname $INFLUXDB_DBNAME\nflush_interval 10s\nhost $INFLUXDB_HOST\nport $INFLUXDB_PORT\n</match>'
