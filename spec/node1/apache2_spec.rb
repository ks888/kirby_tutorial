require 'spec_helper'

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled }
  it { should be_running }
end

#describe file('/etc/apache2/conf-available/security.conf') do
#  it { should be_file }
#  its(:content) { should match /^ServerTokens Prod$/ }
#  its(:content) { should match /^ServerSignature Off$/ }
#end
