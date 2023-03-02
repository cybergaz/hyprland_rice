-- it'll check if the packer is installed or not , status will provide true false value

local status, packer = pcall(require, "packer")
if not status then
    print("packer is not installed")
    return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
    use("wbthomason/packer.nvim")
    use("marko-cerovac/material.nvim")

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })

    -- split window navigation
    use("christoomey/vim-tmux-navigator")
    use("szw/vim-maximizer")

    -- tree file explorer
    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
        tag = "nightly", -- optional, updated every week. (see issue #1193)
    })

    -- lualine
    use("nvim-lualine/lualine.nvim")

    -- telescope
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use({ "nvim-telescope/telescope-file-browser.nvim" })

    -- tabline
    use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })

    -- automcompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    -- snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    -- lsp configuration
    use("neovim/nvim-lspconfig")
    use("tamago324/nlsp-settings.nvim")

    use("williamboman/nvim-lsp-installer")
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    use("hrsh7th/cmp-nvim-lsp")
    use({ "glepnir/lspsaga.nvim", branch = "main" })
    use("jose-elias-alvarez/typescript.nvim")
    use("onsails/lspkind.nvim")

    use("jose-elias-alvarez/null-ls.nvim")
    use("jayp0521/mason-null-ls.nvim")

    -- hop easy motion
    use({
        "phaazon/hop.nvim",
        branch = "v2", -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
        end,
    })

    -- treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    })

    -- auto closing
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")

    -- undo tree 
    use "mbbill/undotree"
end)
