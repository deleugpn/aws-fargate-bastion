#!/bin/sh

sed -i "s/!NEW_IP!/$(curl ipinfo.io | jq $data.ip)/g" /root/dns.json \
&& sed -i "s/!DOMAIN!/${DOMAIN}/g" /root/dns.json \
&& aws route53 change-resource-record-sets --hosted-zone-id ${HOSTED_ZONE} --change-batch file:///root/dns.json