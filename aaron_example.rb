dep 'jenkins.bin' do
  met? {
    '/var/lib/jenkins'.dir?
  }
  installs 'jenkins'
end
