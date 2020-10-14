
    echo "scripts/provision_development.ps1 - Run Provisioning for the Development machine"
    echo "================================================================================"

    # define major paths in variables
    $vagrantPath = "C:/vagrant"
    $userPath = "C:/Users/vagrant"

    # install software via Chocolatey
    choco install -y sysinternals
    choco install -y vscode
    choco install -y mingw

    # create a directory listing of the vagrant synced dir in a readme.txt on the windows desktop
    & cd "$vagrantPath"
    & dir > "$userPath/Desktop/development.txt"

    echo "Completed provisioning the Development machine"
