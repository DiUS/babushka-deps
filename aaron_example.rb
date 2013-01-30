dep 'jenkins.bin' do
  met? {
    ls '/var/lib/jenkins'
  }
  installs 'jenkins'
end
