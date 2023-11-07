set nu
set rnu
set exrc " Allow project specific vimrc files
set scrolloff=8
set incsearch
set nohlsearch
set tabstop=4 shiftwidth=4 expandtab
set hidden
set noerrorbells
set nowrap
set signcolumn=yes
set inccommand=nosplit

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
set shortmess+=c

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'wellle/targets.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'tpope/vim-commentary'
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'gruvbox-community/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'akinsho/bufferline.nvim'

" Autocompletion
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" I always want trouble
Plug 'folke/trouble.nvim'

Plug 'tpope/vim-fugitive'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'puremourning/vimspector'
Plug 'lambdalisue/suda.vim'
Plug 'tami5/sql.nvim'
Plug 'rhysd/vim-clang-format'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
" Plug 'justinmk/vim-sneak'
Plug 'tikhomirov/vim-glsl'
Plug 'ThePrimeagen/harpoon'
Plug 'rhysd/vim-grammarous'
Plug 'ggandor/leap.nvim'
Plug 'folke/which-key.nvim'
Plug 'dcharbon/vim-flatbuffers'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'github/copilot.vim'
call plug#end()

colorscheme gruvbox

let mapleader=" "

" Language tool:
" let g:grammarous#use_vim_spelllang
" nmap <Leader>lc :GrammarousCheck<CR>
" nmap <Leader>lq <Plug>(grammarous-reset)
" nmap <Leader>lw <Plug>(grammarous-open-info-window)
" nmap <buffer><Leader>lf <Plug>(grammarous-fixit)
" nmap <buffer><Leader>li <Plug>(grammarous-remove-error)
" nmap <buffer><Leader>ln <Plug>(grammarous-move-to-next-error)
" nmap <buffer><Leader>lp <Plug>(grammarous-move-to-previous-error)
" let g:grammarous#hooks = {}
" function! g:grammarous#hooks.on_check(errs) abort
" endfunction

" function! g:grammarous#hooks.on_reset(errs) abort
"     nunmap <buffer><C-n>
"     nunmap <buffer><C-p>
" endfunction

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
nmap <Leader>dx :VimspectorReset<CR>
xmap <Leader>dx :VimspectorReset<CR>

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

nmap <Leader>dfo <Plug>VimspectorUpFrame
nmap <Leader>dfi <Plug>VimspectorDownFrame
" nmap <F11> <Plug>VimspectorStepInto
" nmap <F12> <Plug>VimspectorStepOut

nmap <Leader>lr :LspStop<CR>:LspStart<CR>
nmap <Leader>q :bd<CR>

" Training wheels
" nnoremap <Left> :echo "No left for you!"<CR>
" vnoremap <Left> :<C-u>echo "No left for you!"<CR>
" inoremap <Left> <C-o>:echo "No left for you!"<CR>

" nnoremap <Right> :echo "No right for you!"<CR>
" vnoremap <Right> :<C-u>echo "No right for you!"<CR>
" inoremap <Right> <C-o>:echo "No right for you!"<CR>

" nnoremap <Up> :echo "No up for you!"<CR>
" vnoremap <Up> :<C-u>echo "No up for you!"<CR>
" inoremap <Up> <C-o>:echo "No up for you!"<CR>

" nnoremap <Down> :echo "No down for you!"<CR>
" vnoremap <Down> :<C-u>echo "No down for you!"<CR>
" inoremap <Down> <C-o>:echo "No down for you!"<CR>

" Insert lines
nnoremap <silent><A-o> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-O> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" clang-format
map <C-f> :py3f ~/.config/nvim/clang-format.py<cr>
" nmap <A-f> ggVG:py3f ~/.config/nvim/clang-format.py<cr>
imap <C-f> <Esc>:py3f ~/.config/nvim/clang-format.py<cr>i

" Copilot
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
imap <silent><script><expr> <C-K> copilot#Reject("\<CR>")
imap <silent><script><expr> <C-L> copilot#Skip("\<CR>")
imap <silent><script><expr> <C-H> copilot#Cancel("\<CR>")
imap <silent><script><expr> <C-D> copilot#Delete("\<CR>")
imap <silent><script><expr> <C-U> copilot#Undo("\<CR>")
imap <silent><script><expr> <C-R> copilot#Redo("\<CR>")
let g:copilot_no_tab_map = v:true

" make Y normal
nmap Y y$

