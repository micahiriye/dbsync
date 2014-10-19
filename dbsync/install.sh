#!/bin/sh

#TODO: no actual error handling goes on
echo "getting current directory..."
thisDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" #gets the directory of the install file no matter where it's called from

#TODO: setup a way to append the contents of the hooks if there already are pre-commit or post-merge hooks present. right now they don't play well with others
echo "copying hooks..."
cp "$thisDirectory/pre-commit" "$thisDirectory/../.git/hooks/"
chmod +x "$thisDirectory/../.git/hooks/pre-commit" #just in case it wasn't saved as executable

cp "$thisDirectory/post-merge" "$thisDirectory/../.git/hooks/"
chmod +x "$thisDirectory/../.git/hooks/post-merge" #just in case it wasn't saved as executable

echo "hooks are now ready..."