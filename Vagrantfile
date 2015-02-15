# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'chef/ubuntu-14.04'
  config.vm.network :private_network, ip: '10.0.0.215'
  config.vm.synced_folder ".", "/vagrant", type: 'nfs'

  config.vm.provision :docker do |d|
    d.build_image '/vagrant', args: '-t jekyll'
    d.run 'jekyll', cmd: 'serve', args: '-p 80:4000 -v /vagrant:/src'
  end
end
