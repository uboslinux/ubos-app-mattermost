#!/usr/bin/perl
#
# Ensure that the logfile exists and we can write to it
#

use strict;

use UBOS::Logging;
use UBOS::Utils;

my $appconfigid = $config->getResolve( 'appconfig.appconfigid' );
my $logfile     = "/var/log/mattermost-$appconfigid.log";

if( 'deploy' eq $operation ) {

    if( -e $logfile ) {
        UBOS::Utils::myexec( "chown mattermost:mattermost '$logfile'" );
    } else {
        UBOS::Utils::saveFile( $logfile, '', 0x600, 'mattermost', 'mattermost' );
    }
}

1;
