FROM alpine/helm:latest
ENV VERSION=2.11.2 
ENV ARCH=amd64
RUN apk add --update --no-cache bash
RUN wget -q https://github.com/controlplaneio/kubesec/releases/download/v$VERSION/kubesec_linux_$ARCH.tar.gz 
RUN tar xzvf kubesec_linux_$ARCH.tar.gz > /dev/null && rm -f kubesec_linux_$ARCH.tar.gz
ENTRYPOINT ["entrypoint.sh"]