function! Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c=~ a:pat)?'':c
endfunction

" из части 1
autocmd VimEnter * echo "Привет (>^.^<) это Vim"

" Задание части 5 переместить строчку вверх или вниз
nnoremap <leader>- ddkP
nnoremap <leader>_ ddp

" Задание части 6 перевести в верхний регистр
inoremap <c-u> <esc>viwUea
nnoremap <c-u> <esc>viwUe

" часть 9 ev открыть vimrc 
nnoremap <leader>ev :split  $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<CR>

inoremap kj <esc>
"inoremap <esc> <nop>

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
"vnoremap <leader>" '>

" autocmd FileType cpp :iabbrev ctor class Noname {<CR>private:<CR><CR>public:<CR>Noname();<CR>~Noname(); <esc>5kb<esc>:.,+5s/Noname/<c-r>=Eatchar('\s')<cr>

" autocmd FileType cpp :iabbrev ctor <esc>:.read ~/.vim/templates/ctor.tpl<cr><c-r>=Eatchar('\s')<cr>
"<cr>
"<esc>5kb<esc>:.,+5s/Noname/
"<c-r>=Eatchar('\s')<cr>



