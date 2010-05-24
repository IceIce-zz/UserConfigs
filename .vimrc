" Добавлено мной
set statusline=%F%m%r%h%w\ [FileF=%{&ff}]\ [FileEnc=%{&fileencoding}]\ [Enc=%{&encoding}]\ [Type=%Y]\ [ascii=\%02.5b]\ [hex=\%02.4B]\ %=%([position=%04.10l,%04.10v]\ [LEN=%L]\ [%p%%]%)
set laststatus=2
set number
" colorscheme torte

" Приведенная директива проверяет первую строку сохраняемого файла и, если она начинается с "#!" и содержит "/bin/", присваивает последнему исполняемый атрибут.
" au BufWritePost *.sh if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod ug+x <afile> | endif | endif

" Настроим кол-во символов пробелов, которые будут заменять \t
set tabstop=4
set shiftwidth=4
" замена табов на пробелы вначале строки
" set smarttab 
" замена табов на пробелы везде
set expandtab
" Автозамена поумолчанию
set et 

" Автоперенос строк
set wrap

" Автоотступ для новых строк
set ai

" Отступ в стиле Си
" set cin

" поиск и подсветка результатов поиска и совпадения скобок
set showmatch 
set hlsearch
" set incsearch - на медленных терминалах лучше не использовать
set ignorecase

" Показываем табы в начале строки точками - чето незаметно
set listchars=tab:>-
set list

" Порядок применения кодировок и формата файлов
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

" Выводит предупреждение при открытии файла без прав записи - нервирует
"au BufReadPost *  
"  \ if &readonly |
"  \   echohl ErrorMsg |
"  \   echomsg "File is read-only!" |
"  \   echohl None |
"  \ endif

" Фича: :w !sudo tee % - запись под рутом, когда ты не под рутом.
map <S-F11> :w !sudo tee %<CR>
