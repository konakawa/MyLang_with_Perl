package AST::BinaryOp;
use strict;
use warnings;
use Moose;
use Try::Tiny;

extends 'AST::Expression';

has 'op' => (is => 'ro', isa => 'Str', required => 1);
has 'left' => (is => 'ro', isa => 'AST::Expression', required => 1);
has 'right' => (is => 'ro', isa => 'AST::Expression', required => 1);

sub evaluate {
    my $self = shift;
    my $left = $self->left->evaluate;
    my $right = $self->right->evaluate;
    my $op = $self->op;
    
    if ($op eq '+') {
        return $left + $right;
    } elsif ($op eq '-') {
        return $left - $right;
    } elsif ($op eq '*') {
        return $left * $right;
    } elsif ($op eq '/') {
        if ($right == 0) {
            die "Division by zero\n";
        }
        return $left / $right;
    } else {
        die "Unknown operator: $op";
    }
}

1;