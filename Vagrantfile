# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "plivo"
  config.vm.box_url = "http://dl.dropbox.com/u/10552177/plivo.box"

  config.vm.customize [
    "modifyvm", :id,
    "--name", "Plivo In A Box",
    "--memory", "512"
  ]

  config.vm.forward_port 22, 2221

  config.vm.network :hostonly, "11.1.1.2"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "config/cookbooks"
    chef.add_recipe("plivo")
    chef.json = {
      :plivo_auth_id => 12345,
      :plivo_auth_token => 12345,
      :plivo_answer_url => "http://127.0.0.1:80/answer/",
      :plivo_hangup_url => "http://127.0.0.1:80/hangup/"
    }
  end

end
