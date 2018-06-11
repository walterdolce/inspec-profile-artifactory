# encoding: utf-8

control 'artifactory-system-installation-1.0' do
  impact 0.5
  title 'Verify Artifactory system user and group are installed'
  desc 'Verify Artifactory system user and group are installed'

  describe user('artifactory') do
    it { should exist }
    its('groups') { should include 'artifactory' }
  end

  describe group('artifactory') do
    it { should exist }
  end
end
