####################################################################
#
#    This file was generated using Parse::Yapp version 1.21.
#
#        Don't edit this file, use source file instead.
#
#             ANY CHANGE MADE HERE WILL BE LOST !
#
####################################################################
package MyParser;
use vars qw ( @ISA );
use strict;

@ISA= qw ( Parse::Yapp::Driver );
use Parse::Yapp::Driver;


use strict;
use warnings;

use ExprHelpers qw(Evalue Eadd Esub Emul Ediv);


sub new {
        my($class)=shift;
        ref($class)
    and $class=ref($class);

    my($self)=$class->SUPER::new( yyversion => '1.21',
                                  yystates =>
[
	{#State 0
		ACTIONS => {
			'INT' => 3
		},
		GOTOS => {
			'expr' => 1,
			'term' => 2,
			'factor' => 4
		}
	},
	{#State 1
		ACTIONS => {
			'PLUS' => 6,
			'' => 5,
			'MINUS' => 7
		}
	},
	{#State 2
		ACTIONS => {
			'TIMES' => 8,
			'DIVIDE' => 9
		},
		DEFAULT => -3
	},
	{#State 3
		DEFAULT => -7
	},
	{#State 4
		DEFAULT => -6
	},
	{#State 5
		DEFAULT => 0
	},
	{#State 6
		ACTIONS => {
			'INT' => 3
		},
		GOTOS => {
			'factor' => 4,
			'term' => 10
		}
	},
	{#State 7
		ACTIONS => {
			'INT' => 3
		},
		GOTOS => {
			'term' => 11,
			'factor' => 4
		}
	},
	{#State 8
		ACTIONS => {
			'INT' => 3
		},
		GOTOS => {
			'factor' => 12
		}
	},
	{#State 9
		ACTIONS => {
			'INT' => 3
		},
		GOTOS => {
			'factor' => 13
		}
	},
	{#State 10
		ACTIONS => {
			'DIVIDE' => 9,
			'TIMES' => 8
		},
		DEFAULT => -1
	},
	{#State 11
		ACTIONS => {
			'TIMES' => 8,
			'DIVIDE' => 9
		},
		DEFAULT => -2
	},
	{#State 12
		DEFAULT => -4
	},
	{#State 13
		DEFAULT => -5
	}
],
                                  yyrules  =>
[
	[#Rule 0
		 '$start', 2, undef
	],
	[#Rule 1
		 'expr', 3,
sub { Eadd($_[1], $_[3]) }
	],
	[#Rule 2
		 'expr', 3,
sub { Esub($_[1], $_[3]) }
	],
	[#Rule 3
		 'expr', 1,
sub { $_[1] }
	],
	[#Rule 4
		 'term', 3,
sub { Emul($_[1], $_[3]) }
	],
	[#Rule 5
		 'term', 3,
sub { Ediv($_[1], $_[3]) }
	],
	[#Rule 6
		 'term', 1,
sub { $_[1] }
	],
	[#Rule 7
		 'factor', 1,
sub { Evalue($_[1]) }
	]
],
                                  @_);
    bless($self,$class);
}



1;
