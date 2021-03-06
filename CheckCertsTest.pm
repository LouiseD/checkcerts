#package CheckCertTest;

use Test::More qw(no_plan);
use strict;
use warnings;

# Pre-requisites
use Crypt::OpenSSL::X509 0.9.1;

our @certlist = ();
open CERTS, "./certs" or die "\n./certs: $!";
while(<CERTS>) {
    chomp;
    push @certlist, $_;
}
close CERTS;

sub is_member($@) {
    my ($target,@list) = @_;
    return (grep {"$_" eq "$target"} @list);
}

1;
