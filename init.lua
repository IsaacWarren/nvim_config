-- bootstrap lazy.nvim, LazyVim and your plugins

local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

require("config.lazy")
