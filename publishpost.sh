#!/bin/bash

echo $1
for f in $(ls _drafts/); do
    if [[ "$f" == *"$1"* ]]; then
        echo $f
        now=$(date +"%Y-%m-%d")
        newfilename="$now-$(echo $f | cut -d'-' -f4-)"
        echo $newfilename
        mv _drafts/$f _posts/$newfilename
        sed -i "4s/.*.*/date: `date +'%Y-%m-%d %H:%M:%S'` +0800/g" "_posts/$newfilename"
    fi
done
ls -laG _posts/
