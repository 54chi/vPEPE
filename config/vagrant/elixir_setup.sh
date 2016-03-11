#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/elixir_setup.sh'"

PHOENIX_VERSION=0.17.0

# Install Git if not available
if [ -z `which elixir` ]; then
  echo "===== Installing Elixir"

  # Add Erlang Solutions repo:
  wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
  apt-get -y update
  apt-get -y install esl-erlang
  apt-get -y install elixir
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/elixir_setup.sh'"
