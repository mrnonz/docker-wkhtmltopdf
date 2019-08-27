FROM alpine:latest

RUN apk add --update --no-cache \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family \
    libssl1.0 libcrypto1.0

COPY wkhtmltopdf /bin

ENTRYPOINT ["wkhtmltopdf"]
