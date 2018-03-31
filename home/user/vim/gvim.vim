
if has( "gui_running" )

  let g:isGUI=1
  set guioptions=
  set guifont=Lucida_Console:h14
  colorscheme torte
  au GUIEnter * simalt ~x

endif

