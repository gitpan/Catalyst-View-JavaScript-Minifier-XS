package Catalyst::Helper::View::JavaScript::Minifier::XS;
our $VERSION = '0.092800';



use strict;


sub mk_compclass {
    my ( $self, $helper ) = @_;
    my $file = $helper->{file};
    $helper->render_file( 'compclass', $file );
}


1;




=pod

=head1 VERSION

version 0.092800

=head1 NAME

Catalyst::Helper::View::JavaScript::Minifier::XS - Helper for JavaScript::Minifier::XS views

=head1 SYNOPSIS

    script/create.pl view JavaScript JavaScript::Minifier::XS

=head1 DESCRIPTION

Helper for JavaScript::Minifier::XS views

=head2 METHODS

=head3 mk_compclass



=head1 SEE ALSO

L<Catalyst::Manual>, L<Catalyst::Helper>

=head1 AUTHOR

See L<Catalyst::View::JavaScript::Minifier::XS>



=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Ivan Drinchev <drinchev@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut 



__DATA__

__compclass__
package [% class %];

use strict;
use warnings;

use parent 'Catalyst::View::JavaScript::Minifier::XS';

1;
