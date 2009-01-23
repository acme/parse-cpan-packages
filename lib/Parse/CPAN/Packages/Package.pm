package Parse::CPAN::Packages::Package;
use Moose;

has 'package' => ( is => 'rw', isa => 'Str' );
has 'version' => ( is => 'rw', isa => 'Str' );
has 'prefix'  => ( is => 'rw', isa => 'Str' );
has 'distribution' =>
    ( is => 'rw', isa => 'Parse::CPAN::Packages::Distribution' );

__PACKAGE__->meta->make_immutable;

1;
