use strict;
use warnings;

$|=1;

sub main() {
    my @emails = (
        'pjamorim91@gmail.com',
        'pedro',
        'pedro.',
        'ped@ro.',
        'pedro.ja.amorim@azores.gov.pt',
        'pedro.ja.amorim@globaleda.pt',
    );
    
    foreach my $email(@emails){
        if($email =~ /\w+\@\w+\.\w/){
            print "Valid: $email\n";
        }
        else{
            print "Invalid: $email\n";
        }
    }


}

main();