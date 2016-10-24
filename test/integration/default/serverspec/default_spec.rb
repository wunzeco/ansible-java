require 'spec_helper'

if os[:family] =~ /ubuntu|debian/
  describe package('openjdk-8-jdk') do
    it { should be_installed }
  end
end

if os[:family] =~ /centos|redhat/
  describe package('java-1.8.0-openjdk') do
    it { should be_installed }
  end
end

describe command('java -version') do
  its(:exit_status) { should eq 0 }
end
