set nobackup
set writebackup
set number
set t_Co=256
set mouse=a
set hls

set guioptions+=b
set guioptions-=T

nnoremap , :mat Error "<C-R><C-W>"<CR>
vnoremap <silent> , :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy:mat Error "<C-R><C-R>=substitute(
  \escape(@", '/".*$^~['), '_s+', '\_s\+', 'g')<CR>"<CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


let g:netrw_browse_split=3 "open files from netrw in new tabs

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Consolas\ 9
  elseif has("gui_photon")
    set guifont=Consolas:s9
  elseif has("gui_kde")
    set guifont=Consolas/9/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-consolas-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Consolas:h9:cDEFAULT
  endif
endif

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

syntax on

:map <F9> :tabnext<CR>
:map <S-F9> :tabprev<CR>
:map  /
:map <F8> :tabnew
:map <Home> ^
:imap <Home> <Esc>^i
:colorscheme zenburn
