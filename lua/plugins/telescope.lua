return {
    "nvim-telescope/telescope.nvim",
    opts = function()
        return {
            defaults = {
                vimgrep_arguments = {
                    "rg",
                    "-u",
                    "--follow", -- Follow symbolic links
                    "--no-heading", -- Don't group matches by each file
                    "--with-filename", -- Print the file path with the matched lines
                    "--line-number", -- Show line numbers
                    "--column", -- Show column numbers
                    "--smart-case", -- Smart case search

                    -- Exclude some patterns from search
                    "--glob=!**/_generated_files/*",
                },
            },
            pickers = {
                find_files = {
                    -- needed to exclude some files & dirs from general search
                    -- when not included or specified in .gitignore
                    find_command = {
                        "rg",
                        "-u",
                        "--files",
                        "--hidden",
                        "--glob=!**/_generated_files/*",
                    },
                },
            },
        }
    end,
}
