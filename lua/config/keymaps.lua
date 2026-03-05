-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Exit terminal with CTRL-w
vim.keymap.set("t", "<C-w>", "<C-\\><C-n>", {silent = true})

-- Worktree management with fzf-lua and git-worktree plugin
vim.keymap.set("n", "<leader>gw", function()
    require('fzf-lua').git_worktrees({
        winopts = { title = " Git Worktrees " },
        -- When you select one, it uses the worktree plugin to switch
        actions = {
            ["default"] = function(selected)
                -- selected[1] contains the string from 'git worktree list'
                -- we extract the path (the first part of the string)
                local path = vim.split(selected[1], " ")[1]
                require("git-worktree").switch_worktree(path)
            end
        }
    })
end, { desc = "Manage Worktrees (Fzf-Lua)" })
