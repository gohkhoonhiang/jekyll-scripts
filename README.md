# Introduction

These are simple scripts I created to help me with Jekyll post publishing. They are also part of my learning how to write bash scripts.

The scripts should be run in the same directory containing `_posts` folder.

# Create New Post

Run `./createpost.sh` to create a new post with default file name `YYYY-MM-DD-newpost.markdown` in `_drafts` folder.

Run `./createpost.sh filename` to create a new post with given file name `YYYY-MM-DD-filename.markdown` in `_drafts` folder.

The empty post will have the following default lines:

```
---
layout: post
title:  ""
date: $postdate +0800
tags: 
description: 
---
```

`$postdate` is in the format `YYYY-MM-DD HH:MM:SS`.

If `_drafts` folder does not exists, the script will create the folder in the same directory the script is being run.

# Publish Post

Once you are ready to publish a post, run `./publishpost.sh filename`. `filename` can be the full file name or just part of the file name.

For example, if you want to publish `2016-05-04-jekyll-scripts-to-publish-posts.markdown`, you can just run `./publishpost.sh jekyll-scripts`. If there is more than 1 file with the partial name `jekyll-scripts`, then all the files will be published. Published posts are in the `_posts` directory.

Upon publishing, the script will rename the file to the current date, and update the `date` field in the post header.

Currently the script defaults the time zone to +0800. You can change your script to set a different time zone.

# Unpublish Post

If you decide to take down a published post, you can run `./unpublishpost.sh filename` similar to running the publish script.

The post will then be moved back to `_drafts` directory.

# Improvements

Feel free to file issues to suggest improvements. Thank you!


