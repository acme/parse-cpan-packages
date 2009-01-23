package Parse::CPAN::Packages::Distribution;
use Moose;

has 'prefix'    => ( is => 'rw', isa => 'Str' );
has 'dist'      => ( is => 'rw', isa => 'Str|Undef' );
has 'version'   => ( is => 'rw', isa => 'Str|Undef' );
has 'maturity'  => ( is => 'rw', isa => 'Str' );
has 'filename'  => ( is => 'rw', isa => 'Str' );
has 'cpanid'    => ( is => 'rw', isa => 'Str' );
has 'distvname' => ( is => 'rw', isa => 'Str|Undef' );
has 'packages'  => ( is => 'rw', isa => 'ArrayRef', default => sub { [] } );

__PACKAGE__->meta->make_immutable;

sub contains {
    my $self = shift;
    return @{ $self->packages };
}

sub add_package {
    my $self = shift;
    push @{ $self->packages }, @_;
}

1;
