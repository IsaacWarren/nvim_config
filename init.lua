-- bootstrap lazy.nvim, LazyVim and your plugins

local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

require("config.lazy")
