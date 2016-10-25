#!/bin/bash
#  BackupFolder.sh - daily folder backup utility
#    requires paths to 2 folders: FolderToBackup and BackupDestination
#    BackupFolder will create a dated subfolder with
#    the format YYYY-MM-DD in the BackupDestination folder
#    then will copy the entire FolderToBackup to that subfolder.

if [ $# -lt 2 ]  # Do we have at least 2 arguments
then   #not enough arguments so show usage text
   # Usage
   echo "}}"
   echo "}}"
   echo "}} *** Error: BackupFolder requires 2 parameters"
   echo "}}"
   echo "}} Usage - bash BackupFolder.sh (FolderToBackup) (BackupDestination)"
   echo "}}    FolderToBackup is the folder to be copied"
   echo "}}    BackupDestination is the target folder for the backup action"
   echo "}} BackupFolder.bat will copy the entire contents of FolderToBackup"
   echo "}} and its subfolders into a dated subfolder of BackupDestination"
   echo "}}"
else   #we have enough arguments so do backup  
   FolderToBackup=$1
   BackupDestination=$2

   today=`date '+%Y%m%d'`;  

   #DEBUG BLOCK
   echo $today
   echo "Backup destination folder would be $BackupDestination/$today"
   #DEBUG BLOCK


   # TODO Check to confirm FolderToBackup exists else throw BadSource error

   # TODO Write the empty log file to destination folder
   touch backuplog.log
   ls
   
   # TODO Check to confirm that the log file was successfully created else throw BadTarget error
   

   # TODO Perform actual folder copy and append output to the log file

   # TODO Parse log file for error strings to determine copy success or failure

   # TODO Remove DEBUG BLOCKS replace with appropriate user output
 
if


