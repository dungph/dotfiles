vim.api.nvim_set_keymap('n', '<space>n', ':NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>r', ':NvimTreeRefresh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', { noremap = true })

vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_root_folder_modifier = ':~'
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_icon_padding = ' '
vim.g.nvim_tree_symlink_arrow = ' >> '
vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_create_in_closed_folder = 0
vim.g.nvim_tree_refresh_wait = 500
vim.g.nvim_tree_special_files = { ['README.md'] = 1, Makefile = 1, MAKEFILE = 1 }
vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 0,
    files = 0,
    folder_arrows = 0,
}
--vim.g.nvim_tree_window_picker_exclude = {
--    filetype = {
--        'notify',
--        'packer',
--        'qf'
--    },
--    buftype = {
--        'terminal'
--    }
--}
vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = "✗",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "★",
        deleted = "",
        ignored = "◌"
    },
    folder = {
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
    }
}

require 'nvim-tree'.setup {
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = true,
    ignore_ft_on_setup  = {},
    --update_to_buf_dir   = {
    --    enable = true,
    --    auto_open = true,
    --},
    --auto_close          = false,
    open_on_tab         = false,
    hijack_cursor       = false,
    update_cwd          = false,
    actions              = {
        open_file   = {
            window_picker = {
                enable = false
            },
            quit_on_open = true
        }
    },
    renderer = {
        indent_markers = {
            enable = true
        }
    },
    diagnostics         = {
        enable = true,
        icons = {
            hint = "H",
            info = "I",
            warning = "W",
            error = "E",
        }
    },
    update_focused_file = {
        enable      = false,
        update_cwd  = false,
        ignore_list = {}
    },
    system_open = {
        cmd  = nil,
        args = {}
    },
    view = {
        width = 30,
        height = 30,
        side = 'left',
        --auto_resize = false,
        mappings = {
            custom_only = false,
            list = {}
        }
    }
}
