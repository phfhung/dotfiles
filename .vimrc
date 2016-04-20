set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required


map <C-K> :pyf /home/ph/dv/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
imap <C-K> <c-o>:pyf /home/ph/dv/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
" highlight LeadingSpace ctermbg=yellow guibg=yellow
highlight EvilSpace ctermbg=darkred guibg=darkred
au Syntax * syn match LeadingTab /^\t\+/
au Syntax * syn match LeadingSpace /^\ \+/
au Syntax * syn match EvilSpace /[^\t]\+\zs\t\+/ " tabs not preceeded by tabs are never acceptable
au Syntax * syn match EvilSpace /\zs\ \+$/ " trailing space is silly
au BufRead,BufNewFile *.go set nolist
set matchpairs+=<:> 
