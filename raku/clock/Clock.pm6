unit class Clock;

has $.hour;
has $.minute;

# TODO: Convert to minutes.

submethod BUILD(:$hour, :$minute) {
    my $total-minutes = $hour * 60 + $minute;
    my $direction = $total-minutes.sign;
    my @hours-minutes = $total-minutes.abs.polymod(60);
    $!hour = @hours-minutes[1] % 24;
    $!minute = @hours-minutes[0];
    
    # my $direction = $minute.sign;
    # my @hour-minutes = $minute.abs.polymod(60);
    
    # $!hour = ($hour + @hour-minutes[1]) % 24;
    # $!minute = @hour-minutes[0]
    #     my $converted-time = $hour * 60 + $minute;
    #     my @minutes = $converted-time.abs.polymod(60);
    #     $!hour = ($converted-time.sign * @minutes[1]) % 24;
    #     $!minute = @minutes[0];
}

method time {
    ($.hour, $.minute).fmt("%02d", ":");
}

method add-minutes ($amount) {!!!}
method subtract-minutes ($amount) {!!!}

# method add-minutes ($amount) {
#     my $direction = $amount.sign;
#     my @minutes = ($.minute + $amount).abs.polymod(60);
#     $!hour = ($.hour + $direction * @minutes[1]) % 24;
#     $!minute = @minutes[0];
# }

# method subtract-minutes ($amount) {
#     $.add-minutes(-$amount);
# }
