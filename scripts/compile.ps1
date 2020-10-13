
    echo "scripts/compile.ps1 - Compile the App on the Development machine"
    echo "================================================================"

    $srcPath = "C:/vagrant/src"
    $distPath = "C:/vagrant/dist"

    # create output directory if not existent
    if (-Not(Test-Path $distPath))
    {
        echo "Creating non-existing output directory $distPath"
        & md -path $distPath | Out-Null
    }

    # invoke the MinGW 64bit c++ compiler
    & g++ "$srcPath/MyApp.cpp" -o "$distPath/MyApp.exe"

    echo "Completed compiling on the development machine"
