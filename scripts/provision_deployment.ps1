
    echo "scripts/provision_deployment.ps1 - Run Provisioning for the Deployment machine"
    echo "=============================================================================="

    # install via Chocolatey: 'AutoIt' and 'VS Code'
    choco install -y autoit
    choco install -y vscode

    # create a directory listing of the vagrant synced dir in a readme.txt on the windows desktop
    & cd "$vagrantPath"
    & dir > "$userPath/Desktop/deployment-vm.txt"

    echo "Completed provisioning the Deployment machine"
