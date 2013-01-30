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

dep 'postgres-create-test-db' do
  meet {
    sudo '-u postgres psql -c "CREATE DATABASE actionman_test"'
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

dep 'actionman-ci' do
  requires 'jenkins.bin'
  requires 'postgres.bin'
  requires 'postgres-create-test-db'
  requires 'headless.bin'
end
