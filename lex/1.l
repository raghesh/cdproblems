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
#define GE (245)
int RelopVal;
#include <stdio.h>

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

{ws}      {/*no action no return*/}
if        {return IF;}
then      {return THEN;}
else      {return ELSE;}
{id}      {install_id(); return ID;}
{number}  {install_num(); return NUMBER;}
“<“       {RelopVal = LT; return RELOP;}
“<=“      {RelopVal = LE; return RELOP;}
“=“       {RelopVal = EQ; return RELOP;}
“<>“      {RelopVal = NE; return RELOP;}
“>“       {RelopVal = GT; return RELOP;}
“>=“      {RelopVal = GE; return RELOP;}
%%

install_id() {
  printf("Installing id into symbol table\n");
}

install_num() {
  printf("Installing number into symbol table\n");
}
