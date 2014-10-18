#!/bin/sh

#TODO: no actual error handling goes on
echo "getting current directory..."
thisdirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" #gets the directory of the install file no matter where it's called from

#TODO: setup a way to append the contents of the hooks if there already are pre-commit or post-merge hooks present. right now they don't play well with others
echo "copying hooks..."
cp "$thisdirectory/pre-commit" "$thisdirectory/../.git/hooks/"
chmod +x "$thisdirectory/../.git/hooks/pre-commit" #just in case

cp "$thisdirectory/post-merge" "$thisdirectory/../.git/hooks/"
chmod +x "$thisdirectory/../.git/hooks/post-merge" #just in case

echo "hooks are now ready..."