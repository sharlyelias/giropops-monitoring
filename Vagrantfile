# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
    config.vm.box = "debian/jessie64"

    config.vm.define "monitoring" do |server|
      server.vm.network "public_network", :bridge => "wlp3s0", ip: "192.168.99.140"
      server.vm.provider "virtualbox" do |vb|
        vb.memory = "8192"
        vb.cpus = "2"
      end
      server.vm.provision "shell", inline: "/vagrant/monitoring_install.sh"
    end

  end
  