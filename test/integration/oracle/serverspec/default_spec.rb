require 'spec_helper'

if os[:family] =~ /ubuntu|debian/
  describe package('oracle-java8-installer') do
    it { should be_installed }
  end
end

if os[:family] =~ /centos|redhat/
  describe package('jdk1.8.0_60') do
    it { should be_installed }
  end
end

describe command('java -version') do
  its(:exit_status) { should eq 0 }
end
