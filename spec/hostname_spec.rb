describe file('/etc/hostname') do
  it { should contain 'vagrantbox' }
end
