# Benchmark Docker Network

This repository contains a `Dockerfile` to build a container with the [`nuttcp` network benchmarking tool](https://www.nuttcp.net/), and a `docker-compose.yml` file that starts a server and a client to benchmark network perfomance running the nuttcp tool routing communications through the host and through the docker network defined in the compose file.

## Running the benchmark

To run the benchmark you only need to run:

```
docker-compose up
```
