dep 'jenkins.bin' do
  met? {
    '/var/lib/jenkins'.p.exists?
  }
  installs 'jenkins'
end
