# encoding: utf-8

control 'java-installation-1.0' do
  impact 1.0
  title 'Verify Java is installed'
  desc "Verify Java is installed. If not, Artifactory can't be installed."

  describe command('java') do
    it { should exist }
  end

  describe command('java -version') do
    its('stderr') { should contain "1.8" }
  end
end

control 'java-os-environment-setup-1.0' do
  impact 0.7
  title 'Verify Java environment variables are setup'
  desc 'Verify Java environment variables are setup'

  describe os_env('JAVA_HOME') do
    its('content') { should_not eq "" }
  end
end
