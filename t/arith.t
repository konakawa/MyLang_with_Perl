use strict;
use warnings;
use Test2::V0;

use lib 'lib';
use MyEvaluator qw(exec);

is exec('1 + 2 * 3'), 7, '1 + 2 * 3';
is exec('1 + 2 * 4 - 9 / 3'), 6, '1 + 2 * 4 - 9 / 3';
ok dies{exec('1 / 0')}, 'division by zero';
ok dies{exec('1 +')}, 'syntax error';
ok dies{exec('true')}, 'syntax error';

done_testing;