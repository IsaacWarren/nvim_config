-- bootstrap lazy.nvim, LazyVim and your plugins

local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)
options = {
  opt = {
    shiftwidth = 4,
    tabstop = 4,
  }
}

require("config.lazy")
