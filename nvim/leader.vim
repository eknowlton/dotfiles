let mapleader=" "

" LEADER KEY BINDINGS
call leaderGuide#register_prefix_descriptions("<space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<space>'<cr>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<space>'<cr>

let g:lmap = {}

"----- Language
let g:lmap.l = { 'name' : '+ Language',
			   \ 't' : ['TagbarToggle', 'Tagbar'],
			   \}

"----- Ranger
let g:ranger_map_keys = 0

"----- Files
let g:lmap.f = { 'name' : '+ Files',
			 \ 'f' : ['CtrlP', 'Find Files (CtrlP)'],
			 \ 'r' : ['Ranger', 'Find Files (Ranger)'],
			 \ 's' : ['w', 'Save File'],
			 \ 'S' : ['wa', 'Save All Files'],
			 \ 'x' : ['x', 'Save & Close'],
			 \}

"----- Search
set ignorecase
set smartcase
set incsearch
nnoremap <Leader>/a :Ack!
let g:lmap['/'] = { 'name' : '+ Find In Project',
			\ 'h' : ['set hlsearch!', 'Hightlight Search'],
				  \}

"----- Window
autocmd VimResized * :wincmd =
set splitbelow
set splitright
let g:lmap.w = { 'name' : '+ Windows',
			   \ 'd': ['close', 'Close Window'],
			   \ 's': ['split', 'Horizontal Split'],
			   \ 'v': ['vsplit', 'Vertical Split'],
			   \ 'h': ['wincmd h', 'Move Left'],
			   \ 'l': ['wincmd l', 'Move Right'],
			   \ 'j': ['wincmd j', 'Move Down'],
			   \ 'k': ['wincmd k', 'Move Up'],
			   \ 'o': ['wincmd o', 'Close Others'],
			   \ '=': ['wincmd =', 'Resize Equally'],
			   \}

" Buffer
let g:lmap.b = { 'name' : '+ Buffer',
               \ 'b' : [':CtrlPBuffer', 'Switch Buffers'],
               \ 'd' : ['bd', 'Delete Buffer'],
               \ 'l' : ['ls', 'List Buffers'],
               \ 'n' : ['bn', 'Next Buffer'],
               \ 'p' : ['bp', 'Previous Buffer'],
               \}

" Git
nnoremap <leader>gg :Git<space>
let g:lmap.g = { 'name' : '+ Git',
               \ 'a' : ['Gwrite', 'Git Add File'],
               \ 'b' : ['Gblame', 'Git Blame'],
               \ 'c' : ['Gcommit', 'Git Commit'],
               \ 'd' : ['Gdiff', 'Git Diff'],
               \ 'f' : ['Gfetch', 'Git Fetch'],
               \ 'F' : ['Gpull', 'Git Pull'],
               \ 'P' : ['Gpush', 'Git Push'],
               \ 'r' : ['Gread', 'Git Reset File'],
               \ 's' : ['Gstatus', 'Git Status'],
               \}

" Quit
let g:lmap.q = { 'name' : '+ Quit',
               \ 'q' : ['qa', 'Quit All'],
               \ 'Q' : ['qa!', 'Force Quit All'],
               \}
