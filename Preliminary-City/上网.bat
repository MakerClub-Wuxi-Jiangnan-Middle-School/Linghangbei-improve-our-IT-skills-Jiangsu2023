@echo off

::要修改的网络适配器
set NET_NAME="以太网"
::静态IP
set NET_IP="192.168.1.109"
::子网掩码
set NET_MASK="255.255.255.0"
::默认网关
set NET_GATE="192.168.1.1"
::首选DNS服务器
set DNS_FIRST="223.5.5.5"
::备选DNS服务器
SET DNS_SECOND="114.114.114.114"

:set

netsh interface ipv4 set dnsservers %NET_NAME% static %DNS_FIRST% primary no
netsh interface ipv4 add dnsservers %NET_NAME% %DNS_SECOND% index=2 no
goto done
 
:done