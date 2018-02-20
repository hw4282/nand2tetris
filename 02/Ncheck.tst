load Ncheck.hdl,
output-file Ncheck.out,
compare-to Ncheck.cmp,
output-list a%B2.16.1 out%B2.1.1;

set a %B0000000000000000,
eval,
output;

set a %B0011000000000000,
eval,
output;

set a %B0111111100000000,
eval,
output;

set a %B0101010101010101,
eval,
output;

set a %B1010101010101010,
eval,
output;

set a %B1111111111111111,
eval,
output;