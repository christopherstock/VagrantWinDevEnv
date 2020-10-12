
    echo "scripts/provision.ps1 - Run Provisioning for both machines"

    try {
      echo " Trying to find Chocolatey on the Windows machine"
      choco -v
      echo " Chocolatey has successfully been detected"
    }
    Catch
    {
      Set-ExecutionPolicy Bypass -Scope Process -Force

      # install Windows package manager (Chocolatey)

      # TODO required?
      [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072

      iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    }
