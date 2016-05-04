echo $1
for f in $(ls _posts/); do
    if [[ "$f" == *"$1"* ]]; then
        echo $f
        mv _posts/$f _drafts/$f
    fi
done
ls -laG _drafts/
