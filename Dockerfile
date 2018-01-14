FROM alpine:3.7

ARG VCS_REF
ARG BUILD_DATE

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/apihackers/docker-pyup" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.schema-version="1.0"


RUN apk add --no-cache rsync

# ENTRYPOINT ["/usr/bin/pyup"]
