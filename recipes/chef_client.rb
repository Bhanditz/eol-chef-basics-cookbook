#
# Cookbook Name:: eol-chef-basics
# Recipe:: chef_client
#
# Copyright 2014, Woods Hole Marine Biological Laboratory
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

custom_defaults = data_bag_item('custom_defaults', 'config') rescue {}

# should specify chef server_url; see https://github.com/cookbooks/chef-client
if chef_client_defaults = custom_defaults['chef_client']
  node.override['chef_client']['server_url'] = chef_client_defaults['server_url']
end

include_recipe 'chef-client::delete_validation'
include_recipe 'chef-client::config'
include_recipe 'chef-client::service'
