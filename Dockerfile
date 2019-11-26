FROM debian:bullseye-slim

RUN apt-get update && \
  apt-get install lsof curl git --yes

RUN groupadd -g 1000 keybase
RUN useradd --create-home -g keybase -u 1000 keybase

RUN curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
RUN apt install ./keybase_amd64.deb --yes

USER keybase
WORKDIR /home/keybase
