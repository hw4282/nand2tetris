load Or16B1.hdl,
output-file Or16B1.out,
compare-to Or16B1.cmp,
output-list a%B2.16.1 out%B2.1.1;

set a %B1000000000000000,
eval,
output;

set a %B1111111100000000,
eval,
output;

set a %B1111111100000000,
eval,
output;

set a %B1010101010101010,
eval,
output;

set a %B1010101010101010,
eval,
output;

set a %B0000000000000000,
eval,
output;