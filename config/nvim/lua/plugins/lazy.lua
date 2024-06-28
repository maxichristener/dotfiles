--- PLUGINS ---
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--- PLUGIN LOAD ---
-- ctrlp: fuzzy finder (extremely useful)
-- nvim-surround: Adds surround: cs, ys, ds. S in visualmode. help txt available.
-- OPTIONALS:
-- nerdtree
-- align
--
  -- NOTE: Plugins can be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  -- Use `opts = {}` to force a plugin to be loaded.
  --- example: { 'numToStr/Comment.nvim', opts = {} },
  --- or: 'kien/ctrlp.vim',
  --- ALWAYS end with a comma

require("lazy").setup({
 'ctrlpvim/ctrlp.vim',
	{
	    "kylechui/nvim-surround",
	    version = "*", -- Use for stability; omit to use `main` branch for the latest features
	    event = "VeryLazy",
	    config = function()
		require("nvim-surround").setup({
		    -- Configuration here, or leave empty to use defaults
		})
	    end
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
		require("nvim-surround").setup({
		    -- Configuration here, or leave empty to use defaults
		})
		end
	},
	{
	 "R-nvim/R.nvim",
	    lazy = false
	},
	{
	    "nvim-treesitter/nvim-treesitter",
	    run = ":TSUpdate",
	    config = function ()
	      require("nvim-treesitter.configs").setup({
		ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb", "python" },
	      })
	    end
	},
	"R-nvim/cmp-r",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{
	    "hrsh7th/nvim-cmp",
	    config = function()
	      require("cmp").setup({ sources = {{ name = "cmp_r" }}})
	      require("cmp_r").setup({ })
	    end,
	},
	{
	  'nvim-orgmode/orgmode',
	  event = 'VeryLazy',
	  ft = { 'org' },
	  config = function()
	    -- Setup orgmode
	    require('orgmode').setup({
	      org_agenda_files = '~/orgfiles/**/*',
	      org_default_notes_file = '~/orgfiles/refile.org',
	    })
	    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
	    -- add ~org~ to ignore_install
	    -- require('nvim-treesitter.configs').setup({
	    --   ensure_installed = 'all',
	    --   ignore_install = { 'org' },
	    -- })
	  end,
	},
        {
          "geg2102/nvim-python-repl",
          dependencies = "nvim-treesitter",
          ft = {"python", "lua", "scala"}, 
          config = function()
              require("nvim-python-repl").setup({
                  execute_on_send = false,
                  vsplit = false,
              })
        end
        },
})
