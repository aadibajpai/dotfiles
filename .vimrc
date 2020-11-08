colorscheme murphy
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set pastetoggle=<F2>
set mouse=a
set wildmenu
set wildmode=longest:full,full
filetype plugin indent on

let g:ale_python_flake8_options = '--max-line-length=120'
let g:ale_python_black_options = '-l 120'
let g:ale_python_mypy_options = '--ignore-missing-imports'
let g:ale_rust_cargo_use_clippy = 1

let g:ale_linters = {'rust': ['analyzer'], 'python': ['flake8']}
let g:ale_fixers = {'rust': ['rustfmt'], 'python': ['black']}
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
