set nu
set rnu
set scrolloff=8
set incsearch
set nohlsearch
set tabstop=2 shiftwidth=2 expandtab
set hidden
set noerrorbells
set nowrap
set signcolumn=yes

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
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-commentary'
Plug 'hoob3rt/lualine.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/completion-nvim'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox

" Training wheels
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

" Move line(s) up and down with J / K 
nnoremap J :m +1<CR>==
nnoremap K :m -2<CR>==
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <C-p> :lua require('telescope.builtin').find_files() <CR>
nnoremap <Leader>fb :lua require('telescope.builtin').buffers() <CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <silent> <c-Space> <Plug>(completion_trigger)

let mapleader=" "

" Set up LSP
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require('lsp')


lua require('telescope').load_extension('fzf')
lua require('telescope').setup{ file_ignore_patterns = { '.*/node_modules/.*' } }

let g:lualine = {
		\'options' : {
			\  'theme' : 'gruvbox',
			\  'section_separators' : ['', ''],
			\  'component_separators' : ['', ''],
			\  'disabled_filetypes' : [],
			\  'icons_enabled' : v:true,
			\ },
			\'sections' : {
				\  'lualine_a' : [ ['mode', {'upper': v:true,},], ],
				\  'lualine_b' : [ ['branch', {'icon': '',}, ], ],
				\  'lualine_c' : [ ['filename', {'file_status': v:true,},], ],
				\  'lualine_x' : [ 'encoding', 'fileformat', 'filetype' ],
				\  'lualine_y' : [ 'progress' ],
				\  'lualine_z' : [ 'location'  ],
				\    },
				\'inactive_sections' : {
					\  'lualine_a' : [  ],
					\  'lualine_b' : [  ],
					\  'lualine_c' : [ 'filename' ],
					\  'lualine_x' : [ 'location' ],
					\  'lualine_y' : [  ],
					\  'lualine_z' : [  ],
					\ },
					\ 'extensions': ['fzf'],
					\ 		        }
lua require("lualine").setup()
