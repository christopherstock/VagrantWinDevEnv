
    echo "scripts/provision.ps1 - Run Provisioning for both machines"

    try
    {
        # check if Chocolatey is installed
        echo " Trying to find Chocolatey on the Windows machine"
        choco -v
        echo " Chocolatey has successfully been detected"
    }
    Catch
    {
        # allow PowerShell script execution
        Set-ExecutionPolicy Bypass -Scope Process -Force

        # install Chocolatey from the website
        echo "Installing Chocolatey right away"
        iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    }
