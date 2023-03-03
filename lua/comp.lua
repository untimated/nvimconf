local cmp = require('cmp')

local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- cmp.event:on(
-- 	'confirm_done',
-- 	cmp_autopairs.on_confirm_done({
-- 		["*"] = {
-- 			["("] ={
-- 				kind = {
-- 					cmp.lsp.CompletionItemKind.Function,
-- 					cmp.lsp.CompletionItemKind.Method,
-- 				}
-- 			}
-- 		}

-- 	})
-- )

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(), },
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping( cmp.mapping.scroll_docs(-4), {"i", "c"} ),
		["<C-f>"] = cmp.mapping( cmp.mapping.scroll_docs(4), {"i", "c"} ),
		['<C-Space>'] = cmp.mapping( cmp.mapping.complete(), {"i", "c"} ),
		["C-y"] = cmp.config.disable,
		['<C-e>'] = cmp.mapping {
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		},
		['<CR>'] = cmp.mapping.confirm({select = true}),
	}),
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
		-- Kind icons
		vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
		-- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
		vim_item.menu = ({
			nvim_lsp = "[LSP]",
			luasnip = "[Snippet]",
			buffer = "[Buffer]",
			path = "[Path]",
		  })[entry.source.name]
		  return vim_item
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
	{
		{ name = 'buffer'}
	}
	)
})

