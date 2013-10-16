Extended Memory Monitor Check
---------------

DESCRIPTION
---------------

This plug-in service monitor provides the following Windows Terminal Services counters:

Terminal Services\\Active Sessions
Terminal Services\\Inactive Sessions
Terminal Services\\Total Sessions


INCLUDED IN THIS PACKAGE
---------------

For the monitoring station


Windows - Files for Windows Monitoring Station

- check_wts_agent.pl - script to contact agent system
- check_wts_launcher_agent.bat - script to execute perl file
- MonitorWTS.xml - xml file for windows monitoring station


INSTALLATION
---------------

MONITORING STATION SETUP
1. Copy check_wts_launcher.bat, check_wts_agent.pl to the up.time
scripts folder.

   Copy the Monitor_WTS.xml to the <uptime install dir> \ xml directory

2. Add the monitor template to up.time using erdcloader, example below

<uptime_dir>\scripts\erdcloader -x <uptime_dir>\xml\MonitorWTS.xml

3. Follow the instructions in the README in the AgentScript zip file 
4. Add new service monitors using this template to up.time

