#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.


package 'tree' do
  action :install
end

file '/newfile' do
  content "Welcome to Devops!!"
  action :create
  group 'root'
  owner 'root'
end

user 'sunny' do
  action :create
  password 'akshay'
end

group 'Devops' do
  action :create
  members 'sunny'
  append true
end

user 'sai'
group 'AWS'
package 'wget'

