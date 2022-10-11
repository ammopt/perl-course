use strict;
use warnings;

$|=1; #This turns off output buffering, each print runs as it's ready, instead of waiting for the whole script to finish and output all at once

sub main() {
    my $file = 'text.txt';

    #INPUT is the filehandle, allows for I/O operations
    #using \n in die will prevent it showing the file and line of code it died at (can be useful for end users messages)
    open(INPUT, $file) or die "Input file $file not found\n";

    while( my $line = <INPUT> ){ #<INPUT> reads one line from the file
        #if( $line =~ /(l+)/ ){ #quantifier plus + means match one or more of the preceding (in this case the character l)
        if( $line =~ /(s.*?n)/){ #quantifier star * means match zero or more of the preceding character (in this case o)
            print "$1\n";
        }
    }

    close(INPUT);

}

main();