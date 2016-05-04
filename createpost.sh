if [ ! -d "_drafts" ]; then
    mkdir _drafts
fi
now=$(date +%Y-%m-%d)
if [ -n "$1" ]; then
    filename="_drafts/$now-$1.markdown"
else
    filename="_drafts/$now-newpost.markdown"
fi
echo $filename
postdate=$(date +"%Y-%m-%d %H:%M:%S")
echo "---
layout: post
title:  ""
date: $postdate +0800
tags: 
description: 
---
" > $filename
