use strict;
use warnings;

$|=1; #This turns off output buffering, each print runs as it's ready, instead of waiting for the whole script to finish and output all at once

sub main() {

    my $input = 'text.txt';
    open(INPUT, $input) or die "Input file $input not found\n";

    my $output = 'output.txt'; #need '>' to indicate perl that we want to create output.txt file. It's concatenated below
    open(OUTPUT, '>'.$output) or die "Can't create $output.\n"; #OUTPUT is file handle

    while( my $line = <INPUT> ){ #<INPUT> reads one line from the file
        if( $line =~ /\begg\b/ ){  #\b is word-boundary (basically a space or a dot etc)
            $line =~ s/you/YOU/ig; #regex - first s means substitute, i at the end is case insensitive and g is global
            print OUTPUT $line;
        }
    }

    close(INPUT);
    close(OUTPUT);
}

main();