#
# Cookbook Name:: zabbix_repo_update
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file '/tmp/zabbix-release_2.0-1precise_all.deb' do
	source "http://repo.zabbix.com/zabbix/2.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_2.0-1precise_all.deb"
end
dpkg_package 'zabbix-release_2.0-1precise_all' do
	action :install
	source '/tmp/zabbix-release_2.0-1precise_all.deb'
end
execute "apt-get_update" do 
	command "apt-get update"
end
