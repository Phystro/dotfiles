
local M = {}

-- Transparent Toggle
M.transparent = {
    n = {
        ["<leader>tt"] = {
            function ()
                require("base46").toggle_transparency()
            end,
            "Toggle Transparency",
            opts = {},
        }
    }
}


-- TMUX
M.tmux = {
    n = {
        -- Move to window using the <ctrl> hjkl keys
        ["<C-h>"] = { ":TmuxNavigateLeft<CR>", "Goto left window pane" },
        ["<C-j>"] = { ":TmuxNavigateDown<CR>", "Goto lower window pane" },
        ["<C-k>"] = { ":TmuxNavigateUp<CR>", "Goto upper window pane" },
        ["<C-l>"] = { ":TmuxNavigateRight<CR>", "Goto right window pane" },
    },
}


-- Movement
M.movement = {
    n = {
        -- Keep cursor in the middle during half page jumps
        ["<C-d>"] = { "<C-d>zz", "down - middle half page jumps" },
        ["<C-u>"] = { "<C-u>zz", "up - middle half page jumps" },
    },
    v = {
        -- visual movements
        ["J"] = { ":m '>+1<CR>gv=gv", "Move Selected Down" },
        ["K"] = { ":m '<-2<CR>gv=gv", "Move Selected Up"},
    }
}

-- Windows
M.windows = {
    n = {
        -- Move to window using the <ctrl> hjkl keys
        -- ["<C-h>"] = { "<C-w>h", "Goto left window" },
        -- ["<C-j>"] = { "<C-w>j", "Goto lower window" },
        -- ["<C-k>"] = { "<C-w>k", "Goto upper window" },
        -- ["<C-l>"] = { "<C-w>l", "Goto right window" },

        -- Resize window using <ctrl> arrow keys
        ["<C-Up>"] = { ":resize +2<CR>", "Increase window height" },
        ["<C-Down>"] = { ":resize -2<CR>", "Increase window height" },
        ["<C-Left>"] = { ":vertical resize -2<CR>", "Decrease window width" },
        ["<C-Right>"] = { ":vertical resize +2<CR>", "Increase window width" },

        -- Manipulate windows
        ["<leader>wo"] = { "<C-W>p", "Other window" },
        ["<leader>ws"] = { "<C-W>s", "Split window horizontal" },
        ["<leader>wv"] = { "<C-W>v", "Split window vertical" },
        ["<leader>wx"] = { "<C-W>c", "Close window" },
    },
}

-- Project
M.project = {
    n = {
        ["<leader>pp"] = { ":ProjectMgr<CR>", "Toggle Project Manager Window" },
    },
}

-- Yanking/Deleting to system clipboard
M.clipboard = {
    n = {
        -- yanking to system clipboard/void register
        ["<leader>y"] = { "\"+y", "yanking to clipboard" },
        ["<leader>Y"] = { "\"+Y", "yanking to clipboard" },
        -- deleting to system clipboard/void register
        ["<leader>d"] = { "\"_d", "deleting to clipboard" },
    },

    v = {
        -- yanking to system clipboard/void register
        ["<leader>y"] = { "\"+y", "yanking to clipboard" },
        -- deleting to system clipboard/void register
        ["<leader>d"] = { "\"_d", "deleting to clipboard" },
    },
}

-- LSP
M.lspconfig = {
    n = {
        ["<leader>fe"] = {
            function ()
                vim.diagnostic.open_float { border = "rounded" }
            end,
            "Floating diagnostic",
        },
    },
}

return M

