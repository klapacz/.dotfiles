local h = require('plugins.helpers')

h.setup_packer_augrup()
local packer_bootstrap = h.ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
      "ggandor/leap.nvim",
      config = function() require('leap').add_default_mappings() end
    }

    use {
      "rafcamlet/nvim-luapad",
      requires = "antoinemadec/FixCursorHold.nvim",
      cmd = "Luapad"
    }

    use {
      "jamessan/vim-gnupg",
      cond = vim.g.vscode
    }

    use {
      "nickeb96/fish.vim",
      disabled = vim.g.vscode
    }

    use {
      "nvim-lualine/lualine.nvim",
      config = function() require('lualine').setup() end,
      disabled = vim.g.vscode,
    }

    use {
      "folke/tokyonight.nvim",
      disabled = vim.g.vscode,
      config = function()
        vim.cmd[[colorscheme tokyonight]]
      end,
    }

    if packer_bootstrap then
      require('packer').sync()
    end
  end)
  
