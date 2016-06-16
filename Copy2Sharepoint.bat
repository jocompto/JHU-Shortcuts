net use s: "\\collaborate.johnshopkins.edu@SSL\DavWWWRoot\sites\SAP\SupportTeam\Dev\Shared Documents\QuickLinks"
REM xcopy C:\Users\jcompto8\Documents\GitHub\JHU-Shortcuts\* s: /EXCLUDE: Copy2Sharepoint.bat
copy C:\Users\jcompto8\Documents\GitHub\JHU-Shortcuts\Shortcuts.htm  s:
xcopy C:\Users\jcompto8\Documents\GitHub\JHU-Shortcuts\*.* s: /E /Y/C /EXCLUDE:*.bat+.git*
net use /DELETE S: