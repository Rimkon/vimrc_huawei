:imap kj <Esc>                                                                                   

 
set path+=**                        " для того что бы при команде find он искал во всех папках вниз.
                                    " например: find main.cpp  он будет искать во всех папках этот
                                    " файл, а когда найдет откроет его.
set wildmenu                        " оно показывает внизу возможные команды, в виде строки над нижней строкой
set nu                              " Включить нумирацию строк
set smartindent                     " Умный отступ при кодинге
set noerrorbells                    " Отключить звуки при ошибках
set tabstop=4 softtabstop=4         " 
set shiftwidth=4                    " 
set expandtab                       " Заменять Табы пробелами
set nowrap                          " Не переносить слова при достижении края экрана
set smartcase                       " При поиске ищет как заглавные так и строчные буквы
set noswapfile                      " 
set nobackup                        " 
set showcmd                         " показывать какой оператор сейчас выбран напрмер z
 
set ignorecase                      " Поиск без учета регистра
set smartcase
set incsearch                       " При поиске сразу же идет подсветка искомого слова
set hlsearch                        " При нажатии на <Shift 3> происходит подсветка этих слов
packadd termdebug                   " для того что бы плагин для работы с gdb подключался автоматически
" let g:termdebug_wide=1              " меняем расположение окон при работе с gdb
"------------------------------------------
nmap <F2> :w<CR>                " записать изменения в файл
nmap <F5> :w<CR> :!g++ -ggdb % && ./a.out<CR>
nmap <F6> :w<CR> :Termdebug ./a.out <CR>


nmap <F8> :TagbarToggle<CR> "для работы плагина tagbar показывать боковую панель со списком функц
set tags=./tags,tags;$HOME
" set tags =../tags
 
 
"------------------------------------------
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
 
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>w :write<CR>
 
inoremap {<CR> {<CR>}<ESC>O
 
"------------ PLUGIN START----------------
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
 
call vundle#begin()
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'VundleVim/Vundle.vim'
Plugin 'mbbill/undotree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'        "информационная строка снизу
"Plugin 'vim-airline/vim-airline-themes' "информационная строка снизу как я
"понял это меняет только цвета и все.
Plugin 'kien/ctrlp.vim'                 "поиск файлов по <ctrl + p>
Plugin 'majutsushi/tagbar'              "боковая панель с функциями
Plugin 'ryanoasis/vim-devicons'
Plugin 'junegunn/vim-easy-align'        "форматирование переменных
Plugin 'mileszs/ack.vim'                " для поиска текста внутри файлов
Plugin 'skywind3000/asyncrun.vim'         " плагин для работы с ctags запуск в фоне раличных программ полезно при многопоточности 


call vundle#end()            " required
filetype plugin indent on    " required
 
set encoding=UTF-8
 
"-------------- PLUGIN END ----------------
colorscheme gruvbox                                                                              
set background=dark
" let g:gruvbox_termcolors=16


" для световой схемы молокай. для выбора :colorscheme molokai
" let g:molokai_original=1
" let g:rehash256=1

" не получилось настроить панель внизу хрень какая то.
" let g:airline#extensions#tabline#enabled = 1   "Отображает вверху открытые вкладки
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'

"------------------------------------------
nnoremap <F3> :AsyncRun ctags -R<CR> "для работы с ctags
"------------------------------------------
" Работать нижний код будет только для С++ файлов *.c *.cpp *.h *.hpp и т.д. <buffer> необходимо указать для того что бы. Если мы откроем срр файл и
" создадим вкладку с файлом допустим *.txt то для него будут работать все  сокращения что и для cpp файла.
" iabbrev указывает что это будет работать только для режима вставки
" для командного режима используй :cabbrev
autocmd FileType cpp :iabbrev <buffer> if if  (
autocmd FileType cpp :iabbrev <buffer> elseif elseif  (
autocmd FileType cpp :iabbrev <buffer> while while  (
autocmd FileType cpp :iabbrev <buffer> using using namespace std;
autocmd FileType cpp :iabbrev <buffer> for for (int i = 0; i < ; i++) {<left><left><left><left><left><left><left><left><left>

"при вводе в командной строке vim откроет vimrc
cabbrev vim e ~/.vimrc

 
"set textwidth=120 "Где 80 стоит заменить на нужную вам длину строки или // set cc=80//
"set colorcolumn=+1 " делаем подсветку колонки за которую не хотим заходить 
au BufWinEnter * let w:m2=matchadd('ErrorMsg','\%>120v.\+', -1) " альтернативный вариант с тем что идет за столбцом

set cursorline "А так мы можем подсвечивать строку с курсором


set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"===================================================
"показать слевой стороны каталог файлов.
inoremap <c-b> <Esc>:Lex<CR>:vertical resize 20<CR>
nnoremap <c-b> <Esc>:Lex<CR>:vertical resize 20<CR>
"---------------------------------------------------
"настройка edit просмоторщика файлов
let g:netrw_banner        = 0 "отключить банер
let g:netrw_browse_split  = 4 "открыть файл в новом горизонтальном окне
let g:netrw_altv          = 1
let g:netrw_liststyle     = 3 "показать в виде дерева
let g:netrw_list_hide     = netrw_gitignore#Hide()
let g:netrw_list_hide    .= ',\(^\|\s\s\)\zs\/\S\+'
"===================================================
 
 
"------------------------------------------
" для работы плагина который форматирует текст 
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"------------------------------------------
 
 "------------------------------------------
"для того что бы свертка автоматически сохраналась при закрытии файла
" zc - свернуть zo- открыть za - инвертировать 
" V - выделить строки которые надо свернуть vf свернуть в блок
" все работает, но не знаю как убрать ошибку при открытии нового файла где не содержиться файл со
" складками

" augroup auto_save_folds
" autocmd!
" autocmd BufWinLeave * mkview
" autocmd BufWinEnter * silent loadview 
"------------------------------------------


"------------------------------------------
"для того что бы нумирация строк была по отношению к курсору
"в режиме вставка будет обычный ряд цифр а в нормальном режиме относильная
"нумерация

augroup toggle_relative_number
    autocmd InsertEnter * :setlocal norelativenumber
    autocmd InsertLeave * :setlocal relativenumber

"------------------------------------------
" создает вначале создания файла cpp. базовый код этот код береться из файла
" cpp.tpl

autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpp.tpl
"------------------------------------------

"чисто сахар, при поиске происходит подсветка нужных слов, для того что бы
"быстро убрать выделение : жмем точку и слеш для этого если что есть отдельная
"команда :noh 

nmap <silent> ./ :nohlsearch <CR>
"------------------------------------------


autocmd BufWinLeave *.* silent mkview   " при закрытии файла сохранить 'вид' 
                                        " Курсор будет стоять там где в прошлый раз делались изменения.
autocmd BufWinEnter *.* silent loadview " при открытии - восстановить сохранённый



"  переключение между буферами чисто так эксперимент работает но лидер на
"  пробел плохая идея
" nnoremap <leader>L <C-^>
" inoremap <leader>L <ESC><C-^>


 " для перехода к определению функций возможно это будет работать и без ctags???
 "не забывай про лидера (пробел)
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>


"------------------------------------------
set showcmd                         " показывать какой оператор сейчас выбран напрмер z
set nowrap                          " Не переносить слова при достижении края экрана

"------------------------------------------
onoremap p i(
" я не понимаю как это работает это магия. 
               " но cp, yp, dp теперь копирует, удаляет блок между скобками ()
"------------------------------------------
" сохранить файл с помощью <ctrl + s>
nnoremap <c-s> :w<cr>
nnoremap <c-q> :q<cr>

