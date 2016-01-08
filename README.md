# docker-fluentd-influxdb

Docker image to ship docker and mesos logs using fluentd from a Docker host to InfluxDB v0.8

Notes:
- This image is using InfluxDB version 0.8 (currently deprecated)
- The fluentd configuration used to configure the InfluxDB plugin is passed to the docker container as additional arguments. Please take a look at the [InfluxDB Plugin for fluentd documentation](https://github.com/fangli/fluent-plugin-influxdb) for additional configuration options.

Example Usage: `docker run -d -v /var/lib/docker/containers:/var/lib/docker/containers -v /tmp/mesos:/tmp/mesos --name=fluentd geappliances/docker-fluentd-influxdb:latest --inline-config '<match *.logs>\ntype influxdb\ndbname fluentd\nuser username\npassword password\nflush_interval 10s\nhost 1.2.3.4\nport 8086\n</match>'`
