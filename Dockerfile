FROM alpine

COPY squid.conf /etc/squid/squid.conf
RUN apk update && \
    apk add squid curl && \
    rm -rf /var/cache/apk && \
    squid -Nz

CMD squid -NYCd 1

