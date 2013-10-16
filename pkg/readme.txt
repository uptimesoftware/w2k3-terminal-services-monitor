Agent Installation
-------------------------
WINDOWS:
a. Place the wts.vbs file in the uptime agent directory in a subdirectory called "scripts" (C:\program files\uptime software\up.time agent\scripts)
   (create the scripts directory if needed)
b. Open the uptime Agent Console (Start > up.time agent) and click on Advanced > Custom Scripts
c. Enter the following:
Command Name: terminal_services
(32-bit Windows) Path to Script: cscript //nologo "C:\Program Files\uptime software\up.time agent\scripts\wts.vbs"
(64-bit Windows) Path to Script: cscript //nologo "C:\Program Files (x86)\uptime software\up.time agent\scripts\wts.vbs"
