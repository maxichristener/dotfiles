--- HTML
vim.cmd('filetype plugin on')
---vim.opt.nocompatible = true

vim.cmd([[
autocmd FileType html inoremap ;g <></<++>><++>ba
autocmd FileType html inoremap ;1 <h1></h1><++>k$F1T>i
autocmd FileType html inoremap ;2 <h2></h2><++>k$F2T>i
autocmd FileType html inoremap ;3 <h3></h3><++>k$F3T>i
autocmd FileType html inoremap ;4 <h4></h4><++>k$F4T>i
autocmd FileType html inoremap ;p <p></p><++>k$FpT>i
autocmd FileType html inoremap ;e <em></em><++>FeT>i
autocmd FileType html inoremap ;b <strong></strong><++>FgT>i
autocmd FileType html inoremap ;u <u></u><++>FuT>i
autocmd FileType html inoremap ;h <a href=""><++></a><++>F"i
autocmd FileType html inoremap ;i <img src="" alt="<++>" title="<++>"/><++>Fcf"a
autocmd FileType html inoremap ;o <ol><li></li><++></ol>2k$FiT>i
autocmd FileType html inoremap ;u <ul><li></li><++></ul>2k$FiT>i
autocmd FileType html inoremap <C-l> <li></li><++>k$FiT>i
autocmd FileType html inoremap ;f <figure><><figcaption><++></figcaption></figure>2k$hi
]])

