use lib 'lib';
use lib '../lib';
use 5.006;
use strict;
use warnings;
use Test::More tests => 4;
use Perlmazing;

my $accented = 'El ni�o est� hablando espa�ol y s� que s� logr� resultados �nicos.';
my $shouldbe = 'El nino esta hablando espanol y se que si logro resultados unicos.';

my $r = replace_accented_characters $accented;
isnt $r, $accented, 'scalar untouched';
is $r, $shouldbe, 'right result';
my $old = $accented;
replace_accented_characters $accented;
isnt $old, $accented, 'original affected';
is $accented, $shouldbe, 'right change';
