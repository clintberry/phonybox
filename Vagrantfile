# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "plivo"
  config.vm.box_url = "http://domain.com/path/to/above.box"

  config.vm.customize [
    "modifyvm", :id,
    "--name", "Plivo In A Box",
    "--memory", "512"
  ]

  config.vm.network :hostonly, "11.1.1.2"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "config/cookbooks"
    chef.add_recipe("plivo")
  end

end
