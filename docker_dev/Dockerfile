FROM mweber/erlang:R16B02

RUN set -xe \
  && apt-get update \
  && apt-get install -y --no-install-recommends git ca-certificates \
  && useradd -ms /bin/bash -u 501 mweber

USER mweber

RUN echo '[user]' > ~/.gitconfig \
  && echo '    email = antidote@example.com' >> ~/.gitconfig \
  && echo '    name = Antidote Dev' >> ~/.gitconfig \
  && mkdir ~/antidote \
  && echo 'export REL=$HOME/antidote/rel' >> ~/.bashrc \
  && echo 'export DEV=$HOME/antidote/dev' >> ~/.bashrc

VOLUME /antidote_dev

EXPOSE 10017 10018 10019
EXPOSE 10027 10028 10029
EXPOSE 10037 10038 10039
EXPOSE 10047 10048 10049
EXPOSE 10057 10058 10059
EXPOSE 10067 10068 10069

CMD ["bash"]
