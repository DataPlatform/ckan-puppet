# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos-6.5-puppet"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"
  # config.vm.forward_agent = true


  # puppet config
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "default.pp"
    puppet.module_path = "puppet/modules"
    puppet.hiera_config_path = "puppet/hiera.yaml"
  end

  # share the puppet folder to /etc/puppet
  config.vm.synced_folder "./puppet/", "/etc/puppet"

  # install librarian-puppet, install puppet modules
  config.vm.provision "shell", path: "puppet/librarian_bootstrap.sh"


  config.vm.define "web" do |web|
    # web.vm.box = "centos-6.5-puppet"

    web.vm.network "forwarded_port", guest: 80, host: 6000
    web.vm.hostname = "app.example.com"
    web.vm.hostname = "web"
    web.vm.hostname = "wdcweb1.cfpb.local"
  end

  config.vm.define "app1" do |app1|
    app1.vm.hostname = "wdcckl1.cfpb.local"
  end

  config.vm.define "app2" do |app2|
    app2.vm.hostname = "wdcckl2.cfpb.local"
  end


  config.vm.define "db" do |db|
    db.vm.hostname = "wdcpgl1.cfpb.local"
  end


  config.vm.define "search" do |search|
    search.vm.hostname = "wdcsr1.cfpb.local"

end
