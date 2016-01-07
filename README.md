# docker-fluentd-influxdb

Docker image to ship docker logs from a host to InfluxDB

Docker Environment Variables:
- `INFLUXDB_DBNAME`: InfluxDB Database Name (default: fluentd)
- `INFLUXDB_HOST`: InfluxDB Hostname (default: localhost)
- `INFLUXDB_PORT` InfluxDB Port (default: 8086)
