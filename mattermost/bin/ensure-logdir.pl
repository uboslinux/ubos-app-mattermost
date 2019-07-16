#!/usr/bin/perl
#
# Ensure that the log directory exists and we can write to it
#
# Copyright (C) 2014 and later, Indie Computing Corp. All rights reserved. License: see package.
#

use strict;

use UBOS::Logging;
use UBOS::Utils;

my $appconfigid = $config->getResolve( 'appconfig.appconfigid' );
my $logdir      = "/ubos/log/mattermost-$appconfigid";

if( 'deploy' eq $operation ) {

    if( -d $logdir ) {
        UBOS::Utils::myexec( "chown mattermost:mattermost '$logdir'" );
    } else {
        UBOS::Utils::mkdir( $logdir, 0700, 'mattermost', 'mattermost' );
    }
}

1;
