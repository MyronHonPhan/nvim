-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use {
      "jay-babu/mason-nvim-dap.nvim",
      requires = 
      {
          "williamboman/mason.nvim",
          "mfussenegger/nvim-dap"
      }
  }

  use 'vim-scripts/ReplaceWithRegister'

  use 'mg979/vim-visual-multi' 

  use 'tpope/vim-commentary'

  use 'psliwka/vim-smoothie'

  use 'easymotion/vim-easymotion'

  use { "rcarriga/nvim-dap-ui", 
  requires = {"mfussenegger/nvim-dap", 
  "nvim-neotest/nvim-nio"},
  }

  use {'mfussenegger/nvim-dap',
  config = function()
      local plugin = true
      local n = {
          ["<leader>dz"] = {
              "<cmd> DapToggleBreakpoint <CR>",
              "Add breakpoint at line",
          },
          ["<leader>dr"] = {
              "<cmd> DapContinue <CR>",
              "Start or continue the debugger",
          }
      }
  end
  }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use {
      'junegunn/fzf',
      run = function() vim.fn['fzf#install']() end
  }
  use('junegunn/fzf.vim')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
}

end)
