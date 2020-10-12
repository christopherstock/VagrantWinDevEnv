
    echo "scripts/provision_deployment.ps1 - Run Provisioning for the Deployment machine"

    # sync Chocolatey repository and install package 'AutoIt'
    choco sync
    choco install -y autoit