" replace stuff
nmap R "_Dp
nmap rw "_dwP
nmap riw "_diwP
nmap ri( "_di(P
nmap ri[ "_di[P
nmap ri{ "_di{P
nmap ri< "_di<P
nmap ri' "_di'P
nmap ri" "_di"P
nmap ri` "_di`P

" (Un-)comment lines
autocmd FileType h setlocal commentstring=//\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType hpp setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
nmap <C-_> gcc
vmap <C-_> gc

" Keep selection after indenting
vnoremap < <gv
vnoremap > >gv

" Move line(s) up and down with J / K 
nnoremap J :m +1<CR>==
nnoremap K :m -2<CR>==
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Easier in-line navigation
" nmap f <Plug>Sneak_s
" nmap F <Plug>Sneak_S

" Find files / buffers
" nnoremap <C-p> :lua require('telescope').extensions.frecency.frecency() <CR>
"
" currently contains only bullshit:
" lua require('telescope-setup')
lua require("telescope").load_extension "file_browser"
nnoremap <C-p> :lua require('telescope.builtin').find_files() <CR>
nnoremap <A-p> :lua require('telescope.builtin').oldfiles() <CR>
nnoremap <Leader>B :lua require('telescope.builtin').buffers() <CR>
nnoremap <A-/> :lua require('telescope.builtin').live_grep() <CR>
nnoremap <Leader>e :lua require('telescope').extensions.file_browser.file_browser({ cwd = vim.fn.expand('%:p:h') }) <CR>
nnoremap <Leader>E :lua require('telescope').extensions.file_browser.file_browser() <CR>

nnoremap <Leader>gs :G<CR>
nnoremap <Leader>gl :lua require('telescope.builtin').git_commits() <CR>
nnoremap <Leader>gb :lua require('telescope.builtin').git_branches() <CR>
nnoremap <Leader>gt :lua require('telescope.builtin').git_stash() <CR>
nnoremap <Leader>gc :G commit<CR>
nnoremap <Leader>gp :G push<CR>

" File navigation
nnoremap <Leader>pm :lua require("harpoon.mark").add_file() <CR>
nnoremap <Leader>p1 :lua require("harpoon.ui").nav_file(1) <CR>
nnoremap <Leader>p2 :lua require("harpoon.ui").nav_file(2) <CR>
nnoremap <Leader>p3 :lua require("harpoon.ui").nav_file(3) <CR>
nnoremap <Leader>p4 :lua require("harpoon.ui").nav_file(4) <CR>
nnoremap <Leader>p5 :lua require("harpoon.ui").nav_file(5) <CR>
nnoremap <Leader>p6 :lua require("harpoon.ui").nav_file(6) <CR>
nnoremap <Leader>p7 :lua require("harpoon.ui").nav_file(7) <CR>
nnoremap <Leader>p8 :lua require("harpoon.ui").nav_file(8) <CR>
nnoremap <Leader>p9 :lua require("harpoon.ui").nav_file(9) <CR>
nnoremap <Leader>p0 :lua require("harpoon.ui").nav_file(10) <CR>
nnoremap <Leader>p1 :lua require("harpoon.ui").nav_file(1) <CR>
nnoremap <Leader>pp :lua require("harpoon.ui").toggle_quick_menu() <CR>

" Commands
lua require('harpoon-setup')

nnoremap <Leader>c1 :lua require('harpoon-setup').sendCommand(1)<CR>
nnoremap <Leader>c2 :lua require('harpoon-setup').sendCommand(2)<CR>
nnoremap <Leader>c3 :lua require('harpoon-setup').sendCommand(3)<CR>
nnoremap <Leader>c4 :lua require('harpoon-setup').sendCommand(4)<CR>
nnoremap <Leader>c5 :lua require('harpoon-setup').sendCommand(5)<CR>
nnoremap <Leader>c6 :lua require('harpoon-setup').sendCommand(6)<CR>
nnoremap <Leader>c7 :lua require('harpoon-setup').sendCommand(7)<CR>
nnoremap <Leader>c8 :lua require('harpoon-setup').sendCommand(8)<CR>
nnoremap <Leader>c9 :lua require('harpoon-setup').sendCommand(9)<CR>
nnoremap <Leader>c0 :lua require('harpoon-setup').sendCommand(10)<CR>
nmap <Leader>cp :lua require('harpoon.cmd-ui').toggle_quick_menu() <CR>

" Goto Definition
" nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap gd :lua require('telescope.builtin').lsp_definitions() <CR>

nnoremap <Leader>le :lua vim.diagnostic.open_float()<CR>
nnoremap <Leader>lf :lua vim.lsp.buf.format { async = true }<CR>
vnoremap <Leader>lf :lua vim.lsp.buf.format { async = true }<CR>
nnoremap <Leader>la :lua vim.lsp.buf.code_action()<CR>
nnoremap <Leader>ld :lua vim.lsp.buf.hover()<CR>
nnoremap <Leader>lr :lua vim.lsp.buf.rename()<CR>
nnoremap <Leader>lt :lua vim.lsp.buf.references()<CR>
nnoremap <Leader>li :lua vim.lsp.buf.implementation()<CR>
nnoremap <Leader>lw :ClangdSwitchSourceHeader<CR>

lua require("mason").setup()
lua require("mason-lspconfig").setup()


" Use ctrl + backspace to 
" inoremap <C-BS> <Esc>vbda

" Put cursor in between parens
" inoremap <> <><Left>
" inoremap <>> <>
" inoremap {} {}<Left>
" inoremap {}} {}
" inoremap [] []<Left>
" inoremap []] []
" inoremap () ()<Left>
" inoremap ()) ()
" inoremap "" ""<Left>
" inoremap """ ""
" inoremap '' ''<Left>
" inoremap ''' ''
" inoremap `` ``<Left>
" inoremap ``` ``

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Set up win32 yanking
" TODO: this should only be enabled on windows
" set clipboard+=unnamedplus
" let g:clipboard = {
"           \   'name': 'wanking',
"           \   'copy': {
"           \      '+': 'wank.exe -i --crlf',
"           \      '*': 'wank.exe -i --crlf',
"           \    },
"           \   'paste': {
"           \      '+': 'wank.exe -o --lf',
"           \      '*': 'wank.exe -o --lf',
"           \   },
"           \   'cache_enabled': 0,
"           \ }
" Yanking now also copies to clipboard
set clipboard+=unnamedplus

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require('nvim-cmp-setup')
lua require('luasnip-setup')
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

lua require('bufferline-setup')
nnoremap <silent><A-l> :BufferLineCycleNext<CR>
nnoremap <silent><A-h> :BufferLineCyclePrev<CR>
nnoremap <silent><A-L> :BufferLineMoveNext<CR>
nnoremap <silent><A-H> :BufferLineMovePrev<CR>

lua require('lualine-setup');
" lua require('nvim-tree-setup');
