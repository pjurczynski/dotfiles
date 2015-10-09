" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_ruby_mri_exec = '~/.rvm/rubies/ruby-2.2.0-preview1/bin/ruby'
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_enable_signs=1
let g:syntastic_disabled_filetypes = ['eruby']
