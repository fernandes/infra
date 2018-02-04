# -*- mode: ruby -*-
# vi: set ft=ruby :

# Available Boxes
# built with https://github.com/fernandes/veewee
#
# centos-7.2-1511-x86_64
# debian-7.11-amd64
# debian-8.5-amd64
# openbsd_5.9_amd64
# ubuntu-14.04-server-amd64
# ubuntu-16.04-server-amd64

Vagrant.configure("2") do |config|
  config.vm.define 'master' do |node|
    node.vm.box = "debian-9.3-amd64"
    node.vm.network :private_network, ip: "10.0.0.10" # type: 'dhcp' if you don't care for static IP
    node.vm.hostname = 'master.box'

    # node.vm.hostmanager.aliases = %w(example-box.localdomain example-box-alias) # used by hostmanager

    # Use this sync folder with openbsd
    # node.vm.synced_folder ".", "/vagrant", type: "nfs"

    # Workaround as VirtualBox was spinning new machines with "Cable Disconnected"
    # Virtual Machine > Settings > Network > Adapter 1 > Advanced
    # check if "Cable Connected" is checked
    node.vm.provider :virtualbox do |vb|
      vb.customize "post-boot", ["controlvm", :id, "setlinkstate1", "on"]
    end
  end

  # Vagrant Cachier
  # vagrant plugin install vagrant-cachier
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  if Vagrant.has_plugin?("vagrant-hostmanager")
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
    config.hostmanager.manage_guest = true
    config.hostmanager.ignore_private_ip = false
    config.hostmanager.include_offline = true
  end
end

# Recommended Plugins
#
# vagrant-cachier
# vagrant plugin install vagrant-cachier
# plugin wich enables sharing a common package cache among similar VM instances.
#
# vagrant-vbguest
# vagrant plugin install vagrant-vbguest
# plugin which automatically installs the host's VirtualBox Guest Additions on the guest system.
#
# vagrant-hostmanager
# vagrant plugin install vagrant-hostmanager
# manages the /etc/hosts file on guest machines (and optionally the host). Its goal is to enable resolution of multi-machine environments deployed with a cloud provider where IP addresses are not known in advance.
