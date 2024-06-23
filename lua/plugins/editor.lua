return {
  { "numToStr/Comment.nvim", opts = {} },
  {
    "samjwill/nvim-unception",
    init = function()
      vim.g.unception_open_buffer_in_new_tab = true
    end,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "LunarVim/bigfile.nvim",
    enabled = true,
    lazy = true,
    config = function()
      if vim.g.loaded_bigfile_plugin then
        return
      end
      local miniindentscope = {
        name = "miniindentscope", -- name
        opts = {
          defer = false, -- set to true if `disable` should be called on `BufReadPost` and not `BufReadPre`
        },
        disable = function() -- called to disable the feature
          ---@diagnostic disable-next-line: inject-field
          vim.b.miniindentscope_disable = true
        end,
      }
      vim.g.loaded_bigfile_plugin = true
      require("bigfile").setup({
        filesize = 5, -- size of the file in MiB, the plugin round file sizes to the closest MiB
        pattern = { "*" }, -- autocmd pattern or function see <### Overriding the detection of big files>
        features = { -- features to disable
          "indent_blankline",
          "illuminate",
          "lsp",
          "treesitter",
          "syntax",
          "matchparen",
          "vimopts",
          "filetype",
          ---@diagnostic disable-next-line: assign-type-mismatch
          miniindentscope,
        },
      })
    end,
  },
  {
    "gbprod/cutlass.nvim",
    lazy = false,
    opts = {
      cut_key = "<C-x>",
    },
  },
  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      opts = {
        hide_numbers = true,
        shell = "zsh -l",
        start_in_insert = true,
        shading_factor = 2,
        -- float_opts = {
        --   border = "rounded",
        -- },
        -- direction = "float",
        -- winbar = {
        --   enabled = true,
        --   name_formatter = function(term) --  term: Terminal
        --     return term.count
        --   end,
        -- },
        close_on_exit = true,
        open_mapping = [[<c-\>]],
      },
    },
  },
}
