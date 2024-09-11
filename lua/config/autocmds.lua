-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Disable autoformat
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "**" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Disable spellcheck in terminal
vim.api.nvim_create_autocmd({ "TermOpen" }, {
  pattern = { "*" },

--Fix background Transparency
vim.api.nvim_create_autocmd({"SourcePost"}, {
  pattern = {"*"},
  callback = function()
   local groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer', 'NormalSB', 'Pmenu',
  }
  local extra_groups = { -- table: additional groups that should be cleared
    'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
    'FloatBorder',
    'NvimTreeWinSeparator',
    'NvimTreeNormal',
    'NvimTreeNormalNC',
    'TroubleNormal',
    'TelescopeNormal',
    'TelescopeBorder',
    'WhichKeyFloat',

    -- TODO: programmatically add this
    'NotifyINFOBody',
    'NotifyERRORBody',
    'NotifyWARNBody',
    'NotifyDEBUGBody',
    'NotifyTRACEBody',
    'NotifyINFOBorder',
    'NotifyERRORBorder',
    'NotifyWARNBorder',
    'NotifyDEBUGBorder',
    'NotifyTRACEBorder',
  }
  for _, group in ipairs(groups) do
    vim.cmd(string.format("hi %s ctermbg=NONE guibg=NONE", group))
  end
  for _, group in ipairs(extra_groups) do
    vim.cmd(string.format("hi %s ctermbg=NONE guibg=NONE", group))
  end
  end,
})
