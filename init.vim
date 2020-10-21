set number
set tabstop=4
set shiftwidth=4

" File Explorr setting
let g:netrw_liststyle = 3


if &compatible    
  set nocompatible               " Be iMproved    
endif    

" Pluginディレクトリのパス    
let s:dein_dir = expand('~/.cache/dein')    
" dein.vimのパス    
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
" tomlのディレクトリへのパス    
let s:toml_dir = expand('~/.config/nvim')    

" Required:    
execute 'set runtimepath^=' . s:dein_repo_dir    

" Required:    
if dein#load_state(s:dein_dir)    
  call dein#begin(s:dein_dir)    

  " 起動時に読み込むプラグイン群のtoml    
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  " Required:               
  call dein#end()           
  call dein#save_state()    
endif                        

" If you want to install not installed plugins on startup.    
if dein#check_install()                                       
  call dein#install()      
endif

" Required:                  
filetype plugin indent on                                   

syntax enable
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

" vim-lsp関連の設定
" そのうちtomlファイルに書く
" 参考本: https://mattn.kaoriya.net/software/vim/20191231213507.htm let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_popup_delay = 200
" let g:lsp_text_edit_enabled = 1