# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # create some dl servers
  # https://docs.vagrantup.com/v2/vagrantfile/tips.html
  (1..2).each do |i|
    config.vm.define "dltest#{i}" do |node|
        node.vm.box = "centos/7"
        node.vm.hostname = "turing#{i}"
        node.vm.network :private_network, ip: "10.0.15.2#{i}"
        node.vm.provider "virtualbox" do |vb|
          vb.memory = "256"
        end
        node.vm.provision :shell, path: "bootstrap_vms.sh"
    end
  end

end
