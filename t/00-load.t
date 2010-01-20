#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok('WWW::USF::WebAuth');
}

diag("Perl $], $^X");
diag("WWW::USF::WebAuth " . WWW::USF::WebAuth->VERSION);
diag("Authen::CAS::External " . Authen::CAS::External->VERSION);
