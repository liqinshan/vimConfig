## Python3的简单vim配置

### 插件管理  
主要开发工具是Pycharm，vim使用的不多，主要是写一些简单的脚本，所以使用的插件也比较有限。主要有这么几个：  

1. [pathogen](https://github.com/tpope/vim-pathogen)
2. [jedi-vim](https://github.com/davidhalter/jedi-vim)
3. [neocomplete](https://github.com/Shougo/neocomplete.vim)
4. [ctrlp](https://github.com/kien/ctrlp.vim)
5. [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
6. [powerline]()

### Python3自动补全
python 2.x的vim插件比较多，各种文档也比较多。Python 3.x的补全插件，我主要使用neocomplete，辅以jedi。  
安装完相应插件后，配置项可以直接复制necomplete的Configuration Examples，然后稍微修改下。完整的配置参考vimrc。

修改如下neocomplete配置项：

    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
      --->autocmd FileType python3 setlocal omnifunc=jedi#Complete

添加如下jedi配置项：

    let g:jedi#popup_select_first=0
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#popup_on_dot = 0
