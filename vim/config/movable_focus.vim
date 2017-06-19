" FROM DESTROY ALL SOFTWARE
" https://www.destroyallsoftware.com/file-navigation-in-vim.html
" Make the current window big, but leave others context
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=12
set winminheight=12
set winheight=999
