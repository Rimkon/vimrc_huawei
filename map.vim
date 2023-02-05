"удалить сопоставление: *unmap <сопоставление>
"

       " записать изменения в файл
       nnoremap <F2> :w<CR>                                    
       "для работы с ctags
       nnoremap <F3> :AsyncRun ctags -R<CR> 
       " сохранить и скомпилировать
       nnoremap <F5> :w<CR> :!g++ -ggdb % && ./a.out<CR>       
       nnoremap <F6> :w<CR> :Termdebug ./a.out <CR>            
       "для работы плагина tagbar показывать боковую панель со списком функц
       nnoremap <F8> :TagbarToggle<CR>                         
       "------------------------------------------
       " сохранить файл с помощью <ctrl + s>
       nnoremap <c-s> :w<cr>
       nnoremap <c-q> :q<cr>
       "------------------------------------------
       "Ctrl + hjkl перемещает курсор в режиме вставки
      " inoremap <c-h> <esc>hl<insert>
      " inoremap <c-j> <esc>jl<insert>
      " inoremap <c-k> <esc>kl<insert>
      " inoremap <c-l> <esc>ll<insert>
       "------------------------------------------
       "перключение между окнами
       nnoremap <leader>h :bp<CR>
       " nnoremap <leader>j :wincmd j<CR>
       nnoremap <leader>k :source ~/code/scripts/version1/myScript.vim<CR><CR>
       nnoremap <leader>l :bn<CR>
         
       nnoremap <leader>u :UndotreeShow<CR>
       nnoremap <Leader>w :write<CR>
         
       inoremap {<CR> {<CR>}<ESC>O
         
       "===================================================
       "показать слевой стороны каталог файлов.
       inoremap <c-b> <Esc>:Lex<CR>:vertical resize 20<CR>
       nnoremap <c-b> <Esc>:Lex<CR>:vertical resize 20<CR>
       "---------------------------------------------------
       " для работы плагина который форматирует текст EasyAlign
       xmap ga <Plug>(EasyAlign)
       " Start interactive EasyAlign for a motion/text object (e.g. gaip)
       nmap ga <Plug>(EasyAlign)
       "------------------------------------------
       "чисто сахар, при поиске происходит подсветка нужных слов, для того что бы
       "быстро убрать выделение : жмем точку и слеш для этого если что есть отдельная
       "команда :noh 
       nnoremap <silent> ./ :nohlsearch <CR>
       "------------------------------------------
       " переключение между буферами чисто так эксперимент работает но лидер на
       " пробел плохая идея
       " nnoremap <leader>L <C-^>
       " inoremap <leader>L <ESC><C-^>
       "------------------------------------------
       " для перехода к определению функций возможно это будет работать и без ctags???
       " не забывай про лидера (пробел)
       nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
       nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
       "------------------------------------------
       "cp, yp, dp теперь копирует, удаляет блок между скобками ()
       " как то криво это все работает
       " vnoremap p i(
       " onoremap p i(
       " autocmd FileType cpp :onoremap <buffer> p i(
       " autocmd FileType cpp :nunmap<buffer>p

