#!/usr/bin/perl

use strict;
use warnings;

sub main {
	print "Content-type: text/plain\n\n";

    for ( my $i=0; $i < 10; $i++ ) {
    	$|++;	# partial results
        printf "<chunk>Log message #%d</chunk>\n", $i;
        sleep( rand( 3 ) );
    }
}

exit main();
