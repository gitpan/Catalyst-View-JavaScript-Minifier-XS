
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-View-JavaScript-Minifier-XS',
  NAME      => 'Catalyst::View::JavaScript::Minifier::XS',
  AUTHOR    => "Ivan\ Drinchev\ \<drinchev\ \(at\)\ gmail\ \(dot\)\ com\>\,\ Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\@gmail\.com\>",
  ABSTRACT  => "Minify\ your\ served\ JavaScript\ files",
  VERSION   => '1.093530',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "URI" => '0',
    "parent" => '0',
    "FindBin" => '0',
    "File::Spec" => '0',
    "Test::More" => '0.88',
    "JavaScript::Minifier::XS" => '0',
    "HTTP::Headers" => '0',
    "autodie" => '0',
    "Path::Class::File" => '0.17',
    "Catalyst" => '5.8000',
    "Catalyst::Test" => '0',
    "HTTP::Request" => '0',
    "Moose" => '0',
  },
  test => {TESTS => 't/*.t'}
);

