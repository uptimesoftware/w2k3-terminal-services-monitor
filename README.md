# Windows 2003 Terminal Services Sessions Monitor

See http://uptimesoftware.github.io for more information.

### Tags 
 plugin   microsoft   terminal services  

### Category

plugin

### Version Compatibility


  
* Windows 2003 Terminal Services Sessions Monitor 1.0 - 5.5, 5.4, 5.3, 5.2
  


### Description
Monitors the total, active and inactive terminal services sessions (used with Citrix). Note: also requires agent-side component/script.


### Supported Monitoring Stations

5.5, 5.4, 5.3, 5.2

### Supported Agents
None; no agent required

### Installation Notes
<p>MONITORING STATION SETUP
1. Copy check_wts_launcher.bat, check_wts_agent.pl to the up.time scripts folder.</p>

<p>Copy the Monitor_WTS.xml to the \ xml directory</p>

<ol>
<li>Add the monitor template to up.time using erdcloader, example below</li>
</ol>


<p>\scripts\erdcloader -x \xml\MonitorWTS.xml</p>

<ol>
<li>Follow the instructions in the README in the AgentScript zip file</li>
<li>Add new service monitors using this template to up.time</li>
</ol>


<p>Agent-Side Installation</p>

<ul>
<li>open the up.time Agent Console</li>
<li>Click on Advanced > Custom Scripts</li>
<li>Enter "check_wts" and "cscript /nologo \check_wts_agent.vbs"</li>
<li>Click Add > close > Save > Restart</li>
</ul>



### Dependencies
<p>n/a</p>


### Input Variables


### Output Variables


* Terminal Services / Active Sessions

* Terminal Services / Inactive Sessions

* Terminal Services / Total Sessions


### Languages Used

* Shell/Batch

* Perl

