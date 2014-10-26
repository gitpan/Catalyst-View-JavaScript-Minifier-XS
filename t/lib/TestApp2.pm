package TestApp2;
our $VERSION = '1.093180';



use strict;
use warnings;

use Catalyst::Runtime 5.80;

use parent qw/Catalyst/;
use Catalyst;

__PACKAGE__->config(
   name => 'TestApp2',
   'View::JS' => {
      stash_variable => 'frew',
   }
);

# Start the application
__PACKAGE__->setup();

1;
