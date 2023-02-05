packadd termdebug                           " для того что бы плагин для работы с gdb подключался автоматически

 
call vundle#begin()
 Plugin 'Valloric/YouCompleteMe.git'
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'mbbill/undotree'
 Plugin 'morhetz/gruvbox'
 Plugin 'vim-airline/vim-airline'            "информационная строка снизу

 Plugin 'vim-airline/vim-airline-themes'    "информационная строка снизу как я
"понял это меняет только цвета и все.

  Plugin 'kien/ctrlp.vim'                     "поиск файлов по <ctrl + p>
  Plugin 'majutsushi/tagbar'                  "боковая панель с функциями
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'junegunn/vim-easy-align'            "форматирование переменных
  Plugin 'mileszs/ack.vim'                    " для поиска текста внутри файлов
  " Plugin 'skywind3000/asyncrun.vim'           " плагин для работы с ctags запуск в фоне раличных программ полезно при многопоточности 

  " https://github.com/octol/vim-cpp-enhanced-highlight
  Plugin  'octol/vim-cpp-enhanced-highlight'   " Дополнительная подсветка с++

  " let g:cpp_class_scope_highlight = 1
  " let g:cpp_member_variable_highlight = 1
  " let g:cpp_class_decl_highlight = 1
  " let g:cpp_experimental_simple_template_highlight = 1
  " let g:cpp_concepts_highlight = 1

  " расширение ctor до класса 
"  https://github.com/SirVer/ultisnips

" используем плагин супер таб что бы YouCompleMe и UltiSnips не дрались за
" него

  Plugin 'ervandew/supertab'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  "для работы с cmake
  Plugin  'cdelledonne/vim-cmake'
  "Plugin 'vhdirk/vim-cmake'

  "-------------------------------
  Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plugin 'junegunn/fzf.vim'
  Plugin 'dyng/ctrlsf.vim'
call vundle#end()            

  nnoremap <leader>f :GFiles!<CR>
  nnoremap <leader>o :Files!<CR>
  nnoremap <leader>r :Rg!<CR>
  nnoremap <leader>t :TagbarToggle<CR>
  nnoremap <leader>a :CtrlSF -R ""<Left>
  nnoremap <leader>1 1gt
  nnoremap <leader>2 2gt
  "-------------------------------

  " let g:UltiSnipsExpandTrigger="<tab>"
  " let g:UltiSnipsJumpForwardTrigger="<c-b>"
  " let g:UltiSnipsJumpBackwardTrigger="<c-z>"

  " make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
" конец расширения до класса 




filetype plugin indent on   
 
colorscheme gruvbox                                                                              
