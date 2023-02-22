vim.opt.termguicolors = true
vim.opt.list = true

vim.cmd [[highlight IndentBlanklineIndent1 guibg=#21202e gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#26233a gui=nocombine]]

require("indent_blankline").setup {
    char = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
