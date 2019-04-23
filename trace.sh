#!/bin/bash
ip=`awk -F"=" '/^Server=/ {print $2}' /etc/zabbix/zabbix_proxy.conf`
trace=`mtr -rn $ip|awk 'BEGIN{i=0;print"{\"data\":["}/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/{if(i>0){print","};i++;printf"{\"{#HOST}\":\"%s\"",$2;print",";printf"\"{#HOP}\":\"%s\"}",i}END{print"]}"}'`
/usr/bin/zabbix_sender -c /etc/zabbix/zabbix_agentd.conf -k trace.discovery -o "$trace" 
