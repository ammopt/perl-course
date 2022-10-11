use strict;
use warnings;

$|=1; #This turns off output buffering, each print runs as it's ready, instead of waiting for the whole script to finish and output all at once

sub main() {
    my $file = 'text.txt';

    #INPUT is the filehandle, allows for I/O operations
    #using \n in die will prevent it showing the file and line of code it died at (can be useful for end users messages)
    open(INPUT, $file) or die "Input file $file not found\n";

    while( my $line = <INPUT> ){ #<INPUT> reads one line from the file
        if( $line =~ /egg/ ){  #simple regex - this reads as "if line matches wildcard 'egg'"
            print $line;
        }
    }

    close(INPUT);

}

main();