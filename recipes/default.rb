#
# Cookbook Name:: stackify_agent
# Recipe:: default
#
# Copyright (c) 2016, Stackify
#

stackify_agent_jar_location = '/usr/local/stackify/stackify-agent/stackify-agent.jar'
stackify_agent_install_relative_path = 'stackify-agent-install-32bit'
stackify_agent_install_script_name = 'agent-install.sh'

# agent install script options
stackify_agent_install_script_options = " --key #{node['stackify']['stackify_agent']['key']}"
stackify_agent_install_script_options << " --environment #{node['stackify']['stackify_agent']['environment']}"

stackify_agent_install_script_options << " --devicealias #{node['stackify']['stackify_agent']['devicealias']}" unless node['stackify']['stackify_agent']['devicealias'] == nil?
stackify_agent_install_script_options << " --uid #{node['stackify']['stackify_agent']['uid']}" unless node['stackify']['stackify_agent']['uid'] == nil?
stackify_agent_install_script_options << " --gid #{node['stackify']['stackify_agent']['gid']}" unless node['stackify']['stackify_agent']['gid'] == nil?
stackify_agent_install_script_options << " --docker " if node['stackify']['stackify_agent']['docker']
stackify_agent_install_script_options << " --disablesudo " if node['stackify']['stackify_agent']['disablesudo']

# download and extract stackify agent
tar_extract node['stackify']['stackify_agent']['agent_url'] do
  target_dir Chef::Config['file_cache_path']
  creates "#{Chef::Config['file_cache_path']}/#{stackify_agent_install_relative_path}/#{stackify_agent_install_script_name}"
  not_if { File.exist?(stackify_agent_jar_location) }
end

template_file = "#{Chef::Config['file_cache_path']}/#{stackify_agent_install_relative_path}/stackify-agent.conf"
template template_file do
  source "stackify-agent.conf.erb"
end

# run stackify agent install script
bash 'agent_install' do
  user 'root'
  cwd "#{Chef::Config['file_cache_path']}/#{stackify_agent_install_relative_path}"
  code <<-EOH
    ./#{stackify_agent_install_script_name} #{stackify_agent_install_script_options}
    rm -rf #{Chef::Config['file_cache_path']}/Linux
    rm -rf #{Chef::Config['file_cache_path']}/#{stackify_agent_install_relative_path}
  EOH
  not_if { File.exist?(stackify_agent_jar_location) }
end
