# zbx-active-proxy-ping
Zabbix template v3.4 for visualization of network problems between Zabbix server and active proxy. Useful if you don't monitor the network itself.
LLD script to explore the trace from active proxy to Zabbix server via mtr and create an ICMP test for each network node by simple check. 
LLD script has to be run by cron. If a LLD update interval much less than a keep lost resources period you may monitor differernt routs. 
Assume proxy monitored via itself.
Master and dependent item prototypes for discarding zero values of ping response time in case of timeout (for Zabbix below v4.2, in v4.2 there is discarding via validation in preprocessing).
