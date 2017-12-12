
# stackify_agent cookbook

## Description

Cookbook provides **Stackify Linux Agent** installation.

## Requirements

### Cookbooks

* tar

### Platforms

* Ubuntu 12.04 or higher
* Debian 6 or higher
* Fedora 19 or higher
* CentOS 5 or higher
* RedHat Enterprise Linux 5 or higher
* Amazon Linux

## Attributes

### default.rb:

#### Required

* `node['stackify']['stackify_agent']['environment']` - Stackify environment name.
* `node['stackify']['stackify_agent']['key']` - Stackify activation key.

#### Optional

##### HTTP Proxy Configuration
* `node['stackify']['stackify_agent']['proxy']['host']` - Hostname/IP of HTTP proxy.
* `node['stackify']['stackify_agent']['proxy']['port']` - Port of HTTP proxy.
* `node['stackify']['stackify_agent']['proxy']['cert_filename']` - The certificates that are used by the proxy may not be trusted by the \ default trust manager in Java. By using this property, the Stackify agent will trust the certificates coming from the proxy. The  property should be set to the full path of the proxy's certificate. This setting is optional, but may be required depending on your configuration.
 
##### Service Discovery Toggles 
* `node['stackify']['stackify_agent']['discovery']['apache']` - Discover Apache webapps, defaults to true.
* `node['stackify']['stackify_agent']['discovery']['nginx']` - Discover NGINX webapps, defaults to true.
* `node['stackify']['stackify_agent']['discovery']['jboss']` - Discover JBoss webapps, defaults to true.
* `node['stackify']['stackify_agent']['discovery']['tomcat']` - Discover Tomcat webapps, defaults to true.
* `node['stackify']['stackify_agent']['discovery']['nodejs']` - Discover Node.js webapps, defaults to true.

##### Additional Options
* `node['stackify']['stackify_agent']['devicealias']` - Custom system host name.
* `node['stackify']['stackify_agent']['uid']` - Custom ID for stackify user.
* `node['stackify']['stackify_agent']['gid']` - Custom ID for stackify group.
* `node['stackify']['stackify_agent']['docker']` - Use when installing on a docker host. Adds `stackify` user to `docker` user group. Defaults to false.
* `node['stackify']['stackify_agent']['disablesudo']` - Install with restricted permissions for `stackify` user, defaults to false.
* `node['stackify']['stackify_agent']['agent_url']` - Override download URL for Stackify Agent.
