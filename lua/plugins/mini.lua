return {
	"nvim-mini/mini.nvim",
	version = false, -- Use the latest development branch
	config = function()
		-- Better Around/Inside textobjects
		require("mini.ai").setup { n_lines = 500 }

		-- Highlight the word under the cursor
		require("mini.cursorword").setup()

		-- Icons
		require("mini.icons").setup()

		-- Surround
		require("mini.surround").setup()

		-- Indent guides
		require("mini.indentscope").setup()

		-- Automatic pairs
		require("mini.pairs").setup()

		-- Statusline
		require("mini.statusline").setup()

		-- Remove buffer but keep layout
		require("mini.bufremove").setup()

		-- Alt to move lines around
		require("mini.move").setup {
			mappings = {
				-- Move visual selection in Visual mode
				left = "<M-h>",
				right = "<M-l>",
				down = "<M-j>",
				up = "<M-k>",
				-- Move current line in Normal mode
				line_left = "<M-h>",
				line_right = "<M-l>",
				line_down = "<M-j>",
				line_up = "<M-k>",
			},
			options = {
				reindent_linewise = true,
			},
		}
		-- Buffer indicator
		-- Now unused because I'm moving to barbar
		require("mini.tabline").setup {
			show_icons = true,
			tabpage_section = "left",
			format = function(buf_id, label)
				local max_len = 12
				local suffix = vim.bo[buf_id].modified and " +" or ""
				local truncated_label = label

				-- Truncate if too long
				if #label > max_len then
					truncated_label = string.sub(label, 1, max_len - 1) .. "…"
				end

				-- Pad if too short
				if #truncated_label < max_len then
					truncated_label = truncated_label .. string.rep(" ", max_len - #truncated_label)
				end

				return MiniTabline.default_format(buf_id, truncated_label) .. suffix
			end,
		}
	end,
}
