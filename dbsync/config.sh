#I recommend you run "git update-index assume-unchanged dbsync/config.sh" so that your copy can be unique. Unfortunately you're dbname will have to remane consistent since it uses the filename as the dbname as well.

#these files are included by the hooks that are copied into the hooks folder by the install script
mysqlpath="/Applications/XAMPP/xamppfiles/bin/" #in the case of xampp mysql is run from here
mysqluser="root"
mysqlpass=""
dbname="api-base"