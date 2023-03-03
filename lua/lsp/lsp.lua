require('comp')
require("luasnip.loaders.from_vscode").lazy_load()

local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

vim.diagnostic.config({
	virtual_text = { 
		spacing = 20,
		prefix = '●' 
	}, 
	severity_sort = true,
	underline = false,
	signs = { active = signs,},
	float = {
		source = "always",
		focusable = false,
		-- border = "rounded",
		-- style = "minimal",
	},
})


-- Wrap up nvim cmp configuration on comp.lua
local capabilities = require('cmp_nvim_lsp').default_capabilities(
	vim.lsp.protocol.make_client_capabilities()
)

-- show completion
local on_attach = function(client, bufnr)
	local bufopts = {noremap = true, silent=true, buffer=bufnr}
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
end

local lsp_flags = { debounce_text_changes = 150, }

require('lspconfig').sumneko_lua.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require'lspconfig'.tsserver.setup{
  on_attach = on_attach,
  -- flags = lsp_flags,
  capabilities = capabilities,
}
require('lspconfig').tailwindcss.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require('lspconfig').rust_analyzer.setup {
  on_attach = on_attach,
  -- flags = lsp_flags,
  capabilities = capabilities,

}
require'lspconfig'.vuels.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require('lspconfig').ccls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    compilationDatabaseDirectory = "build";
    index = {
      threads = 0;
    };
    clang = {
      excludeArgs = { "-frounding-math"} ;
    };
  }

}

require("nvim-lsp-installer").setup {
	automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
}

