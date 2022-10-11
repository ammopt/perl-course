use strict;
use warnings;

$|=1;

sub main() {
    my $text = "The code for this device is GP1234.";

    if($text =~ /(\w{2}\d{4})/){
        print "Code is: $1 and text is: $text\n";
    }
    else{
        print "Code not found: $text\n";
    }

    #match after "is " up until the first dot we encounter
    if($text =~ /\bis (.+?)\./){
        print "2nd match is: $1 and text is: $text\n";
    }
    else{
        print "2nd match not found: $text\n";
    }

    if($text =~ /(\w{2}\d{2,6})/){
        print "3rd match is: $1 and text is: $text\n";
    }
    else{
        print "3rd match not found: $text\n";
    }

}

main();