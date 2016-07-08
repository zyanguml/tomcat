describe file('/opt/special/tomcat_docs_7_0_42/LICENSE') do
  it { should be_file }
  it { should be_owned_by 'mycorp_user' }
  its('group') { should eq 'mycorp_group' }
end

describe command('curl http://localhost:8081/sample/') do
  its('stdout') { should match(/Hello, World/) }
end

describe user('mycorp_user') do
  it { should exist }
end

describe group('mycorp_group') do
  it { should exist }
end

describe service(service_name) do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
