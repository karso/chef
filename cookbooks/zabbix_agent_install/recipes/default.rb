#
# Cookbook Name:: zabbix_agent_2.2_install
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'zabbix-agent' do
	action :install
end

service 'zabbix-agent' do
	action [ :enable, :start]
end
