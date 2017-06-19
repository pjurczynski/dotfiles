if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ackprg = 'ag --nogroup --nocolor --column --ignore-dir node_modules --ignore-dir bower_components --ignore-dir tmp --ignore-dir log'
endif
