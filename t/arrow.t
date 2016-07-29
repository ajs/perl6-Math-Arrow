#
# Test Knuth Arrow notation

use v6;
use Test;
use Math::Arrow;

plan(5);

is 3 ↑ 3, 27, "Exponentiation";
is 3 ↑↑ 3, 7625597484987, "Two arrow power tower";
is arrow(3,3,2), 3 ↑↑ 3, "arrow(...) function form";
is 3 ↑↑↑ 2, 3 ↑↑ 3, "Triple arrow";
is 2 ↑↑↑ 2, 4, "Simple ²2 = 4";

# vim: sw=4 softtabstop=4 ai expandtab filetype=perl6
