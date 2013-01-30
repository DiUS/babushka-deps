dep 'jenkins.bin' do
  installs 'jenkins'
  met? {
    ls '/var/lib/jenkins'
  }
end
