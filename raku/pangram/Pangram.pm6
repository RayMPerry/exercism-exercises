unit module Pangram;

sub is-pangram ($string) is export {
   not (("a".."z").Set (-) $string.lc.comb(/\w/).Set).elems # `== 0` also works
}
