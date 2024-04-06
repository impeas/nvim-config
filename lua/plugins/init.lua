
return {
    {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
    },
    "neovim/nvim-lspconfig",
    { "folke/neodev.nvim", opts = {} },
    { "hrsh7th/vim-vsnip" },
    { "hrsh7th/cmp-nvim-lsp" }, 
    { "hrsh7th/nvim-cmp" },
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
