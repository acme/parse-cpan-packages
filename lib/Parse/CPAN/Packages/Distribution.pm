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

__END__

=head1 NAME

Parse::CPAN::Packages::Distribution

=head1 DESCRIPTION

Represents a CPAN distribution.

=head1 METHODS

=head2 contains

Returns the packages in the distribution.

=head2 add_package

Adds a package to the distribution.
