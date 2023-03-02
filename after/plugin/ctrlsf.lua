vim.g.ctrlsf_backend = 'ack'
vim.keymap.set("n", "<leader>'", ":CtrlSF ", {silent = true})
vim.g.ctrlsf_auto_focus = {
    {"at","done"},
    {"duration_less_than",1000},
}
