Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: "1.2.3.4"
  
  config.vm.provider "virtualbox" do |v|
    v.customize [
      "modifyvm", :id,
      "--memory", "1024",
      "--cpus", 1,
      "--cpuexecutioncap", "75"
    ]
  end
  
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "recipes/cookbooks"
    chef.add_recipe "build-essential"
    chef.add_recipe "apt"
    chef.add_recipe "mongodb"
    chef.add_recipe "nodejs"
    
    chef.log_level = :debug
  end

  config.ssh.forward_x11 = true
end
