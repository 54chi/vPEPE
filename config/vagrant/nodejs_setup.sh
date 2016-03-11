#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/nodejs_setup.sh'"

# When selecting a package to download, it's important to note that Phoenix requires version 5.0.0 or greater.
if [ -z `which nodejs` ]; then
  # Instructions from:
  # https://github.com/nodesource/distributions#debinstall
  curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
  sudo apt-get install -y nodejs
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/nodejs_setup.sh'"
