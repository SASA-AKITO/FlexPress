FROM alpine:3.16 AS builder

ARG VERSION=0.5.0
ARG TARGETPLATFORM
ARG PLATFORM=${TARGETPLATFORM#linux/}

WORKDIR /home/FlexPress

RUN apk add --no-cache curl tar gzip \
 && curl -LO https://github.com/SASA-AKITO/FlexPress/releases/download/v${VERSION}/FlexPress-${VERSION}_linux_${PLATFORM}.tar.gz \
 && tar xvfz FlexPress-${VERSION}_linux_${PLATFORM}.tar.gz 

FROM alpine:3.16

ARG VERSION=0.5.0

LABEL org.opencontainers.image.source https://github.com/SASA-AKITO/FlexPress

RUN  apk add --no-cache libgcc musl-dev \
  && adduser -D nonroot \
  && mkdir -p /workdir

COPY --from=builder /home/FlexPress/FlexPress-${VERSION}/FlexPress /opt/FlexPress/FlexPress

WORKDIR /workdir
USER nonroot

ENTRYPOINT [ "/opt/FlexPress/FlexPress" ]

