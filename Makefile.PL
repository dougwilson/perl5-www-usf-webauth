use inc::Module::Install;

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

# Modules that are required for tests
test_requires
	'Test::Class'     => '0.33',
	'Test::Command'   => '0.08',
	'Test::Exception' => '0.03',
	'Test::More'      => '0.94',
	'Test::Requires'  => '0.02';

# Modules that are required for author tests
author_requires
	'File::Spec'                      => 0,
	'Module::Install'                 => '0.91',
	'Module::Install::AuthorRequires' => '0.02',
	'Module::Install::AuthorTests'    => '0.002',
	'Pod::Coverage'                   => '0.18',
	'Test::CleanNamespaces'           => 0,
	'Test::ConsistentVersion'         => 0,
	'Test::DistManifest'              => 0,
	'Test::MinimumVersion'            => '0.009',
	'Test::Perl::Critic'              => '1.01',
	'Test::Pod'                       => '1.22',
	'Test::Pod::Content'              => 0,
	'Test::Pod::Coverage'             => '1.08';

# Enable tests to be in multi-level directories
tests_recursive;

# Author tests in xt/
recursive_author_tests('xt');

# Write the provided classes in the META
auto_provides;

WriteAll;
