#
# Cookbook:: project_cookbooks
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

mysql_service 'foo' do
  port '3306'
  version '5.7'
  initial_root_password 'admin'
  action [:create, :start]
end
