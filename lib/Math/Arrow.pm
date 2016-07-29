#
# Knuth Arrow notation

use v6;

unit module Math::Arrow;

sub infix:<↑>($a, $b) is assoc<right> is export {$a ** $b}
sub infix:<↑↑>($a, $b) is assoc<right> is export { [↑] $a xx $b }
sub infix:<↑↑↑>($a, $b) is assoc<right> is export { [↑↑] $a xx $b }
sub infix:<↑↑↑↑>($a, $b) is assoc<right> is export { [↑↑↑] $a xx $b }
sub infix:<↑↑↑↑↑>($a, $b) is assoc<right> is export { [↑↑↑↑] $a xx $b }
sub arrow(Cool $a, Cool $b where { $b >= 2 and $b.Int == $b }, Cool $arrows where {$arrows.Int == $arrows}) is export {
    die "Negative arrows not allowed" if $arrows < 0;
    return ($a ↑ $b) if $arrows <= 1 or $b <= 1;
    # Technically we should reverse this because of associativity,
    # but since the power tower are all identical...
    ($a xx $b).reduce: -> $x, $y { arrow($y, $x, $arrows-1) };
}

# vim: sw=4 softtabstop=4 ai expandtab filetype=perl6
