default['zabbix']['host']['group'] = 'Hosts'
default['zabbix']['host']['name'] = node['fqdn']
default['zabbix']['host']['dns'] = node['fqdn']
default['zabbix']['host']['ipaddress'] = node['ipaddress']
default['zabbix']['host']['ipmi']['enabled'] = false
default['zabbix']['host']['ipmi']['port'] = 623
default['zabbix']['host']['ipmi']['use_ip'] = true
default['zabbix']['host']['jmx']['enabled'] = false
default['zabbix']['host']['jmx']['port'] = 12345
default['zabbix']['host']['jmx']['use_ip'] = true
default['zabbix']['host']['snmp']['enabled'] = false
default['zabbix']['host']['snmp']['port'] = 161
default['zabbix']['host']['snmp']['use_ip'] = true
default['zabbix']['host']['agent']['use_ip'] = true
