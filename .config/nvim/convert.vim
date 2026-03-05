" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'wellle/targets.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'kyazdani42/nvim-tree.lua'
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ryanoasis/vim-devicons'
Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'akinsho/toggleterm.nvim'
Plug 'stevearc/overseer.nvim'
Plug 'Civitasv/cmake-tools.nvim'

Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'puremourning/vimspector'
Plug 'lambdalisue/suda.vim'
Plug 'tami5/sql.nvim'
Plug 'rhysd/vim-clang-format'
Plug 'nvim-treesitter/playground'
" Plug 'justinmk/vim-sneak'
Plug 'tikhomirov/vim-glsl'
Plug 'rhysd/vim-grammarous'
Plug 'ggandor/leap.nvim'
Plug 'dcharbon/vim-flatbuffers'
Plug 'github/copilot.vim'
call plug#end()

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

" Insert lines
nnoremap <silent><A-o> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-O> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" (Un-)comment lines
autocmd FileType h setlocal commentstring=//\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType hpp setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s

nnoremap <Leader>t :ToggleTerm<CR>
tnoremap <Esc> <C-\><C-n>

" CMake bindings
nnoremap <Leader>cmr :CMakeRun<CR>
nnoremap <Leader>cmb :CMakeBuild<CR>
nnoremap <Leader>cmc :CMakeOpenCache<CR>


" Easier in-line navigation
" nmap f <Plug>Sneak_s
" nmap F <Plug>Sneak_S

" Find files / buffers
" nnoremap <C-p> :lua require('telescope').extensions.frecency.frecency() <CR>

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


let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require('nvim-cmp-setup')
lua require('luasnip-setup')
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

lua require('overseer').setup();
lua require('toggleterm').setup();
lua require('cmake-tools-setup');
" lua require('nvim-tree-setup');
