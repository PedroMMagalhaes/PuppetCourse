#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2020 The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [
{
    'hostname' => 'teste1',
    'ipaddress' => '3.19.227.7',
    'port' => 80,
    'ssl_port' => 80
  }, {
    'hostname' => 'teste2',
    'ipaddress' => '3.15.152.140',
    'port' => 80,
    'ssl_port' => 80
}]

include_recipe 'haproxy::default'

