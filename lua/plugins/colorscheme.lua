return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim",
    opts = {
            gruvbox_transparent_bg = true,
        }},

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  }
}
