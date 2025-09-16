return {
	"shortcuts/no-neck-pain.nvim",
	version = "*",
	config = function()
		require("no-neck-pain").setup()

		-- Keymaps using commands provided by the plugin
		vim.keymap.set("n", "<leader>zn", "<cmd>NoNeckPain<CR>", { desc = "Zen: [No] Neck Pain Toggle" })
		vim.keymap.set("n", "<leader>zk", "<cmd>NoNeckPainWidthUp<CR>", { desc = "Zen: [No] Neck Pain Increase width" })
		vim.keymap.set("n", "<leader>zj", "<cmd>NoNeckPainWidthDown<CR>", { desc = "Zen: [No] Neck Pain Decrease width" })
	end,
}
