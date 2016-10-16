:: BackupFolder.bat - daily folder backup utility
::    requires paths to 2 folders: FolderToBackup and BackupDestination
::    BackupFolder will create a dated subfolder of the format YYYY-MM-DD in the BackupDestination
::    then will copy the entire FolderToBackup to that subfolder.
@ECHO off

:: Check to make sure we have both required parameters.
IF "%~1" == "" GOTO Usage
IF "%~2" == "" GOTO Usage

::DEBUG BLOCK
ECHO OK we have both parameters %1 and %2
::DEBUG BLOCK

SET FolderToBackup=%1
SET BackupDestination=%2

::Extract the date from system Date
FOR %%A IN (%Date%) DO SET Today=%%A

::DEBUG BLOCK
ECHO It's %Today% today
::DEBUG BLOCK

::Parse the Month, Day and Year from Today, this assumes MM/DD/YYYY format
FOR /F "tokens=1-3 delims=/-" %%A IN ("%Today%") DO (
	SET Month=%%A
	SET Day=%%B
	SET Year=%%C
)
::DEBUG BLOCK
ECHO %Day%, %Month%, %Year%
ECHO The backup destination folder would be %2/%Year%-%Month%-%Day%
::DEBUG BLOCK


::TODO Check to confirm FolderToBackup exists else throw BadSource error

::TODO Write the empty log file to destination folder
::TODO Check to confirm that the log file was successfully created else throw BadTarget error

::TODO Perform actual folder copy and append output to the log file

::TODO Parse log file for error strings to determine copy success or failure

::TODO Remove DEBUG BLOCKS replace with appropriate user output
 
GOTO End

:Usage
ECHO }}
ECHO }} Error: BackupFolder requires 2 parameters
ECHO }} Usage - BackupFolder.bat (FolderToBackup) (BackupDestination)
ECHO }} Where FolderToBackup is the folder to be copied
ECHO }} And BackupDestination is the target folder for the copy action
ECHO }} BackupFolder.bat will copy the entire contents of FolderToBackup
ECHO }}    and its subfolders into a dated subfolder of BackupDestination
ECHO }}

:End