dep 'jenkins.bin' do
  met? {
    '/var/lib/jenkins'.p.exists?
  }
  installs 'jenkins'
end

dep 'postgres.bin' do
  met? {
    in_path? 'psql'
  }
  installs {
    via :apt, ["postgresql", "libpq-dev"]
  }
end
