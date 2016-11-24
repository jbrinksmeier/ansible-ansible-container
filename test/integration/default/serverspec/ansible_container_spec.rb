require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('ansible-container -h') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /usage: ansible-container/ }
end