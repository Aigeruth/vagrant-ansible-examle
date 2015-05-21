describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
  it { should be_monitored_by('monit') }
end

describe port('80') do
  it { should be_listening.with('tcp') }
end

describe port('443') do
  it { should_not be_listening }
end
