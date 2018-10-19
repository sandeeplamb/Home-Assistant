#!/bin/bash
DUCK_DNS_TOKEN="YOUR-TOKEN-HERE"
DUCK_DNS_DOMAIN="YOUR-DNS-HERE"
ROUTER_IPV4_ADDRESS=`curl -s -4 icanhazip.com`
ROUTER_IPV6_ADDRESS="curl -s -6 icanhazip.com"

curl -s https://www.duckdns.org/update/${DUCK_DNS_DOMAIN}/${DUCK_DNS_TOKEN}/${ROUTER_IPV4_ADDRESS}
echo ""
curl -s https://www.duckdns.org/update/${DUCK_DNS_DOMAIN}/${DUCK_DNS_TOKEN}/${ROUTER_IPV6_ADDRESS}
echo ""