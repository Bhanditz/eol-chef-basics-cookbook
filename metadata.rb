name             'eol-chef-basics'
maintainer       'Woods Hole Marine Biological Laboratory'
maintainer_email 'pleary@mbl.edu'
license          'Apache 2.0'
description      'Installs/Configures eol-chef-basics'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w(
  apt
  build-essential
  chef-client
  curl
  git
  omnibus_updater
  sudo
  timezone
  vim
  ).each do |cb|
  depends cb
end
