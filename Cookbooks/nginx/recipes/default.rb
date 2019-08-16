#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start]
end

link '/etc/nginx/sites-enabled/default' do
   action :delete
   notifies :restart, "service[nginx]"
 end

 template '/etc/nginx/sites-available/proxy.conf' do
  source "proxy.conf.erb"
  variables proxy_port: 3000
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/proxy.conf' do
  to "/etc/nginx/sites-available/proxy.conf.erb"
end
