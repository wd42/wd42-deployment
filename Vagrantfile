# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu-12.04-omnibus-chef"
  config.vm.box_url = "http://grahamc.com/vagrant/ubuntu-12.04-omnibus-chef.box"

  # config.vm.network :forwarded_port, guest: 5432, host: 15432

  # workspace = "/home/vagrant/workspace"
  # config.vm.synced_folder "workspace/", workspace

  config.vm.provision :chef_solo do |chef|

    chef.add_recipe 'apt'
    chef.add_recipe 'nodejs'

    # chef.add_recipe "database-provision"

    chef.json = {
      'nodejs' => {
        'version' => '0.10.18'
      }
    }
  end

end
