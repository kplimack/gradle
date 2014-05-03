name             'gradle'
maintainer       'Jake Plimack Photography, LLC'
maintainer_email 'jake.plimack@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures gradle'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'





%w{ debian mac_os_x centos rhel fedora suse }.each do |os|
  supports os
end

%w{ java }.each do |sug|
  suggests sug
end
