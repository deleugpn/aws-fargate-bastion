FROM alpine:3.11

RUN apk add openssh

RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa

RUN echo "root:$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 36 ; echo '')" | chpasswd

COPY sshd_config /etc/ssh/sshd_config

COPY init.sh /init.sh

RUN chmod +x /init.sh

RUN mkdir ~/.ssh/ \
&&  touch ~/.ssh/authorized_keys

RUN chmod 0700 ~/.ssh \
&&  chmod 0600 ~/.ssh/authorized_keys

EXPOSE 22

CMD ["/init.sh"]