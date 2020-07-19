unit module Pangram;

sub is-pangram ($_) is export { .lc.comb ⊇ "a".."z" }
