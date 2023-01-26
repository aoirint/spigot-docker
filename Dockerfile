# syntax=docker/dockerfile:1.4
FROM eclipse-temurin:17-jre

RUN <<EOF
  set -eu

  apt-get update
  apt-get install -y \
    wget \
    git \
    gosu
  apt-get clean
  rm -rf /var/lib/apt/lists/*

  groupadd -o -g 1000 user
  useradd -o -m -u 1000 -g user user
EOF

ARG SPIGOT_FILE=spigot-1.19.3.jar
ADD "src/${SPIGOT_FILE}" "/data/spigot.jar"

WORKDIR /work
ENTRYPOINT [ "gosu", "user", "java", "-jar", "/data/spigot.jar" ]
