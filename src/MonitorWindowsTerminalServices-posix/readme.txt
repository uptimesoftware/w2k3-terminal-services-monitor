Extended Memory Monitor Check
---------------

DESCRIPTION
---------------

This plug-in service monitor provides the following Windows Terminal Services counters

Terminal Services\\Active Sessions
Terminal Services\\Inactive Sessions
Terminal Services\\Total Sessions


INCLUDED IN THIS PACKAGE
---------------

For the monitoring station

Unix directory - Files for unix file system

- check_WTS_agent.pl - script to contact agent system
- MonitorWTS.xml     - xml file for windows monitoring station
- readme.txt         - this readme file

INSTALLATION
---------------

MONITORING STATION SETUP
1. Copy zip file to the <uptime install dir> directory.

2. Run the following command to install the plugin:

<uptime install dir>/scripts/loadpluginmonitor <zip file name>

3. Follow the instructions to install the agent scripts on the Windows system(s)

4. Add new service monitors using this template to up.time


