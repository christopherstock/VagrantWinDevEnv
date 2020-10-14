
    echo "scripts/provision_deployment.ps1 - Run Provisioning for the Deployment machine"
    echo "=============================================================================="

    # define major paths in variables
    $vagrantPath = "C:/vagrant"
    $userPath = "C:/Users/vagrant"

    # install software via Chocolatey
    choco install -y autoit
    choco install -y sysinternals
    choco install -y vscode
    choco install -y mingw

    # create a directory listing of the vagrant synced dir in a readme.txt on the windows desktop
    & cd "$vagrantPath"
    & dir > "$userPath/Desktop/deployment.txt"

    echo "Completed provisioning the Deployment machine"
