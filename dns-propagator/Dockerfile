FROM alpine:3.11

RUN apk add --no-cache curl jq python groff less py-pip \
&&  pip --no-cache-dir install awscli \
&&  apk del py-pip

COPY dns.json /root/dns.json

COPY init.sh /root/init.sh

RUN chmod +x /root/init.sh

WORKDIR /root

CMD ["/root/init.sh"]