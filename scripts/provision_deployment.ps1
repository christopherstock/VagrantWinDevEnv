
    echo
    echo "scripts/provision_deployment.ps1 - Run Provisioning for the Deployment machine"
    echo "=============================================================================="

    # sync Chocolatey repository and install package 'AutoIt'
    choco install -y autoit

    echo "Completed provisioning the deployment machine"
