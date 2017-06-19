" map .md files fo markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Hamlbars
autocmd BufNewFile,BufReadPost *.hamlbars set filetype=haml
autocmd BufNewFile,BufReadPost *.hamlc set filetype=haml

" Bowerfile
autocmd BufNewFile,BufReadPost Bowerfile set filetype=ruby

" automatically strip trailing whitespace for some file types
autocmd FileType c,cpp,java,php,javascript,html,ruby autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
