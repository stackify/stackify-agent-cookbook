
# test that agent service is installed and running
describe service('stackify-agent') do
  it { should be_installed }
  it { should be_running }
end

# test that agent jar file exists
describe file('/usr/local/stackify/stackify-agent/stackify-agent.jar') do
  it { should be_file }
  its('owner') { should eq 'stackify' }
end

# test that agent-apm jar file exists
describe file('/usr/local/stackify/stackify-java-apm/stackify-java-apm.jar') do
  it { should be_file }
  its('owner') { should eq 'stackify' }
end

# test that agent log file exists
describe file('/usr/local/stackify/stackify-agent/log/stackify-agent.log') do
  it { should be_file }
  its('owner') { should eq 'stackify' }
end
