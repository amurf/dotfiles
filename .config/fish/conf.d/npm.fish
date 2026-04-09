set OKE_PACKAGE_DIR "$HOME/.oke-packages" # NPM Packing function

function usepack
    if test (count $argv) -eq 0
        set packagename reviews-common
    else
        set packagename $argv[1]
    end

    set packagePath (ls -1 ~/.oke-packages/ | string match -r "okendo-$packagename-(\d+\.\d+\.\d+)\.tgz" | sort -V | tail -n 1)
    echo $packagePath

    set latestpackage (basename $packagePath)
    echo "Found matching $latestpackage"

    if test -z "$latestpackage"
        echo "Package not found!"
    else
        npm i "file:$OKE_PACKAGE_DIR/$latestpackage"
    end
end

alias pack 'npm pack --pack-destination $OKE_PACKAGE_DIR'
