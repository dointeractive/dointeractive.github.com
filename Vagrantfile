# -*- mode: ruby -*-
# vi: set ft=ruby :

raise 'run "git submodule update --init" before "vagrant up"' if Dir['cookbooks/*'].empty?

Vagrant.configure('2') do |config|
  config.vm.box = 'chef/ubuntu-12.04'
  config.vm.synced_folder '.', '/vagrant', type: 'nfs'
  config.vm.network :private_network, ip: '10.0.0.215'

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'site'
  end

  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = 'cookbooks/Berksfile'
  config.omnibus.chef_version = :latest
end
