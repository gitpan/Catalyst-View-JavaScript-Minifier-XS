package Catalyst::View::JavaScript::Minifier::XS;

use warnings;
use strict;

use base qw/Catalyst::View/;

our $VERSION = '0.01';

use Carp qw/croak/;
use JavaScript::Minifier::XS qw/minify/;
use Data::Dump qw/dump/;
use Path::Class::File;

sub process {
    my ($self,$c) = @_;
    croak 'No JavaScript files specified in $c->stash->{template}'
        unless defined $c->stash->{template};
    my (@files) = ( ref $c->stash->{template} eq 'ARRAY' ?
        @{ $c->stash->{template} } : 
	split /\s+/, $c->stash->{template} );
    # map files to INCLUDE_PATH
    my $home=$self->config->{INCLUDE_PATH} || $c->path_to('root');
    @files = map { 
       Path::Class::File->new( $home, $_);
    } @files;
    # feed them to JavaScript::Minifier and set the body.
	my @jsFiles;
	for my $file ( @files ) {
		open(IN, "<$file");
		for ( <IN> ) {
			push @jsFiles, $_;
		}
		close(IN);
	}
    $c->res->content_type("text/javascript");
    $c->res->body( minify(join(" ",@jsFiles)) );
}

=head1 NAME

Catalyst::View::JavaScript::Minifier::XS - Concenate and minify your JavaScript files.

=head1 VERSION

Version 0.01

=head1 SYNOPSIS

    ./script/myapp_create.pl view JavaScript JavaScript::Minifier::XS

    sub javascript : Local {
		my ($self,$c) = @_;
		$c->stash->{template} = [ qw|/js/script.js /js/scrip2.js| ];		
        $c->forward($c->view('JavaScript'));
    }

=head1 DESCRIPTION

Take a set of JavaScript files and integrate them into one big file using 
and then minifies them using L<JavaScript::Minifier::XS>.  
The files are read from the 'template' stash variable,
and can be provided as a hashref or a space separated scalar.

=head1 SEE ALSO

L<Catalyst> , L<Catalyst::View>, L<JavaScript::Minifier::XS>

=head1 AUTHOR

Ivan Drinchev C<< <drinchev at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-catalyst-view-JavaScript-minifier-xs at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Catalyst-View-JavaScript-Minifier-XS>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 COPYRIGHT & LICENSE

Copyright 2009 Ivan Drinchev, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of Catalyst::View::JavaScript::Minifier::XS
