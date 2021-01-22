"###############################################################################
" UI Settings
"###############################################################################

" Display line numbers
set number

" Display current position on status line
set ruler

" Enable Wildmenu
set wildmenu

" Always show status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"##############################################################################
" Spacing & Tabs
"##############################################################################

" Spaces instead of tabs, and enable "smart tabs"
set expandtab
set smarttab

" Set tab to be 2 spaces
set shiftwidth=2
set shiftwidth=2

set ai "Auto Indent
set si "Smart Indent

"##############################################################################
" Colors and Fonts
"##############################################################################
syntax enable

"##############################################################################
" Functions
"##############################################################################

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction



