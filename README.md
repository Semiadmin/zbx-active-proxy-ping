# zbx-active-proxy-ping
Zabbix template for network problem visualization between Zabbix server and active proxy. Useful if you don't monitor this network.
LLD script to explore trace from active proxy to Zabbix server and create an ICMP test for each host via mtr. 
LLD script has to be run by cron. If LLD interval much less than keep lost resources period you may monitor differernt routs. 
Assume proxy monitored via itself.
Master and dependent item prototypes for discarding zero values of ping response time in case of timeout (for Zabbix below v4.2, in v4.2 there is discarding via validation in preprocessing).
