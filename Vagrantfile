# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu-12.04-omnibus-chef"
  config.vm.box_url = "http://grahamc.com/vagrant/ubuntu-12.04-omnibus-chef.box"

  # nodejs - 3000
  config.vm.network :forwarded_port, guest: 3000, host: 3000


  config.vm.provision :chef_solo do |chef|

    chef.add_recipe 'apt'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'wd42-site'

    chef.json = {
      'nodejs' => {
        'version' => '0.10.18'
      }
    }
  end

end
