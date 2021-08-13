### how to use

Install vim from source:
```bash
git clone https://github.com/vim/vim.git
# checkout specific release tag
git checkout "v8.2.3336"
cd vim
./configure
make -j8
sudo make install
```

Install vim-plug:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Copy repo files 
```bash
cp .vimrc ~/.vimrc 
cp coc-settings.json ~/.vim/coc-settings.json
```

PlugInstall the Plugins  

```bash
PlugInstall
```

CocInstall desired lsp extension  

```bash
PlugInstall coc-clangd
```

Tested coc-extenstions  

```text
   + coc-prettier 1.1.17 ~/.config/coc/extensions/node_modules/coc-prettier
   + coc-tsserver 1.5.3 ~/.config/coc/extensions/node_modules/coc-tsserver
   + coc-json 1.2.6 ~/.config/coc/extensions/node_modules/coc-json
   + coc-pyright 1.1.161 ~/.config/coc/extensions/node_modules/coc-pyright
   + coc-go 0.9.2 ~/.config/coc/extensions/node_modules/coc-go
   + coc-cmake 0.0.3 ~/.config/coc/extensions/node_modules/coc-cmake
   + coc-clangd 0.6.0 ~/.config/coc/extensions/node_modules/coc-clangd
   + coc-yaml 1.4.2 ~/.config/coc/extensions/node_modules/coc-yaml
```


