describe package('monit') do
  it { should be_installed }
end

describe service('monit') do
  it { should be_running }
  it { should be_enabled }
end
