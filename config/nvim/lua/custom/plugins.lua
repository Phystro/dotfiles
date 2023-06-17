local plugins = {
    -- this opts will extend the default opts 
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function ()
            return require("custom.configs.treesitter")
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = function ()
            return require("custom.configs.mason")
        end
    },
    -- In order to modify the `lspconfig` configuration:
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("plugins.configs.lspconfig")
            require("custom.configs.lspconfig")
        end,
    },
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require("custom.configs.null-ls")
            end,
        },

        config = function()
            require("plugins.configs.lspconfig")
            require("custom.configs.lspconfig")
        end,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        config = {
            lsp = {
                hover = {
                    enabled = false,
                },
                signature = {
                    enabled = false,
                },
            },
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    },
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    },
    -- Project Manager
    {
        'charludo/projectmgr.nvim',
        lazy = false, -- important!
        opts = {
            -- git repository sync when opening project
            autogit = {
                enabled = false,
                -- fast forward sync of repo, downloading only those files without
                -- conflicts and can be updated without intervention on my part.
                -- Result of command is directed to the file .git/fastforward.log
                -- to prevent it from being displayed on the terminal where neovim
                -- is also running and to have a sync history available.
                command = "git pull --ff-only >> .git/fastforward.log 2>&1",
            },
            reopen = false,
            -- save project session on closing project
            session = {
                enabled = true,
                file = ".session.vim",
            },
            shada = {
                enabled = false,
                file = "main.shada",
            },
            scripts = {
                enabled = true,
                file_startup = "startup.sh",
                file_shutdown = "shutdown.sh",
            },
        },
    },
    {
        'christoomey/vim-tmux-navigator',
        lazy = false,
    },

    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = function ()
            return require("lazygit")
        end,
        config = function ()
            require("telescope").load_extension("lazygit")
        end,
    },
}

return plugins

