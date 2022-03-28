#!/bin/bash

function create_dir() {
    if [ -d testdir ]; then
        rm -rf testdir
        echo Creating Directory: testdir
        mkdir testdir && touch testdir/test1.txt testdir/test2.txt testdir/test3.txt
        echo Files Created: $(ls testdir)
    else
        echo Creating Directory: testdir
        mkdir testdir && touch testdir/test1.txt testdir/test2.txt testdir/test3.txt
        echo Files Created: $(ls testdir)
    fi

}

create_dir

function rename_files() {
    DAY=$(date +%F)
    ext=".txt"
    cd testdir
    if [ $ext == ".txt" ]; then
        for file in *$ext; do
            echo "Renaming $file to $DAY-$file"
            mv $file $(basename "$DAY-$file")
        done
        echo Done!
        cd ..
        echo Files Renamed: $(ls testdir)
    else
        echo $ext "NOT FOUND!"
    fi
}

rename_files

if [ -d testdir ]; then
    rm -rf testdir
fi
