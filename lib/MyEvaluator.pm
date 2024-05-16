package MyEvaluator;
use strict;
use warnings;

use lib 'lib';
use MyParser;
use MyLexer qw(next_token yyerror);

use Exporter 'import';
our @EXPORT_OK = qw(exec);

sub exec {
    my $input = shift;
    my $parser = MyParser->new();
    $parser->YYData->{INPUT} = $input;
    my $ast = $parser->YYParse(yylex => \&next_token, yyerror => \&yyerror);
    return $ast->evaluate;
}