 "" let g:termdebug_wide=1              " меняем расположение окон при работе с gdb
"------------------------------------------


" для световой схемы молокай. для выбора :colorscheme molokai
" let g:molokai_original=1
" let g:rehash256=1

" не получилось настроить панель внизу хрень какая то.
 let g:airline#extensions#tabline#enabled      = 1   "Отображает вверху открытые вкладки
 let g:airline#extensions#tabline#left_sep     = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
 let g:airline#extensions#tabline#formatter    = 'default'

"------------------------------------------
"set textwidth=120 "Где 80 стоит заменить на нужную вам длину строки или // set cc=80//
set colorcolumn=+1 " делаем подсветку колонки за которую не хотим заходить 
au BufWinEnter * let w:m2=matchadd('ErrorMsg','\%>120v.\+', -1) " альтернативный вариант с тем что идет за столбцом

let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим

"===================================================
"настройка edit просмоторщика файлов
let g:netrw_banner        = 0 "отключить банер
let g:netrw_browse_split  = 4 "открыть файл в новом горизонтальном окне
let g:netrw_altv          = 1
let g:netrw_liststyle     = 3 "показать в виде дерева
let g:netrw_list_hide     = netrw_gitignore#Hide()
let g:netrw_list_hide    .= ',\(^\|\s\s\)\zs\/\S\+'
"===================================================
