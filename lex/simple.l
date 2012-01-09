%{
  /* Definitions of manifest constants */
  LT, LE, EQ, NE, GT, GE, IF, THEN, ELSE, ID, NUMBER, RELOP
%}

/* Regular definitions */

delim     [ \t\n]
ws        [delim]+
letter    [A-Za-z]
digit     [0-9]
id        {letter}({letter}|{digit})*
fraction  (\.{digit}+)?
exponent  (E[+\-]?{digit}+)?
number    {digit}+{fraction}{exponent}

%%
