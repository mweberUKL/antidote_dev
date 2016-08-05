FROM mweber/erlang:R16B02

ENV NODE_NAME "antidote@127.0.0.1"
ENV SHORT_NAME "false"


RUN set -xe \
  && apt-get update \
  && apt-get install -y --no-install-recommends git openssl ca-certificates \
  && rm -rf /var/lib/apt/lists/*

ADD ./antidote /usr/src/antidote

RUN set -xe \
  && cd /usr/src/antidote \
  && make rel \
  && cp -R rel/antidote /opt/ \
  && sed -e 's/pb_ip, "127\.0\.0\.1"/pb_ip, "0.0.0.0"/' -e '$i,{kernel, [{inet_dist_listen_min, 9100}, {inet_dist_listen_max, 9100}]}' /usr/src/antidote/rel/antidote/etc/app.config > /opt/antidote/etc/app.config \
  && rm -rf /usr/src/antidotes

ADD ./docker_antidote/start_and_attach.sh /opt/antidote/
ADD ./docker_antidote/entrypoint.sh /

RUN chmod a+x /opt/antidote/start_and_attach.sh \
  && chmod a+x /entrypoint.sh

# persistent data
VOLUME /opt/antidote/data

# Distributed Erlang Port Mapper
EXPOSE 4368
# Ports for Antidote
EXPOSE 8085 8086 8087 8099

# Antidote RPC
EXPOSE 9100

ENTRYPOINT ["/entrypoint.sh"]

#TODO not working, since /opt/antidote/bin/antidote attach not working anymore after changing node name
CMD ["/opt/antidote/start_and_attach.sh"]
