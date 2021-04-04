#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

#file '/var/www/html/index.html' do
#  content "<h1>Hello Everyone!Good Evening!!!<\h1> <img src='myimg'>"
#  action :create
#end

#file '/var/www/html/test.html' do
#  content "<h1>Hello Everyone!!!Welcome to Devops!!!<\h1>"
#  action :create
#end

service 'httpd' do
  action [:enable, :start]
end

remote_file '/var/www/html/sai.png' do
  source 'https://image.shutterstock.com/image-photo/lovely-beach-picture-beautiful-260nw-1554809048.jpg'
end

remote_file '/var/www/html/hari.png' do
  source 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcm098CgfsbcK14E8Rk1Mp64-RAw6PTdjSeQ&usqp=CAU'
end

remote_file '/var/www/html/sami.png' do
  source 'https://static-wix-blog.wix.com/photography/2018/09/comment-with-stunning-photo_featured.png'
end

