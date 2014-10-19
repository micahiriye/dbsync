#It is recommended that you run "git update-index --assume-unchanged dbsync/config.sh" so that your config file can be unique to every other collaborator.

#these files are included by the hooks that are copied into the hooks folder by the install script
mysqlPath="/Applications/XAMPP/xamppfiles/bin/" #in the case of xampp mysql is run from here
mysqlUser="root"
mysqlPass=""
dbName="api-base"

#hooks executed before and after each git hook (Confusing I know)
prePostMergeHook=""
postPostMergeHook=""
prePreCommitHook=""
postPreCommitHook=""