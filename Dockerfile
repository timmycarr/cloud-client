FROM alpine:latest
RUN apk --update add openjdk8-jre bash

COPY VCC-4.4.0 /VCC-4.4.0

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/VCC-4.4.0/bin/cloudclient.sh"]
