return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim",
    opts = {
            gruvbox_transparent_bg = true,
        }},

  {"neanias/everforest-nvim"},

  -- Configure LazyVim to load everforest
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  }
}
