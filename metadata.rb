maintainer        "Kuko Armas"
name              "modularit-zimbra"
maintainer_email  "kuko@canarytek.com"
license           "Apache 2.0"
description       "Installs and configures Zimbra"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"
recipe            "modularit-zimbra", "Installs and configures Zimbra"

%w{hostsfile rasca}.each do |pkg|
  depends pkg
end

%w{redhat centos}.each do |os|
  supports os
end
