require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "jedi_language_server",
        "golangci_lint_ls",
        "docker_compose_language_service",
        "dockerls",
    },
}

