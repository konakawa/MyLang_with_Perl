package AST::Expression;
use strict;
use warnings;
use Moose;

sub evaluate {
    my $self = shift;
    die "Subclass must implement evaluate method";
}

1;