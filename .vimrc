colorscheme murphy
syntax on
set number
set tabstop=4
set expandtab
set autoindent
set smartindent
set pastetoggle=<F2>
set mouse=a
filetype plugin indent on

" cpp linting
call plug#begin()
Plug 'dense-analysis/ale'
call plug#end()

" wsl yank support
let s:clip = 'clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end
