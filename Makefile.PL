use inc::Module::Install 0.79;

name     'XML-Hash-LX';
all_from 'lib/XML/Hash/LX.pm';
version   my $v = '0.04';
author   'Mons Anderson <mons@cpan.org>';
license  'perl';

build_requires 'Test::More';
build_requires 'lib::abs', '0.90';

requires 'XML::LibXML';
features 'Catalyst' => [
	'Catalyst::Action' => '0',
];
# TODO: how to use fucking META:optional_features???
recommends 'Catalyst::Action' => '0';

#no_index directory => 'ex';

provides 'XML::Hash::LX' => {
	version => $v,
	file    => 'lib/XML/Hash/LX.pm',
};
provides 'Catalyst::Action::Deserialize::XML::Hash::LX' => {
	version => $v,
	file    => 'lib/Catalyst/Action/Deserialize/XML/Hash/LX.pm',
};
provides 'Catalyst::Action::Serialize::XML::Hash::LX' => {
	version => $v,
	file    => 'lib/Catalyst/Action/Serialize/XML/Hash/LX.pm',
};

auto_install;

WriteAll;
