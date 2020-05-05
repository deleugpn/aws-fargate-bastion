#!/bin/sh

echo ${AUTHORIZED_KEYS} > ~/.ssh/authorized_keys

/usr/sbin/sshd -D