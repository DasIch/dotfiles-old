setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal smarttab
setlocal expandtab
setlocal formatoptions+=croq
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with
let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0

call rainbow_parenthsis#LoadSquare ()
call rainbow_parenthsis#LoadRound ()
call rainbow_parenthsis#LoadBraces ()
call rainbow_parenthsis#Activate ()
