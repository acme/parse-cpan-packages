package Parse::CPAN::Packages::Distribution;
use strict;
use base qw( Class::Accessor::Fast );
__PACKAGE__->mk_accessors(
    qw( prefix dist version maturity filename
        cpanid distvname packages )
);

sub new {
    my $class = shift;
    my $self  = $class->SUPER::new;
    $self->packages( [] );
    return $self;
}

sub contains {
    my $self = shift;
    return @{ $self->packages };
}

sub add_package {
    my $self = shift;
    push @{ $self->packages }, @_;
}

1;
