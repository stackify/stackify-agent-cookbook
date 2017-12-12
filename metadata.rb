name 'stackify_agent'
maintainer 'Stackify'
maintainer_email 'support@stackify.com'
description 'Installs/Configures Stackify Agent'
long_description 'Installs/Configures Stackify Agent'
version '1.0.0'

%w(debian ubuntu redhat centos fedora amazon).each do |os|
  supports os
end

source_url 'https://github.com/stackify/stackify-agent-cookbook'
issues_url 'https://github.com/stackify/stackify-agent-cookbook/issues'

depends 'tar'
