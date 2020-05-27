unit class Bob;

# Bob answers 'Sure.' if you ask him a question, such as "How are you?".

# He answers 'Whoa, chill out!' if you YELL AT HIM (in all capitals).

# He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

# He says 'Fine. Be that way!' if you address him without actually saying anything.

# He answers 'Whatever.' to anything else.

# Bob's conversational partner is a purist when it comes to written communication and always follows normal rules regarding sentence punctuation in English.

method hey ($msg) {
    given $msg.trim {
        when not $_ { "Fine. Be that way!" }

        my $is-question = .substr(* - 1) ~~ "?";

        when m:g/<:Upper> ** 2/ and not /<:Lower>/ {
            when $is-question { "Calm down, I know what I'm doing!" }
            default { "Whoa, chill out!" }
        }
        when $is-question { "Sure." }
        default { "Whatever." }
    }
}
