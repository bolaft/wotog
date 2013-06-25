#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
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

default['nodejs']['install_method'] = 'source'
default['nodejs']['version'] = '0.10.5'
default['nodejs']['checksum'] = '1c22bd15cb13b1109610ee256699300ec6999b335f3bc85dc3c0312ec9312cfd'
default['nodejs']['checksum_linux_x64'] = '182b0992401ff04a288b5777e2892f14d912a509a6c15edc7c0daded3a20d3c7'
default['nodejs']['checksum_linux_x86'] = 'c8bb5e5be76b837115a6f581ac5719586da51a8168ead2c0f8e13d9977ab06bb'
default['nodejs']['dir'] = '/usr/local'
default['nodejs']['npm'] = '1.2.14'
default['nodejs']['src_url'] = "http://nodejs.org/dist"
default['nodejs']['make_threads'] = node['cpu'] ? node['cpu']['total'].to_i : 2

# Set this to true to install the legacy packages (0.8.x) from ubuntu/debian repositories; default is false (using the latest stable 0.10.x)
default['nodejs']['legacy_packages'] = false
