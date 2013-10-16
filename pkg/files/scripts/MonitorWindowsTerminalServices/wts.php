<?php
require('rcs_function.php');

// Get input variables
$agent_hostname = getenv('UPTIME_HOSTNAME');
$agent_port     = getenv('UPTIME_PORT');
$agent_password = getenv('UPTIME_PASSWORD');

if ($agent_port == "") {
	$agent_port = 9998;
}

$cmd = "terminal_services";
$cmdlinevar = "";

// run the remote command
$agent_output = uptime_remote_custom_monitor($agent_hostname, $agent_port, $agent_password, $cmd, $cmdlinevar);
if (strlen(trim($agent_output)) == 0) {
	print "Error: No lines returned from agent.";
	exit(1);
}
if (trim($agent_output) == "ERR") {
	print "Error: Output received: 'ERR'. The agent may not be configured correctly. Check the password?";
	exit(1);
}

print $agent_output;
exit(0);
?>
