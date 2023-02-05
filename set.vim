" общие настройки групп ---------------------- {{{
augroup set_settings
       autocmd!

        set nocompatible                    " Отключить совместимость с vi 
        set wildmenu                        " оно показывает внизу возможные команды, в виде строки над нижней строкой
        set nu                              " Включить нумирацию строк
        set smartindent                     " Умный отступ при кодинге
        set noerrorbells                    " Отключить звуки при ошибках
        set tabstop=4 softtabstop=4         " 
        set shiftwidth=4                    " 
        set expandtab                       " Заменять Табы пробелами
        set nowrap                          " Не переносить слова при достижении края экрана
        set noswapfile                      " 
        set nobackup                        " 
        set showcmd                         " показывать какой оператор сейчас выбран напрмер z
       
       " set ignorecase                      " глючный параметр из за которого
        "set smartcase                       " При поиске ищет как заглавные так и строчные буквы
        "все тормозит Поиск без учета регистра
       
        set incsearch                       " При поиске сразу же идет подсветка искомого слова
        set hlsearch                        " При нажатии на <Shift 3> происходит подсветка этих слов
        set tags=./tags,tags;$HOME
        set encoding=UTF-8
        set background=dark
        set cursorline                      " А так мы можем подсвечивать строку с курсором
        set ttimeoutlen=10                  " Понижаем задержку ввода escape последовательностей
        set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
        set rtp+=~/.vim/bundle/Vundle.vim
        set path+=**                        " для того что бы при команде find он искал во всех папках вниз.
                                            "например: find main.cpp  он будет искать во всех папках этот
                                            "файл, а когда найдет откроет его.
augroup END
"}}}
"настройка отображения нумирации строк ---------------------- {{{

"для того что бы нумирация строк была по отношению к курсору
"в режиме вставка будет обычный ряд цифр а в нормальном режиме относильная
"нумерация

augroup toggle_relative_number
    autocmd!
    autocmd InsertEnter * :setlocal norelativenumber
    autocmd InsertLeave * :setlocal relativenumber
augroup END
" }}}
" настройка сворачивания групп ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
