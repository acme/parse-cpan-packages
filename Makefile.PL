#!perl
use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'Parse::CPAN::Packages',
    VERSION_FROM => 'lib/Parse/CPAN/Packages.pm',
    AUTHOR       => 'Leon Brocard <acme@astray.com>',
    LICENSE      => 'perl',
    PREREQ_PM    => {
        'Class::Accessor::Fast' => 0,
        'CPAN::DistnameInfo'    => 0,
        'IO::Zlib'              => 0,
        'Test::More'            => 0,
        'version'               => 0,
    }
);

