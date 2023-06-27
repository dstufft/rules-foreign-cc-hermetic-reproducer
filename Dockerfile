FROM debian:bookworm-slim

RUN apt-get update && apt-get install wget --yes

RUN wget https://github.com/bazelbuild/bazelisk/releases/download/v1.17.0/bazelisk-linux-amd64 -O /usr/bin/bazel \
    && chmod +x /usr/bin/bazel

WORKDIR /src
