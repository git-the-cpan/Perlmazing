use Perlmazing;
our @ISA = qw(Perlmazing::Listable);

my $accent_equivalents = {
	'�' => 'A', '�' => 'A', '�' => 'A', '�' => 'A', '�' => 'A', '�' => 'A',
	'�' => 'e', '�' => 'e', '�' => 'e', '�' => 'e', 'e' => 'e', 'e' => 'e',
	'�' => 'n',
	'�' => 'O', '�' => 'O', '�' => 'O', '�' => 'O', 
	'�' => 'a', '�' => 'a', '�' => 'a', '�' => 'a', '�' => 'a', '�' => 'a',
	'�' => 'N',
	'�' => 'Y', 'Y' => 'Y', '�' => 'Y', 
	'�' => 'E', '�' => 'E', '�' => 'E', '�' => 'E',
	'�' => 'y', '�' => 'y', 'y' => 'y', 
	'�' => 'u', '�' => 'u', '�' => 'u', '�' => 'u',
	'�' => 'I', '�' => 'I', '�' => 'I', '�' => 'I',
	'�' => 'U', '�' => 'U', '�' => 'U', '�' => 'U',
	'�' => 'i', '�' => 'i', '�' => 'i', '�' => 'i',
	'�' => 'o', '�' => 'o', '�' => 'o', '�' => 'o', '�' => 'o', 
};

sub main {
	if (defined $_[0]) {
		my $seen;
		for my $i (split //, $_[0]) {
			next if $seen->{$i};
			$seen->{$i} = 1;
			if (exists $accent_equivalents->{$i}) {
				my $ch = sprintf '\x%x', ord $i;
				$_[0] =~ s/$ch/$accent_equivalents->{$i}/g;
			}
		}
	}
}

1;

