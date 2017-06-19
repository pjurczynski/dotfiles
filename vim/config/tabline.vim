function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " set up some oft-used variables
    let tab = i + 1 " range() starts at 0
    let winnr = tabpagewinnr(tab) " gets current window of current tab

    let s .= '%' . tab . 'T' " start a tab
    let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#') " if this tab is the current tab...set the right highlighting
    let s .= ' ' . tab " current tab number
    let s .= ' ' . fnamemodify(getcwd(winnr, i + 1 ), ':t')
  endfor

  let s .= '%#TabLineFill#' " blank highlighting between the tabs and the righthand close 'X'
  let s .= '%T' " resets tab page number?
  let s .= '%=' " seperate left-aligned from right-aligned
  let s .= '%#TabLine#' " set highlight for the 'X' below
  let s .= '%999XX' " places an 'X' at the far-right
  return s
endfunction
set tabline=%!MyTabLine()
