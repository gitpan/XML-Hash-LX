use inc::Module::Install;

name     'XML-Hash-LX';
all_from 'lib/XML/Hash/LX.pm';
author   'Mons Anderson <mons@cpan.org>';
license  'perl';

build_requires 'Test::More';
build_requires 'lib::abs', '0.90';

requires 'XML::LibXML';

auto_install;

WriteAll;

