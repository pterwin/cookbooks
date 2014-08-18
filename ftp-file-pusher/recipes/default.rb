#
# Cookbook Name:: ftp-file-pusher
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node[:deploy].each do |app_name, deploy|
	template "#{deploy[:deploy_to]}/current/config/server.js" do
		source "server.js.erb"
		mode 0660
		group deploy[:group]
		owner "www-data"
	end
end