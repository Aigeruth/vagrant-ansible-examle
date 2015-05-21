describe package('postgresql-9.3') do
  it { should be_installed }
end

describe service('postgresql') do
  it { should be_running }
  it { should be_enabled }
end

describe port('5432') do
  it { should be_listening.with('tcp').on('127.0.0.1') }
end

describe file('/var/run/postgresql/.s.PGSQL.5432') do
  it { should be_socket }
end
