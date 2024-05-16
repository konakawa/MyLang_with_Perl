package AST::Value;
use strict;
use warnings;

use lib 'local/lib/perl5';
use Moose;

extends 'AST::Expression';

has 'value' => (is => 'ro', isa => 'Num', required => 1);

sub evaluate {
    my $self = shift;
    return $self->value;
}

1;