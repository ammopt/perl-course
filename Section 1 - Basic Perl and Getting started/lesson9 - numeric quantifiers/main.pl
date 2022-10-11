use strict;
use warnings;

$|=1;

sub main() {

    # Match cheatsheet
    # * zero or more of the preceding character, as many as possible (greedy)
    # + one or more of the preceding character, as many as possible (greedy)
    # *? zero or more of the preceding character, as few as possible (non-greedy)
    # +? one of more of the preceding character, as few as possible (non-greedy)
    # {5} five of the preceding
    # {3, 6} at least three and at most 6
    # {3,} at least three

    my $text = 'DE9865457';

    if($text =~ /(DE\d{3,6})/){
        print "First match: $1\n";
    }
}

main();