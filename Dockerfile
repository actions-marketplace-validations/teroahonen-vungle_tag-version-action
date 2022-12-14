FROM golang:1.18 as builder

ENV TAG_VERSION_VERSION=v0.4.0

RUN go install github.com/rleszilm/tag-version@${TAG_VERSION_VERSION}

### Action Docker image ###
FROM alpine

RUN apk add -q libc6-compat ca-certificates \
    && rm -rf /var/cache/apk/*

COPY --from=builder /go/bin/tag-version .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
#WORKDIR /github/workspace

ENTRYPOINT ["/entrypoint.sh"]
