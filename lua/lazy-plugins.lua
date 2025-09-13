-- Configure and install plugin

-- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
-- Or use telescope!
-- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
-- you can continue same window with `<space>sr` which resumes last telescope search

require("lazy").setup {

    -- NOTE: Plugins can also be added by using a table,
    -- with the first argument being the link and the following
    -- keys can be used to configure plugin behavior/loading/etc.
    --
    -- Use `opts = {}` to automatically pass options to a plugin's
    -- `setup()` function, forcing the plugin to be loaded.

    -- modular approach: using `require 'path.name'` will
    -- include a plugin definition from file lua/path/name.lua

    require "plugins.barbar",
    require "plugins.blink-cmp",
    require "plugins.colorscheme",
    require "plugins.conform",
    -- require "plugins.debug",
    require "plugins.flash",
    require "plugins.gitsigns",
    -- require "plugins.hop",
    require "plugins.icons",
    -- require "plugins.lint",
    require "plugins.lspconfig",
    require "plugins.mini-ai",
    require "plugins.mini-cursorword",
    require "plugins.mini-indentscope",
    require "plugins.mini-move",
    require "plugins.mini-pairs",
    require "plugins.mini-statusline",
    require "plugins.neo-tree",
    require "plugins.noice",
    -- require "plugins.oil",
    require "plugins.persistence",
    require "plugins.snacks-dashboard",
    -- require "plugins.snacks-explorer",
    require "plugins.telescope",
    require "plugins.todo-comments",
    require "plugins.treesitter",
    require "plugins.which-key",
}
