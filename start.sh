#!/bin/bash

cat << INDEXHTML > src/index.html
{
  name: "$(cat /etc/hostname).goffinet.net"
  ipv4: "$(dig @ns1.google.com -t txt o-o.myaddr.l.google.com +short -4 | sed 's/"//g')"
}
INDEXHTML
docker-compose up -d
