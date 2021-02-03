set nu
"设置tab长度为4个空格
set ts=4
"set tabstop=4
"设置每次退格的时候退回缩进的长度
set sts=4
"set softtabstop=4
"设置缩进长度
set sw=4
"set shiftwidth=4
"设置自动缩进
set ai
"set autoindent
"设置不将tab替换为空格
set noexpandtab
if has("autocmd")
"这里需要开启自动检测文件类型
filetype indent on
"对任意类型文件进行如下设置
autocmd FileType * setlocal ts=4 sts=4 sw=4 ai et nu
""对makefile需要将tab替换空格功能去掉，不进行替换
autocmd FileType make setlocal ts=4 sts=4 sw=4 noet nu
endif


