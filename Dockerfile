FROM alpine:latest

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.8/main' >> /etc/apk/repositories && \
    apk add --update --no-cache \
    libssl1.0 libcrypto1.0 \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

COPY wkhtmltopdf /bin

ENTRYPOINT ["wkhtmltopdf"]
