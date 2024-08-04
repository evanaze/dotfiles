return {
	"mfussenegger/nvim-lint",
	opts = {
		linters = {
			pylint = {
                condition = function(ctx)
                    return vim.fs.find({ ".pylintrc" }, { path = ctx.filename, upward = true })[1]
                end,
			},
		},
	},
}
