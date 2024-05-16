package MyLexer;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(next_token yyerror);

sub next_token {
    my $parser = shift;

    $parser->YYData->{INPUT} =~ s/^\s+//;

    for ($parser->YYData->{INPUT}) {
        s/^([0-9]+)// and return ('INT', $1);
        s/^\+// and return ('PLUS', $1);
        s/^-// and return ('MINUS', $1);
        s/^\*// and return ('TIMES', $1);
        s/^\/// and return ('DIVIDE', $1);
        return ('', undef);
    }
}

sub yyerror {
    my ($parser, $msg) = @_;
    die "Parse error: $msg\n";
}

1;