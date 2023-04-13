local status, packer = pcall(require, "packer")
if not status then
	print("packer not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	-- packer
	use("wbthomason/packer.nvim") -- packer itself

	-- necessary plugins
	use("nvim-lua/plenary.nvim")
	use("kyazdani42/nvim-web-devicons") -- icons for every plugin

	-- statusline
	use("hoob3rt/lualine.nvim") -- statusline

	-- autopairs
	use("windwp/nvim-autopairs")
	-- use("windwp/nvim-ts-autotag")

	-- treesitter
	use("nvim-treesitter/nvim-treesitter")

	-- file browser
	use({ "nvim-telescope/telescope-file-browser.nvim", "nvim-telescope/telescope.nvim" })

	-- terminal
	use("akinsho/toggleterm.nvim")

	-- tabs
	use("akinsho/bufferline.nvim")

	-- colorscheme
	-- use("norcalli/nvim-base16.lua")
	use("sainnhe/everforest")
	use("folke/tokyonight.nvim")
	use("svrana/neosolarized.nvim") -- colorscheme
	use("tjdevries/colorbuddy.nvim") -- colorbuddy
	use("bluz71/vim-nightfly-colors")
	use("haishanh/night-owl.vim")

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion
	use("hrsh7th/cmp-buffer") -- source for neovim buffer
	use("hrsh7th/cmp-path") -- source for file system paths
	use("hrsh7th/cmp-nvim-lsp") -- neovim builtin LSP

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- lsp
	use("onsails/lspkind.nvim")
	use("neovim/nvim-lspconfig") -- LSP
	use("glepnir/lspsaga.nvim") -- UI for neovim builtin LSP
	use("jose-elias-alvarez/null-ls.nvim") -- formatter and linter

	-- lsp server manager (Mason)
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
	use("williamboman/mason.nvim") -- server manager
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
	use({
		"xeluxee/competitest.nvim",
		requires = "MunifTanjim/nui.nvim",
		config = function()
			require("competitest").setup()
		end,
	})
	--	use("terrortylor/nvim-comment")
	--	require("nvim_comment").setup()
	use({
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup()
		end,
	})

	use({
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	})

	-- auto rename tag
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})

	use("cpea2506/one_monokai.nvim")
	use("ellisonleao/gruvbox.nvim")
	-- Lua
	use({
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use({
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
	})
end)
