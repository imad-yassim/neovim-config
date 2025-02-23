return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities() -- USED TO EXTEND AUTOCOMPLITION FROM LSP

			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capablities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capablities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capablities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.css_variables.setup({
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			lspconfig.cssmodules_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.somesass_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})

			lspconfig.unocss.setup({
				capabilities = capabilities,
			})

			lspconfig.ast_grep.setup({
				capabilities = capabilities,
			})

			lspconfig.lwc_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.superhtml.setup({
				capabilities = capabilities,
			})

			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})

			lspconfig.grammarly.setup({
				capabilities = capabilities,
			})

			lspconfig.harper_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.markdown_oxide.setup({
				capabilities = capabilities,
			})

			lspconfig.bashls.setup({
				capabilities = capabilities,
			})

			lspconfig.taplo.setup({
				capabilities = capabilities,
			})

			lspconfig.tsp_server.setup({
				capabilities = capabilities,
			})

			lspconfig.lemminx.setup({
				capabilities = capabilities,
			})

			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>;", vim.lsp.buf.code_action, {})
		end,
	},
}
