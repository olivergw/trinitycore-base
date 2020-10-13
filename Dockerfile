FROM debian:10
LABEL maintainer="Oliver GW ogw@nwcn.co.uk"

RUN apt-get update && apt-get install -y \
    git \
    clang \
    cmake \
    gcc \
    g++ \
    libmariadbclient-dev \
    libssl-dev \
    libbz2-dev \
    libreadline-dev \
    libncurses-dev \
    libboost-all-dev \
    p7zip \
    default-libmysqlclient-dev \
    mariadb-client \
    && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang 100
