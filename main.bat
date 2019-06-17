rem Lazy Triage v0.2 - by Furkan Caliskan

mkdir c:\%COMPUTERNAME%_hunt
wmic computersystem get model,name,username,domain /format:csv > c:\%COMPUTERNAME%_hunt\systeminfo.txt
wmic startup list full /format:csv > c:\%COMPUTERNAME%_hunt\startup.txt
wmic process get description,processid,parentprocessid,commandline /format:csv > c:\%COMPUTERNAME%_hunt\process.txt
wmic service get name,processid,startmode,state,status,pathname /format:csv > c:\%COMPUTERNAME%_hunt\services.txt
wmic job list full /format:csv > c:\%COMPUTERNAME%_hunt\jobs.txt
ipconfig /displaydns > c:\%COMPUTERNAME%_hunt\dns_cache.txt
CMD /u /c schtasks /query /v /fo list > c:\%COMPUTERNAME%_hunt\schtasks.txt
CMD /u /c netstat -bona > c:\%COMPUTERNAME%_hunt\netstat_bona.txt
CMD /u /c net users > c:\%COMPUTERNAME%_hunt\users.txt
CMD /u /c net localgroup administrators > c:\%COMPUTERNAME%_hunt\localadmin.txt

rem Custom IOCs to search
rem wmic datafile where name="C:\\PATH\\FOR\\CUSTOM\\FILE\\TO\\SEARCH" get name,creationdate > c:\%COMPUTERNAME%_hunt\ioc_hit.txt
