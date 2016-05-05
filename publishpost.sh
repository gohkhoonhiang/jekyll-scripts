#!/bin/bash

echo $1
for f in $(ls _drafts/); do
    if [[ "$f" == *"$1"* ]]; then
        echo $f
        now=$(date +"%Y-%m-%d")
        if [[ "$f" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}.* ]]; then 
            newfilename="$now-$(echo $f | cut -d'-' -f4-)"
        else
            newfilename="$now-$f"
        fi
        echo $newfilename
        mv _drafts/$f _posts/$newfilename
        sed -i "4s/.*.*/date: `date +'%Y-%m-%d %H:%M:%S'` +0800/g" "_posts/$newfilename"
    fi
done
ls -laG _posts/
