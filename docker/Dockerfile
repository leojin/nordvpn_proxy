FROM ubuntu:18.04

COPY bin /nordvpn/bin
COPY conf /nordvpn/conf
COPY script /nordvpn/script

RUN ["/nordvpn/script/main.sh"]

EXPOSE 8080
EXPOSE 8081

ENTRYPOINT ["/nordvpn/bin/server"]