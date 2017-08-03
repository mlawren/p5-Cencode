#!/usr/bin/env perl
use strict;
use warnings;
use BBE qw( encode_bbe decode_bbe bless_bbe );
use Data::Dumper;
no warnings 'once';

my $bbe = encode_bbe {
    bytes   => bless_bbe( pack( 's<', 255 ), 'bytes' ),
    false   => $BBE::FALSE,
    integer => 25,
    true    => $BBE::TRUE,
    undef   => undef,
    utf8    => "\x{df}",
};

print Dumper( utf8::is_utf8($bbe) );
print Dumper($bbe);
