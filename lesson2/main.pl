use strict;
use warnings;

use LWP::Simple;

sub main() {
    print "Downloading...\n";
    # print get("http://www.google.com");

    # getstore("http://www.google.com", "home.html");

    # Comment: getstore saves the contents of the link to the 2nd argument, but also returns the response->code
    my $code = getstore('https://www.google.com/images/branding/googlelogo/1x/googlelogo_light_color_272x92dp.png', 'image.png');

    if($code == 200){
        print "Success\n";
    }
    else{
        print "Failed\n";
    }

    print "Finished\n";
}

main();
