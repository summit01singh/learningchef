#
# Cookbook:: motd_attributes
# Recipe:: default
#
# Copyright:: 2017, Sumit SIngh
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

cookbook_file '/etc/profile.d/motd.sh' do
  source 'motd.sh'
  mode '0755'
end

template '/etc/motd' do
  source 'motd.erb'
  mode '0644'
end

node.default['motd_attributes']['message'] = "It's wounderfull day today!"
node.default['motd_attributes']['company'] = 'no summit'

include_recipe 'motd_attributes::java'
