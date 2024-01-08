return {
  'mrcjkb/rustaceanvim',
  version = '^3', -- Recommended
  ft = { 'rust' },
  config =function ()
    vim.g.rustaceanvim = {
      -- Plugin configuration
      tools = {
        hover_actions = {
          auto_focus = true,
        },
      },
      -- LSP configuration
      server = {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        on_attach = function(_, bufnr)
        vim.keymap.set("n", "<leader>a", function() vim.cmd.RustLsp('codeAction') end, {silent = true, buffer = bufnr})
        vim.keymap.set("n", "<leader>k", function() vim.cmd.RustLsp({'hover', 'actions'}) end, {silent = true, buffer = bufnr})
        end,
        settings = {
          -- rust-analyzer language server configuration
          ['rust-analyzer'] = {
          },
        },
      },
      -- DAP configuration
      dap = {
      },
  }
  end
}
