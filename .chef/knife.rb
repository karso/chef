log_level                :info
log_location             STDOUT
node_name                'karso'
client_key               '/home/vm_root/git/chef-repo/.chef/karso.pem'
validation_client_name   'chef-validator'
validation_key           '/home/vm_root/git/chef-repo/.chef/client.pem'
chef_server_url          'https://psr-cpis-build58.ind.hp.com:443'
syntax_check_cache_path  '/home/vm_root/git/chef-repo/.chef/syntax_check_cache'
cookbook_path [ '/home/vm_root/git/chef-repo/cookbooks' ]
