#
# Cookbook Name:: filebeats
# Recipe:: default
#
# Copyright 2016, Ashish Nepal
#
include_recipe 'filebeats::install_package'

# configure filebeat
include_recipe 'filebeats::config'
