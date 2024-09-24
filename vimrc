call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }   
Plug 'liuchengxu/vim-which-key'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary' " Commenting tool
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons' " Developer font icons
" Plug 'stsewd/sphinx.nvim' " Sphinx integration
Plug 'tpope/vim-dispatch' " Asynchronous execution
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-speeddating' " Quick date navigation
Plug 'mhinz/vim-grepper' " https://github.com/mhinz/vim-grepper
Plug 'nanotee/zoxide.vim'
Plug 'cdelledonne/vim-cmake'
Plug 'mhinz/vim-startify'
Plug 'dstein64/vim-startuptime'
Plug 'm-pilia/vim-pkgbuild'
Plug 'jceb/vim-orgmode'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'halkn/lightline-lsp'
Plug 'chr4/nginx.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'ekalinin/Dockerfile.vim'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils' " needed for vim-snipmate
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jpalardy/vim-slime'
Plug 'pprovost/vim-ps1'


" TODO: setup declarativly
" coc config
let s:coc_extensions = [
      \  'coc-css',
      \  'coc-docker',
      \  'coc-emmet',
      \  'coc-highlight',
      \  'coc-html',
      \  'coc-dictionary',
      \  'coc-emoji',
      \  'coc-omni',
      \  'coc-tag',
      \  'coc-pairs',
      \  'coc-java',
      \  'coc-json',
      \  'coc-pyls',
      \  'coc-rls',
      \  'coc-snippets',
      \  'coc-solargraph',
      \  'coc-yaml',
      \  'coc-eslint',
      \  'coc-jest',
      \  'coc-prettier',
      \  'coc-tslint',
      \  'coc-tsserver',
      \ ]


" call coc#add_extension(join(get(s:, 'coc_extensions', [])))

" themes
Plug 'sainnhe/everforest'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

set softtabstop=4
" This sets the number of spaces used for each indentation level when using
" the '>' and '<' commands, as well as the autoindent feature.

set notimeout
set timeoutlen=1000
set termguicolors
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
let g:airline_theme = 'catppuccin_mocha'
syntax on
" colorscheme catppuccin_mocha

set background=dark
let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
let g:everforest_better_performance = 1
colorscheme everforest


set relativenumber
" Visualize tabs and newlines
" set listchars=tab:▸\ ,eol:¬


" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

set clipboard=unnamedplus

set guifont=agave\ 16

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:floaterm_keymap_new = '<leader>t'

" Initialize configuration dictionary
let g:fzf_vim = {}

" keymapping fzf

" esc in insert & visual mode
inoremap kj <esc>
" insert mode map
vnoremap kj <esc>
" visual mode map

inoremap jk <esc>
vnoremap jk <esc>

" keymapping

nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>cC :Colors<CR>
nnoremap <silent> <Leader>fg :Rg<CR>
nnoremap <silent> <Leader>fr :History<CR>

nnoremap <silent> <Leader>ce :e $HOME/.vim/vimrc<CR>

nnoremap <silent> <Leader>wq :bdelete<CR>
nnoremap <silent> <Leader>bk :bdelete<CR>
" nnoremap <silent> <Leader>q :exit<CR>

nnoremap <silent> <Leader>qf :copen<CR>
nnoremap <silent> <Leader>]q :cn<CR>
nnoremap <silent> <Leader>[q :cp<CR>

nnoremap <silent> <Leader>cd :Zi<CR>

" keymapping which_key

let g:which_key_map = {}
let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }
call which_key#register('<Space>', "g:which_key_map")

" keymapping lsp

function g:StartLsp()
	function! OnLspBufferEnabled() abort
	    setlocal omnifunc=lsp#complete
	    setlocal signcolumn=yes
	    nmap <buffer> gd <plug>(lsp-definition)
	    nmap <buffer> gD <plug>(lsp-declaration)
	    nmap <buffer> gr <plug>(lsp-references)
	    nmap <buffer> gl <plug>(lsp-document-diagnostics)
	    " nmap <buffer> <f2> <plug>(lsp-rename)
	    nmap <buffer> grn <plug>(lsp-rename)
	    nmap <buffer> <f3> <plug>(lsp-hover)
	endfunction
	
	augroup lsp_install
	  au!
	  autocmd User lsp_buffer_enabled call OnLspBufferEnabled()
	augroup END

endfunction

" lightline config

let g:lightline = {
\ 'active': {
\   'right': [ [ 'lsp_errors', 'lsp_warnings', 'lsp_ok', 'lineinfo' ],
\              [ 'percent' ],
\              [ 'fileformat', 'fileencoding', 'filetype' ] ]
\ },
\ 'component_expand': {
\   'lsp_warnings': 'lightline_lsp#warnings',
\   'lsp_errors':   'lightline_lsp#errors',
\   'lsp_ok':       'lightline_lsp#ok',
\ },
\ 'component_type': {
\   'lsp_warnings': 'warning',
\   'lsp_errors':   'error',
\   'lsp_ok':       'middle',
\ },
\ }

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


if executable('nil')
  autocmd User lsp_setup call lsp#register_server({
    \ 'name': 'nil',
    \ 'cmd': {server_info->['nil']},
    \ 'whitelist': ['nix'],
    \ })
endif

" https://vim.fandom.com/wiki/Toggle_spellcheck_with_function_keys
"switch spellcheck languages
let g:myLang = 0
let g:myLangList = [ "nospell", "es_es", "ca_ca", "se_se" ]
function! MySpellLang()
  "loop through languages
  let g:myLang = g:myLang + 1
  if g:myLang >= len(g:myLangList) | let g:myLang = 0 | endif
  if g:myLang == 0 | set nospell | endif
  if g:myLang == 1 | setlocal spell spelllang=es_es | endif
  if g:myLang == 2 | setlocal spell spelllang=ca_ca | endif
  echo "language:" g:myLangList[g:myLang]
endf

map <F7> :call MySpellLang()<CR>
imap <F7> <C-o>:call MySpellLang()<CR>

" config for lightline:
" TODO: there is no spelllang status atm
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'spell' ],
      \             [ 'readonly', 'filename' ] ],
      \ 
      \ },
      \ }

