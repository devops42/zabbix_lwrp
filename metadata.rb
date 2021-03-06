name             'zabbix_lwrp'
maintainer       'LLC Express 42'
maintainer_email 'cookbooks@express42.com'
license          'MIT'
description      'Installs and configures Zabbix agent and server with PostgreSQL and Nginx. Provides LWRP for creating and modifying Zabbix objects.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.3.1'
chef_version     '>= 12.5' if respond_to?(:chef_version)
source_url       'https://github.com/express42/zabbix_lwrp' if respond_to?(:source_url)
issues_url       'https://github.com/express42/zabbix_lwrp/issues' if respond_to?(:issues_url)

depends          'apt'
depends          'build-essential'
depends          'chef_nginx'
depends          'chocolatey'
depends          'database'
depends          'lvm'
depends          'php-fpm'
depends          'postgresql'

recipe           'zabbix_lwrp::agent_linux', 'Installs and configures Zabbix agent for Linux.'
recipe           'zabbix_lwrp::agent_win_bin', 'Installs and configures Zabbix agent for Windows.'
recipe           'zabbix_lwrp::agent_win_choco', 'Installs and configures Zabbix agent for Windows.'
recipe           'zabbix_lwrp::agent', 'Installs and configures Zabbix agent.'
recipe           'zabbix_lwrp::connect', 'Connects to Zabbix API to sync configuration.'
recipe           'zabbix_lwrp::database', 'Installs and configures Zabbix database.'
recipe           'zabbix_lwrp::default', 'Installs and configures Zabbix official repository and agent.'
recipe           'zabbix_lwrp::host', 'Creates host via Zabbix API.'
recipe           'zabbix_lwrp::java_gateway', 'Installs and configures Zabbix Java Gateway.'
recipe           'zabbix_lwrp::partition', 'Configures LVM for Zabbix database.'
recipe           'zabbix_lwrp::repository', 'Installs Zabbix official repository.'
recipe           'zabbix_lwrp::server', 'Installs and configures Zabbix server.'
recipe           'zabbix_lwrp::web', 'Installs and configures Zabbix frontend.'

supports         'ubuntu'
supports         'centos'
supports         'windows'
