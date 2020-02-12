#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 Pedro Magalhaes, All Rights Reserved.

package 'httpd'

# Verify page is on and fill with content

file '/var/www/html/index.html' do
  content '<h1>Texto texto ....</h1>'
end

# run apache service and enable
service 'httpd' do
  action [:start, :enable]
end
