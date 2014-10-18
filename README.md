dbsync
======

A very simple way to implement git's built-in hook feature to sync up local database changes with other collaborator's local databases.

##requirements
1. mysql (either installed globally or through server packs like XAMPP, LAMP, WAMP, MAMP, AMPPS, etc.)
2. executing shell scripts

##how to use
1. clone this repo
2. copy dbsync folder into the repo you want to sync
3. open config.sh to - you guessed it - configure your settings! (should be pretty self-explanatory)
4. from your repo: `bash dbsync/install.sh`

This will add two files to your .git/hooks folder. A pre-commit for before you actually commit your changes to the remote, and post-merge for whenever you make a pull from remote. Each commit will make a database dump of you local db (specified in config.sh) and each pull will take the generated dbdump.sql file from the repo and sync to your local db.
