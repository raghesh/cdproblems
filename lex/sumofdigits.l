/*****************************************************************************
 * File: simple.l
 * Author: Keith Schwarz (htiek@cs.stanford.edu)
 *
 * A simple flex script that sums all the numbers in a file.
 */
%{
  int totalNumber = 0;
%}

/* Define two regular expressions for later use. */
LETTER  [A-Za-z]
DIGIT   [0-9]

%%
{LETTER}*   printf("Word, %s\n", yytext);
{DIGIT}*    { printf("Number, %d\n", atoi(yytext));
                      totalNumber += atoi(yytext);
                                  }
[ \t\n]*    ; /* Skip whitespace */
.           printf("Symbol, %c\n", yytext[0]);

%%
int main() {
          yylex();
          printf("Sum of all numbers: %d\n", totalNumber);
}

