FROM alpine:3.11

ARG GIT_COMMIT
ARG BUILD_DATE

LABEL org.opencontainers.image.title="rsync" \
      org.opencontainers.image.revision=$GIT_COMMIT \
      org.opencontainers.image.source="https://github.com/apihackers/docker-rsync" \
      org.opencontainers.image.created=$BUILD_DATE \
      org.label-schema.vcs-ref=$GIT_COMMIT \
      org.label-schema.vcs-url="https://github.com/apihackers/docker-rsync" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.schema-version="1.0"


RUN apk add --no-cache rsync openssh-client

# ENTRYPOINT ["/usr/bin/pyup"]
