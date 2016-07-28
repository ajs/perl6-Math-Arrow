#
# Test Knuth Arrow notation

use v6;
use Test;
use Math::Arrow;

plan(2);

is 3↑3, 27, "Exponentiation";
is 3↑↑3, 7625597484987, "Two arrow power tower";

# vim: sw=4 softtabstop=4 ai expandtab filetype=perl6
