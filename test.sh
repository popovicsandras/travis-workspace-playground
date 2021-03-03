#!/usr/bin/env bash

if [ -f 'workspace-test/file.txt' ]; then
    oldnum=`cut -d ',' -f2 workspace-test/file.txt`
else
    oldnum=0
    mkdir workspace-test
    touch workspace-test/file.txt;
    echo $oldnum > workspace-test/file.txt
fi

newnum=`expr $oldnum + 1`
sed -i "s/$oldnum\$/$newnum/g" workspace-test/file.txt
