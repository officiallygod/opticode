%{
#include<stdio.h>
int c =0;
%}
%%
[/][*][^"*/"]*[*][/] {c++;}
[//].*[^\n]  {c++;}
[a-zA-Z0-9] {fprintf(yyout,"%s",yytext);}
%%
int main(int argc, char **argv)
{
FILE *f1,*f2;
if(argc>1)
{
f1=fopen(argv[1],"r");
if(!f1)
{
printf("file error\n");
exit(1);
}
yyin=f1;
f2=fopen(argv[2],"w");
if(!f2)
{
printf("Error");
exit(1);
}
yyout=f2;
yylex();
printf("Number of Comment Lines : %d\n",c);
}
return 0;
}
