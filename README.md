# Code resulting from Learn Perl 5 by doing it on Udemy

## Notes
- use strict -> forces you to declare variables (helps reduce bugs in the program, always use this)
- use warnings -> more verbose (see problems like uninitialized variables and such)
- brackets are optional on function declaration "sub main{} equals sub main(){}"
- string arguments inside single quotes are interpreted as literal strings, while double quotes special characters will get interpreted
- scalar variable is a variablee that just holds one value, whether a str
## Regex
- one way to deal with regex "surprises" is to build bit by bit, few characters first and add to it gradually
- use =~ to match with a regex
- regex: use a dot . to match any letter
- quantifiers are one of the fundamental building blocks os regular expressions (wild cards, groups and quantifiers)
- `if( $line =~ /(so.n)/)` quantifier dot . means match any character (will match soon, soan, etc)
- `if( $line =~ /(l+)/ )` quantifier plus + means match one or more of the preceding (in this case the character l)
- `if( $line =~ /(so*n)/)` quantifier star * (greedy - match as much as possible) meansing or a number or whatever
 match zero or more of the preceding character (in this case o) (will match son, soon, sn)
- `if( $line =~ /(s.*?n)/)` quantifier star qustion mark *? match zero or more of the preceding character, but no longer greedy, match as little as possible

## VS Code Extensions
- Install Perl Navigator (auto complete on dependencies)
- Perl Toolbox (linting and syntax check)
- Template Toolkit by Alexey Tabakman
