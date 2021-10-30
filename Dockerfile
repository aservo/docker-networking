FROM ubuntu:20.04

RUN \
    apt-get update && \
    apt-get -y install \
        ca-certificates \
        vim emacs-nox nano \
        jq \
        tar gzip bzip2 zip unzip p7zip \
        openssh-client \
        openssl \
        git \
        curl \
        wget \
        iputils-arping \
        iputils-clockdiff \
        iputils-ping \
        iputils-tracepath \
        iproute2 \
        net-tools \
        dnsutils \
        tcpdump \
        telnet \
        nmap \
        ncat \
        socat \
        tshark \
        traceroute \
        tcptraceroute \
        whois \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
