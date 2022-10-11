use strict;
use warnings;

$|=1; #This turns off output buffering, each print runs as it's ready, instead of waiting for the whole script to finish and output all at once

sub main() {

    my @files = (
            '../lesson2 - downloading web content/image.png',
            '../lesson2 - downloading web content/home.html',
            '../lesson2 - downloading web content/notexists',
    );

    foreach my $file(@files){
        if(-f $file){
            print "Found file: $file\n";
        }
        else{
            print "File not found: $file\n";
        }
    }
}

main();