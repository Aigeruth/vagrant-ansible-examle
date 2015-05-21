describe service('ssh') do
  it { should be_running }
  it { should be_enabled }
  it { should be_monitored_by('monit') }
end
