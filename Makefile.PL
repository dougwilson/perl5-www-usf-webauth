use inc::Module::Install;

use Module::Install::AuthorRequires 0.02;
use Module::Install::AuthorTests 0.002;

name     'WWW-USF-WebAuth';
all_from 'lib/WWW/USF/WebAuth.pm';
author   'Douglas Christopher Wilson <doug@somethingdoug.com>';
license  'perl';

# Resources
resources homepage   => 'http://github.com/dougwilson/perl5-www-usf-webauth/';
resources repository => 'git://github.com/dougwilson/perl5-www-usf-webauth.git';

# Modules that are required
requires
	'Authen::CAS::External'     => '0.03',
	'Moose'                     => '0.89',
	'MooseX::Aliases'           => '0.05',
	'MooseX::StrictConstructor' => '0.08',
	'MooseX::Types'             => '0.08',
	'URI'                       => 0,
	'namespace::clean'          => '0.04';

# Modules that are required for tests in t/
test_requires
	'Test::Exception' => '0.03',
	'Test::More'      => 0;

# Modules that are required for tests in xt/
author_requires
	'Test::More'                      => 0,
	'Test::Requires'                  => '0.02';

# Enable tests to be in multi-level directories
tests_recursive;

# Author tests in xt/
recursive_author_tests('xt');

# Write the provided classes in the META
auto_provides;

WriteAll;
