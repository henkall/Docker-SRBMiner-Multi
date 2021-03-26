#
# Dockerfile for SRBMiner-Multi, https://github.com/hellcatz/luckpool
# see run.sh
#

FROM debian:buster-slim

RUN apt-get update && apt-get -y install wget xz-utils && \
    cd /opt && wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.6.9/SRBMiner-Multi-0-6-9-Linux.tar.xz && \
	tar xf SRBMiner-Multi-0-6-9-Linux.tar.xz && rm -rf /opt/SRBMiner-Multi-0-6-9-Linux.tar.xz && \
	apt-get -y purge wget xz-utils && apt-get -y autoremove --purge && apt-get -y clean && apt-get -y autoclean; rm -rf /var/lib/apt-get/lists/*
USER nobody:nogroup
# it needs a workdir spec in order to see the 'verus-solver' binary right next to it
WORKDIR "/opt/SRBMiner-Multi-0-6-9-Linux"

# EOF
