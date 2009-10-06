
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-View-JavaScript-Minifier-XS',
  NAME      => 'Catalyst::View::JavaScript::Minifier::XS',
  AUTHOR    => 'Ivan\ Drinchev\ \<drinchev\@gmail\.com\>',
  ABSTRACT  => 'Concenate\ and\ minify\ your\ JavaScript\ files\.',
  VERSION   => '0.092790',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0',
    "parent" => '0',
    "JavaScript::Minifier::XS" => '0',
    "Path::Class" => '0.17',
    "Catalyst" => '5.64',
    "Moose" => '0',
  },
  test => {TESTS => 't/*.t'}
);

