# if you want to check what key is what - type read in zsh terminal and click keys
bindkey -e
bindkey -v
bindkey -s '\el' "ls\n"
bindkey '\ew' kill-region
bindkey '^r' history-incremental-search-backward
bindkey "^[[5~" up-line-or-history # page up
bindkey "^[[6~" down-line-or-history # page down
bindkey '^[[A' up-line-or-search # key up
bindkey '^[[B' down-line-or-search # key down
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line # home
bindkey "^[OH" beginning-of-line
bindkey "^a" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line # end
bindkey "^[OF" end-of-line
bindkey "^e" end-of-line
bindkey ' ' magic-space
bindkey "^[[1;5C" forward-word
bindkey "^[f" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^[[Z' reverse-menu-complete
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

# should this be in keybindings?
bindkey -M menuselect '^o' accept-and-infer-next-history
