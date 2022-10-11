use strict;
use warnings;

$|=1; #This turns off output buffering, each print runs as it's ready, instead of waiting for the whole script to finish and output all at once

sub main() {
    my $file = 'text.txt';

    #INPUT is the filehandle, allows for I/O operations
    #using \n in die will prevent it showing the file and line of code it died at (can be useful for end users messages)
    open(INPUT, $file) or die "Input file $file not found\n";

    while( my $line = <INPUT> ){ #<INPUT> reads one line from the file
        #if( $line =~ /h.s.g/ ){  #regex - this matches any 3 letter word starting with h, ending with s and any character in the middle (ex: his/has)
        if( $line =~ /(h.s.g)(...)/ ){ #round brackets () around the regex to group
            print "First match: '$1'; second match '$2'\n"; #$1 is 1st group match in the above regex, $2 is the 2nd group match in the above regex
        }
    }

    close(INPUT);

}

main();