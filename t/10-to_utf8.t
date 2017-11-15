use lib 'lib';
use lib '../lib';
use 5.006;
use strict;
use warnings;
use Test::More tests => 1;
use Perlmazing;

my $string = 'Este ni�o est� hablando espa�ol y s� que s� aprendi� lo �ltimo que le dijo el g�ero.';
to_utf8 $string;
is is_utf8($string), 1, 'utf8 detected';