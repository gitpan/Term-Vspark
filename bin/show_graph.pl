use Term::Vspark qw{ show_graph };

our $VERSION = '0.20'; # VERSION
# PODNAME: show_graph

chomp( @ARGV = <STDIN> ) unless @ARGV;

my @list = sort { $a <=> $b } @ARGV;
my $columns = qx{tput cols};

print show_graph(
    'max'     => $list[-1],
    'columns' => $columns - 1,
    'values'  => \@ARGV,
);

__END__

=pod

=encoding utf-8

=head1 NAME

show_graph

=head1 AUTHOR

Gil Gonçalves <lurst@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Gil Gonçalves.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
