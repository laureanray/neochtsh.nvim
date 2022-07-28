" Title:        neochtsh 
" Description:  A plugin to access cht.sh inside neovim 
" Last Change:  8 November 2021
" Maintainer:   Laurean Ray Bahala <https://github.com/laureanray>
"
" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_neochtsh")
    finish
endif
let g:loaded_neochtsh = 1

" Defines a package path for Lua. This facilitates importing the
" Lua modules from the plugin's dependency directory.
let s:lua_rocks_deps_loc =  expand("<sfile>:h:r") . "/../lua/neochtsh/deps"
exe "lua package.path = package.path .. ';" . s:lua_rocks_deps_loc . "/lua-?/init.lua'"

" Exposes the plugin's functions for use as commands in Neovim.
command! -nargs=0 cht lua require("neochtsh").cht_sh()
