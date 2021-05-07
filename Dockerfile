FROM debian:latest

# Update image dependencies
RUN apt-get update -qq \
  && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends nuttcp \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && truncate -s 0 /var/log/*log

# Expose default port for nuttcp server and data transfers
EXPOSE 5000-5004
EXPOSE 5000-5004/udp

# Start nuttcp server
CMD ["nuttcp", "-S", "--nofork"]

