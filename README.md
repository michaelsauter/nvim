# Neovim Config

```sh
git clone --recursive https://github.com/michaelsauter/nvim.git ~/.config/nvim
```

Mostly Vim 8 compatible.

Based on my [terminal configuration](https://github.com/michaelsauter/config). Ensure that `base16_eighties` has run and created `~/.vimrc_background`, otherwise the colours are off. If not:

```
if !exists('g:colors_name') || g:colors_name != 'base16-eighties'
  colorscheme base16-eighties
endif
```
