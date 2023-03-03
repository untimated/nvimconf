-- Miscellaneous Plugin Setup

-- Nvim autopairs
require('nvim-autopairs').setup({})

-- Nvim treesitter
local nsitter = require('nvim-treesitter.configs')
nsitter.setup({
	indent = {
		enable = true
	}
})

-- NVIM TREE
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	auto_reload_on_write = true,
	remove_keymaps = {"<C-t>"},
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{key="u", action="dir_up"},
			},
		},
	},
	renderer = {
		group_empty = true,
		highlight_git = true,
		icons ={
			webdev_colors= true,
			git_placement = "before",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
		},
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	filters = {
		dotfiles = false,
	},
	git = {
		enable = true,
		ignore = false,
		show_on_dirs = true,
		timeout = 400,
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	}
})

-- LuaLine
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tomorrow',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = false,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
	  lualine_a = {{ 'buffers', max_length=vim.o.columns  } },
	  lualine_b = {},
	  lualine_c = {},
	  lualine_x = {},
	  lualine_y = {},
	  lualine_z = {}
	},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}


-- Comment.nvim
require('Comment').setup(
{
    ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = 'gcc',
        ---Block-comment toggle keymap
        block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'gc',
        ---Block-comment keymap
        block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = 'gcO',
        ---Add comment on the line below
        below = 'gco',
        ---Add comment at the end of line
        eol = 'gcA',
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
}
)
vim.api.nvim_command("set commentstring=#%s")
-- local ft = require('Comment.ft')
-- ft.set('envlocal', '#%s')
-- ft.set('env', '#%s')

