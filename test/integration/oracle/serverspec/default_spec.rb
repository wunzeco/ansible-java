require 'spec_helper'

describe package('oracle-java8-installer') do
  it { should be_installed }
end

describe command('java -version') do
  its(:exit_status) { should eq 0 }
end
