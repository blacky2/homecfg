set nocompatible "use vi improved power
set mouse=a 		"use mouse
set number			"show line numbers
set title			"show title
set ruler			"cursor pos at all times
set shiftwidth=2	"shift width
set tabstop=2		"tab width
set t_Co=256		"256 colors

"--------------------------------------
"commad completion optins
set wildmenu "show menu for completion
set wildignore=*.o,*.a,*.class,*.aux,*.toc "ignore these files
"set wildmode=list:longest,full

"--------------------------------------
"search options
set incsearch		"find while typing
set hlsearch    "hilight search terms

"--------------------------------------
"spell checking
"setlocal spell spelllang=en

"--------------------------------------
"colorschemes etc
"Highlighting stuff

""hi Search ctermfg=black ctermbg=lightblue
""hi Comment term=bold ctermfg=darkcyan guifg=darkcyan'
"colorscheme wombat256
"colorscheme newspaper

"let g:zenburn_high_Contrast=1 " high contrast
colorscheme zenburn

"--------------------------------------
"Code folding
setlocal foldmethod=syntax
setlocal nofoldenable

"---------------"
"Filetype Plugin"
"---------------"
filetype plugin on
filetype indent on

"----------------------"
"OmniCppComplete Plugin"
"----------------------"
"set tags+=~/.vim/tags/base_cpp
set tags+=~/.vim/tags/stdcpp-4.4.3_cpp
set tags+=~/.vim/tags/patchedstd_cpp
set tags+=~/.vim/tags/X11_cpp
set tags+=~/.vim/tags/XCB_cpp
set tags+=~/.vim/tags/sdl_cpp
set tags+=~/.vim/tags/gl_cpp

let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

"--------------"
"taglist Plugin"
"--------------"
let Tlist_Use_Right_Window = 1 

"------------------"
"minibufexpl Plugin"
"------------------"
let g:miniBufExplMapWindowNavVim = 0
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 

"------------------"
"supertab    Plugin"
"------------------"
let g:SuperTabDefaultCompletionType = "context"

"-----------"
"Keybindings"
"-----------"
"map the leader (modkey) to ,
let mapleader = ","
"Map ESC to fj
imap fj <ESC>
"Nerdtree on / off -> F2
map <F2> :NERDTreeToggle<CR>
"OmniCpp local stuff -> Strg + F12
map <F3> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
"Session management
map <F5> :source ./vim_session.vim<CR>
":NERDTreeClose<CR>
":NERDTreeToggle<CR>
map <F6> :mksession ./vim_session.vim<CR>
"Experiment with the tab key
"function! SuperCleverTab()
"    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
"        return "\<Tab>"
"    else
"        if &omnifunc != ''
"            return "\<C-X>\<C-O>"
"        elseif &dictionary != ''
"            return "\<C-K>"
"        else
"            return "\<C-N>"
"        endif
"    endif
"endfunction
"
"inoremap <Tab> <C-R>=SuperCleverTab()<cr>
