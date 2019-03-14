filetype plugin indent on
syntax on
set number relativenumber
set ruler

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
"File specific stuff
"Python
autocmd BufRead *.py setlocal ts=8 sts=4 sw=4 expandtab smarttab
autocmd BuFread *.py nmap <F8> :set list!<CR>
"LaTeX, TeX
autocmd BufRead *.tex nmap <space><CR> :!pdflatex %<CR>
autocmd BufRead *.tex nmap <F8> :set spell!<CR>

"
"Remappings
"during insert, kj escapes, `^ is so that the cursor doesn't move
inoremap kj <Esc>`^
"during insert, lkj escapes and saves
inoremap lkj <Esc>`^:w<CR>
"during insert, ;lkj escapes, saves, and exits
"inoremap ;lkj <Esc>`^:w<CR>:q<CR>
"Move large number of lines up or down quickly
nmap <space>k 20k 
nmap <space>j 20j 
"Make sure :W means :w since we always make that typo
command! W :w
"Useful motion commands for windows and tabs
nnoremap <S-Left> :tabp<CR>
nnoremap <S-Right> :tabn<CR>
nnoremap <Left> <c-w>h
nnoremap <Right> <c-w>l
nnoremap <Up> <c-w>k
nnoremap <Down> <c-w>j

"
"Color scheme
colorscheme monokai
"colorscheme gruvbox
"
