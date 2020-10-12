
    echo "Run Provision for both machines"

    try {

echo "CHRIS: Check 1"

      # install Windows package manager (Chocolatey)
      choco -v

echo "CHRIS: Check 2"
    }
    Catch
    {
      Set-ExecutionPolicy Bypass -Scope Process -Force

      # TODO required?
      [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
      iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    }

echo "CHRIS: Check 3"

PROVISION_END

