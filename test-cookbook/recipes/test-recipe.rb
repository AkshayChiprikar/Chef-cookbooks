#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.


file '/myfile' do 
  content "Hello Dear all !! Good Evening!!"
  action :create
end


execute 'My Linux command' do
  command <<-EOH
  yum install git -y
  yum install docker -y
  service docker start
  EOH
end

%w(httpd mysql mariadb-server unzip vim).each do |p|
  package p do
    action :install
  end
end

%w(user1 user2 user3 user4 user5).each do |p|
  user p do 
   action :create
  end
end  

