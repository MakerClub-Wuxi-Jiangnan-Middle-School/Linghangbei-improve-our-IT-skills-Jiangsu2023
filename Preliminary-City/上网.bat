@echo off

::Ҫ�޸ĵ�����������
set NET_NAME="��̫��"
::��̬IP
set NET_IP="192.168.1.109"
::��������
set NET_MASK="255.255.255.0"
::Ĭ������
set NET_GATE="192.168.1.1"
::��ѡDNS������
set DNS_FIRST="223.5.5.5"
::��ѡDNS������
SET DNS_SECOND="114.114.114.114"

:set

netsh interface ipv4 set dnsservers %NET_NAME% static %DNS_FIRST% primary no
netsh interface ipv4 add dnsservers %NET_NAME% %DNS_SECOND% index=2 no
goto done
 
:done