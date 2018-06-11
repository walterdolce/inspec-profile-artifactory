# encoding: utf-8

control 'java-1.0' do
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
