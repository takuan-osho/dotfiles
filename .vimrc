set nocompatible
filetype off

if has('vim_starting')
    set rtp+=$HOME/.dotfiles/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('$HOME/.dotfiles/.vim/bundle/'))

NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'

NeoBundle 'thinca/vim-quickrun'

NeoBundle 'mattn/zencoding-vim.git'
NeoBundle 'mattn/mkdpreview-vim.git'

NeoBundle 'davidhalter/jedi-vim.git'

NeoBundle 'tyru/open-browser.vim.git'
NeoBundle 'basyura/twibill.vim.git'
NeoBundle 'mattn/webapi-vim.git'
NeoBundle 'h1mesuke/unite-outline.git'
NeoBundle 'basyura/bitly.vim.git'
NeoBundle 'basyura/TweetVim.git'

NeoBundle 'pep8'
NeoBundle 'pyflakes.vim'
NeoBundle 'Pydiction'

NeoBundle 'virtualenv.vim'

NeoBundle 'ref.vim'

set encoding=utf8
set paste
set expandtab
set textwidth=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set incsearch
set ignorecase
set ruler
set wildmenu
set commentstring=\ #\ %s
set foldlevel=0
set clipboard+=unnamed

set nobackup
set autoread
set noswapfile
set hidden

set guioptions+=T

set number

set showmode

autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufWritePre * :%s/\t/ /ge

:colorscheme Tomorrow-Night-Bright

filetype plugin indent on
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType python let g:pydiction_location ='~/.vim/bundle/Pydiction/complete-dict'

let g:user_zen_settings = {
\  'lang' : 'ja',
\}

" タイムライン選択用の Unite を起動する
nnoremap <silent> t :Unite tweetvim<CR>
" 発言用バッファを表示する
nnoremap <silent> s :TweetVimSay<CR>

" スクリーン名のキャッシュを利用して、neocomplcache で補完する
if !exists('g:neocomplcache_dictionary_filetype_lists')
  let g:neocomplcache_dictionary_filetype_lists = {}
  endif
  let neco_dic = g:neocomplcache_dictionary_filetype_lists
  let neco_dic.tweetvim_say = $HOME . '/.tweetvim/screen_name'

if neobundle#exists_not_installed_bundles()
    echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
    echomsg 'Please execute ":NeoBundleInstall" command.'
    "finish
endif

syntax on
