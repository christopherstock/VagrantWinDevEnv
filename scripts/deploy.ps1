
    echo "scripts/deploy.ps1 - Deploy the App on the Deployment machine"
    echo "============================================================="

    $userPath = "C:/Users/vagrant"
    $distFile = "C:/vagrant/dist/MyApp.exe"

    # exit if the compiled app is not available
    if (-Not(Test-Path $distFile))
    {
        echo "Compiled $distFile is not available!"
        exit 1
    }

    # copy the compiled app to the desktop
    & cp "$distFile" "$userPath/Desktop"
    # execute the compiled app on the desktop and write all output to a textfile on the desktop
    & "$userPath/Desktop/MyApp.exe" > "$userPath/Desktop/readme.txt"

    echo "Completed deployment on the Development machine"
