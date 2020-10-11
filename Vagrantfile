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
  config.vm.provision "shell", inline: <<-SHELL

    # install Windows package manager (Chocolatey)
    echo "Install Choco if not present"
    try { choco -v  }
    Catch {
      Set-ExecutionPolicy Bypass -Scope Process -Force

      # TODO required?
      [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
      iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    }

# TODO include directly?

SHELL

  # define provisioning of the development machine
  config.vm.define :default do |development|
    development.vm.provision :shell, inline: "c:/vagrant/scripts/provision_development.ps1"
  end

  # define provisioning of the deployment machine
  config.vm.define :deployment do |deployment|
    deployment.vm.provision :shell, inline: "c:/vagrant/scripts/provision_deployment.ps1 #{ENV['PROVISION_OPTS']}"
  end

end
