return {{
  "ThePrimeagen/git-worktree.nvim",
  opts = {
    change_directory_command = "cd", -- or "tcd" for tab-local
    update_on_change = true,
    update_on_change_command = "e .",
  },
  config = function(_, opts)
    require("git-worktree").setup(opts)
  end,
}}
