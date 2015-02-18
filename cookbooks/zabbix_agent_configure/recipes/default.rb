#
# Cookbook Name:: zabbix_agent_configure
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service 'zabbix-agent' do
	action :stop
end

file '/etc/zabbix/zabbix_agentd.conf' do
	action :delete
end

template '/etc/zabbix/zabbix_agentd.conf' do
	source "zabbix_agentd.erb"
	mode "0644"
	owner "root"
	group "root"
	variables( :zabbix_agent_hostname => node['hostname'], :zabbix_server_address => node['zabbix']['server']['address'] )

end
	

