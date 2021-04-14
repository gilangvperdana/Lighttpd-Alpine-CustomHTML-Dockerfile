FROM alpine:latest

RUN apk update \
    && apk add lighttpd \
    && rm -rf /var/cache/apk/*

ADD ./HTML/ /var/www/localhost/htdocs

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]