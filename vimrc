"Search for tags in current directory and then keep going up till it finds it"
set tags=./tags;/ 
map <Tab> <C-W>

set laststatus=2        " grey status bar at the bottom
set background=light
syn on                  " syntax highlighting
filetype indent on      " activates indenting for files
filetype plugin on
set ai                  " auto indenting
colorscheme github
