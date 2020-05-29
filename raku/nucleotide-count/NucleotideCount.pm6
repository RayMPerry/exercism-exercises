unit module NucleotideCount;

sub nucleotide-count ($strand) is export {
    fail "Invalid nucleotide in strand" if $strand and not $strand ~~ m/^<[AGCT]>+$/;
    return $strand.comb(/<[AGCT]>/).Bag;
}
