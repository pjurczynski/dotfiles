" ex path extender
cmap %% <c-r>=expand('%:h')<cr>/

" clear highlight
nnoremap <cr> :nohlsearch<cr>

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
nmap <silent> <leader>gt :Gstatus<cr>

" search under cursor
nmap <silent> <LocalLeader>f :Ack <c-r><c-w> **/*<cr>
nmap <silent> <LocalLeader>F :Ack <c-r><c-a> **/*<cr>

" create directory for current file and save the file
nmap <silent> <leader>d :!mkdir -p %:h<cr>:w<cr>
map <leader>n :call RenameFile()<cr>

" Tmux integration
map <Leader>sr :w<CR> :Tmux spring rspec <c-r>=expand("%:p")<CR>:<c-r>=line('.')<CR><CR>
map <Leader>sm :w<CR> :Tmux !!<CR>

" spell-checking related shortcuts
nmap <silent> <leader>lp :set spelllang=pl_pl<CR>
nmap <silent> <leader>le :set spelllang=en_us<CR>
