set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
"source ~/.vimrc

set linebreak
set relativenumber
set number
set complete=kspell
inoremap jk <esc>
"
 " clipboard
set clipboard=unnamedplus
 " dictionary
set spelllang=es
 "enable and disable
    "set spell! 

		" vim-plug
		"
call plug#begin()
Plug 'jalvesaq/Nvim-R'
Plug 'junegunn/goyo.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()


		" LaTeX-Suite
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
let g:tex_flavor='latex'
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

	" map for compiling
au BufEnter,BufNew *.tex map <F12> :w <CR>:!pdflatex %<CR>
au BufEnter,BufNew *.tex map <F10> :!biber %:r<CR>
au BufEnter,BufNew *.me map  <F12> :!groff -k -Tpdf -me % > %.pdf<CR><CR>
au BufEnter,BufNew *.me map  <F10> :!zathura %.pdf<CR>

" \item
autocmd Filetype tex inoremap <C-l> <Plug>Tex_InsertItemOnThisLine


" html
autocmd Filetype html inoremap PP <p></p><++>FpT>i
autocmd Filetype html inoremap UL <ul>	<li></ul><++>2kAi
autocmd Filetype html inoremap OL <ol>	<li></ol><++>2kAi
autocmd Filetype html inoremap  	<li>
autocmd Filetype html inoremap H1 <h1></h1><++>k$FhT>i
autocmd Filetype html inoremap H2 <h2></h2><++>k$FhT>i
autocmd Filetype html inoremap H3 <h3></h3><++>k$FhT>i
autocmd Filetype html inoremap H4 <h4></h4><++>k$FhT>i
autocmd Filetype html inoremap FEM <em></em><++>FeT>i
autocmd Filetype html inoremap FBF <strong></strong><++>FsT>i
autocmd Filetype html inoremap REF <a href=""><++></a><++>F"i

" me
autocmd BufEnter,BufNew *.me inoremap S1 .sh 1 ""i
autocmd BufEnter,BufNew *.me inoremap S2 .sh 2 ""i
autocmd BufEnter,BufNew *.me inoremap S3 .sh 3 ""i
autocmd BufEnter,BufNew *.me inoremap S4 .sh 4 ""i
autocmd BufEnter,BufNew *.me inoremap .i .i ""i

"inoremap <C-s> <c-g>u<Esc>[s1z=`]a<c-g>u
