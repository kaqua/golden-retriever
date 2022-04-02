#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

yum_package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  action :create
  content "#{node['content']}"  
end

service 'httpd' do
  action :enable
end
