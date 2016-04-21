autoload_dir=$HOME/.vim/autoload
bundle_dir=$HOME/.vim/bundle

mkdir -p ${autoload_dir} ${bundle_dir}

if [ ! -e ${autoload_dir}/pathogen.vim ];then
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
    echo "[pathogen] has been installed"
fi

if [ ! -e ${bundle_dir}/jedi-vim ];then
    git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
else
    echo "[jedi-vim] has been installed"
fi

if [ ! -e ${bundle_dir}/neocomplete.vim ];then
    git clone https://github.com/Shougo/neocomplete.vim.git ~/.vim/bundle/neocomplete.vim
else
    echo "[neocomplete] has been installed"
fi

if [ ! -e ${bundle_dir}/ctrlp.vim ];then
    git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
else
    echo "[ctrlp] has been installed"
fi

if [ ! -e ${bundle_dir}/vim-colors-solarized ];then
    git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
else
    echo "[vim-colors-solarized] has been installed"
fi
