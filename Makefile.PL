use inc::Module::Install;
name 'practical';
all_from 'lib/practical.pm';

perl_version '5.010';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
