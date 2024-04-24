FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN \
    apt-get update && \
    apt-get --no-install-recommends --yes install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg \
        wget \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | gpg -o /usr/share/keyrings/kubernetes-apt-keyring.gpg --dearmor
RUN echo 'deb [signed-by=/usr/share/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | tee /etc/apt/sources.list.d/kubernetes.list

RUN \
    apt-get update && \
    apt-get --no-install-recommends --yes install \
        vim emacs-nox nano \
        jq \
        tar gzip bzip2 zip unzip p7zip \
        openssh-client \
        openssl \
        git \
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
        kubectl \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
