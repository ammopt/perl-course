use strict;
use warnings;

$|=1;

sub main() {

    # Match cheatsheet
    # \d digit
    # \s space
    # \S non-space
    # \w alphanumeric (including underscore)

    my $text = 'I am 117 years old tomorrow.';
    my $text2 = 'Iam117years_oldtomorrow.';

    if($text =~ /(am\s\d+)/){
        print "First match: $1\n";
    }

    if($text =~ /(y\S*)/){
        print "Second match: $1\n";
    }

    if($text2 =~ /(\w*)/){
        print "Third match: $1\n";
    }

}

main();