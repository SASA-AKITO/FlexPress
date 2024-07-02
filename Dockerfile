FROM alpine:3.16 AS builder

ARG VERSION=0.1.1
ARG TARGETPLATFORM
ARG PLATFORM=${TARGETPLATFORM#linux/}

WORKDIR /home/flexpress

RUN apk add --no-cache curl tar gzip \
 && curl -LO https://github.com/SASA-AKITO/flexpress/releases/download/v${VERSION}/flexpress-${VERSION}_linux_${PLATFORM}.tar.gz \
 && tar xvfz flexpress-${VERSION}_linux_${PLATFORM}.tar.gz 

FROM alpine:3.16

ARG VERSION=0.1.1

LABEL org.opencontainers.image.source https://github.com/SASA-AKITO/flexpress

RUN  apk add --no-cache libgcc musl-dev \
  && adduser -D nonroot \
  && mkdir -p /workdir

COPY --from=builder /home/flexpress/flexpress-${VERSION}/flexpress /opt/flexpress/flexpress

WORKDIR /workdir
USER nonroot

ENTRYPOINT [ "/opt/flexpress/flexpress" ]