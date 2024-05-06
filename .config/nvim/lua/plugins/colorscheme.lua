return {
    {
        "rose-pine/neovim",
        opts = {
            transparent = true,
            styles = {
                transparency = true
            }
        }

    },
    { "sainnhe/gruvbox-material" },
    { "yorickpeterse/vim-paper" },
    { "shaunsingh/solarized.nvim" },
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        opts = {
            transparent = true,
            styles = {
                floats = "transparent",
                sidebars = "transparent",
            },
        },
    },
    {
        "rebelot/kanagawa.nvim",
        -- opts = {
        --     transparent = true,
        --     colors = {
        --         theme = {
        --             all = {
        --                 ui = {
        --                     bg_gutter = "none",
        --                 },
        --             },
        --         },
        --     },
        --     overrides = function(colors) -- add/modify highlights
        --         local theme = colors.theme
        --         return {
        --             NormalFloat = { bg = "none" },
        --             FloatBorder = { bg = "none" },
        --             FloatTitle = { bg = "none" },
        --
        --             -- Save an hlgroup with dark background and dimmed foreground
        --             -- so that you can use it where your still want darker windows.
        --             -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
        --             NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        --
        --             -- Popular plugins that open floats will link to NormalFloat by default;
        --             -- set their background accordingly if you wish to keep them dark and borderless
        --             LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        --             MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        --             LazyGitNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        --         }
        --     end,
        -- },
    },
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        opts = {
            transparent_background = true,
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                markdown = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                which_key = true,
            },
        },
    },
    { "Shatur/neovim-ayu" },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "ayu-dark",
        },
    },
}
