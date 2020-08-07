FROM debian:bullseye-slim

RUN \
    apt-get update \
    \
    && apt-get install -y --no-install-recommends \
        adb \
        android-libadb \
        android-libbase \
        android-libcutils \
        android-liblog \
    \
    && rm -fr \
        /tmp/* \
        /var/{cache,log}/* \
        /var/lib/apt/lists/*

ENTRYPOINT ["adb"]
CMD ["-a", "server", "nodaemon"]
