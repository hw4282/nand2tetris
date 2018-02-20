load Zxg.hdl,
output-file Zxg.out,
compare-to Zxg.cmp,
output-list a%B2.16.1 b%B2.1.2 out%B2.16.1;

set a %B0000000000000000,
set b 0,
eval,
output;

set a %B0000000000000000,
set b 1,
eval,
output;

set a %B1111111111111111,
set b 0,
eval,
output;

set a %B1111111111111111,
set b 1,
eval,
output;