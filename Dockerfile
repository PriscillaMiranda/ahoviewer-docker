FROM debian:latest

ARG VCS_REF

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/PriscillaMiranda/ahoviewer-docker"

# Install dependencies
RUN apt-get update && apt-get install -y -q --no-install-recommends \
    ca-certificates \
    git \
    clang \
    make \
    autoconf \
    automake \
    gettext \
    libgtkmm-2.4-dev \
    libglibmm-2.4-dev \
    libconfig++-dev \
    openssl \
    libcurl4-openssl-dev \
    libxml2-dev \
    libsecret-1-dev \
    libzip-dev \
 && git clone "https://github.com/ahodesuka/ahoviewer.git" \
 && cd ahoviewer \
 && ./bootstrap --disable-dependency-tracking \
 && make \
 && make install \
 && apt-get autoremove -y \
 && apt-get clean \
 && rm -rf /tmp/* /var/lib/apt/lists/* /var/cache/debconf/*-old

ENTRYPOINT ["ahoviewer"]
