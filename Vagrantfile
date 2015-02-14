# -*- mode: ruby -*-
# vi: set ft=ruby :

# cause submodules is too mainstream
if Dir['cookbooks/*'].empty?
  `git clone -b dointeractive-github-com https://github.com/dointeractive/cookbooks`
end

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
