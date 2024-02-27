return {
	"mfussenegger/nvim-lint",
	opts = {
		linters = {
			pylint = {
				prepend_args = { "--max-line-length=100" },
			},
		},
	},
}
