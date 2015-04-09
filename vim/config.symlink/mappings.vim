" ex path extender
cmap %% <c-r>=expand('%:h')<CR>/

" clear highlight
nnoremap <CR> :nohlsearch<CR>

" switch between two last open files faster
nmap <silent> <leader><leader> <c-^>

" j and k will navigate correctly in the wrapped lines
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" jj and hh to go to normal mode
imap jj <esc>
imap hh <esc>

" some Git mappings
nmap <silent> <leader>gt :Gstatus<CR>

" search under cursor
nmap <silent> <LocalLeader>f :Ack <c-r><c-w> **/*<CR>
nmap <silent> <LocalLeader>F :Ack <c-r><c-a> **/*<CR>

" create directory for current file and save the file
nmap <silent> <leader>d :!mkdir -p %:h<CR>:w<CR>
map <leader>n :call RenameFile()<CR>

" Tmux integration
map <Leader>sr :w<CR> :Tmux spring rspec <c-r>=expand("%:p")<CR>:<c-r>=line('.')<CR><CR>
map <Leader>sm :w<CR> :Tmux !!<CR>

" spell-checking related shortcuts
nmap <silent> <leader>lp :set spelllang=pl_pl<CR>
nmap <silent> <leader>le :set spelllang=en_us<CR>

" alternate between production code and test
nnoremap <leader>. :call OpenTestAlternate()<CR>

" NERDTree
nmap <C-a> :NERDTreeToggle<CR>

" Focus.vim - o as in "only this buffer"
let g:focus_use_default_mapping = 0
nmap <leader>o <Plug>FocusModeToggle

" Moving back and forth between lines of same or lower indentation.
nnoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
nnoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
nnoremap <silent> [L :call NextIndent(0, 0, 1, 1)<CR>
nnoremap <silent> ]L :call NextIndent(0, 1, 1, 1)<CR>
vnoremap <silent> [l <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ]l <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [L <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> ]L <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<CR>
onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<CR>
