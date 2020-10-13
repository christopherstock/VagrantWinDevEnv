
    echo "scripts/provision_deployment.ps1 - Run Provisioning for the Deployment machine"
    echo "=============================================================================="

    # install via Chocolatey: 'AutoIt' and 'VS Code'
    choco install -y autoit
    choco install -y vscode

    echo "Completed provisioning the deployment machine"
