return {
	"mfussenegger/nvim-dap",
	config = function()
      require("dap").adapters.lldb = {
			type = 'server',
			host = '127.0.0.1',
			port = 13000,
			executable = {
				command = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb",
				args = {"--port", "13000"},
			},
		}
		vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
		vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
		vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
		vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")
	end,
}
