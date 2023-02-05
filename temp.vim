000000000000000000
000000000000000000
000000000000000000
000000000000000000
" попытка получить массив слов из строки
"

let currentHour = strftime ("%H:%M")
echo 'Текущее время: ' currentHour


" echo getline (1,35)
let Line_Position     = 11
let Lenght_String     = strlen  (getline (Line_Position))
let String_From_Line  = getline (Line_Position)
let String_From_Line2 = getline (12)

" let some = {"hello": "so"}
" let newLine[22] = { "some" }

let word   = "" 
" let finish = ""

echo getline(Line_Position)

" for i in range (0, Lenght_String)
"     if (String_From_Line[i]!=' ')
"         echom   String_From_Line[i]
"         execute word . String_From_Line[i]
"     else
"         break 
"     endif
" endfor

   echo nr2char (screenchar (Line_Position,1))
   echo nr2char (screenchar (Line_Position,2))
   echo nr2char (screenchar (Line_Position,3))

    
   echo nr2char (screenchar (1, 1))
   echo nr2char (screenchar (2, 1))
   echo nr2char (screenchar (3, 1))

   echo (screenchar (Line_Position,1))
   echo (screenchar (Line_Position,2))
   echo (screenchar (Line_Position,3))

    
   echo (screenchar (1, 1))
   echo (screenchar (2, 1))
   echo (screenchar (3, 1))
echom word




