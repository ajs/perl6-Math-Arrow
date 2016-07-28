#
# Knuth Arrow notation

use v6;

unit module Math::Arrow;

sub infix:<↑>($a, $b) is assoc<right> is export {$a ** $b}
sub infix:<↑↑>($a, $b) is assoc<right> is export { [↑] $a xx $b }
sub infix:<↑↑↑>($a, $b) is assoc<right> is export { [↑↑] $a xx $b }
sub infix:<↑↑↑↑>($a, $b) is assoc<right> is export { [↑↑↑] $a xx $b }
sub infix:<↑↑↑↑↑>($a, $b) is assoc<right> is export { [↑↑↑↑] $a xx $b }

# vim: sw=4 softtabstop=4 ai expandtab filetype=perl6
