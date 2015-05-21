describe package('ufw') do
  it { should be_installed }
end

describe service('ufw') do
  it { should be_running }
  it { should be_enabled }
end

describe command('ufw status') do
  its(:stdout) { should contain 'Status: active' }
  its(:stdout) { should match %r(^22/tcp + ALLOW) }
  its(:stdout) { should match %r(^80/tcp + ALLOW) }
end
