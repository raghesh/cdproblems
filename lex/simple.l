%{
#include <stdio.h>
%}
  
%%
[0123456789]+           printf("Number\n");
[a-zA-Z][a-zA-Z0-9]*    printf("Word\n");
%%

