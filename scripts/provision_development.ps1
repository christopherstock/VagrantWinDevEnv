
    echo "scripts/provision_development.ps1 - Run Provisioning for the Development machine"

    # define major paths in variables
    $vagrantPath = "C:/vagrant"
    $userPath = "C:/Users/vagrant"

    # sync Chocolatey repository and install all required packages 'Sysinternals'
    choco install -y sysinternals

    # create a directory listing of the vagrant synced dir in a readme.txt on the windows desktop
    & cd "$vagrantPath"
    & dir > "$userPath/Desktop/readme.txt"

    echo " Completed provisioning the development machine"
