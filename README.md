# docker-fluentd-influxdb

Docker image to ship docker logs from a Docker host to InfluxDB v0.8

Note: This image is using InfluxDB version 0.8 (currently deprecated)

Docker Environment Variables:
- `INFLUXDB_DBNAME`: InfluxDB Database Name (default: fluentd)
- `INFLUXDB_HOST`: InfluxDB Hostname (default: localhost)
- `INFLUXDB_PORT`: InfluxDB Port (default: 8086)
- `INFLUXDB_USER`: InfluxDB User
- `INFLUXDB_PASS`: InfluxDB Password
