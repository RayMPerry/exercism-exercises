unit module Leap;

# on every year that is evenly divisible by 4
#  except every year that is evenly divisible by 100
#   unless the year is also evenly divisible by 400

sub is-leap-year ($year) is export {
    $year %% 4 and not $year %% 100 or $year %% 400
}
