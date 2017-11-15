#
# Cookbook Name:: stackify_agent
# Attributes:: default
#
# Copyright (c) 2016, Stackify
#

######################
# Basic Configuration
######################

# Your Stackify environment name
default['stackify']['stackify_agent']['environment'] = nil
# Your Stackify activation key
default['stackify']['stackify_agent']['key'] = nil

#########################
# Advanced Configuration
#########################

# HTTP Proxy settings
default['stackify']['stackify_agent']['proxy']['host'] = nil
default['stackify']['stackify_agent']['proxy']['port'] = nil
default['stackify']['stackify_agent']['proxy']['cert_filename'] = nil

# Enable/Disable auto discovery services
default['stackify']['stackify_agent']['discovery']['apache'] = true
default['stackify']['stackify_agent']['discovery']['nginx'] = true
default['stackify']['stackify_agent']['discovery']['jboss'] = true
default['stackify']['stackify_agent']['discovery']['tomcat'] = true
default['stackify']['stackify_agent']['discovery']['nodejs'] = true

# Custom system host name
default['stackify']['stackify_agent']['devicealias'] = nil
# Custom ID for stackify user
default['stackify']['stackify_agent']['uid'] = nil
# Custom ID for stackify group
default['stackify']['stackify_agent']['gid'] = nil
# Add stackify user to docker group
default['stackify']['stackify_agent']['docker'] = false
# Disable sudo access for stackify user
default['stackify']['stackify_agent']['disablesudo'] = false
# Stackify Agent download URL
default['stackify']['stackify_agent']['agent_url'] = 'https://s1.stackify.com/Account/AgentDownload/Linux'
