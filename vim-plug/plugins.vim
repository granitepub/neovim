" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
   autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
   
    " File Explorer
    Plug 'scrooloose/NERDTree'
    
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " VimTex for latex documents
    Plug 'lervag/vimtex'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Track the engine.
    Plug 'SirVer/ultisnips'

    " quickly comment or uncomment lines of code.
    Plug 'sudar/comments.vim'

    " Snippets are separated from the engine. Add this if you want them:
    Plug 'honza/vim-snippets'

    Plug 'vifm/vifm.vim'

    Plug 'miyakogi/conoline.vim'
    
    Plug 'dhruvasagar/vim-table-mode'

    " Move lines up, down, left and right
    Plug 'matze/vim-move'

    " Return cursor to last position when file closes.
    Plug 'farmergreg/vim-lastplace'
    
    Plug 'ranger/ranger'

    call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
