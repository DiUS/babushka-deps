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

dep 'headless.bin' do
  met? {
    in_path? 'qmake'
  }
  installs {
    via :apt, ["qt4-qmake", "libqt4-dev"]
  }
end

dep 'ci' do
  requires 'jenkins.bin'
  requires 'postgres.bin'
  requires 'headless.bin'
end
