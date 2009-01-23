#!perl
use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'Parse::CPAN::Packages',
    VERSION_FROM => 'lib/Parse/CPAN/Packages.pm',
    AUTHOR       => 'Leon Brocard <acme@astray.com>',
    ABSTRACT     => 'Parse 02packages.details.txt.gz',
    LICENSE      => 'perl',
    PREREQ_PM    => {
        'Compress::Zlib'     => 0,
        'CPAN::DistnameInfo' => 0,
        'Moose'              => 0,
        'Test::More'         => 0,
        'version'            => 0,
    }
);

