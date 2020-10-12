
    echo "scripts/provision_development.ps1 - Run Provisioning for the Development machine"

    # sync Chocolatey repository and install package 'Sysinternals'
    choco sync
    choco install -y sysinternals
