
@net use s: "\\collaborate.johnshopkins.edu@SSL\DavWWWRoot\sites\SAP\SupportTeam\Dev\Shared Documents\QuickLinks"
@REM xcopy Exclude command takes a file of the names that you want to ignore.  Build the file 
dir /b *.bat > ignore.txt
dir /b .git* >> ignore.txt
@REM echo ignore.txt >> ignore.txt
set COPYCMD=/I /C /K /R /E /T /Y /EXCLUDE:ignore.txt   
@REM  copy  files
@REM issue with xcopy to SharePoint in that it won't copy  
xcopy  C:\Users\jcompto8\Documents\GitHub\JHU-Shortcuts\*.* "\\collaborate.johnshopkins.edu@SSL\DavWWWRoot\sites\SAP\SupportTeam\Dev\Shared Documents\QuickLinks" %COPYCMD% 
xcopy  C:\Users\jcompto8\Documents\GitHub\JHU-Shortcuts\*.* C:\Users\jcompto8\Dropbox %COPYCMD% 
 
 
@net use /DELETE S:
@del ignore.txt
@REM exit

@REM XCOPY Switches
@REM XCOPY source [destination] [/A | /M] [/D[:date]] [/P] [/S [/E]] [/V] [/W]
@REM [/C] [/I] [/Q] [/F] [/L] [/G] [/H] [/R] [/T] [/U]
@REM [/K] [/N] [/O] [/X] [/Y] [/-Y] [/Z] [/B]
@REM [/EXCLUDE:file1[+file2][+file3]...]
@REM 
@REM source       Specifies the file(s) to copy.
@REM destination  Specifies the location and/or name of new files.
@REM /A           Copies only files with the archive attribute set,
@REM               doesn't change the attribute.
@REM /M           Copies only files with the archive attribute set,
@REM              turns off the archive attribute.
@REM /D:m-d-y     Copies files changed on or after the specified date.
@REM              If no date is given, copies only those files whose
@REM              source time is newer than the destination time.
@REM /EXCLUDE:file1[+file2][+file3]...
@REM           	Specifies a list of files containing strings.  Each string
@REM           	should be in a separate line in the files.  When any of the
@REM        	strings match any part of the absolute path of the file to be
@REM 			copied, that file will be excluded from being copied.  For
@REM 			example, specifying a string like \obj\ or .obj will exclude
@REM 			all files underneath the directory obj or all files with the
@REM 			.obj extension respectively.
@REM /P         Prompts you before creating each destination file.
@REM /S         Copies directories and subdirectories except empty ones.
@REM /E         Copies directories and subdirectories, including empty ones.
@REM 			Same as /S /E. May be used to modify /T.
@REM /V         Verifies the size of each new file.
@REM /W         Prompts you to press a key before copying.
@REM /C         Continues copying even if errors occur.
@REM /I         If destination does not exist and copying more than one file,
@REM            assumes that destination must be a directory.
@REM /Q         Does not display file names while copying.
@REM /F         Displays full source and destination file names while copying.
@REM /L         Displays files that would be copied.
@REM /G         Allows the copying of encrypted files to destination that does
@REM            not support encryption.
@REM /H         Copies hidden and system files also.
@REM /R         Overwrites read-only files.
@REM /T         Creates directory structure, but does not copy files. Does not
@REM            include empty directories or subdirectories. /T /E includes
@REM            empty directories and subdirectories.
@REM /U         Copies only files that already exist in destination.
@REM /K         Copies attributes. Normal Xcopy will reset read-only attributes
@REM /N         Copies using the generated short names.
@REM /O         Copies file ownership and ACL information.
@REM /X         Copies file audit settings (implies /O).
@REM /Y         Suppresses prompting to confirm you want to overwrite an
@REM 			existing destination file.
@REM /-Y        Causes prompting to confirm you want to overwrite an
@REM 			existing destination file.
@REM /Z         Copies networked files in restartable mode.
@REM /B         Copies the Symbolic Link itself versus the target of the link.
@REM /J         Copies using unbuffered I/O. Recommended for very large files.
@REM The switch /Y may be preset in the COPYCMD environment variable.
@REM This may be overridden with /-Y on the command line.