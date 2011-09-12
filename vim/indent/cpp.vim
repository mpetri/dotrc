
" Only load this indent file when no other was loaded.
if exists("b:did_indent")
    finish
endif

let b:did_indent = 1


setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal expandtab
setlocal textwidth=80
setlocal wrap

setlocal cindent
setlocal cino=g0,t0,c5,e0
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e


