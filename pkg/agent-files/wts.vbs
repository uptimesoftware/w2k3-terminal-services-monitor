'for this script to work correctly the "up.time Data Collector" service 
'must run as a local admin account

'set your debugging connection values here if you want to test from the command line
HOSTNAME="localhost"
'USER="PerfUser"
'PASSWORD="performance"

Const wbemFlagReturnImmediately = &h10
Const wbemFlagForwardOnly = &h20
'On Error Resume Next
Set SWBemlocator = CreateObject("WbemScripting.SWbemLocator")

SWBemlocator.Security_.ImpersonationLevel=3
SWBemlocator.Security_.AuthenticationLevel=WbemAuthenticationLevelPktPrivacy

'Set objWMIService=SWBemlocator.ConnectServer(HOSTNAME,"\root\CIMV2",USER,PASSWORD)
Set objWMIService = GetObject("winmgmts:\\" & HOSTNAME & "\root\cimv2")
If Err = 0 then
	' Windows 2003
	Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_PerfFormattedData_TermService_TerminalServices", "WQL", _
					wbemFlagReturnImmediately + wbemFlagForwardOnly)
	For Each objItem In colItems
		WScript.Echo "ActiveSessions " & objItem.ActiveSessions
		WScript.Echo "InactiveSessions " & objItem.InactiveSessions
		WScript.Echo "TotalSessions " & objItem.TotalSessions
	Next
Else
	WScript.Echo "Could not get info from " & HOSTNAME
	WScript.Quit(2)
End If

WScript.Quit(0)

