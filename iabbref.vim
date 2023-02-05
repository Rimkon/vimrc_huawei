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

