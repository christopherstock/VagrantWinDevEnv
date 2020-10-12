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

  # define provisioning for both machines
  # config.vm.provision :shell, inline: "c:/vagrant/scripts/provision.ps1"
  config.vm.provision :shell, inline: "c:/vagrant/scripts/provision.ps1"

#  config.vm.define :default do |delphi|
#    delphi.vm.provision :shell, inline: "c:/vagrant/scripts/install_rad_studio.ps1"
#  end



  # define provisioning of the development machine
  config.vm.define :default do |development|
    development.vm.provision :shell, inline: "c:/vagrant/scripts/provision_development.ps1"
  end

  # define provisioning of the deployment machine
  config.vm.define :deployment do |deployment|

    # TODO remove PROVISION_OPTS !
    deployment.vm.provision :shell, inline: "c:/vagrant/scripts/provision_deployment.ps1 #{ENV['PROVISION_OPTS']}"
  end

end
