return {
    "echasnovski/mini.pairs",
    config = function()
        require("mini.pairs").setup({
            mappings = {
                ["("] = { action = "open", pair = "()", neigh_pattern = "[^\\][%s%)%]%}]" },
                ["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\][%s%)%]%}]" },
                ["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\][%s%)%]%}]" },
                ['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^%w][^%w]", register = { cr = false } },
                ["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%w][^%w]", register = { cr = false } },
                ["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^%w][^%w]", register = { cr = false } },
            },
        })
    end,
}
