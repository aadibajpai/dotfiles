colorscheme murphy
syntax on

" save a precious keystroke
nnoremap ; :
" sane defaults sigh
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set pastetoggle=<F2>
set mouse=a
set splitright  " imagine left splitting

set wildmenu
set wildmode=longest:full,full

set undodir=$HOME/.vim/undo  " otherwise undo files clog current dir
set undofile  " persistent undo

filetype plugin indent on

let g:ale_python_flake8_options = '--max-line-length=120'
let g:ale_python_black_options = '-l 120'
let g:ale_python_mypy_options = '--ignore-missing-imports'
let g:ale_rust_cargo_use_clippy = 1
let g:ale_cpp_cc_options = '-std=c++17 -Wall -Werror -Wextra -pedantic -pedantic-errors'
let g:ale_c_clangformat_options = '-style=webkit'

let g:ale_linters = {'rust': ['analyzer'], 'python': ['flake8']}
let g:ale_fixers = {'rust': ['rustfmt'], 'python': ['black'], 'cpp': ['clang-format']}
" is making things slow 
" let g:ale_lint_on_text_changed = 'always'

call plug#begin()
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'rust-lang/rust.vim'
call plug#end()

" wsl yank support
let s:clip = 'clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end

"transparent bg idk what broke
autocmd vimenter * hi Normal ctermbg=none 
