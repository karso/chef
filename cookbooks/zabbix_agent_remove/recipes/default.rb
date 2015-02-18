#
# Cookbook Name:: zabbix_agent_remove
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service 'zabbix-agent' do
	action :stop
end
package 'zabbix-agent' do
	action :["remove", "purge"]
end
