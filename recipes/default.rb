#
# Cookbook Name:: cookbook-ruby
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "2.1.2" do
	global true
end

%w[bundler].each do |gem_name|
	rbenv_gem gem_name do
		ruby_version "2.1.2"
	end
end

