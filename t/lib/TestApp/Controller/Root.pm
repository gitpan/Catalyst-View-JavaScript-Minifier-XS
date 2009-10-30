package TestApp::Controller::Root;
our $VERSION = '1.093030';



use strict;
use warnings;

use parent 'Catalyst::Controller';

__PACKAGE__->config->{namespace} = '';

sub test : Local {
   my ( $self, $c ) = @_;
   $c->stash->{js} = 'foo';

   $c->forward( 'TestApp::View::JS' );
}

1;
