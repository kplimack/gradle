#
# Cookbook Name:: gradle
# Recipe:: default
#
# Copyright 2014, Jake Plimack Photography, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

gradleHome = node[:gradle][:home]

directory gradleHome do
  mode 0755
  recursive true
end
#https://services.gradle.org/distributions/gradle-1.10-bin.zip
fileName = "#{node[:gradle][:version]}-#{node[:gradle][:flavor]}.zip"
link = "#{node[:gradle][:url]}-#{fileName}"

remote_file "#{Chef::Config[:file_cache_path]}/#{fileName}" do
  source link
  action :create_if_missing
  notifies :run, "execute[ExtractGradle]"
end

execute "ExtractGradle" do
  cwd Chef::Config[:file_cache_path]
  command "unzip #{fileName} -d #{gradleHome}"
  not_if "test -d #{gradleHome}/gradle-#{node[:gradle][:version]}"
end
