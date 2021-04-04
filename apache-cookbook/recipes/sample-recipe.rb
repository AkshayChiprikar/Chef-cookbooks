#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.


file '/configfile' do
  content "My node details are
  HOSTNAME :#{node['hostname']}
  IPADDRESS :#{node['ipaddress']}
  CPU :#{node['cpu']['0']['mhz']}
  MEMORY :#{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end


remote_file '/tmp/apache-maven-3.6.3-bin.tar.gz' do
  source 'https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz'
end

archive_file 'apache-meaven' do 
  path '/tmp/apache-maven-3.6.3-bin.tar.gz'
  destination '/root/devtools/'
end
  
