FROM alpine:3.16.3

RUN apk add --no-cache bash
ARG VERSION=v4.9.6
ARG BINARY=yq_linux_amd64

RUN wget https://github.com/mikefarah/yq/releases/download/${VERSION}/${BINARY}.tar.gz -O - |\
	tar xz && mv ${BINARY} /usr/bin/yq

ENTRYPOINT ["bash"]
