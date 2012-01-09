%option main
%{
  /* Definitions of manifest constants */
#define LT (256)
#define LE (255)
#define EQ (245)
#define NE (253) 
#define GT (252) 
#define IF (251) 
#define THEN (250) 
#define ELSE (249) 
#define ID (248) 
#define NUMBER (247) 
#define RELOP (246) 
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
