package ExprHelpers;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(Evalue Eadd Esub Emul Ediv);

use AST::Value;
use AST::BinaryOp;

sub Evalue { return AST::Value->new({ value => shift }); }
sub Eadd { return AST::BinaryOp->new({ op => '+', left => shift, right => shift }); }
sub Esub { return AST::BinaryOp->new({ op => '-', left => shift, right => shift }); }
sub Emul { return AST::BinaryOp->new({ op => '*', left => shift, right => shift }); }
sub Ediv { return AST::BinaryOp->new({ op => '/', left => shift, right => shift }); }

1;