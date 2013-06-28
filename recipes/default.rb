#
# Cookbook Name:: log search alert
# Recipe:: alert
#

package "build-essential" do
  action :install
end

package "libssl-dev" do
  action :install
end

package "git" do
  action :install
end

bash "install_mailsend" do
  user "root"
  cwd "#{node['alert']['dir']}"
  code <<-EOH
  git clone "#{node['mailsend']['git']}"
  cd mailsend
  tar -xzf "#{node['mailsend']['name']}"
  cd "#{node['mailsend']['dir']}"
  ./configure
  make && make install
  EOH
end


bash "download_alert" do
  user "root"
  cwd "#{node['alert']['dir']}"
  code <<-EOH
  	git clone https://github.com/gsntn/logsearch
        cp ./logsearch/logsearch.sh ./
  EOH
end

cron "cron_alert" do
  minute "0"
  hour "0"
  day "1"
  month "1"
  command "bash #{node['alert']['dir']}/logsearch.sh #{node['log']['dir']}/#{node['log']['file']} #{node['mail']['server']} #{node['mail']['to']} #{node['mail']['from']}"
end
