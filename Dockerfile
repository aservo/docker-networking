FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN \
    apt-get update && \
    apt-get --no-install-recommends --yes install \
        ca-certificates \
        vim emacs-nox nano \
        jq \
        tar gzip bzip2 zip unzip p7zip \
        openssh-client \
        openssl \
        gnupg \
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
        ldap-utils \
        postgresql-client \
        nettle-bin \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
