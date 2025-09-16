return {
	"jake-stewart/multicursor.nvim",
	branch = "1.0",
	config = function()
		local mc = require "multicursor-nvim"
		mc.setup()

		local set = vim.keymap.set

		-- Add a new cursor **above** the current one.
		set({ "n", "x" }, "<up>", function()
			mc.lineAddCursor(-1)
		end, { desc = "Add cursor above" })

		-- Add a new cursor **below** the current one.
		set({ "n", "x" }, "<down>", function()
			mc.lineAddCursor(1)
		end, { desc = "Add cursor below" })

		-- Skip adding a cursor **above** (move main cursor up, skipping line).
		set({ "n", "x" }, "<leader><up>", function()
			mc.lineSkipCursor(-1)
		end, { desc = "Skip line above (move main cursor)" })

		-- Skip adding a cursor **below** (move main cursor down, skipping line).
		set({ "n", "x" }, "<leader><down>", function()
			mc.lineSkipCursor(1)
		end, { desc = "Skip line below (move main cursor)" })

		-- Add a new cursor at the **next match** of the word/selection.
		set({ "n", "x" }, "<leader>n", function()
			mc.matchAddCursor(1)
		end, { desc = "Add cursor at next match" })

		-- Skip the **next match** and move main cursor forward.
		set({ "n", "x" }, "<leader>s", function()
			mc.matchSkipCursor(1)
		end, { desc = "Skip next match" })

		-- Add a new cursor at the **previous match** of the word/selection.
		set({ "n", "x" }, "<leader>N", function()
			mc.matchAddCursor(-1)
		end, { desc = "Add cursor at previous match" })

		-- Skip the **previous match** and move main cursor backward.
		set({ "n", "x" }, "<leader>S", function()
			mc.matchSkipCursor(-1)
		end, { desc = "Skip previous match" })

		-- Add and remove cursors with control + left click.
		set("n", "<c-leftmouse>", mc.handleMouse)
		set("n", "<c-leftdrag>", mc.handleMouseDrag)
		set("n", "<c-leftrelease>", mc.handleMouseRelease)

		-- Disable and enable cursors.
		-- set({ "n", "x" }, "<c-q>", mc.toggleCursor)

		-- Mappings defined in a keymap layer only apply when there are
		-- multiple cursors. This lets you have overlapping mappings.
		mc.addKeymapLayer(function(layerSet)
			-- Select a different cursor as the main one.
			layerSet({ "n", "x" }, "<left>", mc.prevCursor)
			layerSet({ "n", "x" }, "<right>", mc.nextCursor)

			-- Delete the main cursor.
			layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)

			-- Enable and clear cursors using escape.
			layerSet("n", "<esc>", function()
				if not mc.cursorsEnabled() then
					mc.enableCursors()
				else
					mc.clearCursors()
				end
			end)
		end)

		-- Customize how cursors look.
		local hl = vim.api.nvim_set_hl
		hl(0, "MultiCursorCursor", { reverse = true })
		hl(0, "MultiCursorVisual", { link = "Visual" })
		hl(0, "MultiCursorSign", { link = "SignColumn" })
		hl(0, "MultiCursorMatchPreview", { link = "Search" })
		hl(0, "MultiCursorDisabledCursor", { reverse = true })
		hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
		hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
	end,
}
