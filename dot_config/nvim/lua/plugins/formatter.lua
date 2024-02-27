return {
    "stevearc/conform.nvim",
    opts = {
        ensure_installed = {},
        formatters = {
            shfmt = {
                prepend_args = { "-i", "2" },
            },
        },
    },
}
