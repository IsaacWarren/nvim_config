local token = os.getenv("MEMOS_TOKEN")
return {
    "IsaacWarren/memos.nvim",
    config = function()
        require("memos").setup({
            base_url = "https://memos.lan/api/v1",
--            token = token,
            default_visiblity = "PRIVATE",
            list_preview_length = 160,
        })
    end,
}
