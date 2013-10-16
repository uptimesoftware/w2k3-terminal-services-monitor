In order to install this agent side script please do the following steps:

1. run Regedit from the Run menu option
2. Edit the following reg key

\HKEY_LOCAL_MACHINE\SOFTWARE\uptime software\up.time agent\CmdsPassword

Assign a password

3. Add a folder to up.time agent called rexec_commands
4. Add a string value called check_wts

assign it this value:

cscript /nologo <path to agent script>\check_wts_agent.vbs 

5. Restart up.time agent from the services menu