#!/bin/perl

# -- monitoring station script
# -- Desc: This script calls the errpt.sh script on your agent
# --	system and parses the output for specific messages
# Get input variables
my $AGENT_HOSTNAME = $ENV{UPTIME_HOSTNAME};
my $AGENT_PASS = $ENV{UPTIME_PASSWORD};
my $AGENT_PORT = $ENV{UPTIME_PORT};
my $NETCAT;
my $TMP_FILE;
# Set some defaults, these will need to change depending on platform

if (-e "/etc/hosts")
{
$NETCAT = "../bin/netcat";
$TMP_FILE = "../tmp/check_wts.${AGENT_HOSTNAME}.$$";
}
else 
{
$NETCAT = "..\\bin\\netcat";
$TMP_FILE = "..\\tmp\\check_wts.${AGENT_HOSTNAME}.$$";
}

# Contact agent and save output
$CMD = "echo -n \"rexec $AGENT_PASS check_wts\" | \"$NETCAT\" $AGENT_HOSTNAME $AGENT_PORT > $TMP_FILE";
`$CMD`;
#print "$CMD";
open( FH, $TMP_FILE );
while ( <FH> ) {
print "$_"
}
unlink($TMP_FILE);
exit ( 0 );

