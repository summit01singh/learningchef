
describe file('/etc/motd') do
  it { should be_file }
  its('content') { should match(/.+/) }
end
describe file('/etc/profile.d/motd.sh') do
  it { should be_file }
end
describe command("bash --login -i -c ~''") do
  its('stdout') { should match('Welcome!')}
end
