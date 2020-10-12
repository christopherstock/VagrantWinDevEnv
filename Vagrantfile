Vagrant.configure("2") do |config|

  # define the default machine named "default" (for development)
  config.vm.define "default", primary: true do |development|
    development.vm.box = "StefanScherer/windows_10"
  end

 # define the second machine named "deployment" (for deployment)
  config.vm.define "deployment", autostart: false do |deployment|
    deployment.vm.box = "StefanScherer/windows_10"

    # TODO clarify - mandatory?
    deployment.vm.network "private_network", ip: "192.168.62.100"
  end

  # specify VirtualBox configuration
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--audiomode", "2"]
    vb.customize ["modifyvm", :id, "--screen mode id", "1"]
  end

  # define provisioning for both machines
  config.vm.provision :shell, inline: "c:/vagrant/scripts/provision.ps1"

  # define provisioning for the development machine
  config.vm.define :default do |development|
    development.vm.provision :shell, inline: "c:/vagrant/scripts/provision_development.ps1"
  end

  # define provisioning of the deployment machine
  config.vm.define :deployment do |deployment|
    deployment.vm.provision :shell, inline: "c:/vagrant/scripts/provision_deployment.ps1"
  end

end
