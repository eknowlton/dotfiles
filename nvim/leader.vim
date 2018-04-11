let mapleader=" "

" LEADER KEY BINDINGS
call leaderGuide#register_prefix_descriptions("<space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<space>'<cr>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<space>'<cr>

let g:lmap = {}

"----- Task List
nnoremap <leader>Tt <Plug>TaskList
let g:lmap.T = { 'name' : 'Task List',
			   \ 't' : ['TaskList', 'List All Tasks']
			   \ }

"----- Language
let g:lmap.l = { 'name' : '+ Language',
			   \ 't' : ['TagbarToggle', 'Tagbar'],
			   \ 'p' : { 'name' : ' + PHP',
					   \ 'd' : ['call pdv#DocumentWithSnip()', 'Document Current Line']
					   \ },
			   \ 'g' : { 'name' : ' + GO',
					   \ 'b' : ['GoBuild', 'Build'],
					   \ 'r' : ['GoRun', 'Run'],
					   \ },
               \ 'N' : ['cnext', 'Quickfix Next'],
               \ 'P' : ['cprevious', 'Quickfix Previous'],
               \ 'D' : ['cclose', 'Quickfix Close']
			   \ }

"----- Ranger
let g:ranger_map_keys = 0

"----- Files
let g:lmap.f = { 'name' : '+ Files',
                \ 'f' : ['CtrlP', 'Find Files (CtrlP)'],
    			\ 'r' : ['Ranger', 'Find Files (Ranger)'],
    			\ 's' : ['w', 'Save File'],
    			\ 'S' : ['wa', 'Save All Files'],
    			\ 'x' : ['x', 'Save & Close'],
                \ }

"----- Search
set ignorecase
set smartcase
set incsearch
nnoremap <Leader>/A :Ack!
nnoremap <Leader>/a :Ag
let g:lmap['/'] = { 'name' : '+ Find In Project',
                  \ 'h' : ['set hlsearch!', 'Hightlight Search'],
				  \ 'l' : ['FZFLines', 'Search Lines in Open Buffers (FZF)']
		    	  \ }

"----- Window
autocmd VimResized * :wincmd =
set splitbelow
set splitright
nnoremap <tab> gt
nnoremap <s-tab> gT
let g:lmap.w = { 'name' : '+ Windows',
			   \ 'd' : ['close', 'Close Window'],
			   \ 's' : ['split', 'Horizontal Split'],
			   \ 'v' : ['vsplit', 'Vertical Split'],
			   \ 'h' : ['wincmd h', 'Move Left'],
			   \ 'l' : ['wincmd l', 'Move Right'],
			   \ 'j' : ['wincmd j', 'Move Down'],
			   \ 'k' : ['wincmd k', 'Move Up'],
			   \ 'o' : ['wincmd o', 'Close Others'],
			   \ '=': ['wincmd =', 'Resize Equally'],
			   \ }

" Buffer
let g:lmap.b = { 'name' : '+ Buffer',
               \ 'b' : [':CtrlPBuffer', 'Switch Buffers'],
               \ 'r' : ['e', 'Reload Buffer'],
               \ 'd' : ['bd', 'Delete Buffer'],
               \ 'D' : ['bufdo bd', 'Close All Buffers'],
               \ 'l' : ['ls', 'List Buffers'],
               \ 'n' : ['bn', 'Next Buffer'],
               \ 'p' : ['bp', 'Previous Buffer'],
               \ }

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
               \ }

" Test 
let g:lmap.t = { 'name' : '+ Testing',
               \ 't' : ['TestNearest', 'Test Nearest'],
               \ 'f' : ['TestFile', 'Test File'],
               \ 'a' : ['TestSuite', 'Test Suite'],
               \ 'l' : ['TestLast', 'Test Last'],
               \ 'g' : ['TestVisit', 'Visit Last Test File'],
               \ }
" Quit
let g:lmap.q = { 'name' : '+ Quit',
               \ 'q' : ['qa', 'Quit All'],
               \ 'Q' : ['qa!', 'Force Quit All'],
               \ }

