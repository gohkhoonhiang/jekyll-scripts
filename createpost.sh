#!/bin/bash

now=$(date +%Y-%m-%d)
if [ -n "$1" ]; then
    filename="_drafts/$now-$1.markdown"
else
    filename="_drafts/$now-newpost.markdown"
fi
echo $filename
postdate=$(date +"%Y-%m-%d %H:%M:%S")
if [ -n "$1" ]; then
    title=""
    for t in $(echo "$1" | tr "-" "\n"); do
        title="$title $(echo "$t" | sed -e 's/^./\U&/')"
    done
else
    title=""
fi
echo "---
layout: post
title: $title
date: $postdate +0800
tags: 
description: 
---
" > $filename
