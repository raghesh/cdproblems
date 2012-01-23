%{
#include <stdio.h>
%}

/* Regular definitions */

element   (He|H|Li|Be|B|C|N)
ionnum    [2-9][0-9]*
num       [1-9][0-9]*
ion       (\+|\-|{ionnum}\+|{ionnum}\-)
term      {element}
compound  ({term}|{term}{num}{term}*)
%%

{compound}  printf("Compound");
