FROM squidfunk/mkdocs-material:9.4.3
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

COPY action.sh /action.sh

RUN apk add --no-cache bash build-base && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
