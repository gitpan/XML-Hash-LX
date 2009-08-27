#!/usr/bin/env perl -w

use strict;
use Test::More;
use lib::abs '../lib';
BEGIN {
	my $catalyst = 0;
	eval {require Catalyst::Action; 1} and $catalyst = 1;
	my $w = 0;
	eval {require Test::NoWarnings;Test::NoWarnings->import; 1} and $w = 1;
	plan tests => 4+$w;
	use_ok( 'XML::Hash::LX' );
	use_ok( 'XML::Hash::LX', 'xml2hash', 'hash2xml' );
	SKIP: {
		$catalyst or skip 'there is no Catalyst::Action',2;
		use_ok( 'Catalyst::Action::Deserialize::XML::Hash::LX' );
		use_ok( 'Catalyst::Action::Serialize::XML::Hash::LX' );
	}
};
diag( "Testing XML::Hash::LX $XML::Hash::LX::VERSION, Perl $], $^X" );
